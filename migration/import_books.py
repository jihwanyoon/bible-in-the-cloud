import MySQLdb

HOST = 'localhost'
USER = 'bitc'
PASSWORD = ''
DB = 'bitc'

class Database(object):
	def __init__(self, host, user, password, db):
		self.host = host
		self.user = user
		self.password = password
		self.db = db
		self.connection = MySQLdb.connect(self.host, self.user, self.password, self.db)
		self.cursor = self.connection.cursor()

	def execute(self, query):
		try:
			self.cursor.execute(query)
			self.connection.commit()
		except:
			self.connection.rollback()

	def close(self):
		self.connection.close()

if __name__ == '__main__':
	# Set up the database
	db = Database(HOST, USER, PASSWORD, DB)

	# TODO: Load the books.txt and insert each line into the books table

	lines = [line.rstrip('\n') for line in open("books.txt", "r")]
	for x in lines:
		db.execute("INSERT INTO books (name) VALUES ('%s')" % x)	

	# Close the db connection
	db.close()
