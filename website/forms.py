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
    addressID =IntegerField('Address ID', validators=[DataRequired()])
    alumniID =IntegerField('Alumni ID', validators=[DataRequired()])
    address = StringField('Address', validators=[DataRequired(),Length(max=50)])
    city = StringField('City', validators=[DataRequired(),Length(max=50)])
    state = StringField('State', validators=[DataRequired(),Length(max=2)])
    zipCode = StringField('Zip Code', validators=[DataRequired(),Length(max=10)])
    activeYN = StringField('Active', validators=[DataRequired(),Length(max=1)])
    primaryYN = StringField('Primary', validators=[DataRequired(),Length(max=1)])
    submit = SubmitField('Submit')    

class EmploymentForm(FlaskForm):
    EID = IntegerField('Employment ID',validators=[DataRequired()])
    alumniID = IntegerField('Alumni ID', validators=[DataRequired()])
    company = StringField('Company', validators=[DataRequired(), Length(max=50)])
    city = StringField('City', validators=[Optional(), Length(max=50)])
    state = StringField('State', validators=[Optional(), Length(max=2)])
    zip = StringField('ZIP Code', validators=[Optional(), Length(max=10)])
    jobTitle = StringField('Job Title', validators=[Optional(), Length(max=20)])
    startDate = DateField('Start Date', format='%Y-%m-%d', validators=[Optional()])
    endDate = DateField('End Date', format='%Y-%m-%d', validators=[Optional()])
    currentYN = SelectField('Currently Employed', choices=[('Y', 'Yes'), ('N', 'No')], validators=[DataRequired()])
    notes = TextAreaField('Notes', validators=[Optional(), Length(max=100)])
    submit=SubmitField('Submit')
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
