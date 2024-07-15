from flask import Blueprint, render_template, url_for, flash, redirect, request
from flask_login import login_required, current_user
from .models import Alumni, Address, User, Employment, Degree, Skillset, Donations, Newsletter, SentTo
from . import db
from .forms import AlumniForm
from sqlalchemy import or_

views = Blueprint('views', __name__)

@views.route('/')
@login_required
def home():
    return render_template("home.html", user=current_user)

@views.route('/alumni', methods=['GET', 'POST'])
@login_required
def alumni_list():
    alumni = []

    if request.method == 'POST':
        search_term = request.form.get('search', '').strip()
        print("Search Term:", search_term)  # Debugging statement
        if search_term:
            alumni = Alumni.query.filter(
                or_(
                    Alumni.fName.ilike(f'%{search_term}%'),
                    Alumni.lName.ilike(f'%{search_term}%'),
                    Alumni.email.ilike(f'%{search_term}%')
                )
            ).all()
        else:
            flash('Please enter a search term.', 'warning')
    else:
        alumni = Alumni.query.all()

    
    print("Alumni List:", alumni)  # Debugging statement
    return render_template("alumni_list.html", alumni=alumni, user=current_user)

@views.route('/alumni/new', methods=['GET', 'POST'])
@login_required
def alumni_create():
    form = AlumniForm()
    if form.validate_on_submit():
        new_alumni = Alumni(
            fName=form.fName.data,
            lName=form.lName.data,
            phone=form.phone.data,
            email=form.email.data,
            DOB=form.DOB.data,
            gender=form.gender.data,
            ethnicity=form.ethnicity.data,
            website=form.website.data,
            linkedIn_link=form.linkedIn_link.data,
            twitter_link=form.twitter_link.data,
            facebook_link=form.facebook_link.data,
            instagram_link=form.instagram_link.data,
            guestSpeakerYN=form.guestSpeakerYN.data,
            newsLetterYN=form.newsLetterYN.data,
            imageThumb=form.imageThumb.data,
            imageNormal=form.imageNormal.data,
            description=form.description.data,
            deceasedYN=form.deceasedYN.data,
            deceasedDT=form.deceasedDT.data,
            deceasedNotes=form.deceasedNotes.data
        )
        db.session.add(new_alumni)
        db.session.commit()
        flash('New alumni added successfully!', 'success')
        return redirect(url_for('views.alumni_list'))
    return render_template('alumni_form.html', form=form, user=current_user)

@views.route('/alumni/<int:id>/update', methods=['GET', 'POST'])
@login_required
def alumni_update(id):
    alumni = Alumni.query.get_or_404(id)
    form = AlumniForm()
    if form.validate_on_submit():
        alumni.fName = form.fName.data
        alumni.lName = form.lName.data
        alumni.phone = form.phone.data
        alumni.email = form.email.data
        alumni.DOB = form.DOB.data
        alumni.gender = form.gender.data
        alumni.ethnicity = form.ethnicity.data
        alumni.website = form.website.data
        alumni.linkedIn_link = form.linkedIn_link.data
        alumni.twitter_link = form.twitter_link.data
        alumni.facebook_link = form.facebook_link.data
        alumni.instagram_link = form.instagram_link.data
        alumni.guestSpeakerYN = form.guestSpeakerYN.data
        alumni.newsLetterYN = form.newsLetterYN.data
        alumni.imageThumb = form.imageThumb.data
        alumni.imageNormal = form.imageNormal.data
        alumni.description = form.description.data
        alumni.deceasedYN = form.deceasedYN.data
        alumni.deceasedDT = form.deceasedDT.data
        alumni.deceasedNotes = form.deceasedNotes.data
        db.session.commit()
        flash('Alumni information updated successfully!', 'success')
        return redirect(url_for('views.alumni_list'))
    elif request.method == 'GET':
        form.fName.data = alumni.fName
        form.lName.data = alumni.lName
        form.phone.data = alumni.phone
        form.email.data = alumni.email
        form.DOB.data = alumni.DOB
        form.gender.data = alumni.gender
        form.ethnicity.data = alumni.ethnicity
        form.website.data = alumni.website
        form.linkedIn_link.data = alumni.linkedIn_link
        form.twitter_link.data = alumni.twitter_link
        form.facebook_link.data = alumni.facebook_link
        form.instagram_link.data = alumni.instagram_link
        form.guestSpeakerYN.data = alumni.guestSpeakerYN
        form.newsLetterYN.data = alumni.newsLetterYN
        form.imageThumb.data = alumni.imageThumb
        form.imageNormal.data = alumni.imageNormal
        form.description.data = alumni.description
        form.deceasedYN.data = alumni.deceasedYN
        form.deceasedDT.data = alumni.deceasedDT
        form.deceasedNotes.data = alumni.deceasedNotes
    return render_template('alumni_form.html', form=form, user=current_user)

@views.route('/alumni/<int:id>/delete', methods=['POST'])
@login_required
def alumni_delete(id):
    alumni = Alumni.query.get_or_404(id)
    db.session.delete(alumni)
    db.session.commit()
    flash('Alumni deleted successfully!', 'success')
    return redirect(url_for('views.alumni_list'))

@views.route('/alumni/<int:id>', methods=['GET'])
@login_required
def alumni_profile(id):
    alumni = Alumni.query.get_or_404(id)
    degrees = Degree.query.filter_by(alumniID=id).all()
    employments = Employment.query.filter_by(alumniID=id).all()
    return render_template('alumni_profile.html', alumni=alumni, degrees=degrees, employments=employments, user=current_user)

