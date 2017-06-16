from database import Database

HOST = 'localhost'
USER = 'bitc'
PASSWORD = ''
DB = 'bitc'

if __name__ == '__main__':
	# Set up the database
	db = Database(HOST, USER, PASSWORD, DB)

	# TODO: Load 001.txt and insert each line into the verses table	
	book = open("bible_versions/krv/001.txt", "r")

	v_id = db.execute("SELECT id FROM versions WHERE code = 'krv'")

	for line in book:
		verse = line.replace(':',' ').split()
		texts = ' '.join(verse[2:])
		db.execute("INSERT INTO verses (version_id, book_id, chapter, verse, text) VALUES (2, 1, %s, %s, '%s')" % (verse[0], verse[1],texts))

	#v_id = db.execute("SELECT id FROM versions WHERE code = 'krv'")

	#for line in range(0,linecount):
		#verse = book.readline().replace(':',' ').replace(',',' ').split()
		#print verse
		#db.execute("INSERT INTO verses(version_id, book_id, chapter, verse, text) VALUES (%s, 1, %s, %s, '%s')" % (v_id, verse[0], verse[1], verse[2:]))
	
	# Close the db connection
	db.close()