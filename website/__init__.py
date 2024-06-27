from flask import Flask


DB_NAME = "capstone.db"

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'ISCAPSTONEGROUP9'
    from .views import views
    from .auth import auth
    
    app.register_blueprint(views, url_prefix='/')
    app.register_blueprint(auth, url_prefix='/')
    
    return app