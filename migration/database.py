import MySQLdb

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

	def execute_many(self, query):
		try:
			self.cursor.execute(query)
			self.connection.commit()
		except:
			self.connection.rollback()

	def find_one(self, query):
		self.cursor.execute(query)
		return self.cursor.fetchone()

	def find_all(self, query):
		self.cursor.execute(query)
		return self.cursor.fetchall()

	def close(self):
		self.connection.close()