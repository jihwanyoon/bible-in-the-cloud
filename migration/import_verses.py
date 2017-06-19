from database import Database

HOST = 'localhost'
USER = 'bitc'
PASSWORD = ''
DB = 'bitc'

if __name__ == '__main__':
	# Set up the database
	db = Database(HOST, USER, PASSWORD, DB)

	# Load 001.txt and insert each line into the verses table	
	book = open("bible_versions/krv/001.txt", "r")

	bookid = db.find_one("SELECT id FROM books WHERE id = 1")[0]

	for line in book:
		chapter = line[:3]
		verse = line[4:7]
		text = line[8:]

		db.execute_many("""
			INSERT INTO verses (version_id, book_id, chapter, verse, text) 
			VALUES (2, %s, %s, %s, '%s')""" % (bookid, chapter, verse, text))
	
	# Close the db connection
	db.close()