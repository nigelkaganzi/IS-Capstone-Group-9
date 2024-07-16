from flask_wtf import FlaskForm
from wtforms import StringField, DateField, SelectField, SubmitField, TextAreaField, BooleanField, IntegerField
from wtforms.validators import DataRequired, Email, Length, Optional

class AlumniForm(FlaskForm):
    alumniID = IntegerField('Alumni ID', validators=[DataRequired()])
    fName = StringField('First Name', validators=[DataRequired(), Length(max=20)])
    lName = StringField('Last Name', validators=[DataRequired(), Length(max=20)])
    phone = StringField('Phone', validators=[Length(max=10)])
    email = StringField('Email', validators=[Length(max=50)])
    DOB = DateField('Date of Birth', format='%Y-%m-%d')
    gender = SelectField('Gender', choices=[('M', 'Male'), ('F', 'Female'), ('O', 'Other')])
    ethnicity = StringField('Ethnicity', validators=[Length(max=1)])
    website = StringField('Website', validators=[Length(max=100)])
    linkedIn_link = StringField('LinkedIn', validators=[Length(max=100)])
    twitter_link = StringField('Twitter', validators=[Length(max=100)])
    facebook_link = StringField('Facebook', validators=[Length(max=100)])
    instagram_link = StringField('Instagram', validators=[Length(max=100)])
    guestSpeakerYN = SelectField('Guest Speaker', choices=[('Y', 'Yes'), ('N', 'No')])
    newsLetterYN = SelectField('Newsletter Subscription', choices=[('Y', 'Yes'), ('N', 'No')])
    imageThumb = StringField('Thumbnail Image', validators=[Length(max=200)])
    imageNormal = StringField('Normal Image', validators=[Length(max=200)])
    description = TextAreaField('Description', validators=[Length(max=500)])
    deceasedYN = SelectField('Deceased', choices=[('Y', 'Yes'), ('N', 'No')])
    deceasedDT = DateField('Date of Death', format='%Y-%m-%d', validators=[Optional()])
    deceasedNotes = TextAreaField('Deceased Notes', validators=[Length(max=500)])
    submit = SubmitField('Submit')
    
class AddressForm(FlaskForm):
    address = StringField('Address', validators=[DataRequired()])
    city = StringField('City', validators=[DataRequired()])
    state = StringField('State', validators=[DataRequired()])
    zipCode = StringField('Zip Code', validators=[DataRequired()])
    activeYN = StringField('Active', validators=[DataRequired()])
    primaryYN = StringField('Primary', validators=[DataRequired()])
    submit = SubmitField('Update Address')    

class EmploymentForm(FlaskForm):
    company = StringField('Company', validators=[DataRequired()])
    job_title = StringField('Job Title', validators=[DataRequired()])
    start_date = DateField('Start Date', validators=[DataRequired()])  # Consider using a DateField
    end_date = DateField('End Date')  # Optional, consider using a DateField
    current_job = BooleanField('Is this your current job?')
    submit = SubmitField('Submit')

class DegreeForm(FlaskForm):
    degree_type = StringField('Degree Type', validators=[DataRequired()])
    field_of_study = StringField('Field of Study', validators=[DataRequired()])
    institution = StringField('Institution', validators=[DataRequired()])
    graduation_year = DateField('Graduation Year', validators=[DataRequired()])  # Consider using IntegerField
    submit = SubmitField('Submit')

class SkillsetForm(FlaskForm):
    skill_name = StringField('Skill Name', validators=[DataRequired()])
    proficiency = StringField('Proficiency')  # Could be a dropdown or radio field
    submit = SubmitField('Submit')

class DonationsForm(FlaskForm):
    amount = StringField('Amount', validators=[DataRequired()])  # Consider using FloatField for numerical input
    donation_date = StringField('Donation Date', validators=[DataRequired()])  # Consider using a DateField
    submit = SubmitField('Submit')
