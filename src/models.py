from app import db

# TODO: define all the data models

class Language(db.Model):
	__tablename__ = 'languages'
	__table_args__ = {'extend_existing': True}

	id = db.Column('id', db.Integer, primary_key=True)
	code = db.Column('code', db.String)
	name = db.Column('name', db.String)


class Book(db.Model):
	__tablename__ = 'books'
	__table_args__ = {'extend_existing': True}

	id = db.Column('id', db.Integer)
	name = db.Column('name', db.String)


class DisplayName(db.Model):
	__tablename__ = 'display_names'
	__table_args__ = {'extend_existing': True}

	id = db.Column('id', db.Integer)
	language_id = db.Column('language_id', db.Integer, primary_key=True)
	book_id = db.Column('book_id', db.Integer)
	name = db.Column('name', db.String)


class Verses(db.Model):
	__tablename__ = 'verses'
	__table_args__ = {'extend_existing': True}

	id = db.Column('id', db.Integer)
	version_id = db.Column('version_id', db.Integer, primary_key=True) # would this one be considered primary key?
	book_id = db.Column('book_id', db.Integer)
	chapter = db.Column('chapter', db.Integer)
	verse = db.Column('verse', db.Integer)
	text = db.Column('text', db.String)

class Version(db.Model):
	__tablename__ = 'versions'
	__table_args__ = {'extend_existing': True}

	id = db.Column('id', db.Integer)
	code = db.Column('code', db.String)
	name = db.Column('name', db.String)
	language_id = db.Column('language_id', db.Integer, primary_key=True)