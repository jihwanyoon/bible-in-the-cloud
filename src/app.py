from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Enable debug mode
app.debug = True

# Set up SQLAlchemy
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://bitc:@localhost/bitc'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

@app.route('/')
def index():
	return 'hello world'

if __name__ == '__main__':
	app.run()