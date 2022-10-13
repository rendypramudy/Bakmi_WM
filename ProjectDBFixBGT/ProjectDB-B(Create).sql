CREATE DATABASE Bakmi_WM
GO
USE Bakmi_WM
GO

CREATE TABLE StaffPosition(
	StaffPositionID CHAR(5) PRIMARY KEY CHECK (StaffPositionID LIKE ('SP[0-9][0-9][0-9]')),
	StaffPositionName VARCHAR(50) NOT NULL
)
GO
SELECT * FROM StaffPosition

CREATE TABLE Staff(
	StaffID CHAR(5) PRIMARY KEY CHECK (StaffID LIKE ('SF[0-9][0-9][0-9]')),
	StaffPositionID CHAR(5) FOREIGN KEY REFERENCES StaffPosition(StaffPositionID),
	StaffName VARCHAR(50) NOT NULL,
	StaffGender VARCHAR(50) NOT NULL CHECK (StaffGender='Male' OR StaffGender='Female'),
	StaffDOB DATE NOT NULL CHECK (StaffDOB < '2005'),
	StaffPhoneNumber VARCHAR(15) NOT NULL,
	StaffEmail VARCHAR(50) NOT NULL,
	StaffAddress VARCHAR(50) NOT NULL CHECK(LEN(StaffAddress)>15),
	StaffSalary INT NOT NULL
)
GO
SELECT * FROM Staff

CREATE TABLE Customer(
	CustomerID CHAR(5) PRIMARY KEY CHECK (CustomerID LIKE ('CU[0-9][0-9][0-9]')),
	CustomerName VARCHAR(50) NOT NULL,
	CustomerGender VARCHAR(50) NOT NULL CHECK (CustomerGender='Male' OR CustomerGender='Female'),
	CustomerDOB DATE NOT NULL,
	CustomerPhoneNumber VARCHAR(15) NOT NULL,
	CustomerEmail VARCHAR(50) NOT NULL,
	CustomerAddress VARCHAR(50) NOT NULL,
)
GO
SELECT * FROM Customer

CREATE TABLE Souvenir(
	SouvenirID CHAR(5) PRIMARY KEY CHECK (SouvenirID LIKE ('SO[0-9][0-9][0-9]')),
	SouvenirName VARCHAR(50) NOT NULL,
	BuyPrice INT NOT NULL,
	SellPrice INT NOT NULL
)
GO
SELECT * FROM Souvenir

CREATE TABLE SouvenirTransaction(
	SouvenirTransactionID CHAR(5) PRIMARY KEY CHECK (SouvenirTransactionID LIKE ('ST[0-9][0-9][0-9]')),
	SouvenirID CHAR(5) FOREIGN KEY  REFERENCES Souvenir(SouvenirID),
	SouvenirTransactionDate DATE NOT NULL,
	SouvenirPurchased VARCHAR(50) NOT NULL,
	SouvenirQuantity INT NOT NULL
)
GO
SELECT * FROM SouvenirTransaction


CREATE TABLE MenuCategory(
	MenuCategoryID CHAR(5) PRIMARY KEY CHECK (MenuCategoryID LIKE ('MC[0-9][0-9][0-9]')),
	MenuCategoryName VARCHAR(50) NOT NULL
)
GO
SELECT * FROM MenuCategory

CREATE TABLE Menu(
	MenuID CHAR(5) PRIMARY KEY CHECK (MenuID LIKE ('ME[0-9][0-9][0-9]')),
	MenuCategoryID CHAR(5) FOREIGN KEY  REFERENCES MenuCategory(MenuCategoryID),
	MenuName  VARCHAR(50) NOT NULL,
	MenuPrice  INT NOT NULL CHECK (MenuPrice BETWEEN 1000 AND 10000000)
)
GO
SELECT * FROM Menu

CREATE TABLE MenuTransaction(
	MenuTransactionID CHAR(5) PRIMARY KEY CHECK (MenuTransactionID LIKE ('MT[0-9][0-9][0-9]')),
	MenuID CHAR(5) FOREIGN KEY REFERENCES Menu(MenuID),
	MenuTransactionDate DATE NOT NULL,
	MenuOrdered VARCHAR(50) NOT NULL,
	MenuQuantity INT NOT NULL
)
GO
SELECT * FROM MenuTransaction

CREATE TABLE TransactionHeader(
	TransactionID CHAR(5) PRIMARY KEY CHECK (TransactionID LIKE ('TR[0-9][0-9][0-9]')),
	CustomerID CHAR(5) FOREIGN KEY REFERENCES Customer(CustomerID),
	StaffID CHAR(5) FOREIGN KEY REFERENCES Staff(StaffID),
	TransactionDate DATE NOT NULL

)
CREATE TABLE TransactionDetail(
	TransactionID CHAR(5) FOREIGN KEY REFERENCES TransactionHeader(TransactionID),
	SouvenirTransactionID CHAR(5) FOREIGN KEY REFERENCES SouvenirTransaction(SouvenirTransactionID),
	MenuTransactionID CHAR(5) FOREIGN KEY REFERENCES MenuTransaction(MenuTransactionID),
	MenuID CHAR(5) FOREIGN KEY REFERENCES Menu(MenuID),
	SouvenirID CHAR(5) FOREIGN KEY REFERENCES Souvenir(SouvenirID)
)
SELECT * FROM TransactionDetail