create table student(
roll_numb int auto_increment primary key,
name varchar(50),
marks decimal(10,2),
city varchar(50)

);


insert into student(name,marks,city) values
("Ali",100,"hyderabad"),
("Ahsan",60,"hyderabad"),
("Akber",56,"karachi"),
("Naseem",45,"karachi");

-- group by and having in sql
select city, count(*) from student

 group by city;

select city,avg(marks) from student
group by city
having avg(marks)>70;

-- filtering database
select* from student where name='Ali';

-- deleting
delete from student where name="Ali";

-- updating 

update  student
set marks=20
where name="Ahsan";

-- order by marks
SELECT * FROM student ORDER BY marks ASC;

-- limits 
select*from student limit 2;


-- aggregate functionsSELECT COUNT(*) FROM students;

SELECT MAX(marks) FROM student;

SELECT MIN(marks) FROM student;

SELECT AVG(marks) FROM student;

SELECT SUM(marks) FROM student;



-- altering


alter table student add column  class varchar(50);
select*from student;

