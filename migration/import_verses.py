from database import Database
import os, glob

HOST = 'localhost'
USER = 'bitc'
PASSWORD = ''
DB = 'bitc'

if __name__ == '__main__':
	# Set up the database
	db = Database(HOST, USER, PASSWORD, DB)

	# Grab the version id	
	bible_version = 'krv'
	version_id = db.find_one("SELECT id FROM versions WHERE code = '%s'" % bible_version)['id']

	# Changes working directory to bible_versions in order to access bible verses
	os.chdir(os.getcwd() + '/bible_versions/' + bible_version) 
	for filename in glob.glob('*.txt'):
		book_id = int(os.path.splitext(filename)[0])

		# Load the files and insert each line into the verses table
		args = []
		file = open(filename, 'r')
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