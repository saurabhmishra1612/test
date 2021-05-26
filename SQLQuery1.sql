﻿--SELECT 'Did you know that you can perform 5,05,302 transactions per minute in SQL Server?';
--create database QuickKart
--select name,filename from sys.sysaltfiles

--CREATE TABLE CardDetails(
--[CardNumber] NUMERIC(16) CONSTRAINT pk_CardNumber PRIMARY KEY,
--[NameOnCard] VARCHAR(40) NOT NULL,
--[CardType] CHAR(6) CONSTRAINT chk_CardType CHECK (CardType IN ('V','M','A')),
--[CVVNumber] NUMERIC(3) NOT NULL,
--[ExpiryDate] DATE CONSTRAINT chk_ExpiryDate CHECK(ExpiryDate >= GETDATE()),
--[Balance] DECIMAL(10,2) CONSTRAINT chk_Balance CHECK(Balance>=0),
--)
--GO
--INSERT INTO CardDetails values(6074310053360294,'SAURABH KUMAR MISHRA',
--'V',994,'2022-05-01',29000.00)
--INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) 
--VALUES(114666529681890,'Manuel','M',137,'2025-03-18',7282.00) 
--INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) 
--VALUES(116428305453550,'Renate Messner','V',133,'2028-01-08',14538.00) 
--INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) 
--VALUES(1164916979880,'Rita','M',588,'2025-07-28',18570.00) 
--INSERT CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) 
--VALUES (1172583365804160,'McKenna','V',777,'2028-04-05',7972.00), 
--       (1190676541467400, 'Brown','V',390,'2029-09-10',9049.00), 
--       (1201253053391160, 'Patricia','M',501,'2029-06-24',19092.00)
	   
--SELECT * FROM CardDetails

--CREATE TABLE Categories(
--[CategoryId] TINYINT CONSTRAINT pk_CategoryId PRIMARY KEY IDENTITY,
--[CategoryName] VARCHAR(20) CONSTRAINT uq_CategoryName UNIQUE NOT NULL
--)

--INSERT INTO Categories VALUES ('MOTORS');
--INSERT INTO Categories VALUES ('FASHION')

--SELECT * FROM Categories



SET IDENTITY_INSERT Categories ON

INSERT INTO Categories(CategoryId,CategoryName) VALUES(100,'Electronics')

SELECT * FROM Categories


SET IDENTITY_INSERT Categories OFF

INSERT INTO Categories VALUES('Arts')

SELECT * FROM Categories

DELETE FROM Categories

INSERT INTO Categories VALUES ('Home')

SELECT * FROM Categories

TRUNCATE TABLE Categories

SELECT * FROM Categories

INSERT INTO Categories VALUES ('Toys')

SELECT * FROM Categories

CREATE TABLE Products(
[ProductId] CHAR(4) CONSTRAINT pk_ProductId PRIMARY KEY
CONSTRAINT CHK_ProductId CHECK(ProductId LIKE 'P%'),
[ProductName] VARCHAR(20) UNIQUE NOT NULL,
[CategoryId] TINYINT  REFERENCES Categories(CategoryId),
[Price] NUMERIC(8)  CHECK(Price>0) NOT NULL,
[QuantityAvailable] INT  CHECK(QuantityAvailable>=0) NOT NULL,
 ) 
 GO

 -- insertion script for Categories
SET IDENTITY_INSERT Categories ON
INSERT INTO Categories (CategoryId, CategoryName) VALUES (1, 'Motors')
INSERT INTO Categories (CategoryId, CategoryName) VALUES (2, 'Fashion')
INSERT INTO Categories (CategoryId, CategoryName) VALUES (3, 'Electronics')
INSERT INTO Categories (CategoryId, CategoryName) VALUES (4, 'Arts')
INSERT INTO Categories (CategoryId, CategoryName) VALUES (5, 'Home')
INSERT INTO Categories (CategoryId, CategoryName) VALUES (6, 'Sporting Goods')
INSERT INTO Categories (CategoryId, CategoryName) VALUES (7, 'Toys')
SET IDENTITY_INSERT Categories OFF

GO
-- insertion script for Products
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P101','Lamborghini Gallardo Spyder',1,18000000.00,10)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P102','BMW X1',1,3390000.00,10)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P103','BMW Z4',1,6890000.00,10)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P104','Harley Davidson Iron 883 ',1,700000.00,10)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P105','Ducati Multistrada',1,2256000.00,10)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P106','Honda CBR 250R',1,193000.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P107','Kenneth Cole Black & White Leather Reversible Belt',2,2500.00,50)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P108','Classic Brooks Brothers 346 Wool Black Sport Coat',2,3078.63,10)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P109','Ben Sherman Mens Necktie Silk Tie',2,1847.18,20)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P110','BRIONI Shirt Cotton NWT Medium',2,2050.00,25)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P111','Patagonia NWT mens XL Nine Trails Vest',2,2299.99,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P112','Blue Aster Blue Ivory Rugby Pack Shoes',2,6772.37,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P113','Ann Taylor 100% Cashmere Turtleneck Sweater',2,3045.44,80)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P114','Fashion New Slim Ladies Womens Suit Coat',2,2159.59,65)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P115','Apple IPhone 5s 16GB',3,52750.00,70)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P116','Samsung Galaxy S4',3,38799.99,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P117','Nokia Lumia 1320',3,42199.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P118','LG Nexus 5',3,32649.54,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P119','Moto DroidX',3,32156.45,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P120','Apple MAcbook Pro',3,56800.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P121','Dell Inspiron',3,36789.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P122','IPad Air',3,28000.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P123','Xbox 360 with kinect',3,25000.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P124','Abstract Hand painted Oil Painting on Canvas',4,2056.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P125','Mysore Painting of Lord Shiva',4,5000.00,10)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P126','Tanjore Painting of Ganesha',4,8000.00,20)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P127','Marble Elephants statue',4,9056.00,50)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P128','Wooden photo frame',4,150.00,200)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P129','Gold plated dancing peacock',4,350.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P130','Kundan jewellery set',4,2000.00,30)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P131','Marble chess board','4','3000.00','20')
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P132','German Folk Art Wood Carvings Shy Boy and Girl',4,6122.20,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P133','Modern Abstract Metal Art Wall Sculpture',5,5494.55,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P134','Bean Bag Chair Love Seat',5,5754.55,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P135','Scented rose candles',5,200.00,50)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P136','Digital bell chime',5,800.00,10)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P137','Curtains',5,600.00,20)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P138','Wall stickers',5,200.00,30)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P139','Shades of Blue Line-by-Line Quilt',5,691.24,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P140','Tahoe Gear Prescott 10 Person Family Cabin Tent',6,9844.33,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P141','Turner Sultan 29er Large',6,147612.60,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P142','BAMBOO BACKED HICKORY LONGBOW ',6,5291.66,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P143','Adidas Shoes',6,700.00,150)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P144','Tennis racket',6,200.00,150)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P145','Baseball glove',6,150.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P146','Door gym',6,700.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P147','Cricket bowling machine',6,3000.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P148','ROLLER DERBY SKATES',6,3079.99,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P149','Metal 3.5-Channel RC Helicopter',7,2458.20,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P150','Ned Butterfly Style Yo Yo',7,553.23,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P151','Baby Einstein Hand Puppets',7,1229.41,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P152','fire godzilla toy',7,614.09,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P153','Remote car',7,1000.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P154','Barbie doll set',7,500.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P155','Teddy bear',7,300.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P156','Clever sticks',7,400.00,100)
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P157','See and Say',7,200.00,50)

GO

SELECT * FROM Categories

SELECT * FROM Products

CREATE TABLE Roles(
[RoleId] TINYINT CONSTRAINT pk_RoleId PRIMARY KEY IDENTITY(1,1),
[RoleName] VARCHAR(20) CONSTRAINT	uq_RoleName UNIQUE NOT NULL
)

CREATE TABLE Users(
[EmailId] VARCHAR(50) CONSTRAINT pk_EmailId PRIMARY KEY NOT NULL,
[UserPassword] VARCHAR(15) NOT NULL,
[RoleId] TINYINT REFERENCES Roles(RoleId),
[Gender] CHAR(1) CONSTRAINT chk_Gender CHECK(Gender IN('F','M')) NOT NULL,
[DateOfBirth] DATE CONSTRAINT chk_DateOfBirth CHECK(DateOfBirth< GETDATE()) NOT NULL,
[Address] VARCHAR(200) NOT NULL
)

CREATE TABLE PurchaseDetails(
[PurchaseId] BIGINT CONSTRAINT pk_PurchaseId PRIMARY KEY IDENTITY(1,1) NOT NULL,
[EmailId] VARCHAR(50) REFERENCES Users(EmailId),
[ProductId] CHAR(4) REFERENCES Products(ProductId),
[QuantityPurchased] SMALLINT CONSTRAINT chk_QuantityPurchased CHECK(QuantityPurchased>0) NOT NULL,
[DateOfPurchase] SMALLDATETIME CONSTRAINT chk_DateOfPurchase CHECK(DateOfPurchase<GETDATE()) NOT NULL 
)



-- Insertion scripts for Roles
SET IDENTITY_INSERT Roles ON
INSERT INTO Roles (RoleId, RoleName) VALUES (1, 'Admin')
INSERT INTO Roles (RoleId, RoleName) VALUES (2, 'Customer')
SET IDENTITY_INSERT Roles OFF
GO

--Insertion scripts for Users
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Franken@gmail.com','BSBEV@1234',2,'F','1976-08-26','Fauntleroy Circus')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Henriot@gmail.com','CACTU@1234',2,'F','1971-09-04','Cerrito 333')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Hernadez@gmail.com','CHOPS@1234',2,'M','1981-09-18','Hauptstr. 29')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Jablonski@gmail.com','COMMI@1234',2,'M','1989-07-21','Av. dos Lusíadas, 23')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Josephs@gmail.com','CONSH@1234',2,'F','1963-11-09','Berkeley Gardens 12  Brewery')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Anzio_Don@infosys.com','don@123',1,'M','1991-02-24','Surya Bakery, Mysore;Surya Bakery, Mysore-570001')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Karttunen@gmail.com','DRACD@1234',2,'M','1963-06-27','Walserweg 21')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Koskitalo@gmail.com','DUMON@1234',2,'F','1966-01-28','67, rue des Cinquante Otages')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Labrune@gmail.com','EASTC@1234',2,'F','1980-02-09','35 King George')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mathew_Edmar@infosys.com','Divine@456',2,'M','1989-09-12','Saibaba colony, Coimbatore')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Larsson@gmail.com','ERNSH@1234',2,'M','1988-04-08','Kirchgasse 6')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Latimer@gmail.com','FAMIA@1234',2,'M','1964-10-08','Rua Orós, 92')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Lebihan@gmail.com','FISSA@1234',2,'M','1968-03-22','C/ Moralzarzal, 86')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Lincoln@gmail.com','FOLIG@1234',2,'M','1971-01-27','184, chaussée de Tournai')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('McKenna@gmail.com','FOLKO@1234',2,'F','1979-08-30','Åkergatan 24')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mendel@gmail.com','FRANK@1234',2,'M','1964-07-08','Berliner Platz 43')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Muller@gmail.com','FRANR@1234',2,'F','1965-05-22','54, rue Royale')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Nagy@gmail.com','FRANS@1234',2,'F','1978-02-05','Via Monte Bianco 34')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rourke@gmail.com','FURIB@1234',2,'F','1967-10-24','Jardim das rosas n. 32')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Ottlieb@gmail.com','GALED@1234',2,'F','1960-05-26','Rambla de Cataluña, 23')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paolino@gmail.com','GODOS@1234',2,'M','1961-08-29','C/ Romero, 33')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Parente@gmail.com','GOURL@1234',2,'F','1963-04-25','Av. Brasil, 442')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Pontes@gmail.com','GROSR@1234',2,'M','1962-09-29','5ª Ave. Los Palos Grandes')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rance@gmail.com','HANAR@1234',2,'M','1986-04-30','Rua do Paço, 67')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Roel@gmail.com','HILAA@1234',2,'M','1983-12-28','Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Roulet@gmail.com','HUNGC@1234',2,'M','1981-04-14','City Center Plaza 516 Main St.')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Saveley@gmail.com','HUNGO@1234',2,'F','1970-11-07','8 Johnstown Road')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Schmitt@gmail.com','ISLAT@1234',2,'F','1974-09-19','Garden House Crowther Way')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rine_Jamwal@infosys.com','spacejet',2,'F','1991-07-20','R S Puram, Coimbatore')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Smith@gmail.com','KOENE@1234',2,'M','1985-05-08','Maubelstr. 90')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Snyder@gmail.com','LACOR@1234',2,'M','1985-11-03','67, avenue de l Europe')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Sommer@gmail.com','LAMAI@1234',2,'F','1968-09-08','1 rue Alsace-Lorraine')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Thomas@gmail.com','LAUGB@1234',2,'M','1986-11-15','1900 Oak St.')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Tonini@gmail.com','LAZYK@1234',2,'M','1988-11-11','12 Orchestra Terrace')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mess@gmail.com','LEHMS@1234',2,'F','1964-07-30','Magazinweg 7')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Jai@gmail.com','LETSS@1234',2,'F','1971-01-21','87 Polk St. Suite 5')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Albert@gmail.com','LILAS@1234',2,'M','1963-12-23','Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paolo@gmail.com','LINOD@1234',2,'M','1985-09-18','Ave. 5 de Mayo Porlamar')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Pedro@gmail.com','LONEP@1234',2,'F','1981-03-18','89 Chiaroscuro Rd.')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Victoria@gmail.com','MAGAA@1234',2,'M','1987-01-09','Via Ludovico il Moro 22')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Helen@gmail.com','MAISD@1234',2,'F','1968-06-28','Rue Joseph-Bens 532')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Lesley@gmail.com','MEREP@1234',2,'F','1982-12-23','43 rue St. Laurent')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Francisco@gmail.com','MORGK@1234',2,'M','1963-02-23','Heerstr. 22')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Sanio_Neeba@infosys.com','AllIsGood',2,'F','1990-06-13','Ramnagar, Coimbatore')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Philip@gmail.com','NORTS@1234',2,'M','1987-03-04','South House 300 Queensbridge')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Aria@gmail.com','OCEAN@1234',2,'M','1965-06-27','Ing. Gustavo Moncada 8585 Piso 20-A')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Ann@gmail.com','OLDWO@1234',2,'F','1981-03-21','2743 Bering St.')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Anabela@gmail.com','OTTIK@1234',2,'F','1985-11-23','Mehrheimerstr. 369')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Peter@gmail.com','PARIS@1234',2,'F','1981-11-13','265, boulevard Charonne')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paul@gmail.com','PERIC@1234',2,'M','1987-05-17','Calle Dr. Jorge Cash 321')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Carlos@gmail.com','PICCO@1234',2,'M','1969-02-08','Geislweg 14')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Palle@gmail.com','PRINI@1234',2,'F','1961-03-29','Estrada da saúde n. 58')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Karla@gmail.com','QUEDE@1234',2,'M','1968-04-28','Rua da Panificadora, 12')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Karin@gmail.com','QUEEN@1234',2,'F','1989-12-18','Alameda dos Canàrios, 891')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Matti@gmail.com','QUICK@1234',2,'M','1982-09-18','Taucherstraße 10')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Pirkko@gmail.com','RANCH@1234',2,'M','1983-09-24','Av. del Libertador 900')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Janine@gmail.com','RATTC@1234',2,'F','1964-12-12','2817 Milton Dr.')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Maria@gmail.com','REGGC@1234',2,'M','1980-04-11','Strada Provinciale 124')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Yoshi@gmail.com','RICAR@1234',2,'F','1961-08-28','Av. Copacabana, 267')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Laurence@gmail.com','RICSU@1234',2,'M','1985-05-26','Grenzacherweg 237')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('MeetRoda@yahoo.co.in','ChristaRocks',1,'M','1990-04-20','Choultry Circle, Mysore')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Elizabeth@gmail.com','ROMEY@1234',2,'F','1975-04-26','Gran Vía, 1')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Patricia@gmail.com','SANTG@1234',2,'F','1968-10-16','Erling Skakkes gate 78')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Roland@gmail.com','SAVEA@1234',2,'F','1980-01-04','187 Suffolk Ln.')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rita@gmail.com','SEVES@1234',2,'M','1972-06-15','90 Wadhurst Rd.')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Helvetius@gmail.com','SIMOB@1234',2,'F','1978-03-09','Vinbæltet 34')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Timothy@gmail.com','SPECD@1234',2,'M','1964-09-28','25, rue Lauriston')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Sven@gmail.com','SPLIR@1234',2,'F','1967-12-12','P.O. Box 555')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('SamRocks@gmail.com','samsuji123!',2,'M','1991-06-15','Shankranti Circle, Mysore')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Miguel@gmail.com','SUPRD@1234',2,'F','1971-10-09','Boulevard Tirou, 255')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paula@gmail.com','THEBI@1234',2,'M','1980-08-05','89 Jefferson Way Suite 2')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Manuel@gmail.com','THECR@1234',2,'M','1988-10-15','55 Grizzly Peak Rd.')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mariaa@gmail.com','TOMSP@1234',2,'F','1987-11-29','Luisenstr. 48')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Martine@gmail.com','TORTU@1234',2,'M','1985-05-08','Avda. Azteca 123')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Diego@gmail.com','TRADH@1234',2,'F','1983-02-16','Av. Inês de Castro, 414')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Annette@gmail.com','TRAIH@1234',2,'M','1981-05-03','722 DaVinci Blvd.')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mary@gmail.com','VAFFE@1234',2,'F','1977-10-09','Smagsloget 45')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Carine@gmail.com','VICTE@1234',2,'F','1982-12-27','2, rue du Commerce')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Margaret@gmail.com','VINET@1234',2,'M','1979-08-16','59 rue de l Abbaye')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Howard@gmail.com','WANDK@1234',2,'F','1982-06-02','Adenauerallee 900')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Martin@gmail.com','WARTH@1234',2,'M','1989-12-15','Torikatu 38')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Gary@gmail.com','WELLI@1234',2,'F','1968-12-27','Rua do Mercado, 12')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Daniel@gmail.com','WHITC@1234',2,'M','1978-05-22','305 - 14th Ave. S. Suite 3B')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('mat@gmail.com','WILMK@1234',2,'M','1977-01-13','Keskuskatu 45')
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Davis@gmail.com','WOLZA@1234',2,'M','1982-01-09','ul. Filtrowa 68')
GO


--Insertion scripts for PurchaseDetails
SET IDENTITY_INSERT PurchaseDetails ON
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1001,'Franken@gmail.com','P101',2,'Jan 12 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1002,'Franken@gmail.com','P143',1,'Jan 13 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1003,'Franken@gmail.com','P112',3,'Jan 14 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1004,'Franken@gmail.com','P148',2,'Jan 15 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1005,'Franken@gmail.com','P150',1,'Jan 16 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1006,'Franken@gmail.com','P134',3,'Jan 16 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1007,'SamRocks@gmail.com','P120',4,'Nov 17 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1008,'SamRocks@gmail.com','P110',4,'Nov 19 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1009,'SamRocks@gmail.com','P112',3,'Nov 20 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1010,'SamRocks@gmail.com','P148',1,'Nov 21 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1011,'SamRocks@gmail.com','P150',5,'Dec 22 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1012,'Davis@gmail.com','P134',1,'Jan 12 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1013,'Davis@gmail.com','P101',3,'Jan 13 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1014,'Davis@gmail.com','P143',3,'Jan 14 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1015,'Davis@gmail.com','P112',3,'Jan 15 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1016,'Davis@gmail.com','P148',3,'Jan 16 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1017,'Henriot@gmail.com','P150',5,'Jan 17 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1018,'Henriot@gmail.com','P134',1,'Nov 22 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1019,'Henriot@gmail.com','P111',2,'Dec 25 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1020,'Henriot@gmail.com','P121',1,'Nov 21 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1021,'Henriot@gmail.com','P122',5,'Nov 28 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1022,'Pirkko@gmail.com','P109',4,'Nov 29 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1023,'Pirkko@gmail.com','P123',5,'Dec 21 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1024,'Pirkko@gmail.com','P115',2,'Jan 21 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1025,'Pirkko@gmail.com','P113',5,'Dec 21 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1026,'Pirkko@gmail.com','P145',3,'Nov 28 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1027,'Pirkko@gmail.com','P132',5,'Nov 29 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1028,'Pirkko@gmail.com','P101',3,'Nov 30 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1029,'Elizabeth@gmail.com','P143',5,'Jan  1 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1030,'Elizabeth@gmail.com','P112',5,'Jan  2 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1031,'Elizabeth@gmail.com','P148',1,'Jan  3 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1032,'Elizabeth@gmail.com','P150',5,'Jan  4 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1033,'Elizabeth@gmail.com','P134',2,'Jan  5 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1034,'Elizabeth@gmail.com','P135',3,'Jan  6 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1035,'Paula@gmail.com','P136',3,'Jan  7 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1036,'Paula@gmail.com','P137',3,'Jan 18 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1037,'Paula@gmail.com','P148',5,'Jan 19 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1038,'Paula@gmail.com','P150',2,'Jan 16 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1039,'Paula@gmail.com','P134',2,'Jan 12 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1040,'Paula@gmail.com','P120',2,'Jan 11 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1041,'Paula@gmail.com','P110',5,'Jan 12 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1042,'Howard@gmail.com','P112',2,'Jan 17 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1043,'Howard@gmail.com','P114',3,'Jan 19 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1044,'Howard@gmail.com','P101',1,'Jan 21 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1045,'Howard@gmail.com','P143',5,'Jan 22 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1046,'Howard@gmail.com','P112',2,'Jan 23 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1047,'Howard@gmail.com','P148',5,'Jan 14 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1048,'Howard@gmail.com','P150',4,'Jan 15 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1049,'Howard@gmail.com','P134',5,'Jan 17 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1066,'Franken@gmail.com','P101',2,'Jan 12 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1067,'Franken@gmail.com','P143',1,'Jan 13 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1068,'Franken@gmail.com','P112',3,'Jan 14 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1069,'Franken@gmail.com','P148',2,'Jan 15 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1070,'Franken@gmail.com','P150',1,'Jan 16 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1071,'Franken@gmail.com','P134',3,'Jan 17 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1072,'Pedro@gmail.com','P101',1,'Jan 18 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1073,'Pedro@gmail.com','P143',1,'Jan 12 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1074,'Pedro@gmail.com','P112',5,'Jan 13 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1075,'Pedro@gmail.com','P148',1,'Jan 14 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1076,'Pedro@gmail.com','P150',2,'Jan 15 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1077,'Pedro@gmail.com','P134',4,'Jan 16 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1078,'Pedro@gmail.com','P101',2,'Jan 12 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1079,'Roland@gmail.com','P143',1,'Jan 13 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1080,'Roland@gmail.com','P112',3,'Jan 14 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1081,'Roland@gmail.com','P148',2,'Jan 15 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1082,'Roland@gmail.com','P150',1,'Jan 16 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1083,'Roland@gmail.com','P134',3,'Jan 17 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1085,'Roland@gmail.com','P101',2,'Jan 12 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1086,'Roland@gmail.com','P143',1,'Jan 13 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1087,'Roland@gmail.com','P112',3,'Jan 14 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1088,'Roland@gmail.com','P148',2,'Jan 15 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1089,'Roland@gmail.com','P150',1,'Jan 16 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1090,'Roland@gmail.com','P134',3,'Jan 16 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1108,'Timothy@gmail.com','P120',4,'Nov 17 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1110,'Timothy@gmail.com','P110',4,'Nov 19 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1111,'Timothy@gmail.com','P112',3,'Nov 20 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1112,'Timothy@gmail.com','P148',1,'Nov 21 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1114,'Timothy@gmail.com','P150',5,'Dec 22 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1115,'Timothy@gmail.com','P134',1,'Jan 12 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1116,'Timothy@gmail.com','P101',3,'Jan 13 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1117,'Timothy@gmail.com','P143',3,'Jan 14 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1118,'Timothy@gmail.com','P112',3,'Jan 15 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1119,'Timothy@gmail.com','P148',3,'Jan 16 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1120,'Timothy@gmail.com','P150',5,'Jan 17 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1121,'Timothy@gmail.com','P134',1,'Nov 22 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1122,'Matti@gmail.com','P111',2,'Dec 25 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1123,'Matti@gmail.com','P121',1,'Nov 21 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1124,'Matti@gmail.com','P122',5,'Nov 28 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1125,'Matti@gmail.com','P109',4,'Nov 29 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1126,'Matti@gmail.com','P123',5,'Dec 21 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1127,'Matti@gmail.com','P115',2,'Jan 21 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1128,'Matti@gmail.com','P113',5,'Dec 21 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1129,'Matti@gmail.com','P145',3,'Nov 28 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1130,'Matti@gmail.com','P132',5,'Nov 29 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1131,'Matti@gmail.com','P101',3,'Nov 30 2013 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1132,'Matti@gmail.com','P143',5,'Jan  1 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1133,'Matti@gmail.com','P112',5,'Jan  2 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1134,'Helvetius@gmail.com','P148',1,'Jan  3 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1135,'Helvetius@gmail.com','P150',5,'Jan  4 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1136,'Helvetius@gmail.com','P134',2,'Jan  5 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1137,'Helvetius@gmail.com','P135',3,'Jan  6 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1138,'Helvetius@gmail.com','P136',3,'Jan  7 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1139,'Helvetius@gmail.com','P137',3,'Jan 18 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1140,'Helvetius@gmail.com','P148',5,'Jan 19 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1141,'Helvetius@gmail.com','P150',2,'Jan 16 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1142,'Helvetius@gmail.com','P134',2,'Jan 12 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1143,'Helvetius@gmail.com','P120',2,'Jan 11 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1144,'Helvetius@gmail.com','P110',5,'Jan 12 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1145,'Helvetius@gmail.com','P112',2,'Jan 17 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1146,'Mathew_Edmar@infosys.com','P114',3,'Jan 19 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1147,'Mathew_Edmar@infosys.com','P101',1,'Jan 21 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1148,'Mathew_Edmar@infosys.com','P143',5,'Jan 22 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1149,'Mathew_Edmar@infosys.com','P112',2,'Jan 23 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1150,'Mathew_Edmar@infosys.com','P148',5,'Jan 14 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1151,'Mathew_Edmar@infosys.com','P150',4,'Jan 15 2014 12:00AM')
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1152,'Mathew_Edmar@infosys.com','P134',5,'Jan 17 2014 12:00AM')
SET IDENTITY_INSERT PurchaseDetails OFF
GO

select * from PurchaseDetails

select * from Roles

select * from Users

--SEQUENCES 

CREATE SEQUENCE Purchase_Sequences

SELECT * FROM sys.sequences WHERE name='Purchase_SequenceS'

SELECT NEXT VALUE FOR Purchase_Sequences AS Next_Value

DROP SEQUENCE Purchase_Sequences

CREATE SEQUENCE Purchase_Sequences
AS INT
START WITH 10
INCREMENT BY 1

select name,start_value from sys.sequences where name='Purchase_Sequences'

CREATE TABLE PurchaseDetailsIndia
(
   [PurchaseId] INT,
   [EmailId] VARCHAR(50) CONSTRAINT fk_EmailId_PurchaseDetailsIndia REFERENCES Users(EmailId),
   [ProductId] CHAR(4) CONSTRAINT fk_ProductId_PurchaseDetailsIndia REFERENCES Products(ProductId),
   [QuantityPurchased] SMALLINT CONSTRAINT chk_QuantityPurchased_PurchaseDetailsIndia 
                       CHECK(QuantityPurchased>0) NOT NULL,  
   [DateOfPurchase] SMALLDATETIME CONSTRAINT chk_DateOfPurchase_PurchaseDetailsIndia 
                    CHECK(DateOfPurchase<=GETDATE()) DEFAULT GETDATE() NOT NULL
)
GO
CREATE TABLE PurchaseDetailsUK
(
    [PurchaseId] INT,
    [EmailId] VARCHAR(50) CONSTRAINT fk_EmailId_PurchaseDetailsUK REFERENCES Users(EmailId),
    [ProductId] CHAR(4) CONSTRAINT fk_ProductId_PurchaseDetailsUK REFERENCES Products(ProductId),
    [QuantityPurchased] SMALLINT CONSTRAINT chk_QuantityPurchased_PurchaseDetailsUK 
                        CHECK(QuantityPurchased>0) NOT NULL,  
    [DateOfPurchase] SMALLDATETIME CONSTRAINT chk_DateOfPurchase_PurchaseDetailsUK 
                     CHECK(DateOfPurchase<=GETDATE()) DEFAULT GETDATE() NOT NULL
)
GO

CREATE SEQUENCE Purchase_Sequence  -- Creates a sequence with default values

SELECT * FROM sys.sequences WHERE name = 'Purchase_Sequence'

SELECT NEXT VALUE FOR Purchase_Sequence 
           AS Next_Value -- NEXT VALUE FOR is used to fetch the next value 
                         -- for the given sequence

SELECT NEXT VALUE FOR Purchase_Sequence AS Next_Value 

SELECT name,start_value,increment,minimum_value,maximum_value,current_value 
            FROM sys.sequences WHERE name = 'Purchase_Sequence'

DROP SEQUENCE Purchase_Sequence

CREATE SEQUENCE Purchase_Sequence
     AS INT          -- To declare the data type as INT
     START WITH 10   -- Gives the start value of the sequence(column start_value) 
                     -- in the range of INT data type.
     INCREMENT BY 1  --This value(column increment) can be any integer(1, 2, 3 etc.).
                     -- For a decrementing sequence, use a negative value (-1,-2 etc.)
GO


SELECT name,start_value,increment,minimum_value,maximum_value,current_value 
            FROM sys.sequences WHERE name = 'Purchase_Sequence'


ALTER SEQUENCE Purchase_Sequence
    MINVALUE 1        -- Gives the minimum value that the sequence can 
                      --  contain(column minimum_value) in range of INT datatype
    MAXVALUE 5000  -- Gives the maximum value that the sequence can 
                      --  contain(column maximum_value) in range of INT datatype
GO

SELECT name,start_value,increment,minimum_value,maximum_value,current_value 
       FROM sys.sequences WHERE name = 'Purchase_Sequence'

ALTER SEQUENCE Purchase_Sequence
    CYCLE  -- To generate a cycle for sequence(column is_cycling). 
               --  If cycle is not required, this property can be ignored 
               --  as the default behaviour of sequences is NO CYCLE.
GO

SELECT name, is_cycling FROM sys.sequences WHERE name = 'Purchase_Sequence'

ALTER SEQUENCE Purchase_Sequence
    CACHE 50  -- Specifies a cache memory of 50 for the sequence(column is_cached).
              -- If caching is not required, this property is set to NO CACHE. By default, 
              -- sequences have caching enabled with cache size as NULL.
GO

SELECT name, is_cached, cache_size FROM sys.sequences 
            WHERE name = 'Purchase_Sequence'




INSERT INTO PurchaseDetailsIndia VALUES
(NEXT VALUE FOR Purchase_Sequence,'Franken@gmail.com','P101',2,'Jan 12 2014 12:00PM')
INSERT INTO PurchaseDetailsUK VALUES
(NEXT VALUE FOR Purchase_Sequence,'Albert@gmail.com','P143',1,'Jan 13 2014 12:01PM')
INSERT INTO PurchaseDetailsIndia VALUES
(NEXT VALUE FOR Purchase_Sequence,'Franken@gmail.com','P112',3,'Jan 14 2014 12:02PM')

SELECT PurchaseId FROM PurchaseDetailsIndia

SELECT PurchaseId FROM PurchaseDetailsUK

alter table Users DROP CONSTRAINT fk_RoleId

alter table Roles DROP CONSTRAINT pk_RoleId

--INDEXES

CREATE CLUSTERED INDEX idx_RoleId_Roles on Roles(RoleId)

IF OBJECT_ID('Roles') IS NOT NULL
    DROP TABLE Roles
CREATE TABLE Roles
(
     RoleId TINYINT CONSTRAINT pk_RoleId PRIMARY KEY, -- A clustered index
                                                      -- is created on RoleId 
     RoleName VARCHAR(20) NOT NULL
)

--Dropping existing index on primary key throws an error 
DROP INDEX pk_RoleId ON Roles

ALTER TABLE Roles DROP CONSTRAINT pk_RoleId

CREATE NONCLUSTERED INDEX idx_ProductId_Products on Products(ProductId)

CREATE NONCLUSTERED INDEX idx_Email_DateOfPurchase_PurchaseDetails on PurchaseDetails(EmailId,DateOfPurchase)


CREATE NONCLUSTERED INDEX idx_CardNumber_CardDetails on CardDetails(CardNumber)


CREATE NONCLUSTERED INDEX idx_Email_RoleId_Users on Users(EmailId,RoleId)

--TEMPORARY TABLES:

CREATE TABLE #Cart(
ProductId char(4)
)
INSERT INTO #Cart VALUES('P101')

INSERT INTO #Cart VALUES('P102')

INSERT INTO #Cart VALUES('P103')

SELECT * FROM #Cart

--global temp table
--ALL USERS CAN ACCESS OR ANY SQL SERVER CONNECTION
CREATE TABLE ##CartNew(
ProductId CHAR(4)
)

INSERT INTO ##CartNew VALUES('P104')

INSERT INTO ##CartNew VALUES('P105')

INSERT INTO ##CartNew VALUES('P106')

SELECT * FROM ##CartNew

--BATCHES

BEGIN
     DECLARE @Price NUMERIC(8) =200, @QuantityPurchased TINYINT=2, 
            @TotalAmount NUMERIC(8)
     SET @TotalAmount=@Price*@QuantityPurchased
     PRINT @TotalAmount
END

BEGIN
   DECLARE @Price NUMERIC(8)=200, @QuantityPurchased TINYINT=2,
          @TotalAmount NUMERIC(8)
   SET @TotalAmount=@Price*@QuantityPurchased
   SET @TotalAmount=
      CASE
         WHEN @TotalAmount>0 AND @TotalAmount<1000
            THEN 0.95*@TotalAmount
         WHEN @TotalAmount>=1000 AND @TotalAmount<2000
            THEN 0.9*@TotalAmount
         ELSE 0.8*@TotalAmount
      END
     PRINT @TotalAmount
END

BEGIN
DECLARE @Price NUMERIC(8)=200, @QuantityPurchased TINYINT=2,
         @TotalAmount NUMERIC(8)
 SET @TotalAmount=@Price*@QuantityPurchased
 IF @TotalAmount>0 AND @TotalAmount<1000
    SET @TotalAmount=0.95*@TotalAmount
 ELSE IF @TotalAmount>=1000 AND @TotalAmount<2000
    SET @TotalAmount=0.9*@TotalAmount
 ELSE    
    SET @TotalAmount=0.8*@TotalAmount
 PRINT @TotalAmount
END



