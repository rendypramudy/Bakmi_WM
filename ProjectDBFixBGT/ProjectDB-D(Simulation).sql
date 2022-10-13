USE Bakmi_WM

--INSERT ON Menu Transaction
INSERT INTO MenuTransaction VALUES
('MT026','ME011','2009-08-01','Sushi','3'),
('MT027','ME013','2006-11-22','Chicken Katsu','5'),
('MT028','ME015','2010-07-15','Fried Rice','2'),
('MT029','ME017','2012-3-29','Egg','3'),
('MT030','ME010','2011-04-12','Grape Pudding','4');
SELECT * FROM MenuTransaction
--INSERT ON Souvenir Transaction
INSERT INTO SouvenirTransaction VALUES 
('ST026','SO132','2005-05-30','Doll','2'),
('ST027','SO133','2006-02-28','Sweater','2'),
('ST028','SO123','2008-07-23','Cap','3'),
('ST029','SO122','2007-04-24','Key Chain','5'),
('ST030','SO130','2009-09-22','Mask','2');
SELECT * FROM SouvenirTransaction

--UPDATE Quantity ON Menu Transaction
BEGIN TRAN
UPDATE MenuTransaction
SET MenuQuantity = 2
WHERE MenuTransactionID = 'MT027'

--UPDATE DATE ON Souvenir Transaction
BEGIN TRAN
UPDATE SouvenirTransaction
SET SouvenirTransactionDate = '2015-03-16'
WHERE SouvenirTransactionID = 'ST026'

--DELETE Menu Transaction
BEGIN TRAN
DELETE MenuTransaction
WHERE MenuTransactionID = 'MT028' AND MenuID = 'ME015'

--DELETE Souvenir Transaction
BEGIN TRAN 
DELETE SouvenirTransaction
WHERE SouvenirTransactionID = 'ST027' AND SouvenirID = 'SO133'