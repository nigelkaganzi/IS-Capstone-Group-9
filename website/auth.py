from flask import Blueprint, render_template, request, flash, redirect, url_for
from .models import User
from werkzeug.security import generate_password_hash, check_password_hash
from . import db
from flask_login import login_user, login_required,logout_user, current_user
auth = Blueprint('auth', __name__)

@auth.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        UID = request.form.get('UID')
        password = request.form.get('password')
        
        user = User.query.filter_by(UID=UID).first()
        if user:
            print("user found") # Debug print
            if user.password == password:
                print("Password correct") # Debug print
                flash('Logged in successfully',category='success')
                login_user(user, remember=True)
                return redirect(url_for('views.home'))
            else:
                print("Incorrect password")  # Debug print
                flash('Incorrect password, try again', category='error')
        else:
            print("user does not exist")  # Debug print
            flash('User does not exist.', category='error')
    return render_template("login.html", user=current_user)

@auth.route('/logout')
@login_required
def logout():
    logout_user()
    flash('You have been logged out', category='success')
    return redirect(url_for('auth.login'))


