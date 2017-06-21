from database import Database

HOST = 'localhost'
USER = 'bitc'
PASSWORD = ''
DB = 'bitc'

if __name__ == '__main__':
	# Set up the database
	db = Database(HOST, USER, PASSWORD, DB)

	# Load 001.txt and insert each line into the verses table	
	file = open("bible_versions/krv/001.txt", "r")

	book_id = db.find_one("SELECT id FROM books WHERE name = 'genesis'")['id']
	version_id = db.find_one("SELECT id FROM versions WHERE code = 'krv'")['id']

	args = []
	for line in file:
		chapter = int(line[:3])
		verse = int(line[4:7])
		text = line[8:]

		args.append((version_id, book_id, chapter, verse, text))

	db.execute_many("""
		INSERT INTO verses (version_id, book_id, chapter, verse, text) 
		VALUES (%s, %s, %s, %s, %s)""", args)
	
	# Close the db connection
	db.close()