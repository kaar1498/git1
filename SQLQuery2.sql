use B_DB19_2018

IF OBJECT_ID('PET', 'U') IS NOT NULL 
  DROP TABLE PET; 
IF OBJECT_ID('PET_OWNER', 'U') IS NOT NULL 
  DROP TABLE PET_OWNER; ; 
IF OBJECT_ID('LINE_ITEM', 'U') IS NOT NULL 
  DROP TABLE LINE_ITEM;
IF OBJECT_ID('PRODUCT', 'U') IS NOT NULL 
  DROP TABLE PRODUCT
IF OBJECT_ID('INVOICE', 'U') IS NOT NULL 
  DROP TABLE INVOICE; 
IF OBJECT_ID('SEMINAR', 'U') IS NOT NULL 
  DROP TABLE SEMINAR; 
IF OBJECT_ID('CUSTOMER', 'U') IS NOT NULL 
  DROP TABLE CUSTOMER;
IF OBJECT_ID('ZIP_CITY', 'U') IS NOT NULL 
  DROP TABLE ZIP_CITY;
IF OBJECT_ID('SEMINAR_CUSTOMER', 'U') IS NOT NULL 
  DROP TABLE SEMINAR_CUSTOMER;   
CREATE TABLE PET_OWNER (
	OwnerID int NOT NULL,  
    OwnerLastName char(25) NOT NULL, 
	OwnerFirstName char(25) NOT NULL, 
    OwnerPhone char(12) NULL,  
    OwnerEmail Varchar(100) NULL,
	CONSTRAINT Owner_PK PRIMARY KEY (OwnerID))
GO

CREATE TABLE PET (
	PetID int PRIMARY KEY NOT NULL,  
    PetName char(25) NOT NULL,
	PetType char(25) NOT NULL,
	PetBreed char(25) NOT NULL, 
    PetDOB Date NULL,
	PetWeight Numeric(3,1)	NOT NULL,
	OwnerID int,
    CONSTRAINT Pet_PK FOREIGN KEY (OwnerID)
	REFERENCES PET_OWNER(OwnerID)
	ON UPDATE CASCADE
	ON DELETE NO ACTION
)
GO

CREATE TABLE INVOICE (
	InvoiceNumber int PRIMARY KEY NOT NULL,
	InvoiceDate Date NOT NULL,
	SubTotal int NOT NULL,
	TaxPct int NOT NULL,
	Total int NOT NULL,
)
GO


CREATE TABLE PRODUCT (
	ProductNumber int PRIMARY KEY NOT NULL,
	ProductType char(20) NULL,
	ProdutDescription Text NULL,
	UnitPrice int NOT NULL,
)
CREATE TABLE LINE_ITEM (
	InvoiceNumber int NOT NULL
	REFERENCES INVOICE(InvoiceNumber),
	LineNumber int NOT NULL,
	ProductNumber int
	REFERENCES PRODUCT(ProductNumber),
	Quantity int NULL,
	Unitprice int NOT NULL,
	Total int NOT NULL,
	CONSTRAINT LINE_ITEM_PK PRIMARY KEY (InvoiceNumber, ProductNumber)
)

CREATE TABLE SEMINAR(
	SeminarID int PRIMARY KEY NOT NULL,
	SeminarDate Date NULL,
	Location char(20) NULL,
	SeminarTitle char(20) NOT NULL,
)
CREATE TABLE ZIP_CITY(
	Zip int PRIMARY KEY NOT NULL,
	City char(50) NOT NULL,
)
CREATE TABLE CUSTOMER(
	CustomerID int PRIMARY KEY NOT NULL,
	FirstName char(20) NOT NULL,
	LastName char(20) NOT NULL,
	Street char(20) NOT NULL,
	Zip int
	REFERENCES ZIP_CITY(Zip),
)
CREATE TABLE SEMINAR_CUSTOMER(
	SeminarID int
	REFERENCES SEMINAR(SeminarID),
	CustomerID int
	REFERENCES CUSTOMER(CustomerID), 
	CONSTRAINT SEMINAR_CUSTOMER_PK PRIMARY KEY (SeminarID,CustomerID)
)
