CREATE VIEW vwCreateInvoiceCustomer
AS
SELECT CI.customerID, CI.customerForename, CI.customerSurname, CI.street, INV.invoiceID
FROM URSSCustomerinfo AS CI
INNER JOIN URSSInvoice AS INV ON CI.customerID = INV.customerID

SELECT * FROM vwCreateInvoiceCustomer -- Shows just customer information and their invoice id's

-------

CREATE VIEW vwCreateInvoiceDetails
AS
SELECT INV.invoiceID, INV.invoiceDate, IINF.itemName, IINF.itemDescription, IINF.itemPrice, II.OrderQuantity, V.VATCode, V.VatPercent
FROM URSSInvoice AS INV
INNER JOIN URSSInvoiceItem AS II ON INV.InvoiceID = II.InvoiceID
INNER JOIN URSSItemInfo AS IINF ON II.ItemID =  IINF.ItemID
INNER JOIN URSSVAT AS V ON IINF.VATCode = V.VATCode


SELECT * FROM vwCreateInvoiceDetails -- Shows just invoice items and what id's they have

--------

SELECT CIC.customerForename, CIC.customerSurname, CIC.street, CIC.invoiceID, ID.invoiceDate, ID.itemName, ID.itemPrice, ID.VatPercent
FROM vwCreateInvoiceCustomer AS CIC 
INNER JOIN vwCreateInvoiceDetails AS ID ON CIC.invoiceID = ID.invoiceID 
ORDER BY ID.itemName DESC  -- Shows both views above combined


------

CREATE VIEW vwShippingInformation
AS
SELECT SI.itemID, SI.ShippedDate, SCI.ShippingCompanyName
FROM URSSShippingInfo AS SI
INNER JOIN URSSShippingCompanyInfo AS SCI ON SI.ShippingCompanyID = SCI.ShippingCompanyID

SELECT * FROM vwShippingInformation -- Shows shipped itens




-- EXCEL EXPORTING ----- FOR ALL 3 OF THESE CALCULATIONS THE STAFF MEMBER MUST ENTER THE DESIRED InvoiceID into the Code below then DROP THE View, then re-create it, and select from it.

CREATE VIEW vwCalculations
AS
SELECT IINF.itemName, IINF.itemDescription, IINF.itemPrice, II.OrderQuantity, V.VATCode, V.VatPercent, (IINF.itemPrice * II.OrderQuantity) AS NetAmount
FROM URSSInvoice AS INV
INNER JOIN URSSInvoiceItem AS II ON INV.InvoiceID = II.InvoiceID
INNER JOIN URSSItemInfo AS IINF ON II.ItemID =  IINF.ItemID
INNER JOIN URSSVAT AS V ON IINF.VATCode = V.VATCode
WHERE II.InvoiceID = 'ZZ9956'

DROP VIEW vwCalculations

SELECT * FROM vwCalculations

--- 

CREATE VIEW vwExcelCustomerInfo
AS
SELECT CI.customerID, CI.customerForename, CI.customerSurname, CI.street, INV.invoiceID, INV.invoiceDate
FROM URSSCustomerinfo AS CI
INNER JOIN URSSInvoice AS INV ON CI.customerID = INV.customerID
WHERE INV.InvoiceID = 'ZZ9956'

DROP VIEW vwExcelCustomerInfo

SELECT * FROM vwExcelCustomerInfo 


CREATE VIEW vwExcelCalculationsGrossVat
AS
SELECT SUM(IINF.itemPrice * II.OrderQuantity) AS NetTotal,
FORMAT(SUM(IINF.itemPrice * II.OrderQuantity * (V.VatPercent / 100)),'.') AS VATTotal,
SUM(IINF.itemPrice * II.OrderQuantity * (1 + (V.VatPercent / 100))) AS Gross
FROM URSSInvoice AS INV
INNER JOIN URSSInvoiceItem AS II ON INV.InvoiceID = II.InvoiceID
INNER JOIN URSSItemInfo AS IINF ON II.ItemID =  IINF.ItemID
INNER JOIN URSSVAT AS V ON IINF.VATCode = V.VATCode
WHERE II.InvoiceID =  'ZZ9956'

DROP VIEW vwExcelCalculationsGrossVat

SELECT * FROM vwExcelCalculationsGrossVat 