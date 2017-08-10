from models import *
from flask_restless import APIManager
from app import *

manager = APIManager(app, flask_sqlalchemy_db=db)

manager.create_api(Language)
manager.create_api(Book)
manager.create_api(DisplayName)
manager.create_api(Verses)
manager.create_api(Version)

# SERIN i dont think our website would need post or delete right? unless we're using this to add new version like ESV etc.
# if you want to post or delete, you need to specity
# manager.create_api(Language, methods=['GET', 'POST', 'DELETE', 'PUT'])

if __name__ == "__main__":
	app.run(debug=True)