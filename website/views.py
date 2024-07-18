from flask import Blueprint, render_template, url_for, flash, redirect, request
from flask_login import login_required, current_user
from .models import Alumni, Address, User, Employment, Degree, Skillset, Donations, Newsletter, SentTo
from . import db
from .forms import AlumniForm, AddressForm,EmploymentForm, DegreeForm, DonationsForm, SkillsetForm
from sqlalchemy import or_
from .decorators import role_required
views = Blueprint('views', __name__)

@views.route('/')
@login_required
def home():
    return render_template("home.html", user=current_user)
# Alumni List page Functions
@views.route('/alumni', methods=['GET', 'POST'])
@login_required
def alumni_list():
    alumni = []

    if request.method == 'POST':
        search_term = request.form.get('search', '').strip()
        
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
    return render_template("alumni_list.html", alumni=alumni, user=current_user)

@views.route('/alumni/new', methods=['GET', 'POST'])
@login_required
def add_alumni():
    form = AlumniForm()
    if form.validate_on_submit():
        new_alumni = Alumni(
            alumniID=form.alumniID.data,
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
    return render_template('add_alumni.html', form=form, user=current_user)

# Alumni Page Functions
@views.route('/alumni/<int:id>', methods=['GET'])
@login_required
def alumni_profile(id):
    alumni = Alumni.query.get_or_404(id)
    return render_template('alumni_profile.html', alumni=alumni, user=current_user)

@views.route('/alumni/<int:id>/update', methods=['GET', 'POST'])
@login_required
@role_required('admin')
def alumni_update(id):
    alumni = Alumni.query.get_or_404(id)
    form = AlumniForm()
    if form.validate_on_submit():
        alumni.alumniID = form.alumniID.data
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
@role_required('admin')
def alumni_delete(id):
    alumni = Alumni.query.get_or_404(id)
    db.session.delete(alumni)
    db.session.commit()
    flash('Alumni deleted successfully!', 'success')
    return redirect(url_for('views.alumni_list'))

# Address Page Functions
@views.route('/alumni/<int:alumni_id>/addresses', methods=['GET'])
@login_required
def view_addresses(alumni_id):
    alumni = Alumni.query.get_or_404(alumni_id)
    addresses = Address.query.filter_by(alumniID=alumni_id).all()
    return render_template('view_address.html', addresses=addresses, alumni=alumni, alumni_id=alumni_id, user=current_user)

@views.route('/alumni/<int:alumni_id>/address/add', methods=['GET', 'POST'])
@login_required
def add_address(alumni_id):
    form = AddressForm()
    if form.validate_on_submit():
        new_address = Address(
            alumniID=alumni_id,
            addressID=form.addressID.data,
            address=form.address.data,
            city=form.city.data,
            state=form.state.data,
            zipCode=form.zipCode.data,
            activeYN=form.activeYN.data,
            primaryYN=form.primaryYN.data
        )
        db.session.add(new_address)
        db.session.commit()
        flash('New address added successfully!', 'success')
        return redirect(url_for('views.view_addresses', alumni_id=alumni_id))
    return render_template('add_address.html', form=form, alumni_id=alumni_id, user=current_user)

@views.route('/address/<int:id>/update', methods=['GET', 'POST'])
@login_required
@role_required('admin')
def update_address(id):
    address = Address.query.get_or_404(id)
    form = AddressForm(obj=address)
    if form.validate_on_submit():
        form.populate_obj(address)
        db.session.commit()
        flash('Address updated successfully!', 'success')
        return redirect(url_for('views.view_addresses', alumni_id=address.alumniID))
    return render_template('update_address.html', form=form, user=current_user)

@views.route('/address/<int:id>/delete', methods=['POST'])
@login_required
@role_required('admin')
def delete_address(id):
    address = Address.query.get_or_404(id)
    db.session.delete(address)
    db.session.commit()
    flash('Address deleted successfully!', 'success')
    return redirect(url_for('views.view_addresses', alumni_id=address.alumniID))

# Employement Page Functions
@views.route('/alumni/<int:alumni_id>/employment', methods=['GET'])
@login_required
def view_employment(alumni_id):
    alumni = Alumni.query.get_or_404(alumni_id)
    employments = Employment.query.filter_by(alumniID=alumni_id).all()
    return render_template('view_employment.html', employments=employments, alumni=alumni, alumni_id=alumni_id, user=current_user)

@views.route('/alumni/<int:alumni_id>/employment/add', methods=['GET', 'POST'])
@login_required
def add_employment(alumni_id):
    form = EmploymentForm()
    if form.validate_on_submit():
        new_employment = Employment(
            alumniID=alumni_id,
            EID=form.EID.data,
            company=form.company.data,
            city=form.city.data,
            state=form.state.data,
            zip=form.zip.data,
            jobTitle=form.jobTitle.data,
            startDate=form.startDate.data,
            endDate=form.endDate.data,
            currentYN=form.currentYN.data,
            notes=form.notes.data
        )
        db.session.add(new_employment)
        db.session.commit()
        flash('New employment added successfully!', 'success')
        return redirect(url_for('views.view_employment', alumni_id=alumni_id))
    return render_template('add_employment.html', form=form, alumni_id=alumni_id, user=current_user)

@views.route('/employment/<int:id>/update', methods=['GET', 'POST'])
@login_required
@role_required('admin')
def update_employment(id):
    employment = Employment.query.get_or_404(id)
    form = EmploymentForm(obj=employment)
    if form.validate_on_submit():
        form.populate_obj(employment)
        db.session.commit()
        flash('Employment updated successfully!', 'success')
        return redirect(url_for('views.view_employment', alumni_id=employment.alumniID))
    return render_template('update_employment.html', form=form, employment=employment, user=current_user)

@views.route('/employment/<int:id>/delete', methods=['POST'])
@login_required
@role_required('admin')
def delete_employment(id):
    employment = Employment.query.get_or_404(id)
    db.session.delete(employment)
    db.session.commit()
    flash('Employment deleted successfully!', 'success')
    return redirect(url_for('views.view_employment', alumni_id=employment.alumniID))

# Degree Page Functions
@views.route('/alumni/<int:alumni_id>/degrees', methods=['GET'])
@login_required
def view_degrees(alumni_id):
    alumni = Alumni.query.get_or_404(alumni_id)
    degrees = Degree.query.filter_by(alumniID=alumni_id).all()
    return render_template('view_degrees.html', degrees=degrees, alumni=alumni, alumni_id=alumni_id, user=current_user)

@views.route('/alumni/<int:alumni_id>/degrees/add', methods=['GET', 'POST'])
@login_required
def add_degree(alumni_id):
    form = DegreeForm()
    if form.validate_on_submit():
        new_degree = Degree(
            alumniID=alumni_id,
            degreeID=form.degreeID.data,
            major=form.major.data,
            minor=form.minor.data,
            graduationDT=form.graduationDT.data,
            university=form.university.data,
            city=form.city.data,
            state=form.state.data
        )
        db.session.add(new_degree)
        db.session.commit()
        flash('New degree added successfully!', 'success')
        return redirect(url_for('views.view_degrees', alumni_id=alumni_id))
    return render_template('add_degree.html', form=form, alumni_id=alumni_id, user=current_user)

@views.route('/degree/<int:id>/update', methods=['GET', 'POST'])
@login_required
@role_required('admin')
def update_degree(id):
    degree = Degree.query.get_or_404(id)
    form = DegreeForm(obj=degree)
    if form.validate_on_submit():
        form.populate_obj(degree)
        db.session.commit()
        flash('Degree updated successfully!', 'success')
        return redirect(url_for('views.view_degrees', alumni_id=degree.alumniID))
    return render_template('update_degree.html', form=form, degree=degree, user=current_user)

@views.route('/degree/<int:id>/delete', methods=['POST'])
@login_required
@role_required('admin')
def delete_degree(id):
    degree = Degree.query.get_or_404(id)
    db.session.delete(degree)
    db.session.commit()
    flash('Degree deleted successfully!', 'success')
    return redirect(url_for('views.view_degrees', alumni_id=degree.alumniID))

# Donations Page Functions
@views.route('/alumni/<int:alumni_id>/donations', methods=['GET'])
@login_required
def view_donations(alumni_id):
    alumni = Alumni.query.get_or_404(alumni_id)
    donations = Donations.query.filter_by(alumniID=alumni_id).all()
    return render_template('view_donations.html', donations=donations, alumni=alumni, alumni_id=alumni_id, user=current_user)

@views.route('/alumni/<int:alumni_id>/donations/add', methods=['GET', 'POST'])
@login_required
def add_donation(alumni_id):
    form = DonationsForm()
    if form.validate_on_submit():
        new_donation = Donations(
            alumniID=alumni_id,
            donationID=form.donationID.data,
            donationAmt=form.donationAmt.data,
            donationDT=form.donationDT.data,
            reason=form.reason.data,
            description=form.description.data
        )
        db.session.add(new_donation)
        db.session.commit()
        flash('New donation added successfully!', 'success')
        return redirect(url_for('views.view_donations', alumni_id=alumni_id))
    return render_template('add_donation.html', form=form, alumni_id=alumni_id, user=current_user)

@views.route('/donation/<int:id>/update', methods=['GET', 'POST'])
@login_required
@role_required('admin')
def update_donation(id):
    donation = Donations.query.get_or_404(id)
    form = DonationsForm(obj=donation)
    if form.validate_on_submit():
        form.populate_obj(donation)
        db.session.commit()
        flash('Donation updated successfully!', 'success')
        return redirect(url_for('views.view_donations', alumni_id=donation.alumniID))
    return render_template('update_donation.html', form=form,   donation=donation, user=current_user)

@views.route('/donation/<int:id>/delete', methods=['POST'])
@login_required
@role_required('admin')
def delete_donation(id):
    donation = Donations.query.get_or_404(id)
    db.session.delete(donation)
    db.session.commit()
    flash('Donation deleted successfully!', 'success')
    return redirect(url_for('views.view_donations', alumni_id=donation.alumniID))

#Skillset Page Functions
@views.route('/alumni/<int:alumni_id>/skillsets', methods=['GET'])
@login_required
def view_skillsets(alumni_id):
    alumni = Alumni.query.get_or_404(alumni_id)
    skillsets = Skillset.query.filter_by(alumniID=alumni_id).all()
    return render_template('view_skillsets.html', skillsets=skillsets,alumni=alumni, alumni_id=alumni_id, user=current_user)

@views.route('/alumni/<int:alumni_id>/skillsets/add', methods=['GET', 'POST'])
@login_required
def add_skillset(alumni_id):
    form = SkillsetForm()
    if form.validate_on_submit():
        new_skillset = Skillset(
            alumniID=alumni_id,
            SID=form.SID.data,
            skill=form.skill.data,
            proficiency=form.proficiency.data,
            description=form.description.data
        )
        db.session.add(new_skillset)
        db.session.commit()
        flash('New skillset added successfully!', 'success')
        return redirect(url_for('views.view_skillsets', alumni_id=alumni_id))
    return render_template('add_skillset.html', form=form, alumni_id=alumni_id, user=current_user)

@views.route('/skillset/<int:id>/update', methods=['GET', 'POST'])
@login_required
@role_required('admin')
def update_skillset(id):
    skillset = Skillset.query.get_or_404(id)
    form = SkillsetForm(obj=skillset)
    if form.validate_on_submit():
        form.populate_obj(skillset)
        db.session.commit()
        flash('Skillset updated successfully!', 'success')
        return redirect(url_for('views.view_skillsets', alumni_id=skillset.alumniID))
    return render_template('update_skillset.html', form=form, skillset=skillset, user=current_user)

@views.route('/skillset/<int:id>/delete', methods=['POST'])
@login_required
@role_required('admin')
def delete_skillset(id):
    skillset = Skillset.query.get_or_404(id)
    db.session.delete(skillset)
    db.session.commit()
    flash('Skillset deleted successfully!', 'success')
    return redirect(url_for('views.view_skillsets', alumni_id=skillset.alumniID))
