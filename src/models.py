from app import db
from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship

class Language(db.Model):
	__tablename__ = 'languages'

	id = Column(Integer, primary_key=True)
	code = Column(String)
	name = Column(String)
	versions = relationship('Version', backref='language')
	display_names = relationship('DisplayName', backref='language')


class Book(db.Model):
	__tablename__ = 'books'

	id = Column(Integer, primary_key=True)
	name = Column(String)
	display_names = relationship('DisplayName', backref='book')
	verses = relationship('Verses', backref='book')


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
	verses = relationship('Verses', backref='version', lazy='dynamic')

