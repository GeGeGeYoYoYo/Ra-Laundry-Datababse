USE [RA'Laundry]

--STAFF

INSERT INTO Staff VALUES('ST001','Eko','Vila Nusa Indah 1','Male',2750000)
INSERT INTO Staff VALUES('ST002','Tyo','Vila Nusa Indah 2','Male',1750000)
INSERT INTO Staff VALUES('ST003','Rini','Vila Nusa Indah 3','Female',1500000)
INSERT INTO Staff VALUES('ST004','Maria','Vila Nusa Indah 4','Female',1750000)
INSERT INTO Staff VALUES('ST005','Kamila','Vila Nusa Indah 5','Female',1500000)
INSERT INTO Staff VALUES('ST006','Panji','Vila Nusa Indah 6','Male',2000000)
INSERT INTO Staff VALUES('ST007','Ghina','Vila Nusa Indah 7','Female',2550000)
INSERT INTO Staff VALUES('ST008','Diska','Vila Nusa Indah 8','Female',2500000)
INSERT INTO Staff VALUES('ST009','Daffa','Vila Nusa Indah 9','Male',1600000)
INSERT INTO Staff VALUES('ST010','Iffal','Vila Nusa Indah 10','Male',1750000)

Select * from Staff

--CUSTOMER

INSERT INTO Customer VALUES('CU001','Ihsan','Jl. Raya Kb. Jeruk No.1','Male','1990-10-3')
INSERT INTO Customer VALUES('CU002','Icha','Jl. Raya Kb. Jeruk No.2','Female','2000-7-7')
INSERT INTO Customer VALUES('CU003','Azriel','Jl. Raya Kb. Jeruk No.3','Male','1992-3-4')
INSERT INTO Customer VALUES('CU004','Akmal','Jl. Raya Kb. Jeruk No.4','Male','1996-2-14')
INSERT INTO Customer VALUES('CU005','Fatimah','Jl. Raya Kb. Jeruk No.5','Female','1979-6-16')
INSERT INTO Customer VALUES('CU006','Aswin','Jl. Raya Kb. Jeruk No.6','Male','1995-3-17')
INSERT INTO Customer VALUES('CU007','Dini','Jl. Raya Kb. Jeruk No.7','Female','1996-12-25')
INSERT INTO Customer VALUES('CU008','Inggid','Jl. Raya Kb. Jeruk No.8','Female','1974-12-24')
INSERT INTO Customer VALUES('CU009','Alya','Jl. Raya Kb. Jeruk No.9','Female','2001-6-20')
INSERT INTO Customer VALUES('CU010','Danu','Jl. Raya Kb. Jeruk No.10','Male','1999-7-8')

Select * from Customer

--VENDOR

INSERT INTO Vendor VALUES('VE001','Baju Halal Indonesia','Jalan Lingkar Boulevar Blok WA No.1','081111111111')
INSERT INTO Vendor VALUES('VE002','Baju Haram Indonesia','Jalan Lingkar Boulevar Blok WA No.2','082222222222')
INSERT INTO Vendor VALUES('VE003','PT.Fashion Bekasi','Jalan Lingkar Boulevar Blok WA No.3','083333333333')
INSERT INTO Vendor VALUES('VE004','PT.Sweater Berbulu','Jalan Lingkar Boulevar Blok WA No.4','084444444444')
INSERT INTO Vendor VALUES('VE005','PT.Kotak-Kotak','Jalan Lingkar Boulevar Blok WA No.5','085555555555')
INSERT INTO Vendor VALUES('VE006','Pakaian Gamis Jakarta','Jalan Lingkar Boulevar Blok WA No.6','086666666666')
INSERT INTO Vendor VALUES('VE007','PT.HypeAbis','Jalan Lingkar Boulevar Blok WA No.7','087777777777')
INSERT INTO Vendor VALUES('VE008','PT.Pakaian Murah','Jalan Lingkar Boulevar Blok WA No.8','088888888888')
INSERT INTO Vendor VALUES('VE009','Cucci Gang','Jalan Lingkar Boulevar Blok WA No.9','089999999999')
INSERT INTO Vendor VALUES('VE010','PT.Kostum Cosplay','Jalan Lingkar Boulevar Blok WA No.10','082123456789')

SELECT * FROM Vendor

Begin Tran

--CLOTHES

INSERT INTO Clothes VALUES('CL001','Sweater Wool','Wool')
INSERT INTO Clothes VALUES('CL002','Batik Viscose','Viscose')
INSERT INTO Clothes VALUES('CL003','Hoodie Cotton','Cotton')
INSERT INTO Clothes VALUES('CL004','T-Shirt Polyester','Polyester')
INSERT INTO Clothes VALUES('CL005','Gamis Linen','Linen')
INSERT INTO Clothes VALUES('CL006','Sweater Cotton','Cotton')
INSERT INTO Clothes VALUES('CL007','Batik Polyester','Polyester')
INSERT INTO Clothes VALUES('CL008','Hoodie Wool','Wool')
INSERT INTO Clothes VALUES('CL009','Shirt Viscose','Viscose')
INSERT INTO Clothes VALUES('CL010','Kemeja Linen','Linen')
INSERT INTO Clothes VALUES('CL011','Kemeja Cotton','Cotton')
INSERT INTO Clothes VALUES('CL012','Shirt Wool','Wool')
INSERT INTO Clothes VALUES('CL013','Jacket Cotton','Cotton')
INSERT INTO Clothes VALUES('CL014','Kerudung Viscose','Viscose')
INSERT INTO Clothes VALUES('CL015','Kemeja Polyester','Polyester')

SELECT * FROM Clothes

BEGIN TRAN

--MATERIAL

INSERT INTO Material VALUES('MA001','Soft','Equipment',1000000)
INSERT INTO Material VALUES('MA002','Soft','Supplies',1000000)
INSERT INTO Material VALUES('MA003','Medium','Equipment',1250000)
INSERT INTO Material VALUES('MA004','Medium','Supplies',1250000)
INSERT INTO Material VALUES('MA005','Medium-hard','Equipment',1550000)
INSERT INTO Material VALUES('MA006','Medium-hard','Supplies',1550000)
INSERT INTO Material VALUES('MA007','Hard','Equipment',1700000)
INSERT INTO Material VALUES('MA008','Hard','Supplies',1700000)
INSERT INTO Material VALUES('MA009','Very Hard','Equipment',2000000)
INSERT INTO Material VALUES('MA010','Very Hard','Supplies',2000000)

SELECT * FROM Material