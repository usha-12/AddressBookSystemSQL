create database AddressBook;
USE AddressBook;
create table AddressBook
(
	id int auto_increment,
	FirstName varchar(20) NOT NULL,
	LastName varchar(20) NOT NULL,
	Address varchar(100) NOT NULL,
	City varchar(20) NOT NULL,
	State varchar(20) NOT NULL,
	Zip bigint NOT NULL,
	PhoneNumber bigint NOT NULL,
	Email varchar(50) NOT NULL,
    primary key(id)
    
);