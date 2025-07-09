create database office;
use office;

create table employee(
	id int primary key,
    name varchar(50),
    salary int
    );
    
insert into employee
(id , name , salary)
values
(1,"Adam",25000),
(2,"Bob",30000),
(3,"Casey",40000);

select * from employee;
