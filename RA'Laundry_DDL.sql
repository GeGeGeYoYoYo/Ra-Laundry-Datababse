create database [RA'Laundry]

use [RA'Laundry]

begin tran

select * from Customer

create table Staff(
	staffID varchar(5) primary key check(staffID like 'ST[0-9][0-9][0-9]'),
	staffName varchar(25),
	staffAddress varchar(35),
	staffGender varchar(6) check(staffGender like 'Female' or staffGender like 'Male'),
	staffSalary int check(staffSalary between 1500000 and 3000000)
)

create table Customer(
	custID varchar(5) primary key check(custID like 'CU[0-9][0-9][0-9]'),
	custName varchar(25),
	custAddress varchar(35),
	custGender varchar(6) check(custGender like 'Female' or custGender like 'Male'),
	custDOB date
)

create table Vendor(
	vendorID varchar(5) primary key check(vendorID like 'VE[0-9][0-9][0-9]'),
	vendorName varchar(25),
	vendorAddress varchar(35) check(len(vendorAddress)>10),
	vendorPhone varchar(20)
)

create table Clothes(
	clothesID varchar(5) primary key check(clothesID like 'CL[0-9][0-9][0-9]'),
	clothesName varchar(25),
	clothesType varchar(15) check(clothesType like 'Cotton' or 
		clothesType like 'Viscose' or clothesType like 'Polyester' or 
		clothesType like 'Linen' or clothesType like 'Wool')
)

create table Material(
	materialID varchar(5) primary key check(materialID like 'MA[0-9][0-9][0-9]'),
	materialName varchar(25),
	materialType varchar(15) check(materialType like 'Equipment' or 
		materialType like 'Supplies'),
	materialPrice int
)

create table PurchaseTransaction(
	staffID varchar(5) foreign key references Staff(staffID),
	vendorID varchar(5) foreign key references Vendor(vendorID),
	purchaseID varchar(5) primary key check(purchaseID like 'PU[0-9][0-9][0-9]'),
	purchaseDate date check(year(purchaseDate) = year(getdate()))
)


create table PurchaseTransactionDetail(
	materialID varchar(5) foreign key references Material(materialID),
	purchaseID varchar(5) foreign key references PurchaseTransaction(purchaseID),
	Quantity int
)

create table ServiceTransaction(
	custID varchar(5) foreign key references Customer(custID),
	staffID varchar(5) foreign key references Staff(staffID), 
	serviceID varchar(5) primary key check(serviceID like 'SR[0-9][0-9][0-9]'),
	serviceDate date check(year(serviceDate) = year(getdate())),
	serviceType varchar(25) check(serviceType like 'Laundry service' 
		or serviceType like 'Dry Cleaning Service'
		or serviceType like 'Ironing Service'),
	servicePrice int
)


create table ServiceTransactionDetail(
	clothesID varchar(5) foreign key references Clothes(clothesID),
	serviceID varchar(5) foreign key references ServiceTransaction(serviceID),
	Quantity int
)

rollback
