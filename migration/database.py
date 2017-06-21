import MySQLdb
import MySQLdb.cursors

class Database(object):
	def __init__(self, host, user, password, db):
		self.host = host
		self.user = user
		self.password = password
		self.db = db
		self.connection = MySQLdb.connect(host=self.host, user=self.user, passwd=self.password, db=self.db, charset='utf8')
		self.cursor = self.connection.cursor(cursorclass=MySQLdb.cursors.DictCursor)

	def execute(self, query):
		try:
			self.cursor.execute(query)
			self.connection.commit()
		except Exception as e:
			print e
			self.connection.rollback()

	def execute_many(self, query, args):
		try:
			self.cursor.executemany(query, args)
			self.connection.commit()
		except Exception as e:
			print e
			self.connection.rollback()

	def find_one(self, query):
		self.cursor.execute(query)
		return self.cursor.fetchone()

	def find_all(self, query):
		self.cursor.execute(query)
		return self.cursor.fetchall()

	def close(self):
		self.connection.close()