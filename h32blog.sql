-- drop database h32_blog;
SHOW DATABASES;
CREATE DATABASE h32_blog;
SHOW DATABASES;
USE h32_blog;
CREATE TABLE USER (
	userID INT PRIMARY KEY AUTO_INCREMENT,
	accountName VARCHAR(50) NOT NULL UNIQUE,
    passWord VARCHAR(50) NOT NULL,
    fullName VARCHAR(50) NOT NULL,
    academicYear  INT,
    about TEXT,
    major NVARCHAR(50),
    currentJob TEXT
);

CREATE TABLE USERROLE (
	userRoleID VARCHAR(50) PRIMARY KEY,
	userRoleNote VARCHAR(50),
    active BOOLEAN NOT NULL,
    createByUserID INT
);

CREATE TABLE USERUSERROLE (
	userID INT,
    userRoleID VARCHAR(50),
    PRIMARY KEY (userID, userRoleID),
    FOREIGN KEY (userID) REFERENCES USER(userID),
    FOREIGN KEY (userRoleID) REFERENCES USERROLE(userRoleID)
);

CREATE TABLE IMAGEUSER (
	imageID VARCHAR(50) PRIMARY KEY,
	userID INT NOT NULL,
    imgURL TEXT NOT NULL,
    imgUnBgURL TEXT NOT NULL,
    FOREIGN KEY (userID) REFERENCES USER(userID)
);

CREATE TABLE LabImage (
	labImageID VARCHAR(50) PRIMARY KEY,
    userID INT NOT NULL,
    tag VARCHAR (50),
    description NVARCHAR(100) DEFAULT "img_lab",
    year INT DEFAULT '1',
    imgURL TEXT NOT NULL,
    FOREIGN KEY (userID) REFERENCES USER(userID)
);

CREATE TABLE TimeLine (
	timeLineID INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    tag VARCHAR(50),
    description TEXT NOT NULL,
    year INT DEFAULT '2',
    title TEXT NOT NULL
);
