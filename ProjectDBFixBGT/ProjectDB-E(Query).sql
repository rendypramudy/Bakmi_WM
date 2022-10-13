USE Bakmi_WM

---1
SELECT c.CustomerID,
c.CustomerName, 
CAST(COUNT(TransactionID)AS VARCHAR)+' Purchase' AS TotalTransaction
FROM Customer c JOIN TransactionHeader th ON
c.CustomerID=th.CustomerID JOIN Staff s ON
s.StaffID = th.StaffID
WHERE CustomerName LIKE '%e%' AND StaffName LIKE '%n'
GROUP BY c.CustomerID, c.CustomerName

--2
SELECT
st.SouvenirTransactionID, 
StaffID,
c.CustomerID,
'Rp.'+CAST(SUM(SellPrice*SouvenirQuantity)AS VARCHAR) AS [Total Price]
FROM
Souvenir s JOIN SouvenirTransaction st ON
s.SouvenirID = st.SouvenirID JOIN TransactionDetail td ON
st.SouvenirTransactionID = td.SouvenirTransactionID JOIN TransactionHeader th ON
th.TransactionID = td.TransactionID JOIN Customer c ON
c.CustomerID = th.CustomerID
WHERE (SellPrice) > 35000 AND LEN(c.CustomerName)>10
GROUP BY st.SouvenirTransactionID, StaffID,c.CustomerID

--3
SELECT
mt.MenuTransactionID,
CustomerName,
CONVERT(VARCHAR,mt.MenuTransactionDate,105) AS MenuTransactionDate,
MenuOrdered AS [Total Product],
CAST(SUM(MenuQuantity)AS VARCHAR) AS [Total Quantity]
FROM
MenuTransaction mt JOIN TransactionDetail td ON
mt.MenuTransactionID = td.MenuTransactionID JOIN TransactionHeader th ON
th.TransactionID = td.TransactionID JOIN Customer c ON
c.CustomerID = th.CustomerID
WHERE (DAY(MenuTransactionDate)%7)%2 = 0 AND LEN(CustomerName) - LEN(REPLACE(CustomerName, ' ', '')) +1  >= 2
GROUP BY mt.MenuTransactionID, CustomerName, mt.MenuTransactionDate, MenuOrdered

--4
SELECT
st.SouvenirTransactionID,
SUBSTRING(StaffName,1, CHARINDEX(' ',StaffName) - 1) AS StaffFirstName,
CONVERT(VARCHAR,st.SouvenirTransactionDate,105) AS MenuTransactionDate,
SouvenirPurchased AS [Total Product],
CAST(SUM(SouvenirQuantity)AS VARCHAR) AS [Total Quantity]
FROM 
SouvenirTransaction st JOIN TransactionDetail td ON
st.SouvenirTransactionID = td.SouvenirTransactionID JOIN TransactionHeader th ON
th.TransactionID = td.TransactionID JOIN Staff s ON
s.StaffID = th.StaffID
WHERE LEN(REPLACE(StaffName, ' ', '')) + 1  > 1 AND StaffSalary > 1000000
GROUP BY st.SouvenirTransactionID, StaffName, st.SouvenirTransactionDate, SouvenirPurchased

--5
SELECT
st.SouvenirTransactionID,
StaffName,
CONVERT(VARCHAR,st.SouvenirTransactionDate,105) AS MenuTransactionDate,
'Rp.' + CAST(StaffSalary AS VARCHAR) AS Salary
FROM
Souvenir so JOIN SouvenirTransaction st ON so.SouvenirID = st.SouvenirID JOIN TransactionDetail td ON
st.SouvenirTransactionID = td.SouvenirTransactionID JOIN TransactionHeader th ON
th.TransactionID = td.TransactionID JOIN Staff s ON
s.StaffID = th.StaffID,
(SELECT AVG(StaffSalary) AS StaffSalaryAverage
FROM Staff
)x
WHERE
so.BuyPrice > 10000 AND s.StaffSalary > x.StaffSalaryAverage
GROUP BY st.SouvenirTransactionID, StaffName, st.SouvenirTransactionDate, StaffSalary

 --6
 SELECT
 StaffName, MenuName,CONVERT(varchar, SouvenirTransactionDate,105) AS MenuTransactionDate,
 REPLACE(StaffPhoneNumber, '0','+62') AS StaffPhoneNumber
 FROM
 Staff s JOIN TransactionHeader th ON
 s.StaffID = th.StaffID JOIN TransactionDetail td ON
 th.TransactionID = td.TransactionID JOIN MenuTransaction mt ON
 mt.MenuTransactionID = td.MenuTransactionID JOIN Menu m ON
 m.MenuID = mt.MenuID JOIN SouvenirTransaction st ON
 st.SouvenirTransactionID = td.SouvenirTransactionID JOIN Souvenir so ON
 so.SouvenirID = st.SouvenirID,
 (
 SELECT AVG(SellPrice) AS AverageSellPrice
 FROM
 Souvenir
 )x
 WHERE
 s.StaffGender LIKE 'Female' AND m.MenuPrice > x.AverageSellPrice

 --7
 SELECT DISTINCT
 st.SouvenirTransactionID,
 UPPER(CustomerName) AS [Capitalized Customer Name],
 CAST(SUM(SouvenirQuantity)AS VARCHAR ) + 'pc(s)' AS [Total Quantity] 
 FROM
 SouvenirTransaction st JOIN TransactionDetail td ON
 st.SouvenirID = td.SouvenirID JOIN TransactionHeader th ON
 td.TransactionID = th.TransactionID JOIN Customer cs ON
 th.CustomerID = cs.CustomerID,
 (
	SELECT
	MAX(SouvenirQuantity) AS [Maximum Quantity Of All Souvenir]
	FROM
	SouvenirTransaction
 )x
 WHERE 
CAST(RIGHT(StaffID,1) AS INT) % 2 = 0 AND SouvenirQuantity < x.[Maximum Quantity Of All Souvenir]
 GROUP BY
 st.SouvenirTransactionID, CustomerName
 
 --8
 SELECT
 s.StaffID,
 s.StaffName,
 sp.StaffPositionName,
 CAST(SUM(MenuQuantity)AS VARCHAR) AS [Total Quantity]
 FROM
 StaffPosition sp JOIN Staff s ON 
 sp.StaffPositionID = s.StaffPositionID JOIN TransactionHeader th ON
 s.StaffID = th.StaffID JOIN TransactionDetail td ON
 td.TransactionID = th.TransactionID JOIN MenuTransaction mt ON
 mt.MenuTransactionID = td.MenuTransactionID,
 (
 SELECT MIN (MenuQuantity) AS [Minimum Purchased Quantity]
 FROM
 MenuTransaction
 )x
 WHERE
 MenuQuantity >= x.[Minimum Purchased Quantity] AND DAY(MenuTransactionDate) BETWEEN
 15 AND 25
 GROUP BY
 s.StaffID,
 s.StaffName,
 sp.StaffPositionName

 --9
 CREATE VIEW CustomerMenuPurchase AS
 SELECT
 CAST(cs.CustomerID AS varchar ) AS CustomerID,
 CustomerName,
 CustomerEmail,
 x.[Maximum Quantity],
 y.[Minimum Quantity]
 FROM
 Customer cs JOIN TransactionHeader th ON
 cs.CustomerID = th.CustomerID JOIN TransactionDetail td ON
 th.TransactionID = td.TransactionID JOIN MenuTransaction mt ON
 td.MenuID = mt.MenuID,
 (
 SELECT MAX(MenuQuantity) AS [Maximum Quantity]
 FROM MenuTransaction
 )x,
 (
 SELECT MIN(MenuQuantity) AS [Minimum Quantity]
 FROM MenuTransaction
 )y
 WHERE
 CAST(RIGHT(cs.CustomerID,1) AS INT) % 2 = 0 AND x.[Maximum Quantity] != y.[Minimum Quantity]
 GROUP BY
 cs.CustomerID,
 CustomerName,
 CustomerEmail,
 x.[Maximum Quantity],
 y.[Minimum Quantity]
 SELECT * FROM CustomerMenuPurchase

 --10
 CREATE VIEW StaffSouvenirSellingViewer AS
 SELECT
 s.StaffID, s.StaffName, s.StaffAddress,
 'Rp.'+CAST(SUM(SellPrice)AS VARCHAR) AS [Total Price]
 FROM
 Staff s JOIN TransactionHeader th ON
 s.StaffID = th.StaffID JOIN TransactionDetail td ON
 td.TransactionID = th.TransactionID JOIN SouvenirTransaction st ON
 st.SouvenirID = td.SouvenirID JOIN Souvenir so ON
 so.SouvenirID = st.SouvenirID,
 (
 SELECT MIN(SouvenirQuantity) AS [Minimum Quantity Purchased]
 FROM SouvenirTransaction
 )x
 WHERE LEN(StaffAddress) - LEN(REPLACE(StaffAddress, ' ', '')) + 1 >= 3 AND x.[Minimum Quantity Purchased] > 5
 GROUP BY  s.StaffID, s.StaffName, s.StaffAddress
 SELECT * FROM StaffSouvenirSellingViewer