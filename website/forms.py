from flask_wtf import FlaskForm
from wtforms import StringField, DateField, SelectField, SubmitField, TextAreaField, BooleanField, IntegerField,DecimalField
from wtforms.validators import DataRequired, Email, Length, Optional

from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, IntegerField, DateField, TextAreaField, SelectField
from wtforms.validators import DataRequired, Length, Optional

class SearchForm(FlaskForm):
    search_type = SelectField(
        'Search Criteria',
        choices=[
            ('name', 'Name'),
            ('employment', 'Employment'),
            ('degree', 'Degree'),
            ('skill', 'Skill')
        ],
        validators=[Optional()]
    )
    search_term = StringField('Search Term', validators=[DataRequired()])
    submit = SubmitField('Search')
    
class AlumniForm(FlaskForm):
    alumniID = IntegerField('Alumni ID',validators=[DataRequired()])
    fName = StringField('First Name', validators=[DataRequired(), Length(max=20)])
    lName = StringField('Last Name', validators=[DataRequired(), Length(max=20)])
    phone = StringField('Phone', validators=[Optional(), Length(max=10)])
    email = StringField('Email', validators=[Optional(), Length(max=50)])
    DOB = DateField('Date of Birth', format='%Y-%m-%d', validators=[Optional()])
    gender = StringField('Gender', validators=[Optional(), Length(max=1)])
    ethnicity = StringField('Ethnicity', validators=[Optional(), Length(max=1)])
    website = StringField('Website', validators=[Optional(), Length(max=100)])
    linkedIn_link = StringField('LinkedIn', validators=[Optional(), Length(max=100)])
    twitter_link = StringField('Twitter', validators=[Optional(), Length(max=100)])
    facebook_link = StringField('Facebook', validators=[Optional(), Length(max=100)])
    instagram_link = StringField('Instagram', validators=[Optional(), Length(max=100)])
    guestSpeakerYN = StringField('Guest Speaker', validators=[Optional(), Length(max=1)])
    newsLetterYN = StringField('Newsletter', validators=[Optional(), Length(max=1)])
    imageThumb = StringField('Image Thumbnail', validators=[Optional(), Length(max=200)])
    imageNormal = StringField('Image', validators=[Optional(), Length(max=200)])
    description = TextAreaField('Description', validators=[Optional(), Length(max=500)])
    deceasedYN = StringField('Deceased', validators=[Optional(), Length(max=1)])
    deceasedDT = DateField('Deceased Date', format='%Y-%m-%d', validators=[Optional()])
    deceasedNotes = TextAreaField('Deceased Notes', validators=[Optional(), Length(max=500)])
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
    degreeID = IntegerField('Degree ID', validators=[DataRequired()])
    alumniID = IntegerField('Alumni ID', validators=[DataRequired()])
    major = StringField('Major', validators=[DataRequired(), Length(max=50)])
    minor = StringField('Minor', validators=[Optional(), Length(max=50)])
    graduationDT = DateField('Graduation Date', format='%Y-%m-%d', validators=[Optional()])
    university = StringField('University', validators=[Optional(), Length(max=100)])
    city = StringField('City', validators=[Optional(), Length(max=50)])
    state = StringField('State', validators=[Optional(), Length(max=2)])
    submit = SubmitField('Submit')

class SkillsetForm(FlaskForm):
    SID = IntegerField('Skillset ID', validators=[DataRequired()])
    alumniID = IntegerField('Alumni ID', validators=[DataRequired()])
    skill = StringField('Skill', validators=[DataRequired(), Length(max=50)])
    proficiency = StringField('Proficiency', validators=[Optional(), Length(max=20)])
    description = StringField('Description', validators=[Optional(), Length(max=100)])
    submit = SubmitField('Submit')
    
class DonationsForm(FlaskForm):
    donationID = IntegerField('Donation ID', validators=[DataRequired()])
    alumniID = IntegerField('Alumni ID', validators=[DataRequired()])
    donationAmt = DecimalField('Donation Amount', places=2, validators=[DataRequired()])
    donationDT = DateField('Donation Date', format='%Y-%m-%d', validators=[DataRequired()])
    reason = StringField('Reason', validators=[Optional(), Length(max=200)])
    description = StringField('Description', validators=[Optional(), Length(max=200)])
    submit = SubmitField('Submit')
