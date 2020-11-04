use [RA'Laundry]

----PURCHASE TRANSACTION

INSERT INTO PurchaseTransaction VALUES('ST001','VE001','PU001','2019-12-3')
INSERT INTO PurchaseTransactionDetail VALUES('MA001','PU001',3)
INSERT INTO PurchaseTransactionDetail VALUES('MA002','PU001',2)
INSERT INTO PurchaseTransactionDetail VALUES('MA003','PU001',2)

INSERT INTO PurchaseTransaction VALUES('ST002','VE002','PU002','2019-7-10')
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

INSERT INTO PurchaseTransaction VALUES('ST001','VE003','PU011','2019-12-3')
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





----SERVICE TRANSACTION

--transaction 1

INSERT INTO ServiceTransaction VALUES('CU001','ST001','SR001','2019-07-11','Laundry Service',450000)
INSERT INTO ServiceTransactionDetail VALUES ('CL016','SR001',2)
INSERT INTO ServiceTransactionDetail VALUES ('CL017','SR001',2)

--transaction 2

INSERT INTO ServiceTransaction VALUES('CU002','ST002','SR002','2019-07-15','Ironing Service',300000)
INSERT INTO ServiceTransactionDetail VALUES ('CL004','SR002',4)
INSERT INTO ServiceTransactionDetail VALUES ('CL005','SR002',5)
INSERT INTO ServiceTransactionDetail VALUES ('CL006','SR002',3)

--transaction 3

INSERT INTO ServiceTransaction VALUES('CU003','ST003','SR003','2019-12-1','Dry Cleaning Service',300000)
INSERT INTO ServiceTransactionDetail VALUES ('CL007','SR003',1)
INSERT INTO ServiceTransactionDetail VALUES ('CL008','SR003',1)
INSERT INTO ServiceTransactionDetail VALUES ('CL009','SR003',3)

--transaction 4

INSERT INTO ServiceTransaction VALUES('CU004','ST004','SR004','2019-07-14','Laundry Service',450000)
INSERT INTO ServiceTransactionDetail VALUES ('CL010','SR004',1)
INSERT INTO ServiceTransactionDetail VALUES ('CL001','SR004',4)
INSERT INTO ServiceTransactionDetail VALUES ('CL002','SR004',3)

--transaction 5

INSERT INTO ServiceTransaction VALUES('CU005','ST005','SR005','2019-11-29','Ironing Service',300000)
INSERT INTO ServiceTransactionDetail VALUES ('CL003','SR005',2)
INSERT INTO ServiceTransactionDetail VALUES ('CL004','SR005',3)
INSERT INTO ServiceTransactionDetail VALUES ('CL005','SR005',2)


--transaction 6

INSERT INTO ServiceTransaction VALUES('CU006','ST006','SR006','2019-11-28','Dry Cleaning Service',300000)
INSERT INTO ServiceTransactionDetail VALUES ('CL006','SR006',3)
INSERT INTO ServiceTransactionDetail VALUES ('CL007','SR006',1)
INSERT INTO ServiceTransactionDetail VALUES ('CL008','SR006',1)

--transaction 7

INSERT INTO ServiceTransaction VALUES('CU007','ST007','SR007','2019-11-27','Laundry Service',450000)
INSERT INTO ServiceTransactionDetail VALUES ('CL009','SR007',3)
INSERT INTO ServiceTransactionDetail VALUES ('CL010','SR007',1)
INSERT INTO ServiceTransactionDetail VALUES ('CL001','SR007',4)

--transaction 8

INSERT INTO ServiceTransaction VALUES('CU008','ST008','SR008','2019-11-26','Ironing Service',300000)
INSERT INTO ServiceTransactionDetail VALUES ('CL002','SR008',3)
INSERT INTO ServiceTransactionDetail VALUES ('CL003','SR008',4)
INSERT INTO ServiceTransactionDetail VALUES ('CL004','SR008',4)


--transaction 9

INSERT INTO ServiceTransaction VALUES('CU009','ST009','SR009','2019-11-25','Dry Cleaning Service',300000)
INSERT INTO ServiceTransactionDetail VALUES ('CL005','SR009',5)
INSERT INTO ServiceTransactionDetail VALUES ('CL006','SR009',3)
INSERT INTO ServiceTransactionDetail VALUES ('CL007','SR009',1)

--transaction 10

INSERT INTO ServiceTransaction VALUES('CU010','ST010','SR010','2019-11-24','Laundry Service',450000)
INSERT INTO ServiceTransactionDetail VALUES ('CL008','SR010',1)
INSERT INTO ServiceTransactionDetail VALUES ('CL009','SR010',3)
INSERT INTO ServiceTransactionDetail VALUES ('CL010','SR010',1)
--transaction 11

INSERT INTO ServiceTransaction VALUES('CU001','ST003','SR011','2019-11-23','Dry Cleaning Service',300000)
INSERT INTO ServiceTransactionDetail VALUES ('CL001','SR011',4)
INSERT INTO ServiceTransactionDetail VALUES ('CL002','SR011',3)
INSERT INTO ServiceTransactionDetail VALUES ('CL003','SR011',4)

--transaction 12

INSERT INTO ServiceTransaction VALUES('CU002','ST004','SR012','2019-11-22','Laundry Service',300000)
INSERT INTO ServiceTransactionDetail VALUES ('CL004','SR012',4)
INSERT INTO ServiceTransactionDetail VALUES ('CL005','SR012',5)
INSERT INTO ServiceTransactionDetail VALUES ('CL006','SR012',3)

--transaction 13

INSERT INTO ServiceTransaction VALUES('CU005','ST007','SR013','2019-11-21','Dry Cleaning Service',300000)
INSERT INTO ServiceTransactionDetail VALUES ('CL007','SR013',1)
INSERT INTO ServiceTransactionDetail VALUES ('CL008','SR013',1)
INSERT INTO ServiceTransactionDetail VALUES ('CL009','SR013',3)

--transaction 14

INSERT INTO ServiceTransaction VALUES('CU006','ST008','SR014','2019-11-20','Ironing Service',300000)
INSERT INTO ServiceTransactionDetail VALUES ('CL010','SR014',1)
INSERT INTO ServiceTransactionDetail VALUES ('CL001','SR014',4)
INSERT INTO ServiceTransactionDetail VALUES ('CL002','SR014',3)

--transaction 15

INSERT INTO ServiceTransaction VALUES('CU007','ST009','SR015','2019-11-19','Dry Cleaning Service',300000)
INSERT INTO ServiceTransactionDetail VALUES ('CL003','SR015',4)
INSERT INTO ServiceTransactionDetail VALUES ('CL004','SR015',4)
INSERT INTO ServiceTransactionDetail VALUES ('CL005','SR015',5)

--transaction 16
INSERT INTO ServiceTransaction VALUES('CU010','ST002','SR016','2019-07-11','Laundry Service',450000)
INSERT INTO ServiceTransactionDetail VALUES ('CL016','SR016',2)
INSERT INTO ServiceTransactionDetail VALUES ('CL017','SR016',2)

--transaction 17

INSERT INTO ServiceTransaction VALUES('CU010','ST002','SR017','2019-07-11','Ironing Service',100000)
INSERT INTO ServiceTransactionDetail VALUES ('CL016','SR017',2)

--transaction 18

INSERT INTO ServiceTransaction VALUES('CU001','ST006','SR018','2019-07-10','Dry Cleaning Service',450000)
INSERT INTO ServiceTransactionDetail VALUES ('CL017','SR018',2)