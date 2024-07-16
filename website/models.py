from . import db
from flask_login import UserMixin
class User(db.Model, UserMixin):
    __tablename__ = 'user'
    UID = db.Column(db.String(20), primary_key=True,)
    password = db.Column(db.String(20), nullable=False)
    fName = db.Column(db.String(20), nullable=False)
    lName = db.Column(db.String(20), nullable=False)
    jobDescription = db.Column(db.String(50))
    viewPriveledgeYN = db.Column(db.String(1))
    insertPriveledgeYN = db.Column(db.String(1))
    updatePriveledgeYN = db.Column(db.String(1))
    deletePriveledgeYN = db.Column(db.String(1))
    def get_id(self):
        return self.UID
class Alumni(db.Model):
    __tablename__ = 'alumni'
    alumniID = db.Column(db.Integer, primary_key=True,autoincrement=True)
    fName = db.Column(db.String(20), nullable=False)
    lName = db.Column(db.String(20), nullable=False)
    phone = db.Column(db.String(10))
    email = db.Column(db.String(50))
    DOB = db.Column(db.Date)
    gender = db.Column(db.String(1))
    ethnicity = db.Column(db.String(1))
    website = db.Column(db.String(100))
    linkedIn_link = db.Column(db.String(100))
    twitter_link = db.Column(db.String(100))
    facebook_link = db.Column(db.String(100))
    instagram_link = db.Column(db.String(100))
    guestSpeakerYN = db.Column(db.String(1))
    newsLetterYN = db.Column(db.String(1))
    imageThumb = db.Column(db.String(200))
    imageNormal = db.Column(db.String(200))
    description = db.Column(db.String(500))
    deceasedYN = db.Column(db.String(1))
    deceasedDT = db.Column(db.Date)
    deceasedNotes = db.Column(db.String(500))

class Address(db.Model):
    __tablename__ = 'address'
    addressID = db.Column(db.Integer, primary_key=True)
    alumniID = db.Column(db.Integer, db.ForeignKey('alumni.alumniID'), nullable=False)
    address = db.Column(db.String(50))
    city = db.Column(db.String(50))
    state = db.Column(db.String(2))
    zipCode = db.Column(db.String(10))
    activeYN = db.Column(db.String(1))
    primaryYN = db.Column(db.String(1))



class Employment(db.Model):
    __tablename__ = 'employment'
    EID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    alumniID = db.Column(db.Integer, db.ForeignKey('alumni.alumniID'), nullable=False)
    company = db.Column(db.String(50), nullable=False)
    city = db.Column(db.String(50))
    state = db.Column(db.String(2))
    zip = db.Column(db.String(10))
    jobTitle = db.Column(db.String(20))
    startDate = db.Column(db.Date)
    endDate = db.Column(db.Date)
    currentYN = db.Column(db.String(1))
    notes = db.Column(db.String(100))

class Degree(db.Model):
    __tablename__ = 'degree'
    degreeID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    alumniID = db.Column(db.Integer, db.ForeignKey('alumni.alumniID'), nullable=False)
    major = db.Column(db.String(50), nullable=False)
    minor = db.Column(db.String(50))
    graduationDT = db.Column(db.Date)
    university = db.Column(db.String(100))
    city = db.Column(db.String(50))
    state = db.Column(db.String(2))

class Skillset(db.Model):
    __tablename__ = 'skillset'
    SID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    alumniID = db.Column(db.Integer, db.ForeignKey('alumni.alumniID'), nullable=False)
    skill = db.Column(db.String(50), nullable=False)
    proficiency = db.Column(db.String(10))
    description = db.Column(db.String(100))

class Donations(db.Model):
    __tablename__ = 'donations'
    donationID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    alumniID = db.Column(db.Integer, db.ForeignKey('alumni.alumniID'), nullable=False)
    donationAmt = db.Column(db.Numeric(11, 2), nullable=False)
    donationDT = db.Column(db.Date, nullable=False)
    reason = db.Column(db.String(200))
    description = db.Column(db.String(200))

class Newsletter(db.Model):
    __tablename__ = 'newsletter'
    NID = db.Column(db.Integer, primary_key=True, autoincrement=True)
    newsDate = db.Column(db.Date, nullable=False)
    headline = db.Column(db.String(200))
    description = db.Column(db.String(200))
    link = db.Column(db.String(200))
    fileLoc = db.Column(db.String(200))

class SentTo(db.Model):
    __tablename__ = 'sent_to'
    alumniID = db.Column(db.Integer, db.ForeignKey('alumni.alumniID'), primary_key=True)
    NID = db.Column(db.Integer, db.ForeignKey('newsletter.NID'), primary_key=True)
    sentDate = db.Column(db.Date)

