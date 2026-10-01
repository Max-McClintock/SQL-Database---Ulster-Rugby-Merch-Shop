
-- Searching for a Customer ID by Name

CREATE PROCEDURE spCreateInvoiceCustomerSearch 
(@customerForename nvarchar(50),
@customerSurename  nvarchar(50))
AS
SELECT CI.customerID, CI.customerForename, CI.customerSurname, CI.street, INV.invoiceID
FROM URSSCustomerinfo AS CI
INNER JOIN URSSInvoice AS INV ON CI.customerID = INV.customerID
WHERE CI.CustomerForename = @customerForename AND CI.customerSurname = @customerSurename
ORDER BY CI.customerID ASC;

EXEC spCreateInvoiceCustomerSearch 'Mike', 'Lowry'




-- Searching for a invoice item by invoice ID

CREATE PROCEDURE spSearchForInvoiceInfoFromInvoiceID  
(@invoiceID nvarchar (6))
AS
SELECT INV.invoiceID, INV.invoiceDate, II.ItemID, IINF.itemName, IINF.itemDescription, IINF.itemPrice, II.OrderQuantity, V.VATCode, V.VatPercent
FROM URSSInvoice AS INV
INNER JOIN URSSInvoiceItem AS II ON INV.InvoiceID = II.InvoiceID
INNER JOIN URSSItemInfo AS IINF ON II.ItemID =  IINF.ItemID
INNER JOIN URSSVAT AS V ON IINF.VATCode = V.VATCode
WHERE INV.invoiceID = @invoiceID

EXEC spSearchForInvoiceInfoFromInvoiceID 'ZZ9949'



-- Searching for shipping info from item id


CREATE PROCEDURE spSearchForShippingID  
(@itemID nvarchar (6))
AS
SELECT II.ItemID, SI.ShippedDate, SI.ShippingCompanyID, SI.ShipmentID 
FROM URSSShippingInfo AS SI
INNER JOIN URSSItemInfo AS II ON SI.itemID = II.itemID
WHERE II.itemID = @itemID

EXECUTE spSearchForShippingID 'AD0000'



-- Inserting a new customer into the database

CREATE PROCEDURE spNewCustomer
(@customerID nvarchar(6), @customerForename nvarchar(50), @customerSurname nvarchar(50), @customerGender nvarchar(15), @customerDOB nvarchar(8),
@City nvarchar(50), @street nvarchar(50), @postcode varchar (8), @email nvarchar(60), @phonenumber nvarchar (11), @SeasonPassStatus char(3))
AS
INSERT INTO URSSCustomerinfo
(
customerID, customerForename, customerSurname, customerGender, customerDOB, city, street, postcode, email, phonenumber, SeasonPassStatus
)
VALUES
(
@customerID, @customerForename, @customerSurname, @customerGender, @customerDOB,
@City, @street,  @postcode, @email, @phonenumber, @SeasonPassStatus
)

EXEC spNewCustomer 'AA0009', 'Angus', 'Bell', 'Male', '03/11/98', 'Belfast', '21 Ravenhill Road', 'BT18 2YG', 'AngusBell@gmail.com', '07432156755', 'Yes'



-- Inserting a new invoice into the database

CREATE PROCEDURE spNewInvoice
(@invoiceID NVARCHAR(6), @invoiceDate DATE, @customerID NVARCHAR(6))
AS
INSERT INTO URSSInvoice
(invoiceID, invoiceDate, customerID)
VALUES
(@invoiceID, @invoiceDate, @customerID)

EXECUTE spNewInvoice 'ZZ9929', '2025-11-26', 'AA0009'


-- Adding items to an invoice 

CREATE PROCEDURE NewInvoiceItem 
(@invoiceID NVARCHAR(6), @itemID NVARCHAR(6), @OrderQuantity int)
AS 
INSERT INTO URSSInvoiceItem
(invoiceID, itemID, OrderQuantity)
VALUES
(@invoiceID, @itemID, @OrderQuantity)

EXEC NewInvoiceItem 'ZZ9929', 'DC0000','5' 


----- CALCULATIONS --- 

CREATE PROCEDURE Calculations
(@invoiceID nvarchar (6))
AS
SELECT IINF.itemName, IINF.itemDescription, IINF.itemPrice, II.OrderQuantity, V.VATCode, V.VatPercent, (IINF.itemPrice * II.OrderQuantity) AS NetAmount
FROM URSSInvoice AS INV
INNER JOIN URSSInvoiceItem AS II ON INV.InvoiceID = II.InvoiceID
INNER JOIN URSSItemInfo AS IINF ON II.ItemID =  IINF.ItemID
INNER JOIN URSSVAT AS V ON IINF.VATCode = V.VATCode
WHERE II.InvoiceID = @invoiceID 
DROP PROCEDURE spCalculationsGrossVat

EXEC Calculations 'ZZ9936'


CREATE PROCEDURE spCalculationsGrossVat
(@invoiceID nvarchar (6))
AS
SELECT SUM(IINF.itemPrice * II.OrderQuantity) AS NetTotal,
SUM(IINF.itemPrice * II.OrderQuantity * (V.VatPercent / 100)) AS VATTotal,
SUM(IINF.itemPrice * II.OrderQuantity * (1 + (V.VatPercent / 100))) AS Gross
FROM URSSInvoice AS INV
INNER JOIN URSSInvoiceItem AS II ON INV.InvoiceID = II.InvoiceID
INNER JOIN URSSItemInfo AS IINF ON II.ItemID =  IINF.ItemID
INNER JOIN URSSVAT AS V ON IINF.VATCode = V.VATCode
WHERE II.InvoiceID = @invoiceID 
DROP PROCEDURE spCalculationsGrossVat



EXEC spCalculationsGrossVat 'ZZ9936'