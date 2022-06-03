---UC1--Create Address Book Service DB

Create Database AddressBookService;

Use AddressBookService;

---UC2--Create AddressBookTable

Create Table AddressBook
(Id int Primary Key Identity (1,1),
FirstName VarChar (200),
LastName varchar(150),
Address varchar(250),
City varchar(25),
State varchar(60),
ZipCode int,
PhoneNumber Varchar(10),
Email varchar(150));

----UC3--Insert to address book


Insert into AddressBook Values ('pavan','desale','Ram nagar','pune','Maharastra',424002,'1234567891','Pavan123@gmail.com'),
('Ajinky','Patil','prabhat nagar','pune','Maharastra',42007,'1234987654','Ajinky1999@gmail.com'),
('manali','Desale','telephone colony','mumbai','Maharastra',675438,'8757889475','manali2001@gmail.com'),
('komal','patil','saibaba nagar','surat','gujarat',34567,'7854216785','komal222@gmail.com'),
('riya','khairnar','shiv nagar','jaipur','Rajasthan',432007,'7285108928','riya8993@gmail.com');

select * from AddressBook;

---UC4--Edit persin using their name

Update AddressBook Set City='Margao',State='Goa' where FirstName='Ajinky';
Update AddressBook Set Address='Ring road',ZipCode='43895' where FirstName='riya';


---UC5--delete person using persons name

Delete from AddressBook where FirstName='komal';

---UC6--retrieve person belonging to a city or state from the address Book

Select * from AddressBook where City='mumbai' Order By FirstName;

Select * from AddressBook where State='Maharastra' Order By FirstName;

Select * from AddressBook where State='Rajasthan' Order By FirstName;

----UC7--size of address book by city or state

select count(*) from AddressBook where city='pune';

select count(*) from AddressBook where State='Maharastra';

---UC8--sorted Alphabetically by persons name for a given city

select FirstName from AddressBook Order By city ASC;
select FirstName,LastName,City from AddressBook Order By City DESC;
select city from AddressBook order by LastName;


--UC9--Identify each Address book with name and type
 
 alter table Addressbook ADD Type varchar (10);
 select * from AddressBook;

 
 update AddressBook SET Type ='Family' Where FirstName = 'manali';
update AddressBook SET Type = 'Profession' Where FirstName='Ajinky';
update AddressBook SET Type = 'friends' Where FirstName='riya';

--UC10
select count(*),Type from AddressBook group by Type;

--UC11
alter table AddressBook Drop column Type;
Create table AddressBookType( Typeid int primary key Identity(1,1),type varchar(10));
Create table AddressBookMapping( MappingID int primary key Identity (1,1),
AddressBookID int,
Typeid int,
);
alter table AddressBookMapping ADD Foreign key (AddressBookID) References AddressBook(Id);
alter table AddressBookMapping ADD Foreign key (Typeid) References AddressBookType(Typeid);

select * from AddressBookType;
select * from AddressBookMapping;

Insert into AddressBookType values('Friends'),('Family'),('Profession'),('others');

Insert into AddressBookMapping(AddressBookID,Typeid)values(1,1),(1,2);

select * from AddressBook INNER JOIN AddressBookMapping ON AddressBookID=AddressBookMapping.AddressBookID INNER JOIN AddressBookType ON AddressBookType.Typeid=AddressBookMapping.Typeid













