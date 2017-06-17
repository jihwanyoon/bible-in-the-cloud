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

<<<<<<< HEAD

	bookid = db.find_one("SELECT id FROM books")

	for line in book:
		chapter = line[:3]
		verse = line[4:7]
		text = line[8:]
		db.execute_many("INSERT INTO verses (version_id, book_id, chapter, verse, text) VALUES (2, %s, %s, %s, %s)" % (bookid[0], chapter, verse, text))

=======
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
>>>>>>> c13933b253c2ef757e07cfa764b157bc10955b2a
	
	# Close the db connection
	db.close()