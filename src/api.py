from models import *
from flask_restless import APIManager
from app import *

manager = APIManager(app, flask_sqlalchemy_db=db)

manager.create_api(Language)
manager.create_api(Book)
manager.create_api(DisplayName)
manager.create_api(Verses)
manager.create_api(Version)

if __name__ == "__main__":
	app.run(debug=True)