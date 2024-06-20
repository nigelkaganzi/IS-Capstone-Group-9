CREATE DATABASE capstoneproject;
USE capstoneproject;
CREATE TABLE alumni (
    alumniID        INT         NOT NULL,
    fName           VARCHAR(20) NOT NULL,
    lName           VARCHAR(20) NOT NULL,
	phone           VARCHAR(10),
    email           VARCHAR(50),
    DOB             DATE,
    gender          VARCHAR(1),
    ethnicity       VARCHAR(1),
    website         VARCHAR(100),
    linkedIn_link   VARCHAR(100),
    twitter_link    VARCHAR(100),
    facebook_link   VARCHAR(100),
    instagram_link  VARCHAR(100),
    guestSpeakerYN  VARCHAR(1),
    newsLetterYN    VARCHAR(1),
    imageThumb      VARCHAR(200),
    imageNormal     VARCHAR(200),
    description     VARCHAR(500),
    deceasedYN      VARCHAR(1),
    deceasedDT      DATE,
    deceasedNotes   VARCHAR(500),
    CONSTRAINT PK_alumniID PRIMARY KEY CLUSTERED (alumniID)
);
CREATE TABLE address (
	addressID        INT         NOT NULL,
    alumniID        INT         NOT NULL,
    address			VARCHAR(50),
    city			VARCHAR(50),
    state			VARCHAR(2),
    zipCode			VARCHAR(10),
    activeYN		VARCHAR(1),
    primaryYN		VARCHAR(1),
    PRIMARY KEY (addressID),
    FOREIGN KEY (alumniID) REFERENCES Alumni(alumniID)
    );
    
    CREATE TABLE User (
    UID VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    fName VARCHAR(20) NOT NULL,
    lName VARCHAR(20) NOT NULL,
    jobDescription VARCHAR(50),
    viewPriveledgeYN CHAR(1),
    insertPriveledgeYN CHAR(1),
    updatePriveledgeYN CHAR(1),
    deletePriveledgeYN CHAR(1),
    PRIMARY KEY (UID)
);
CREATE TABLE Employment (
    EID INT NOT NULL AUTO_INCREMENT,
    alumniID INT NOT NULL,
    company VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    state CHAR(2),
    zip VARCHAR(10),
    jobTitle VARCHAR(20),
    startDate DATE,
    endDate DATE,
    currentYN CHAR(1),
    notes VARCHAR(100),
    PRIMARY KEY (EID),
    FOREIGN KEY (alumniID) REFERENCES Alumni(alumniID)
);
CREATE TABLE Degree (
    degreeID INT NOT NULL AUTO_INCREMENT,
    alumniID INT NOT NULL,
    major VARCHAR(50) NOT NULL,
    minor VARCHAR(50),
    graduationDT DATE,
    university VARCHAR(100),
    city VARCHAR(50),
    state CHAR(2),
    PRIMARY KEY (degreeID),
    FOREIGN KEY (alumniID) REFERENCES Alumni(alumniID)
);
CREATE TABLE Skillset (
    SID INT NOT NULL AUTO_INCREMENT,
    alumniID INT NOT NULL,
    skill VARCHAR(50) NOT NULL,
    proficiency VARCHAR(10),
    description VARCHAR(100),
    PRIMARY KEY (SID),
    FOREIGN KEY (alumniID) REFERENCES Alumni(alumniID)
);
CREATE TABLE Donations (
    donationID INT NOT NULL AUTO_INCREMENT,
    alumniID INT NOT NULL,
    donationAmt DECIMAL(11,2) NOT NULL,
    donationDT DATE NOT NULL,
    reason VARCHAR(200),
    description VARCHAR(200),
    PRIMARY KEY (donationID),
    FOREIGN KEY (alumniID) REFERENCES Alumni(alumniID)
);
CREATE TABLE Newsletter (
    NID INT NOT NULL AUTO_INCREMENT,
    newsDate DATE NOT NULL,
    headline VARCHAR(200),
    description VARCHAR(200),
    link VARCHAR(200),
    fileLoc VARCHAR(200),
    PRIMARY KEY (NID)
);
CREATE TABLE SentTo (
    alumniID INT NOT NULL,
    NID INT NOT NULL,
    sentDate DATE,
    PRIMARY KEY (alumniID, NID),
    FOREIGN KEY (alumniID) REFERENCES Alumni(alumniID),
    FOREIGN KEY (NID) REFERENCES Newsletter(NID)
);
