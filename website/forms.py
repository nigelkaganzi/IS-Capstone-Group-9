from flask_wtf import FlaskForm
from wtforms import StringField, DateField, SelectField, SubmitField, TextAreaField
from wtforms.validators import DataRequired, Email, Length, Optional

class AlumniForm(FlaskForm):
    fName = StringField('First Name', validators=[DataRequired(), Length(max=20)])
    lName = StringField('Last Name', validators=[DataRequired(), Length(max=20)])
    phone = StringField('Phone', validators=[Length(max=10)])
    email = StringField('Email', validators=[Email(), Length(max=50)])
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