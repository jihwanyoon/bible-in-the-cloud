from app import db

# TODO: define all the data models

class Language(db.Model):
	__tablename__ = 'languages'

	id = db.Column('id', db.Integer, primary_key=True)
	code = db.Column('code', db.String)
	name = db.Column('name', db.String)


class Book(db.Model):
	__tablename__ = 'books'

	# TODO


class DisplayName(db.Model):
	__tablename__ = 'display_names'

	# TODO


class Verse(db.Model):
	__tablename__ = 'verses'

	# TODO


class Version(db.Model):
	__tablename__ = 'versions'

	# TODO