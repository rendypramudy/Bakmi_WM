USE Bakmi_WM

--StaffPosition--
INSERT INTO StaffPosition VALUES 
('SP001','Accountant'),
('SP002','Assistant Manager'),
('SP003','Cashier'),
('SP004','Chairman'),
('SP005','Chef'),
('SP006','Director'),
('SP007','Dishwasher'),
('SP008','Secretary'),
('SP009','Treasurer'),
('SP010','Waiter');
SELECT * FROM StaffPosition

--Staff--
INSERT INTO Staff VALUES
('SF001','SP004','Jack Connor','Male','1992-07-01','029310344219','Jack@gmail.com','Doctor Cipto No.21','1800000'),
('SF002','SP006','Jessica Lauren','Female','1994-05-08','029310662717','Jessica1@gmail.com','Progo Street No.12','1900000'),
('SF003','SP002','Thomas Charlie','Male','1993-05-05','0293181281','Thomasc@gmail.com','Wahidin Street No.09','1250000'),
('SF004','SP008','Abigail Margaret','Female','1992-01-01','0293123314','Margarethabi@gmail.com','Goddison Park Street No.91','1850000'),
('SF005','SP009','Ava Victoria','Female','1998-02-01','0733625182981','Victoriava@gmail.com','Doctor Wahiddin Street No.51','1800000'),
('SF006','SP001','Jessica Maddison','Female','1997-03-07','083931982371','Jessmadisson@gmail.com','Majapahit Street No.31','1500000'),
('SF007','SP003','Oscar Wayne','Male','1995-06-01','0128349084838','Wayneoscar@gmail.com','Andara Street No.89','1900000'),
('SF008','SP005','Robin William','Male','1990-07-06','012772397912','William@gmail.com','Cipete Street No.34','950000'),
('SF009','SP010','Alexander Charles','Male','1992-07-10','0138418491149','Alexches@gmail.com','Cinere Street No.90','1700000'),
('SF010','SP007','Olivia Bethany','Female','1991-07-09','0109246314119','Oliviabet41@gmail.com','Green Village Street No.71','1800000'),
('SF011','SP004','Emma Patricia','Female','1993-05-06','01972615461341','Emma1001@gmail.com','Citra Garden Street No.121','1750000'),
('SF012','SP009','Charlie Kurniawan','Male','1994-06-12','0198741747411','Charli10@gmail.com','Herlina Park Street No.77','780000'),
('SF013','SP002','Issabela Linda','Female','1998-07-20','04158158541','Linda121@gmail.com','Rawamangun Street No.87','2000000'),
('SF014','SP008','Sophia Jennifer','Female','1990-07-25','0519051094519','Jenniffer@gmail.com','Mekarsari Garden No.111','1820000'),
('SF015','SP009','Reece James','Male','1998-07-11','051951095151','Rjames@gmail.com','Serpong Street No.8','1750000'),
('SF016','SP001','Tyson David','Male','1997-05-26','051589185189','Tyson07@gmail.com','Jagakarsa Street No.36','1980000'),
('SF017','SP003','Elizabeth Shallom','Female','1990-07-17','0251950195412','Elizabeth102@gmail.com','Jatiasih Street No.99','870000'),
('SF018','SP005','Nats Yewar','Male','1992-07-20','012482819384134','Natss21@gmail.com','Pondok Sari Street No.234','780000'),
('SF019','SP010','Simon Dapr','Male','1990-11-16','091049757815','Daprsimon112@gmail.com','Lebak Bulus Street No.32','800000'),
('SF020','SP007','Tasya Amalia','Female','1999-03-10','081841841841','Amaliatasya@gmail.com','Rinjani Selatan Street No.17','980000'),
('SF021','SP001','David Maulana','Male','1995-05-26','091589185189','DavidM@gmail.com','Cipete Street No.21','1780000'),
('SF022','SP003','Mikha Shallom','Female','1990-07-17','0251950195412','Mikha02@gmail.com','Palaasih Street No.68','970000'),
('SF023','SP005','Nata Yesir','Male','1992-07-20','092482819384134','Nayet1@gmail.com','Pondok Labu Street No.234','1780000'),
('SF024','SP010','Tenz Dapr','Male','1992-11-17','091049757815','tenzdap@gmail.com','Cipinang Street No.31','900000'),
('SF025','SP007','Jasmine T','Female','1999-08-10','041841841841','jasmineT@gmail.com','Kemang Selatan Street No.17','980000'),
('SF026','SP008','Tasmita Y','Female','1999-10-10','081841841841','Tasmita@gmail.com','Kemang Selatan Street No.29','1880000'),
('SF027','SP005','Boby T','Male','1990-01-10','081341841841','BobyT@gmail.com','Kemang Selatan Street No.16','780000');
SELECT * FROM Staff

--Customer--
INSERT INTO Customer VALUES
('CU201', 'Adele Henry', 'Female', '1985-08-21', '081135221913', 'AdeleH@gmail.com','366-4175 Tellus. Rd.'),
('CU202', 'Alfonso Johnston', 'Male', '1994-09-01', '088035838827', 'AlJohnston@gmail.com', '8469 Est Av.'),
('CU203', 'Davis Marsh', 'Male', '1991-03-24', '084436274584', 'DaveMh@gmail.com', '6749 Curabitur Rd.'),
('CU204', 'Oscar Combs', 'Male', '1998-02-22', '088716962382', 'OscarCombs@gmail.com', '1643 North Avenue'),
('CU205', 'Carla Rose', 'Female', '1999-01-09', '081528734152', 'CRose@gmail.com', '1643 South Avenue'),
('CU206', 'Camden Montgomery', 'Male', '1982-12-30', '084859067495', 'CamdenM@gmail.com', '6283 Est Road'),
('CU207', 'Gillian Bates', 'Male', '2001-01-08', '087433440675', 'GBates@gmail.com', '1377 Vivamus Street'),
('CU208', 'Mason Golden', 'Male', '1979-03-29', '083478685745', 'MasonGold@gmail.com', '7841 Senectus Street'),
('CU209', 'Tyler Jensen', 'Female', '1991-01-13', '081572954668', 'TylerJens@gmail.com', '6283 Est Road'),
('CU210', 'Lucian Mack', 'Male', '1985-07-13', '081374646757', 'LucianM@gmail.com', '3550 Egestas St.'),
('CU211', 'Swill Omery', 'Male', '1988-08-11', '087859067495', 'SwillO@gmail.com', '6282 WEst Road'),
('CU212', 'Bill Bates', 'Male', '2003-01-08', '087253440675', 'BBates@gmail.com', '1377 Gilgavamus Street'),
('CU213', 'Mason Greenwood', 'Male', '1971-03-29', '083478685745', 'MasonGw@gmail.com', '7821 Kalimun Street'),
('CU214', 'Tyler Swift', 'Female', '1982-01-13', '081582954668', 'Tylers@gmail.com', '6273 WEst Road'),
('CU215', 'Lucian Fernandez', 'Male', '1985-09-19', '081454246787', 'LucianF@gmail.com', '3570 Egeoitas St.'),
('CU216', 'Agus Montero', 'Male', '1987-12-2', '074859067495', 'AgusM@gmail.com', '789 Est Road'),
('CU217', 'Bil Bates', 'Male', '2001-01-08', '087493440675', 'BBates@gmail.com', '1378 Vivamus Street'),
('CU218', 'Mason Silver', 'Male', '1979-03-29', '083479685745', 'MasonS@gmail.com', '7841 Benectus Street'),
('CU219', 'Tyler Rodrigo', 'Female', '1997-01-13', '081572954668', 'TylerR@gmail.com', '6289 West Road'),
('CU220', 'Rudy Macky', 'Male', '1999-07-13', '081374846757', 'RudyM@gmail.com', '398 Begestas St.'),
('CU221', 'Swill Omery', 'Male', '1988-08-11', '087859067495', 'SwillO@gmail.com', '6282 WEst Road'),
('CU222', 'Will Bates', 'Male', '2001-01-07', '087253440675', 'WBates@gmail.com', '1377 Gilgavamus Street'),
('CU223', 'Mason James', 'Male', '1989-03-29', '083478685745', 'MasonJm@gmail.com', '7921 Kalimun Street'),
('CU224', 'Monica Swift', 'Female', '1987-01-13', '081582954668', 'Monicas@gmail.com', '6183 West Road'),
('CU225', 'Alex Fernando', 'Male', '1991-09-19', '081454246787', 'AlexF@gmail.com', '3901 Egeoitas St.'),
('CU226', 'Gwen Stacy', 'Female', '1987-01-13', '081982954668', 'Gwens@gmail.com', '1183 West Road'),
('CU227', 'Alex Parker', 'Male', '1989-09-19', '081354246787', 'AlexP@gmail.com', '3902 Egeoitas St.');
SELECT * FROM Customer

--Souvenir--
INSERT INTO Souvenir VALUES 
('SO121', 'Ballon', '5000', '7000'),
('SO122', 'Key Chain', '3000', '6000'),
('SO123' , 'Cap' , '40000', '75000'),
('SO124' , 'Totebag', '3000', '7000'),
('SO125' , 'Mug' , '10000' , '17000'),
('SO126', 'Sticker', '1000', '3000'),
('SO127', 'Tumbler','25000','50000'),
('SO128', 'Bracelet','4000','7000'),
('SO129', 'T-Shirt','50000','75000'),
('SO130', 'Mask','3000','10000'),
('SO131' , 'Sandals' , '20000' , '25000'),
('SO132', 'Doll', '40000', '50000'),
('SO133', 'Sweater','75000','10000'),
('SO134', 'Hoodie','75000','10000'),
('SO135', 'Pen','1000','3000'),
('SO136', 'Toys','40000','60000');
SELECT * FROM Souvenir

--SouvenirTransaction--
INSERT INTO SouvenirTransaction VALUES 
('ST001','SO122','2002-07-18','Key Chain','6'),
('ST002','SO123','2001-09-11','Cap','6'),
('ST003','SO127','2003-06-13','Tumbler','6'),
('ST004','SO128','2004-08-17','Bracelet','6'),
('ST005','SO130','2016-03-19','Mask','6'),
('ST006','SO132','2019-08-16','Doll','6'),
('ST007','SO124','2005-07-14','Totebag','8'),
('ST008','SO128','2004-08-19','Bracelet','7'),
('ST009','SO124','2007-04-18','Totebag','10'),
('ST010','SO128','2009-12-07','Bracelet','10'),
('ST011','SO134','2006-07-16','Hoodie','8'),
('ST012','SO124','2001-08-15','Totebag','6'),
('ST013','SO126','2003-08-17','Sticker','7'),
('ST014','SO125','2004-05-19','Mug','6'),
('ST015','SO135','2005-08-14','Pen','6'),
('ST016','SO133','2019-08-16','Sweater','6'),
('ST017','SO134','2005-07-14','Hoodie','6'),
('ST018','SO132','2004-08-19','Doll','6'),
('ST019','SO134','2007-04-18','Hoodie','6'),
('ST020','SO135','2009-12-07','Pen','10'),
('ST021','SO131','2006-07-16','Sandals','6'),
('ST022','SO126','2001-08-15','Sticker','6'),
('ST023','SO129','2003-08-17','T-shirt','6'),
('ST024','SO128','2004-05-19','Bracelet','6'),
('ST025','SO130','2005-08-14','Mask','6');
SELECT * FROM SouvenirTransaction

--Menu Category--
INSERT INTO MenuCategory VALUES
('MC001','Beverage'),
('MC002','Dessert'),
('MC003','Food'),
('MC004','Topping'); 
SELECT * FROM MenuCategory

--Menu--
INSERT INTO Menu VALUES
('ME001','MC001','Lemon Tea','15000'),
('ME002','MC001','Manggo Juice','20000'),
('ME003','MC001','Avocado Juice','22500'),
('ME004','MC001','Hot Chocolate','17500'),
('ME005','MC002','Vanilla Ice Cream','10000'),
('ME006','MC002','Strawberry Ice Cream','12000'),
('ME007','MC002','Chocolate Ice Cream','15500'),
('ME008','MC002','Taro Pudding','25000'),
('ME009','MC002','Manggo Pudding','30000'),
('ME010','MC002','Grape Pudding','27500'),
('ME011','MC003','Sushi','65000'),
('ME012','MC003','Beef Teriyaki','55000'),
('ME013','MC003','Chicken Katsu','35000'),
('ME014','MC003','Chicken Karage','27000'),
('ME015','MC003','Fried Rice','25000'),
('ME016','MC004','Cheese','4500'),
('ME017','MC004','Egg','5500'),
('ME018','MC004','Chili','6500'),
('ME019','MC004','Honey Mustard','12500'),
('ME020','MC004','Mentai','15500');
SELECT * FROM Menu

--MenuTransaction-- 
INSERT INTO MenuTransaction VALUES
('MT001','ME001','2007-08-01','Lemon Tea','3'),
('MT002','ME003','2005-11-22','Avocado Juice','5'),
('MT003','ME005','2009-07-15','Vanilla Ice Cream','2'),
('MT004','ME007','2002-3-29','Chocolate Ice Cream','3'),
('MT005','ME010','2010-04-12','Grape Pudding','4'),
('MT006','ME009','2006-09-19','Manggo Pudding','1'),
('MT007','ME007','2003-12-25','Chocolate Ice Cream','1'),
('MT008','ME008','2008-09-10','Taro Pudding','2'),
('MT009','ME004','2001-06-02','Hot Chocolate','4'),
('MT010','ME006','2008-03-13','Strawberry Ice Cream','3'),
('MT011','ME003','2001-01-15','Sushi','3'),
('MT012','ME012','2011-11-24','Beef Teriyaki','1'),
('MT013','ME015','2005-05-11','Fried Rice','2'),
('MT014','ME007','2015-04-18','Chocolate Ice Cream','1'),
('MT015','ME019','2017-08-07','Honey Mustard','3'),
('MT016','ME016','2009-10-19','Cheese','3'),
('MT017','ME008','2006-12-15','Taro Pudding','2'),
('MT018','ME020','2008-10-10','Mentai','1'),
('MT019','ME014','2003-06-10','Chicken Karage','3'),
('MT020','ME011','2009-04-15','Sushi','2'),
('MT021','ME013','2006-11-13','Chicken Katsu','3'),
('MT022','ME003','2008-05-18','Avocado Juice','2'),
('MT023','ME002','2005-06-11','Manggo Juice','2'),
('MT024','ME018','2014-09-18','Chili','3'),
('MT025','ME014','2015-10-07','Chicken Karage','6');
SELECT * FROM MenuTransaction

--Transaction Header----
INSERT INTO TransactionHeader VALUES
('TR001','CU205','SF003','2016-09-07'),
('TR002','CU215','SF005','2016-06-07'),
('TR003','CU214','SF004','2016-09-07'),
('TR004','CU217','SF011','2015-08-17'),
('TR005','CU215','SF013','2014-10-07'),
('TR006','CU214','SF001','2016-10-06'),
('TR007','CU205','SF002','2013-06-06'),
('TR008','CU215','SF006','2012-04-18'),
('TR009','CU214','SF008','2011-03-04'),
('TR010','CU205','SF007','2008-04-19'),
('TR011','CU215','SF010','2016-06-17'),
('TR012','CU214','SF009','2007-08-11'),
('TR013','CU205','SF012','2005-09-27'),
('TR014','CU215','SF015','2008-01-23'),
('TR015','CU214','SF014','2010-02-25'),
('TR016','CU205','SF017','2011-04-27'),
('TR017','CU215','SF016','2013-06-23'),
('TR018','CU214','SF019','2015-08-28'),
('TR019','CU205','SF018','2014-05-29'),
('TR020','CU215','SF021','2016-05-15'),
('TR021','CU214','SF020','2017-02-17'),
('TR022','CU205','SF023','2007-03-19'),
('TR023','CU215','SF022','2008-09-20'),
('TR024','CU214','SF025','2009-10-21'),
('TR025','CU214','SF024','2011-12-22');
SELECT * FROM TransactionHeader

--Transaction Detail--
INSERT INTO TransactionDetail VALUES
('TR001','ST001','MT001','ME009','SO121'),
('TR002','ST002','MT002','ME001','SO130'),
('TR003','ST003','MT003','ME003','SO127'),
('TR004','ST004','MT004','ME007','SO133'),
('TR005','ST005','MT005','ME010','SO129'),
('TR006','ST006','MT006','ME008','SO127'),
('TR007','ST007','MT007','ME002','SO128'),
('TR008','ST008','MT008','ME004','SO131'),
('TR009','ST009','MT009','ME005','SO134'),
('TR010','ST010','MT010','ME008','SO127'),
('TR011','ST011','MT011','ME003','SO125'),
('TR012','ST012','MT012','ME006','SO121'),
('TR013','ST013','MT013','ME007','SO123'),
('TR014','ST014','MT014','ME004','SO128'),
('TR015','ST015','MT015','ME001','SO122'),
('TR016','ST016','MT016','ME002','SO126'),
('TR017','ST017','MT017','ME009','SO127'),
('TR018','ST018','MT018','ME008','SO129'),
('TR019','ST019','MT019','ME007','SO125'),
('TR020','ST020','MT020','ME002','SO130'),
('TR021','ST021','MT021','ME004','SO133'),
('TR022','ST022','MT022','ME009','SO133'),
('TR023','ST023','MT023','ME010','SO124'),
('TR024','ST024','MT024','ME005','SO132'),
('TR025','ST025','MT025','ME006','SO131');
SELECT * FROM TransactionDetail