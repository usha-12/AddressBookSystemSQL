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
Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) values('Usha','Ahirwal','Rohini','Delhi','Delhi',110035,7974492321,'usha12@gmail.com');
Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) values('Priti','ghadge','Kerla','Kerla','kr',100023,9564213370,'priti@gmail.com');
Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) values('Aditya','Bharti','Patna','patna','UP',400022,9975062727,'Aditya@gmail.com');
Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) values('Tusar','Patil','Maharshtra','Maharashtra','MH',400031,9956442187,'Tusar@gmial.com');
select * from AddressBook;

Update AddressBook set Address = 'teharka' where FirstName = 'Usha';
select * from AddressBook;

Delete from AddressBook where FirstName = 'Aditya';
select * from AddressBook;

select * from AddressBook where City = 'Delhi' or State = 'Delhi';

select Count(City) from AddressBook where City = 'Delhi';
select Count(State) from AddressBook where State = 'MH';

select * from AddressBook where city = 'Delhi' order by FirstName