from app import db
from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship

# TODO: define all the relationships
# ask serin if its okay to have the relationship name (like in line 13, can versions variable be named versions if the table name is also versions?)
# do i need lazy???????????????? loading
class Language(db.Model):
	__tablename__ = 'languages'

	id = Column(Integer, primary_key=True)
	code = Column(String)
	name = Column(String)
	versionss = relationship('Version', backref='languages')
	display_namess = relationship('DisplayName', backref='languages')


class Book(db.Model):
	__tablename__ = 'books'

	id = Column(Integer, primary_key=True)
	name = Column(String)
	display_namess = relationship('DisplayName', backref='books')


class DisplayName(db.Model):
	__tablename__ = 'display_names'

	id = Column(Integer, primary_key=True)
	language_id = Column(Integer, ForeignKey('languages.id'))
	book_id = Column(Integer, ForeignKey('books.id'))
	name = Column(String)


class Verses(db.Model):
	__tablename__ = 'verses'

	id = Column(Integer, primary_key=True)
	version_id = Column(Integer, ForeignKey('versions.id'))
	book_id = Column(Integer, ForeignKey('books.id'))
	chapter = Column(Integer)
	verse = Column(Integer)
	text = Column(String)


class Version(db.Model):
	__tablename__ = 'versions'

	id = Column(Integer, primary_key=True)
	code = Column(String)
	name = Column(String)
	language_id = Column(Integer, ForeignKey('languages.id'))
	versess = relationship('Verses', backref='versions')
