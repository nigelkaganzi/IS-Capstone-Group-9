from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager
from datetime import datetime
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
from wtforms.validators import DataRequired


db = SQLAlchemy()

def create_app():
    app = Flask(__name__)
    app.config.from_object( 'config.Config')
    
    db.init_app(app)
    
    with app.app_context():
        from .models import Alumni, Address, User, Employment, Degree, Skillset, Donations, Newsletter, SentTo
        db.create_all()
    
    login_manager = LoginManager()
    login_manager.login_view ='auth.login'
    login_manager.init_app(app)
    
    @login_manager.user_loader
    def load_user(user_id):
        return User.query.get(int(user_id))
    
    from .views import views
    from .auth import auth
    
    app.register_blueprint(views, url_prefix='/')
    app.register_blueprint(auth, url_prefix='/')
    
   
    
    
    return app

