create schema if not exists comprehensive;

CREATE TABLE Customer (
		 CustomerID int not NULL,
		 CustomerFirstName varchar(255),
		 CustomerLastName varchar(255),
		 CustomerPhone varchar(20),
		 AnnualIncome float,
		 CreditRating int,
		 CONSTRAINT customer PRIMARY KEY (CustomerID));

CREATE TABLE SalesPerson (
		 SalesID int not NULL,
		 SalesFirstName varchar(255),
		 SalesLastName varchar(255),
		 SalesHireDate date,
		 SalesSalary float,
		 CONSTRAINT SalesPerson PRIMARY KEY (SalesID));
         
CREATE TABLE Encounter (
		EncID char(3)  not NULL,
		SalesPersonID int,
		CustomerID int ,
		EncDate date,
		Purchase char(3),
		CONSTRAINT Encounter PRIMARY KEY (EncID),
		CONSTRAINT customer FOREIGN KEY (CustomerID)
		REFERENCES Customer(CustomerID),
		CONSTRAINT SalesPerson FOREIGN KEY (SalesPersonID)
		REFERENCES SalesPerson(SalesID));
        
CREATE TABLE CreditRating (
		 CreditID int not NULL,
		 CreditDescription varchar(255),
		 MinFICO varchar(255),
		 MaxFICO varchar(255),
		 Comments varchar(255),
		 CONSTRAINT CreditRating PRIMARY KEY (CreditID));
         
         
Insert Customer (customerID, CustomerFirstName,  CustomerLastName, CustomerPhone, AnnualIncome, creditRating) values (1, "Clark", "Adams", 8017686043, 64250.00, 1);
INSERT INTO `customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerPhone`, `AnnualIncome`, `CreditRating`) VALUES ('10', 'Hans', 'Joner', '8017638922', '38125.00', '6');
INSERT INTO `customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerPhone`, `AnnualIncome`, `CreditRating`) VALUES ('11', 'Carl', 'Hughes', '8013733284', '115626.00', '5');
INSERT INTO `customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerPhone`, `AnnualIncome`, `CreditRating`) VALUES ('12', 'Simon', 'Prescott', '8011371976', '63625.00', '6');
INSERT INTO `customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerPhone`, `AnnualIncome`, `CreditRating`) VALUES ('2', 'Pablo', 'Martinez', '8013731976', '61875.00', '2');
INSERT INTO `customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerPhone`, `AnnualIncome`, `CreditRating`) VALUES ('3', 'Susana', 'Miner', '8017631882', '120250.00', '4');
INSERT INTO `customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerPhone`, `AnnualIncome`, `CreditRating`) VALUES ('4', 'Femi', 'Silva', '8013731465', '24250.00', '5');
INSERT INTO `customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerPhone`, `AnnualIncome`, `CreditRating`) VALUES ('5', 'Lola', 'McCloud', '8013746692', '91375.00', '6');
INSERT INTO `customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerPhone`, `AnnualIncome`, `CreditRating`) VALUES ('6', 'Maggy', 'Redmond', '8017667251', '46375.00', '6');
INSERT INTO `customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerPhone`, `AnnualIncome`, `CreditRating`) VALUES ('7', 'Lilie', 'Kimball', '8017855151', '52250.00', '3');
INSERT INTO `customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerPhone`, `AnnualIncome`, `CreditRating`) VALUES ('8', 'Okon', 'Okur', '8013561024', '29250.00', '4');
INSERT INTO `customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerPhone`, `AnnualIncome`, `CreditRating`) VALUES ('9', 'Eric', 'Knudsen', '8013561024', '40875.00', '7');

Insert Salesperson (SalesID, SalesFirstName, SalesLastName, SalesHireDate, SalesSalary) values (1, "Lewis", "Peoples", "1989-02-13", "140000.00" );
INSERT INTO `salesperson` (`SalesID`, `SalesFirstName`, `SalesLastName`, `SalesHireDate`, `SalesSalary`) VALUES ('2', 'Richard', 'Martin', '1989-05-02', '82000');
INSERT INTO `salesperson` (`SalesID`, `SalesFirstName`, `SalesLastName`, `SalesHireDate`, `SalesSalary`) VALUES ('3', 'Juan', 'Rodriguez', '1989-05-02', '93000');
INSERT INTO `salesperson` (`SalesID`, `SalesFirstName`, `SalesLastName`, `SalesHireDate`, `SalesSalary`) VALUES ('4', 'Rachel', 'Scholls', '1989-04-27', '56000');
INSERT INTO `salesperson` (`SalesID`, `SalesFirstName`, `SalesLastName`, `SalesHireDate`, `SalesSalary`) VALUES ('5', 'Jesse', 'Lukes', '1996-05-15', '67000');
INSERT INTO `salesperson` (`SalesID`, `SalesFirstName`, `SalesLastName`, `SalesHireDate`, `SalesSalary`) VALUES ('6', 'Maggy', 'Adelman', '2001-06-01', '75000');

INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('001', '1', '2', '2019-07-01', 'Yes');
INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('002', '1', '4', '2019-07-16', 'Yes');
INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('003', '2', '5', '2019-08-01', 'Yes');
INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('004', '2', '9', '2019-08-12', 'Yes');
INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('005', '3', '1', '2019-08-13', 'No');
INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('006', '3', '12', '2019-08-19', 'Yes');
INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('007', '3', '11', '2019-09-02', 'Yes');
INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('008', '4', '10', '2019-09-03', 'No');
INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('009', '5', '6', '2019-10-06', 'Yes');
INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('010', '6', '8', '2019-10-18', 'Yes');
INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('011', '6', '3', '2019-07-02', 'Yes');
INSERT INTO `encounter` (`EncID`, `SalesPersonID`, `CustomerID`, `EncDate`, `Purchase`) VALUES ('012', '6', '7', '2019-07-02', 'Yes');

Insert CreditRating (CreditID, CreditDescription, MinFICO, MaxFICO, Comments) values ("1", "Extremely Poor", "300", "499", "Cannot extend credit");
INSERT INTO `creditrating` (`CreditID`, `CreditDescription`, `MinFICO`, `MaxFICO`, `Comments`) VALUES ('2', 'Very Poor', '500', '580', 'Owner approval required to extend credit');
INSERT INTO `creditrating` (`CreditID`, `CreditDescription`, `MinFICO`, `MaxFICO`, `Comments`) VALUES ('3', 'Poor', '580', '619', 'Credit extended at extremely high interest rates');
INSERT INTO `creditrating` (`CreditID`, `CreditDescription`, `MinFICO`, `MaxFICO`, `Comments`) VALUES ('4', 'Fair', '620', '679', 'Credit extended at high interest rates');
INSERT INTO `creditrating` (`CreditID`, `CreditDescription`, `MinFICO`, `MaxFICO`, `Comments`) VALUES ('5', 'Good', '680', '699', 'Credit extended at normal interest rates');
INSERT INTO `creditrating` (`CreditID`, `CreditDescription`, `MinFICO`, `MaxFICO`, `Comments`) VALUES ('6', 'Very Good', '700', '850', 'Credit extended at low interest rates');
INSERT INTO `creditrating` (`CreditID`, `CreditDescription`, `MinFICO`, `MaxFICO`,`Comments`) VALUES ('7', 'Unknown', 'NULL ', 'NULL ', 'Paid cash without looking into financing options');



