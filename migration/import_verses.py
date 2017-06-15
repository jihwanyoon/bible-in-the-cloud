from database import Database

HOST = 'localhost'
USER = 'bitc'
PASSWORD = ''
DB = 'bitc'

if __name__ == '__main__':
	# Set up the database
	db = Database(HOST, USER, PASSWORD, DB)

	# TODO: Load 001.txt and insert each line into the verses table	

	# Close the db connection
	db.close()