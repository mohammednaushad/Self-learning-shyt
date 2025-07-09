create database amaz_cat;

use amaz_cat;

show databases;
show tables;

create table student(
	id int primary key,
    name varchar(50),
    age int not null
);

insert into student values(1,"MAfak",23);
insert into student values(2,"Mfk",25);


select * from student; 

insert into student (id,name,age)
values 
(3,"madafak",24),
(4,"madak",22),
(5,"mada",21);

use amaz_cat;
create table customers(
	id int primary key,
    name varchar(20)
    );

insert into customers 
(id,name)
values
(1,"Joe"),
(2,"Henry"),
(3,"Sam"),
(4,"Max");

select * from customers;

create table orders(
	id int primary key,
    customerId int ,
    foreign key (customerId) references customers(id));
    
insert into orders
(id, customerId)
values
(1,3),
(2,1);

select * from orders;

select name as Customers
from customers as c
left join orders as o
on c.id=o.customerId
where o.customerId is null;