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
SELECT * FROM DEVELOPERS; #return the table with the inserted records

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
SELECT * FROM PUBLISHERS;

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
SELECT * FROM CATEGORIES;

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
SELECT * FROM APPS;
DESCRIBE APPS;

#BASIC
SELECT UPPER(DeveloperName) 
FROM DEVELOPERS;
SELECT LOWER(DeveloperName) 
FROM DEVELOPERS;
SELECT LENGTH(AppName) 
FROM APPS;
SELECT CategoryName,
LENGTH(CategoryName) 
FROM CATEGORIES;
SELECT CURRENT_DATE(),
CURRENT_TIME();
SELECT ROUND(Rating,0) 
FROM APPS;

#INTERMEDIATE
SELECT SUBSTRING(AppName,1,5) 
FROM APPS;
SELECT CONCAT(DeveloperName,"--",Country) 
FROM DEVELOPERS;
SELECT ROUND(Rating) 
FROM APPS;
SELECT CEIL(Price) 
FROM APPS;
SELECT FoundedYear 
FROM DEVELOPERS;
SELECT CONVERT(Downloads,CHAR) 
FROM APPS;
#PRACTICE
SELECT UPPER(AppName),
RATING FROM APPS;
SELECT SUBSTRING(CategoryName,1,3)
FROM CATEGORIES;
SELECT ABS(200 - Price)
AS PriceDifference
FROM APPS;
SELECT DeveloperName,
LENGTH(DeveloperName)
FROM DEVELOPERS;
SELECT CURRENT_DATE(),CURRENT_TIME();
#using CAST
SELECT CAST(13861 AS CHAR);
#using CONVERT
SELECT CONVERT(13861,CHAR);
