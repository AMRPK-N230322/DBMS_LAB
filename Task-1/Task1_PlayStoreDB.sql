#CREATE DATABASE PlayStoreDB;
USE PlayStoreDB;
/*CREATE TABLE DEVELOPERS
(
DeveloperID INT Primary Key,
DeveloperName VARCHAR(60) Not Null,
Country VARCHAR(30),
FoundedYear INT
);
INSERT INTO DEVELOPERS
VALUES
(101, "Google LLC", "USA", 1998),
(102, "Meta PLatform", "USA", 2004),
(103, "Spotify AB", "Sweden", 2006),
(104, "Canva Pty Ltd", "Australia", 2012),
(105, "BYJU'S", "India", 2011);*/

/*CREATE TABLE PUBLISHERS
(
PublisherID INT Primary Key,
PublisherName VARCHAR(60),
HeadOffice VARCHAR(40),
SupportEmail VARCHAR(60)
);
INSERT INTO PUBLISHERS
VALUES
(201,"Google Play","California","support@google.com"),
(202,"Samsung Galaxy Store","Seoul","support@samsung.com"),
(203,"Huawei App Gallery","Shenzhen","support@huawei.com"),
(204,"Amazon App Store","Seattle","support@amazon.com");*/

/*CREATE TABLE CATEGORIES
(
CategoryID INT Primary Key,
CategoryName VARCHAR(40),
MinimumAge INT
);
INSERT INTO CATEGORIES
VALUES
(301,"Education",3),
(302,"Productivity",3),
(303,"Music",12),
(304,"Social",13),
(305,"Gaming",16);*/


/*CREATE TABLE APPS
(
AppID INT Primary Key,
AppName VARCHAR(60),
DeveloperID INT,
PublisherID INT,
CategoryID INT,
Rating DECIMAL(2,1),
Downloads BIGINT,
Price DECIMAL(6,2)
);
INSERT INTO APPS
VALUES
(1001,"Google Classroom",101,201,301,4.6,5000000,0),
(1002,"Google Keep",101,201,302,4.5,1000000,0),
(1003,"Instagram",102,201,304,4.4,5000000,0),
(1004,"Spotify",103,201,303,4.5,1000000,0),
(1005,"Canva",104,201,302,4.7,5000000,0),
(1006,"BYJU'S Learning",105,201,301,4.3,100000000,299),
(1007,"Candy Crush",102,204,305,4.6,1000000000,0),
(1008,"Temple Run",104,203,305,4.2,50000000,0);*/

DESCRIBE APPS;

#Level 1 INTERMEDIATE
INSERT INTO DEVELOPERS
VALUES(106,"OpenAI","USA",2015);


INSERT INTO CATEGORIES
VALUES(306,"Artificial Intelligence",12);


INSERT INTO APPS
VALUES(1009,"ChatGPT",106,NULL,306,4.5,100000000,0);
UPDATE APPS
SET PublisherID = 201
WHERE AppName = "ChatGPT";

UPDATE APPS
SET Rating = 4.5
WHERE AppName = "Temple Run";


DELETE FROM DEVELOPERS
WHERE DeveloperID = 105;

#LEVEL 2 PRACTICE
UPDATE PUBLISHERS
SET SupportEmail = "appscsteam@samsung.com"
WHERE PublisherName = "Samsung Galaxy Store";


INSERT INTO APPS
VALUES
(1010,"Free Fire",101,201,305,4.3,50000000,0),
(1011,"Facebook",102,201,304,4.3,1000000000,0);


UPDATE APPS
SET Price = 199
WHERE AppName = "BYJU'S Learning";

DELETE FROM CATEGORIES
WHERE CategoryName = "Music";

SELECT * FROM DEVELOPERS;
SELECT * FROM PUBLISHERS;
SELECT * FROM CATEGORIES;
SELECT * FROM APPS;