from flask import Blueprint, render_template, request, flash, redirect, url_for, session
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
            if user.password == password:
                flash('Logged in successfully',category='success')
                login_user(user)
                session.permanent = False
                return redirect(url_for('views.home'))
            else:
                flash('Incorrect username or passoword, try again', category='error')
        else:
            flash('Incorrect username or password, try again.', category='error')
    return render_template("login.html", user=current_user)

@auth.route('/logout')
@login_required
def logout():
    logout_user()
    flash('You have been logged out', category='success')
    return redirect(url_for('auth.login'))


