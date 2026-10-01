INSERT INTO URSSShippingCompanyInfo(ShippingCompanyID, ShippingCompanyName, ShippingCompanyAddress, ShippingCompanyContactDetails) -- Inserted
VALUES
('AAA001', 'Tommys Transporting', '23 Stockmans Lane', '07444221357'),
('BAA001', 'Harrys Haulage', '51 Hillsborough Road', '07534832114'),
('CAA001', 'Hollies Home Transports', '21 Baltimore Lane', '07864564237'),
('DAA001','Tiernans Moving Team', '12 Maine Stret', '07351498726');

INSERT INTO URSSItemInfo(itemID, itemName, itemPrice, itemDescription, VATCode) -- Inserted
VALUES
('AA0000', 'Ulster Men''s Home Pro Jersey', 120, 'Men''s Ulster Home Pro Jersey from the 25/26 season',  'B1'),
('AB0000', 'Ulster Men''s Away Pro Jersey', 130, 'Men''s Ulster Away Pro Jersey from the 25/26 season',  'B3'),
('AC0000', 'Ulster Men''s Alternate Pro Jersey', 150, 'Men''s Ulster Alternate Pro Jersey from the 25/26 season',  'B3'),
('AD0000', 'Ulster Men''s Home Replica Jersey', 70, 'Men''s Ulster Home Replica Jersey from the 25/26 season',  'A4'),
('AE0000', 'Ulster Men''s Away Replica Jersey', 80, 'Men''s Ulster Away Replica Jersey from the 25/26 season',  'A5'),
('AF0000', 'Ulster Men''s Alternate Replica Jersey', 85, 'Men''s Ulster Alternate Replica Jersey from the 25/26 season',  'A6'),
('AA0001', 'Ulster Women''s Home Pro Jersey', 120, 'Women''s Ulster Home Pro Jersey from the 25/26 season',  'B1'),
('AA0002', 'Ulster Women''s Away Pro Jersey', 140, 'Women''s Ulster Away Pro Jersey from the 25/26 season',  'B2'),
('AA0003', 'Ulster Women''s Alternate Pro Jersey', 160, 'Women''s Ulster Home Pro Jersey from the 25/26 season',  'B3'),
('AA0004', 'Ulster Women''s Home Replica Jersey', 70, 'Women''s Ulster Home Replica Jersey from the 25/26 season',  'A4'),
('AA0005', 'Ulster Women''s Away Replica Jersey', 80, 'Women''s Ulster Away Replica Jersey from the 25/26 season',  'A5'),
('AA0006', 'Ulster Women''s Alternate Replica Jersey', 85, 'Women''s Ulster Alternate Replica Jersey from the 25/26 season',  'A6'),
('BA0000', 'Ulster Home Pro Shorts',  70, 'Unisex Ulster Rugby Home Pro Shorts from the 25/26 season', 'A8'),
('BB0000', 'Ulster Away Pro Shorts',  75, 'Unisex Ulster Rugby Away Shorts Pro from the 25/26 season', 'A8'),
('BC0000', 'Ulster Home Replica Shorts',  45, 'Unisex Ulster Rugby Home Replica Shorts from the 25/26 season', 'A4'),
('BD0000', 'Ulster Away Replica Shorts',  50, 'Unisex Ulster Rugby Away Replica Shorts from the 25/26 season', 'A4'),
('CA0000', 'Ulster Home Socks', 25, 'Unisex Home Ulster Rugby Socks from the 25/26 season', 'A3'),
('CB0000', 'Ulster Away Socks', 25, 'Unisex Away Ulster Rugby Socks from the 25/26 season', 'A3'),
('DA0000', 'Gilbert High Kicking Tee', 40, 'High quality Gilbert Kicking Tee with 12cm of clearance', 'A8'),
('DB0000', 'Gilbert Low Kicking Tee', 40, 'High quality Gilbert Kicking Tee with 6cm of clearance', 'A8'),
('DC0000', 'Gilbert Mouthguard', 15, 'Safety First with Gilbert''s latest mouthguard', 'AA'),
('EA0000', 'Ulster Rugby Beanie', 35, 'Unisex Ulster Rugby Beanie hat for all the coldnights at the Affidea Stadium', 'A5');


	INSERT INTO URSSVAT(VATCode, VatPercent) -- Inserted
VALUES
('AA', 1.0),
('A3', 1.75),
('A4', 1.8),
('A5', 1.85),
('A6', 1.9),
('A8', 1.95),
('A9', 2.0),
('B1', 2.05),
('B2', 2.1),
('B3',2.15);

INSERT INTO URSSInvoiceItem(invoiceID, itemID, OrderQuantity) -- Inserted
VALUES
('ZZ9930', 'BA0000','2'),
('ZZ9931', 'AE0000','1'),
('ZZ9931', 'BD0000','3'),
('ZZ9932', 'AC0000','1'),
('ZZ9933', 'BB0000','1'),
('ZZ9933', 'CA0000','1'),
('ZZ9933', 'AF0000','1'),
('ZZ9934', 'BA0000','1'),
('ZZ9934', 'AE0000','1'),
('ZZ9934', 'BC0000','1'),
('ZZ9935', 'AD0000','2'),
('ZZ9936', 'AF0000','1'),
('ZZ9936','BB0000','1'),
('ZZ9936','CA0000','1'),
('ZZ9937','BD0000','1'),
('ZZ9938','AE0000','1'),
('ZZ9938','AC0000','1'),
('ZZ9938','BA0000','2'),
('ZZ9939','BC0000','1'),
('ZZ9940','AD0000','1'),
('ZZ9941','AF0000','1'),
('ZZ9942','BB0000','1'),
('ZZ9943','CA0000','1'),
('ZZ9944','BD0000','1'),
('ZZ9945','AE0000','1'),
('ZZ9946','AC0000','1'),
('ZZ9947','BA0000','1'),
('ZZ9948','BC0000','2'),
('ZZ9949','AD0000','2'),
('ZZ9949','AF0000','2'),
('ZZ9950','BB0000','2'),
('ZZ9950','CA0000','3'),
('ZZ9951','BD0000','2'),
('ZZ9952','AE0000','2'),
('ZZ9953','AC0000','2'),
('ZZ9954','BA0000','3'),
('ZZ9955','BC0000','3'),
('ZZ9956','AD0000','4'),
('ZZ9956','AF0000','2'),
('ZZ9956','BB0000','2'),
('ZZ9957','CA0000','2'),
('ZZ9957','BD0000','3'),
('ZZ9958','AE0000','2'),
('ZZ9959','AC0000','2'),
('ZZ9960','BA0000','1'),
('ZZ9961','BC0000','1'),
('ZZ9962','AD0000','1'),
('ZZ9963','AF0000','3'),
('ZZ9964','BB0000','1'),
('ZZ9964','CA0000','2'),
('ZZ9964','BD0000','1'),
('ZZ9965','AE0000','3'),
('ZZ9966','AC0000','2'),
('ZZ9967','BA0000','2'),
('ZZ9968','BC0000','2'),
('ZZ9968','AD0000','2'),
('ZZ9968','AF0000','2'),
('ZZ9969','BB0000','1'),
('ZZ9970','CA0000','1'),
('ZZ9971','BD0000','1'),
('ZZ9972','AE0000','1'),
('ZZ9973','AC0000','1'),
('ZZ9974','BA0000','1'),
('ZZ9975','BC0000','1'),
('ZZ9976','AD0000','1'),
('ZZ9977','AF0000','2'),
('ZZ9978','BB0000','2'),
('ZZ9978','CA0000','3'),
('ZZ9978','BD0000','3'),
('ZZ9979','AE0000','3'),
('ZZ9979','AC0000','3'),
('ZZ9979','BA0000','2'),
('ZZ9979','BC0000','1'),
('ZZ9980','AD0000','1'),
('ZZ9981','AF0000','1'),
('ZZ9982','BB0000','1'),
('ZZ9983','BD0000','1'),
('ZZ9984','CA0000','1'),
('ZZ9984','AE0000','2'),
('ZZ9984','AC0000','1'),
('ZZ9985','BA0000','2'),
('ZZ9986','BC0000','2'),
('ZZ9987','AD0000','1'),
('ZZ9987','AF0000','1'),
('ZZ9987','BB0000','3'),
('ZZ9988','CA0000','3'),
('ZZ9989','BD0000','2'),
('ZZ9990','AE0000','2'),
('ZZ9991','AC0000','2'),
('ZZ9992','BA0000','1'),
('ZZ9993','BC0000','2'),
('ZZ9993','AD0000','1'),
('ZZ9994','AF0000','2'),
('ZZ9995','BB0000','2'),
('ZZ9996','CA0000','3'),
('ZZ9996','BD0000','1'),
('ZZ9997','AE0000','1'),
('ZZ9998','AC0000','1'),
('ZZ9999','BA0000','1');

INSERT INTO URSSCustomerinfo(customerID, customerForename, customerSurname, customerGender, customerDOB, city, street, postcode, email, phonenumber, SeasonPassStatus) -- Inserted
	VALUES('AA0000', 'John','Maxwell', 'Male', '03/06/96', 'Belfast', '67 Ballycarngannon Road', 'BT27 7TA', 'Johnmaxwell@gmail.com', '07666636176', 'Yes')


INSERT INTO URSSCustomerinfo(customerID, customerForename, customerSurname, customerGender, customerDOB, city, street, postcode, email, phonenumber, SeasonPassStatus)
	VALUES('AA0001', 'Harvey','Specter', 'Male', '06/11/82', 'Belfast', '67 Upper Balinderry Road', 'BT23 4TG', 'HarveySpecter@gmail.com', '07323453634','No')

INSERT INTO URSSCustomerinfo(customerID, customerForename, customerSurname, customerGender, customerDOB, city, street, postcode, email, phonenumber, SeasonPassStatus)
	VALUES('AA0002', 'Cormac','Izuchukwu', 'Male', '28/01/00', 'Roscrea', '2 St Marys Terrace', 'BT2 9OP', 'CormacIzuchukwu@gmail.com', '07444434173','Yes')


INSERT INTO URSSCustomerinfo(customerID, customerForename, customerSurname, customerGender, customerDOB, city, street, postcode, email, phonenumber, SeasonPassStatus)
	VALUES('AA0003', 'David','McCann', 'Male', '20/06/00', 'Belfast', 'College Square East', 'BT1 6DL', 'DavidMcCann@gmail.com', '07374797479','Yes')

INSERT INTO URSSCustomerinfo(customerID, customerForename, customerSurname, customerGender, customerDOB, city, street, postcode, email, phonenumber, SeasonPassStatus)
	VALUES('AA0004', 'Jacob','Stockdale', 'Male', '03/04/96', 'Lisburn', '32 Wallace Street', 'BT12 9RT', 'JacobStockdale@gmail.com', '07222884434','Yes')

INSERT INTO URSSCustomerinfo(customerID, customerForename, customerSurname, customerGender, customerDOB, city, street, postcode, email, phonenumber, SeasonPassStatus)
	VALUES('AA0005', 'Niamh','Briggs', 'Female', '30/09/84', 'Waterford', '15 Doctorite Street', 'BT27 5TY', 'NiamhBriggs@gmail.com', '07143579757','No')

INSERT INTO URSSCustomerinfo(customerID, customerForename, customerSurname, customerGender, customerDOB, city, street, postcode, email, phonenumber, SeasonPassStatus)
	VALUES('AA0006', 'Jack','Murphy', 'Male', '13/06/04', 'Dublin', '18 Spire Road', 'BT98 1LO', 'JackMurphy@gmail.com', '07206347269','No')

INSERT INTO URSSCustomerinfo(customerID, customerForename, customerSurname, customerGender, customerDOB, city, street, postcode, email, phonenumber, SeasonPassStatus)
	VALUES('AA0007', 'Mike','Lowry', 'Male', '12/02/99', 'Belfast', '22 Irvine Place', 'BT8 3UI', 'MikeLowry@gmail.com', '07305224817','Yes')

INSERT INTO URSSCustomerinfo(customerID, customerForename, customerSurname, customerGender, customerDOB, city, street, postcode, email, phonenumber, SeasonPassStatus)
	VALUES('AA0008', 'Aoife','Wafer', 'Female', '25/03/03', 'Belfast', '16 Saintfield Road', 'BT7 7TE', 'AoifeWafer@gmail.com', '07351758933','No')



INSERT INTO URSSInvoice(invoiceID, invoiceDate, customerID) -- Inserted
	VALUES
	('ZZ9999', '2025-11-23', 'AA0001'), --1
	('ZZ9998', '2025-11-23', 'AA0001'), --2
	('ZZ9997', '2025-11-23', 'AA0001'), --3
	('ZZ9996', '2025-11-23', 'AA0005'), --4
	('ZZ9995', '2025-11-23', 'AA0005'), --5
	('ZZ9994', '2025-11-23', 'AA0005'), --6
	('ZZ9993', '2025-11-23', 'AA0005'), --7
	('ZZ9992', '2025-11-23', 'AA0005'), --8
	('ZZ9991', '2025-11-23', 'AA0005'), --9
	('ZZ9990', '2025-11-23', 'AA0001'), --10
	('ZZ9989', '2025-11-23', 'AA0005'), --11
	('ZZ9988', '2025-11-23', 'AA0005'), --12
	('ZZ9987', '2025-11-23', 'AA0003'), --13
	('ZZ9986', '2025-11-23', 'AA0002'), --14
	('ZZ9985', '2025-11-23', 'AA0000'), --15
	('ZZ9984', '2025-11-23', 'AA0000'), --16
	('ZZ9983', '2025-11-23', 'AA0005'), --17
	('ZZ9982', '2025-11-23', 'AA0004'), --18
	('ZZ9981', '2025-11-23', 'AA0004'), --19
	('ZZ9980', '2025-11-23', 'AA0005'), --20
	('ZZ9979', '2025-11-23', 'AA0005'), --21
	('ZZ9978', '2025-11-23', 'AA0005'), --22
	('ZZ9977', '2025-11-23', 'AA0002'), --23
	('ZZ9976', '2025-11-24', 'AA0001'), --24
	('ZZ9975', '2025-11-24', 'AA0001'), --25
	('ZZ9974', '2025-11-24', 'AA0001'), --26
	('ZZ9973', '2025-11-24', 'AA0005'), --27
	('ZZ9972', '2025-11-24', 'AA0005'),--28
	('ZZ9971', '2025-11-24', 'AA0005'), --29
	('ZZ9970', '2025-11-24', 'AA0007'), --30
	('ZZ9969', '2025-11-24', 'AA0007'), --31
	('ZZ9968', '2025-11-24', 'AA0007'), --32
	('ZZ9967', '2025-11-24', 'AA0007'), --33
	('ZZ9966', '2025-11-24', 'AA0007'), --34
	('ZZ9965', '2025-11-24', 'AA0008'), --35
	('ZZ9964', '2025-11-24', 'AA0008'), --36
	('ZZ9963', '2025-11-24', 'AA0008'), --37
	('ZZ9962', '2025-11-24', 'AA0002'), --38
	('ZZ9961', '2025-11-24', 'AA0001'), --39
	('ZZ9960', '2025-11-24', 'AA0006'), --40
	('ZZ9959', '2025-11-24', 'AA0006'), --41
	('ZZ9958', '2025-11-24', 'AA0002'), --42
	('ZZ9957', '2025-11-24', 'AA0007'), --43
	('ZZ9956', '2025-11-24', 'AA0008'), --44
	('ZZ9955', '2025-11-24', 'AA0000'), --45
	('ZZ9954', '2025-11-25', 'AA0005'), --46
	('ZZ9953', '2025-11-25', 'AA0005'), --47
	('ZZ9952', '2025-11-25', 'AA0005'), --48
	('ZZ9951', '2025-11-25', 'AA0004'), --49
	('ZZ9950', '2025-11-25', 'AA0004'), --50
	('ZZ9949', '2025-11-25', 'AA0007'), --51
	('ZZ9948', '2025-11-25', 'AA0007'), --52
	('ZZ9947', '2025-11-25', 'AA0005'), --53
	('ZZ9946', '2025-11-25', 'AA0005'), --54
	('ZZ9945', '2025-11-25', 'AA0006'), --55
	('ZZ9944', '2025-11-25', 'AA0006'), --56
	('ZZ9943', '2025-11-25', 'AA0005'), --57
	('ZZ9942', '2025-11-25', 'AA0002'),--58
	('ZZ9941', '2025-11-25', 'AA0005'), --59
	('ZZ9940', '2025-11-25', 'AA0001'), --60
	('ZZ9939', '2025-11-25', 'AA0003'), --61
	('ZZ9938', '2025-11-25', 'AA0008'), --62
	('ZZ9937', '2025-11-25', 'AA0008'), --63
	('ZZ9936', '2025-11-25', 'AA0004'), --64
	('ZZ9935', '2025-11-25', 'AA0004'), --65
	('ZZ9934', '2025-11-25', 'AA0005'), --66
	('ZZ9933', '2025-11-25', 'AA0005'), --67
	('ZZ9932', '2025-11-25', 'AA0001'), --68
	('ZZ9931', '2025-11-25', 'AA0001'), --69
	('ZZ9930', '2025-11-25', 'AA0008'); --70



INSERT INTO URSSShippingInfo(ShipmentID, ShippingCompanyID, ShippedDate,itemID) --  Inserted
VALUES
('AA0001','AAA001', '2025-11-23', 'AA0000'), --1
('AA0002','BAA001', '2025-11-23', 'AB0000'),--2
('AA0003','BAA001', '2025-11-23', 'DA0000'),--3
('AA0004','CAA001', '2025-11-23', 'AB0000'),--4
('AA0005','DAA001', '2025-11-23', 'AD0000'),--5
('AA0006','AAA001', '2025-11-23', 'EA0000'),--6
('AA0007','AAA001', '2025-11-23', 'AF0000'),--7
('AA0008','CAA001', '2025-11-23', 'AA0003'),--8
('AA0009','DAA001', '2025-11-23', 'AC0000'),--9
('AA0010','BAA001', '2025-11-23', 'AC0000'),--10
('AA0011','DAA001', '2025-11-23', 'EA0000'),--11
('AA0012','AAA001', '2025-11-23', 'AC0000'),--12
('AA0013','DAA001', '2025-11-23', 'AC0000'),--13
('AA0014','DAA001', '2025-11-23', 'AC0000'),--14
('AA0015','CAA001', '2025-11-23', 'AA0003'),--15
('AA0016','BAA001', '2025-11-23', 'AC0000'),--16
('AA0017','DAA001', '2025-11-23', 'BB0000'),--17
('AA0018','AAA001', '2025-11-23', 'AA0004'),--18
('AA0019','AAA001', '2025-11-23', 'AC0000'),--19
('AA0020','AAA001', '2025-11-23', 'DA0000'),--20
('AA0021','DAA001', '2025-11-23', 'AA0003'),--21
('AA0022','BAA001', '2025-11-23', 'BB0000'); --22


