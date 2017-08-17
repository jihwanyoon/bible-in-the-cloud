from flask import Flask, render_template, request, url_for, redirect
from flask_sqlalchemy import SQLAlchemy
from flask_mysqldb import MySQL
from models import *

app = Flask(__name__)

# Enable debug mode
app.debug = True

# Set up SQLAlchemy
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://bitc:@localhost/bitc'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

# Config MySQL
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'bitc'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'bitc'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'

# init MYSQL
mysql = MySQL(app)

# Index
@app.route('/')
def index():
	return render_template('index.html')


# search page
@app.route('/bitc', methods=['POST', 'GET'])
def search():
	# Contains all Versions, Books, and Chapters
	versions = Version.query.all()
	books = Book.query.all()

	# If a search for verses have been made
	if request.method == 'POST':
		version = request.form.get('version')
		book = request.form.get('book')
		chapter = request.form.get('chapter')
		return redirect(url_for('view_chapter', version=version, book=book, chapter=chapter))

	return render_template('search.html', versions=versions, books=books)

# Load full verses of a chapter
@app.route('/<version>/<book>/<int:chapter>', methods=['GET', 'POST']) 
def view_chapter(version, book, chapter):


	book_id = Book.query.filter_by(name=book).first().id
	version_id = Version.query.filter_by(code=version).first().id
	chapter = chapter
	verses = Verses.query.filter_by(version_id=version_id, book_id=book_id, chapter=chapter)

	return render_template('view_chapter.html', verses=verses, version_id=version_id, book_id=book_id, chapter=chapter, book=book, version=version)


if __name__ == '__main__':
	app.run()

