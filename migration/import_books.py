from database import Database

HOST = 'localhost'
USER = 'bitc'
PASSWORD = ''
DB = 'bitc'

if __name__ == '__main__':
	# Set up the database
	db = Database(HOST, USER, PASSWORD, DB)

	# Load the books.txt and insert each line into the books table
	lines = [line.rstrip('\n') for line in open("books.txt", "r")]
	for x in lines:
		db.execute("INSERT INTO books (name) VALUES ('%s')" % x)	

	# Close the db connection
	db.close()
