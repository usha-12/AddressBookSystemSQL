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

select * from AddressBook where city = 'Delhi' order by FirstName;

Alter table AddressBook
Add Name varchar(20), Add Type varchar(20);

Update AddressBook set Type = 'FriendsBook', Name = 'Friend' where FirstName in ('Usha','Zeus');
Update AddressBook set Type = 'FamilyBook', Name = 'Family' where FirstName in ('Priti','Kylie');
select * from AddressBook;

select COUNT(name) from AddressBook;
select * from AddressBook;

INSERT INTO AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,type,name) VALUES('deepa', 'Singh', 'panwel', 'Mumbai', 'Maharashtra', '530044','9426625688', 'deepa@mln.com', 'Family',NULL);
select * from AddressBook;

CREATE TABLE user_details(
	user_id INT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL);
    DESC user_details;
    
    CREATE TABLE location(
     user_id INT PRIMARY KEY,
     address VARCHAR(100) NOT NULL,
     city VARCHAR(50) NOT NULL,
     state VARCHAR(50) NOT NULL,
     zip VARCHAR(10) NOT NULL);
     
     
    ALTER TABLE location
    ADD FOREIGN KEY(user_id) REFERENCES user_details(user_id);
    DESC location;
    
    CREATE TABLE contact(
     user_id INT,
     phone VARCHAR(15),
     email VARCHAR(30),
     FOREIGN KEY(user_id) REFERENCES user_details(user_id));
     DESC contact;
     
     CREATE TABLE contact_type(
		type_id INT,
		type_of_contact VARCHAR(20));
	ALTER TABLE contact_type
    ADD PRIMARY KEY(type_id);
    DESC contact_type;
    
    CREATE TABLE user_contact_type_link(
     user_id INT,
     type_id INT,
     FOREIGN KEY(user_id) REFERENCES user_details(user_id),
	FOREIGN KEY(type_id) REFERENCES contact_type(type_id));
    DESC user_contact_type_link;
    
    INSERT INTO user_details VALUES
     (1, 'adi', 'bharti'),
     (2, 'usha', 'ahirwar'),
     (3, 'tusar', 'patil');
     Select * FROM user_details;
     
     
	INSERT INTO location VALUES
    (1,'Street 1', 'City 1', 'Patna', '123456'),
    (2,'Street 2', 'City 2','Delhi', '123457'),
    (3,'Street 3', 'City 3', 'MH', '223457');
	select * from location ;
    
    INSERT INTO contact VALUES
     (1,'9876543210', 'adi@email.com'),
	(2,'9876543222', 'usha@email.com'),
    (3,'8876543210', 'tusar@email.com');
    SELECT * from contact;
    
    INSERT INTO contact_type VALUES
	(101,'Friend'),
    (102,'Family');
    SELECT * FROM contact_type;
    
    INSERT INTO user_contact_type_link VALUES
	(1,101),
    (1,102),
    (2,101),
    (3,102);
    SELECT *FROM user_contact_type_link ;
    
    SELECT u.first_name,u.last_name,l.state
     from user_details u JOIN location l
     where u.user_id = l.user_id
	AND l.state = 'California';
    
    SELECT u.first_name,u.last_name,l.state
     from user_details u JOIN location l
     where u.user_id = l.user_id
     AND l.state = 'California';
     
     SELECT u.first_name,u.last_name,l.city
		from user_details u JOIN location l
		where u.user_id = l.user_id
		AND l.city = 'City 1'
		ORDER BY u.first_name;
        
SELECT u.first_name,u.last_name,l.state
     from user_details u JOIN location l
     where u.user_id = 2.user_id
     AND l.state = 'California'
	ORDER BY u.first_name;
    
    SELECT COUNT(u.user_id) AS number_of_contacts,t.type_of_contact
     FROM user_details u JOIN contact_type JOIN user_contact_type_link l
     WHERE u.user_id = l.user_id
     AND t.type_id = l.type_id
     GROUP BY(t.type_of_contact);
        
        
    
    
