from database import Database
import os

HOST = 'localhost'
USER = 'bitc'
PASSWORD = ''
DB = 'bitc'

if __name__ == '__main__':
	# Set up the database
	db = Database(HOST, USER, PASSWORD, DB)

	# Load 001.txt and insert each line into the verses table	
	path = '/Users/Ji/dev/bible-in-the-cloud/migration/bible_versions/krv'
	files = []
	book_id = []
	for filename in os.listdir(path):
		file = open("bible_versions/krv/" + filename, "r")
		book_id.append(filename[:3])
		files.append(file)

	version_id = db.find_one("SELECT id FROM versions WHERE code = 'krv'")['id']

	args = []
	index = 0

	for file in files[1:]:
		for line in file:
			chapter = int(line[:3])
			verse = int(line[4:7])
			text = line[8:]

			args.append((version_id, book_id[index], chapter, verse, text))
		index += 1

		db.execute_many("""
			INSERT INTO verses (version_id, book_id, chapter, verse, text) 
			VALUES (%s, %s, %s, %s, %s)""", args)
	
	# Close the db connection
	db.close()