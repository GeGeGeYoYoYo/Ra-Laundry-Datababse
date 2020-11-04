
-- E nomor 1
SELECT c.custID, custName, SUM(servicePrice) AS TotalServicePrice
FROM Customer c JOIN  ServiceTransaction st ON c.custID=st.custID
WHERE datename(MONTH,serviceDate) = 'July' AND custGender like 'Male'
GROUP BY c.custID, custName

-- E nomor 2
SELECT s.staffID, staffName, purchaseDate, COUNT(purchaseID) AS TotalTransaction
FROM PurchaseTransaction pt JOIN Staff s ON s.staffId = pt.staffId
WHERE staffName LIKE '%o%'
GROUP BY staffName, purchaseDate, s.staffID
HAVING COUNT(purchaseID)>1

-- E nomor 3
SELECT vendorName, convert(varchar, purchaseDate, 101) AS [purchaseDate],
	COUNT(pt.purchaseID) as TotalTransaction, 
	SUM(Quantity*materialPrice) AS TotalPurchasePrice
FROM vendor v join PurchaseTransaction pt ON v.vendorID=pt.vendorID 
join PurchaseTransactionDetail ptd ON pt.purchaseID = ptd.purchaseID 
join Material m ON m.materialID=ptd.materialID
WHERE vendorName LIKE '%PT.%' AND DATEPART(DAY, purchaseDate)%2!=0
GROUP BY vendorName, purchaseDate

-- E nomor 4 
SELECT staffName, materialName, COUNT(pt.purchaseID) as TotalTransaction,
	convert(varchar,SUM(Quantity))+' pcs' AS TotalQuantity
FROM Staff s JOIN PurchaseTransaction pt
ON s.staffID = pt.staffID JOIN PurchaseTransactionDetail ptd
ON PT.purchaseID = ptd.purchaseID JOIN Material m
ON ptd.materialID = m.materialID
WHERE DATENAME(MONTH, purchaseDate) like 'July' 
GROUP BY staffName, materialName
HAVING SUM(Quantity) < 9

-- E nomor 5
SELECT STUFF(m.materialID,1,2,'Material ') as [MaterialID], 
	upper(materialName) as MaterialName, purchaseDate, Quantity 
FROM Material m JOIN PurchaseTransactionDetail ptd 
ON m.MaterialID = ptd.MaterialID JOIN PurchaseTransaction pt 
ON pt.purchaseID = ptd.purchaseID,
(Select AVG(Quantity) [avg]
FROM PurchaseTransactionDetail
)[avg]
where Quantity > [avg] and materialType like 'Supplies'
ORDER BY materialID asc

-- E nomor 6
SELECT staffName, custName, convert(varchar,serviceDate,103) as ServiceDate
FROM Staff s JOIN serviceTransaction st ON s.staffID=st.staffID 
JOIN Customer c ON c.custID=st.custID,
( 
	SELECT AVG(staffSalary) [avg]
	FROM Staff
)[avg]
WHERE staffName like '%'
AND staffSalary > [avg]

-- E nomor 7
SELECT clothesName, 
	convert(varchar, count(st.serviceID))+' transaction' as TotalTransaction, 
	left(serviceType,1) as ServiceType, servicePrice
FROM Clothes c JOIN ServiceTransactionDetail std ON c.clothesID=std.clothesID
JOIN ServiceTransaction st ON st.serviceID = std.serviceID,
(
	SELECT AVG(servicePrice) [avg] 
	FROM ServiceTransaction
)[avg]
WHERE servicePrice < [avg] AND clothesType LIKE 'Cotton'
GROUP BY clothesName, serviceType, servicePrice

-- E nomor 8
select left(staffName, CHARINDEX(' ',staffName,1)) as StaffName, vendorName,
	REPLACE(vendorPhone,'08','+62') as VendorPhoneNumber, 
	COUNT(pt.purchaseID) as TotalTransaction
from Staff s join PurchaseTransaction pt
on s.staffID = pt.staffID join Vendor v
on pt.vendorID = v.vendorID join PurchaseTransactionDetail ptd
on pt.purchaseID = ptd.purchaseID,
(
	SELECT AVG(Quantity) [avg] 
	FROM PurchaseTransactionDetail
)[avg]
WHERE Quantity > [avg] and staffName like '% %'
group by staffName, vendorName, vendorPhone, pt.purchaseID

-- E nomor 9
create view ViewMaterialPurchase as
select materialName, 
	'Rp. '+convert(varchar, convert(money, materialPrice)) as MaterialPrice,
	count(pt.purchaseID) as TotalTransaction, 
	sum(Quantity*materialPrice) as TotalPrice
from Material m join PurchaseTransactionDetail ptd
on m.materialID = ptd.materialID join PurchaseTransaction pt
on ptd.purchaseID = pt.purchaseID
where materialType like 'Supplies' 
group by materialName, materialPrice
having COUNT(pt.purchaseID) > 2

select * from ViewMaterialPurchase

-- E nomor 10
create view ViewMaleCustomerTransaction as
select custName, clothesName, custGender, count(st.serviceID) as TotalTransaction,
	sum(servicePrice) as TotalPrice
from Customer c join ServiceTransaction st
on c.custID = st.custID join ServiceTransactionDetail std
on st.serviceID = std.serviceID join Clothes cl
on std.clothesID = cl.clothesID
where custGender like 'Male' and 
(clothesType like 'Wool' or clothesType like 'Linen')
group by custName, clothesName, custGender


