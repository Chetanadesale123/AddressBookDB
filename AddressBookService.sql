---UC1--Create Address Book Service DB

Create Database AddressBookService;

Use AddressBookService;

---UC2--Create AddressBookTable

Create Table AddressBookTable(Id int Primary Key Identity (101,1),
FirstName VarChar (200),
LastName varchar(150),
Address varchar(250),
City varchar(25),
State varchar(60),
ZipCode int,
PhoneNumber Varchar(10),
Email varchar(150));

----UC3--Insert to address book


Insert into AddressBookTable Values ('pavan','desale','Ram nagar','pune','Maharastra',424002,'1234567891','Pavan123@gmail.com'),
('Ajinky','Patil','prabhat nagar','pune','Maharastra',42007,'1234987654','Ajinky1999@gmail.com'),
('manali','Desale','telephone colony','mumbai','Maharastra',675438,'8757889475','manali2001@gmail.com'),
('komal','patil','saibaba nagar','surat','gujarat',34567,'7854216785','komal222@gmail.com'),
('riya','khairnar','shiv nagar','jaipur','Rajasthan',432007,'7285108928','riya8993@gmail.com');

select * from AddressBookTable;

---UC4--Edit persin using their name

Update AddressBookTable Set City='Margao',State='Goa' where FirstName='Ajinky';
Update AddressBookTable Set Address='Ring road',ZipCode='43895' where FirstName='riya';


---UC5--delete person using persons name

Delete from AddressBookTable where FirstName='komal';

---UC6--retrieve person belonging to a city or state from the address Book

Select * from AddressBookTable where City='mumbai' Order By FirstName;

Select * from AddressBookTable where State='Maharastra' Order By FirstName;

Select * from AddressBookTable where State='Rajasthan' Order By FirstName;

----UC7--size of address book by city or state

select count(*) from AddressBookTable where city='pune';

select count(*) from AddressBookTable where State='Maharastra';

---UC8--sorted Alphabetically by persons name for a given city

select FirstName from AddressBookTable Order By city ASC;
select FirstName,LastName,City from AddressBookTable Order By City DESC;
select city from AddressBookTable order by LastName;


--UC9--Identify each Address book with name and type
 create table AddressbookType (Id int Primary Key autoincrement),
Type
insert into AddressbookType values ('Friends');
insert into AddressbookType values ('Professions');
insert into AddressbookType values ('Family');
insert into AddressbookType values ('Others');


