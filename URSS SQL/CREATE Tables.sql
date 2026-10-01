
create table URSSCustomerinfo -- Made
(
customerID NVARCHAR(6) NOT NULL PRIMARY KEY CONSTRAINT Validate_CustomerID CHECK ([customerID] like '[A-Z][A-Z][0-9][0-9][0-9][0-9]'), 
customerForename nvarchar(50) NOT NULL,
customerSurname nvarchar(50) NOT NULL,
customerGender varchar(15) NOT NULL , 
customerDOB nvarchar(8) NOT NULL ,
city nvarchar(50) NOT NULL DEFAULT 'Belfast',
street nvarchar(50),
postcode varchar (8)NOT NULL CONSTRAINT Validate_PostCode
CHECK ( [PostCode] like '[A-Z][A-Z][0-9] [0-9][A-Z][A-Z]' OR
[PostCode] like '[A-Z][A-Z][0-9][0-9] [0-9][A-Z][A-Z]'),
email nvarchar(60) NOT NULL CONSTRAINT Validate_email
CHECK ([email] LIKE '%_@_%._%'),
phonenumber nvarchar (11) NOT NULL, 
SeasonPassStatus char(3) NOT NULL CONSTRAINT Validate_SeasonPassStatus
CHECK (SeasonPassStatus = 'Yes' OR SeasonPassStatus = 'No'));

CREATE TABLE URSSInvoice -- Made
(
invoiceID NVARCHAR(6) NOT NULL PRIMARY KEY CONSTRAINT Validate_invoiceID CHECK ([invoiceID] like '[A-Z][A-Z][0-9][0-9][0-9][0-9]'),
invoiceDate DATE, 
customerID NVARCHAR(6) NOT NULL,
FOREIGN KEY(customerID) REFERENCES URSSCustomerinfo(customerID),
);


CREATE TABLE URSSInvoiceItem -- Made
(
invoiceID NVARCHAR(6) NOT NULL,
itemID NVARCHAR(6) NOT NULL,
OrderQuantity int NOT NULL,
FOREIGN KEY (invoiceID) REFERENCES URSSInvoice(invoiceID),
FOREIGN KEY (itemID) REFERENCES URSSItemInfo(itemID),
);


CREATE TABLE URSSItemInfo -- Made
(
itemID NVARCHAR(6) NOT NULL PRIMARY KEY CONSTRAINT Validate_itemID CHECK ([itemID] like '[A-Z][A-Z][0-9][0-9][0-9][0-9]'),
itemName nvarchar(100) NOT NULL,
itemPrice MONEY NOT NULL, 
itemDescription nvarchar (150) NOT NULL, 
VATCode nvarchar(2),
FOREIGN KEY (VATCode) REFERENCES URSSVAT(VATCode)
);

CREATE TABLE URSSVAT -- Made
(
VATCode nvarchar(2) NOT NULL PRIMARY KEY CONSTRAINT Validate_VATCode1 CHECK ([VATCode] like '[A-Z][0-9]' OR [VATCode] LIKE '[A-Z][A-Z]'),
VatPercent decimal(5,2) NOT NULL,
);


CREATE TABLE URSSShippingInfo -- made
(
ShipmentID NVARCHAR(6) NOT NULL PRIMARY KEY CONSTRAINT Validate_ShipmentID CHECK ([ShipmentID] like '[A-Z][A-Z][0-9][0-9][0-9][0-9]'),
ShippingCompanyID NVARCHAR(6) NOT NULL,
ShippedDate DATE NOT NULL,
itemID NVARCHAR(6) NOT NULL,
FOREIGN KEY (ShippingCompanyID) REFERENCES URSSShippingCompanyInfo(ShippingCompanyID),
FOREIGN KEY (itemID) REFERENCES URSSItemInfo,
);

CREATE TABLE URSSShippingCompanyInfo -- made
(
ShippingCompanyID NVARCHAR(6)NOT NULL PRIMARY KEY CONSTRAINT Validate_ShippingCompanyID CHECK ([ShippingCompanyID] like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]'),
ShippingCompanyName nvarchar(60) NOT NULL,
ShippingCompanyAddress nvarchar(100) NOT NULL,
ShippingCompanyContactDetails nvarchar(11) NOT NULL,
);


