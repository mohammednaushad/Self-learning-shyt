use stuqueries;

create table student1(
student_id int primary key,
name varchar(50)
);

insert into student1
(student_id,name)
values
(101,"adam"),
(102,"bob"),
(103,"casey");

select * from student1;

create table course(
student_id int ,
course varchar(20)
);

insert into course
(student_id,course)
values
(102,"english"),
(103,"math"),
(105,"science"),
(107,"computer science");

select * from course;

#INNER JOIN
select *
from student1
inner join course
on student1.student_id = course.student_id;

#LEFT JOIN
select * 
from student1 as s
left join course as c
on s.student_id = c.student_id;

#RIGHT JOIN
select * 
from student1 as s
right join course as c
on s.student_id = c.student_id;

#FULL JOIN
select * 
from student1 as s
left join course as c
on s.student_id = c.student_id
UNION
select * 
from student1 as s
right join course as c
on s.student_id = c.student_id;

#LEFT EXCLUSIVE JOIN
select * 
from student1 as s
left join course as c
on s.student_id = c.student_id
where c.student_id IS NULL;

#RIGHT EXCLUSIVE JOIN
select * 
from student1 as s
right join course as c
on s.student_id = c.student_id
where s.student_id IS NULL;

#FULL EXCLUSIVE JOIN
select * 
from student1 as s
left join course as c
on s.student_id = c.student_id
where c.student_id IS NULL
UNION
select * 
from student1 as s
right join course as c
on s.student_id = c.student_id
where s.student_id IS NULL;

#self join 
create table employee(
id int primary key,
name varchar(50),
manager_id int
);

insert into employee (id, name, manager_id)
values
(101,"Adam",103),
(102,"Bob",104),
(103,"casey",null),
(104,"Donld",103);

select * from employee;

select name from employee
union
select name from employee;


