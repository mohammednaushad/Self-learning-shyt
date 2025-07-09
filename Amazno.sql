use amaz_cat;

create table employees(
	EmployeeID int primary key,
    Ename varchar(50),
    Esal int not null
);

insert into employees
(EmployeeID, Ename, Esal)
values
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

select * from employees;

CREATE TABLE EMP(
	ID INT,
    SALARY INT DEFAULT 30000
    );
    
insert into emp (id) values (101);
SELECT * from emp;

create table studenten(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);

insert into studenten
(rollno,name,marks,grade,city)
values
(101,"ANIL",78,"C","PUNE"),
(102,"BHUMIKA",93,"A","MUMBAI"),
(103,"CHETAN",85,"B","MUMBAI"),
(104,"DHRUV",96,"A","DELHI"),
(105,"EMANUEL",12,"F","DELHI"),
(106,"FARAH",82,"B","DELHI");

SELECT * FROM STUDENTEN;

select name, marks from studenten;
select grade,city from studenten;

select distinct city from studenten;
select * from studenten
where marks > 80 and city = "mumbai";

/*Operators */
select * from studenten
where marks+10>100;

select * from studenten
where marks>90 or city= "mumbai" ;

select * from studenten
where marks between 80 and 90;

select * from studenten
where city in ("Delhi","Mumbai");

select * from studenten
where city not in ("Delhi","Mumbai");

select * from studenten
order by rollno desc limit 3;

select max(marks)
from studenten;

select avg(marks)
from studenten;

select sum(marks)
from studenten;

select count(marks)
from studenten;

select city, count(name)
from studenten
group by city;

select grade from studenten group by grade;

select city,count(name) 
from studenten
group by city;

delete from studenten
where marks < 33;

create table dept(
	id int primary key,
    name varchar(50)
    );
    
create table teacher(
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
);

select city,name,count(name) 
from studenten
group by city,name;

select city,avg(marks)
from studenten
group by city
order by avg(marks);

create table payment(
	custid tinyint primary key,
    cust varchar(50),
    mode varchar(50),
    city varchar(20)
    );
    
insert into payment
(custid,cust,mode,city)
values
(101,"O B", "Netbanking","Portland"),
(102,"E S", "Credit Card","Miami"),
(103,"M H", "Credit Card","Seattle"),
(104,"L D", "Netbanking","Denver"),
(105,"S N", "Credit Card","New Orleans"),
(106,"C E", "Debit Card","Minneapolis"),
(107,"A P", "Debit Card","Phoenix"),
(108,"L C", "Netbanking","Boston"),
(109,"I M", "Netbanking","Nasheville"),
(110,"J B", "Credit Card","Boston");

select * from payment;

select grade, count(rollno) 
from studenten
group by grade
order by grade;

select count(name), city 
from studenten
group by city
having max(marks) > 90;

select city
from studenten
where grade = "a"
group by city 
having max(marks) >= 93
order by city asc;

update studenten
set grade="O"
where grade="A";
 
select * from studenten;

update studenten
set marks= 82
where rollno= 105;

update studenten
set grade= 'B'
where marks between 80 and 90;

update studenten
set marks = marks + 1; 

insert into studenten values (107,"Booom",60,"D","Pune");

select distinct marks 
from studentt
order by marks desc
limit 1 offset 2;

select *
from studentt
order by marks desc
limit 1 offset 2;

select * from ( select *, DENSE_RANK() OVER (
ORDER BY MARKS DESC) AS rnk from studentt)
as ranked where rnk =3;

select top 1 * from (select top 3 *
from studentt order by marks desc)
as stu order by marks desc;

select * from studentt;


alter table studenten
add column age int;

alter table studenten
drop column age;

alter table studenten
rename to studentt;

 alter table studentt
 change column rollno rno varchar(50) ;
 
 /* Joins */
create table stu(
	stu_id int ,
	name varchar(50));
    
insert into stu 
(stu_id,name)
values
(101,"adam"),
(102,"bob"),
(103,"casey");

create table course(
	stu_id int ,
    course varchar(50));

insert into course
(stu_id,course)
values
(102,"english"),
(105,"math"),
(103,"science"),
(107,"cse");

select *
from stu
inner join course
on stu.stu_id= course.stu_id;

select * 
from stu as s
left join course as c
on s.stu_id=c.stu_id;

select *
from stu as s
right join course as c
on s.stu_id = c.stu_id;

select * 
from stu as s
left join course as c
on s.stu_id=c.stu_id
union
select *
from stu as s
right join course as c
on s.stu_id = c.stu_id;

/* Right exclusive and left exclusive joins */
select * 
from stu as a
left join course as b
on a.stu_id = b.stu_id
where b.stu_id is null;

select * 
from stu as a
right join course as b
on a.stu_id = b.stu_id
where a.stu_id is null;

select * 
from stu as a
left join course as b
on a.stu_id = b.stu_id
where b.stu_id is null
Union
select * 
from stu as a
right join course as b
on a.stu_id = b.stu_id
where a.stu_id is null;





