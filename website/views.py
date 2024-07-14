from flask import Blueprint, render_template
from flask_login import login_required, current_user
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
from wtforms.validators import DataRequired


views = Blueprint('views', __name__)

@views.route('/')
@login_required
# Create Home Page
def home():
    return render_template("home.html", user=current_user)
# Create Alumni Page
@views.route('/alumni')
@login_required
def alumni():
    return render_template("alumni.html")