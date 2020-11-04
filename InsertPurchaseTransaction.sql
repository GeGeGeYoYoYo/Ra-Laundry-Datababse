use [RA'Laundry]


SELECT * FROM ServiceTransaction
SELECT * FROM ServiceTransactionDetail
SELECT * FROM PurchaseTransaction
SELECT * FROM PurchaseTransactionDetail

DELETE FROM ServiceTransactionDetail
DELETE FROM PurchaseTransaction
DELETE FROM PurchaseTransactionDetail

BEGIN TRAN

--PURCHASE

INSERT INTO PurchaseTransaction VALUES('ST001','VE001','PU001','2019-12-3')
INSERT INTO PurchaseTransactionDetail VALUES('MA001','PU001',3)
INSERT INTO PurchaseTransactionDetail VALUES('MA002','PU001',2)
INSERT INTO PurchaseTransactionDetail VALUES('MA003','PU001',2)

INSERT INTO PurchaseTransaction VALUES('ST002','VE002','PU002','2019-12-2')
INSERT INTO PurchaseTransactionDetail VALUES('MA010','PU002',2)
INSERT INTO PurchaseTransactionDetail VALUES('MA008','PU002',5)
INSERT INTO PurchaseTransactionDetail VALUES('MA009','PU002',1)

INSERT INTO PurchaseTransaction VALUES('ST003','VE003','PU003','2019-12-2')
INSERT INTO PurchaseTransactionDetail VALUES('MA007','PU003',1)
INSERT INTO PurchaseTransactionDetail VALUES('MA006','PU003',5)
INSERT INTO PurchaseTransactionDetail VALUES('MA002','PU003',1)

INSERT INTO PurchaseTransaction VALUES('ST004','VE004','PU004','2019-12-1')
INSERT INTO PurchaseTransactionDetail VALUES('MA005','PU004',7)
INSERT INTO PurchaseTransactionDetail VALUES('MA001','PU004',4)
INSERT INTO PurchaseTransactionDetail VALUES('MA009','PU004',6)

INSERT INTO PurchaseTransaction VALUES('ST005','VE005','PU005','2019-11-30')
INSERT INTO PurchaseTransactionDetail VALUES('MA006','PU005',2)
INSERT INTO PurchaseTransactionDetail VALUES('MA004','PU005',3)
INSERT INTO PurchaseTransactionDetail VALUES('MA007','PU005',5)

INSERT INTO PurchaseTransaction VALUES('ST006','VE006','PU006','2019-11-29')
INSERT INTO PurchaseTransactionDetail VALUES('MA006','PU006',1)
INSERT INTO PurchaseTransactionDetail VALUES('MA004','PU006',7)
INSERT INTO PurchaseTransactionDetail VALUES('MA007','PU006',4)

INSERT INTO PurchaseTransaction VALUES('ST007','VE007','PU007','2019-11-28')
INSERT INTO PurchaseTransactionDetail VALUES('MA003','PU007',1)
INSERT INTO PurchaseTransactionDetail VALUES('MA001','PU007',7)
INSERT INTO PurchaseTransactionDetail VALUES('MA005','PU007',4)

INSERT INTO PurchaseTransaction VALUES('ST008','VE008','PU008','2019-11-27')
INSERT INTO PurchaseTransactionDetail VALUES('MA010','PU008',8)
INSERT INTO PurchaseTransactionDetail VALUES('MA006','PU008',1)
INSERT INTO PurchaseTransactionDetail VALUES('MA004','PU008',3)

INSERT INTO PurchaseTransaction VALUES('ST009','VE009','PU009','2019-11-26')
INSERT INTO PurchaseTransactionDetail VALUES('MA010','PU009',7)
INSERT INTO PurchaseTransactionDetail VALUES('MA003','PU009',5)
INSERT INTO PurchaseTransactionDetail VALUES('MA001','PU009',1)

INSERT INTO PurchaseTransaction VALUES('ST010','VE010','PU010','2019-11-25')
INSERT INTO PurchaseTransactionDetail VALUES('MA010','PU010',1)
INSERT INTO PurchaseTransactionDetail VALUES('MA009','PU010',1)
INSERT INTO PurchaseTransactionDetail VALUES('MA008','PU010',1)

INSERT INTO PurchaseTransaction VALUES('ST001','VE003','PU011','2019-11-24')
INSERT INTO PurchaseTransactionDetail VALUES('MA001','PU011',1)
INSERT INTO PurchaseTransactionDetail VALUES('MA005','PU011',4)
INSERT INTO PurchaseTransactionDetail VALUES('MA008','PU011',6)

INSERT INTO PurchaseTransaction VALUES('ST003','VE005','PU012','2019-11-23')
INSERT INTO PurchaseTransactionDetail VALUES('MA003','PU012',3)
INSERT INTO PurchaseTransactionDetail VALUES('MA007','PU012',2)
INSERT INTO PurchaseTransactionDetail VALUES('MA010','PU012',1)

INSERT INTO PurchaseTransaction VALUES('ST006','VE002','PU013','2019-11-22')
INSERT INTO PurchaseTransactionDetail VALUES('MA003','PU013',7)
INSERT INTO PurchaseTransactionDetail VALUES('MA002','PU013',5)
INSERT INTO PurchaseTransactionDetail VALUES('MA001','PU013',1)

INSERT INTO PurchaseTransaction VALUES('ST005','VE009','PU014','2019-11-21')
INSERT INTO PurchaseTransactionDetail VALUES('MA005','PU014',1)
INSERT INTO PurchaseTransactionDetail VALUES('MA003','PU014',6)
INSERT INTO PurchaseTransactionDetail VALUES('MA002','PU014',3)

INSERT INTO PurchaseTransaction VALUES('ST005','VE009','PU015','2019-11-20')
INSERT INTO PurchaseTransactionDetail VALUES('MA002','PU015',6)
INSERT INTO PurchaseTransactionDetail VALUES('MA003','PU015',6)
INSERT INTO PurchaseTransactionDetail VALUES('MA004','PU015',6)





