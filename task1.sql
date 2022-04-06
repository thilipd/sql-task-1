-- DDL data defenition language

-- Create
-- ******

create table `task1` (id int, name varchar(255), place varchar(255), phone int);

-- ALTER
-- *****

-- adding new column 
alter table `task1` add (testCol int);

-- renaming column
alter table `task1` rename column testCol to renameCol;

-- modify column data type
alter table `task1` modify column renameCol varChar(255);

-- delete column 
alter table `task1` drop column renameCol;

-- Drop
-- ****

drop table `task1`;

-- *****************************************************

-- DML Data manipulation language

SELECT * FROM student;

-- Insert

insert into student (Id, Name, Email, Address) values (1, 'Thilip', 'thilip.D@gmail.com','Chennai');
insert into student (Id, Name, Email, Address) values (2, 'Udhaya', 'udhaya@gmail.com','Chennai');
insert into student (Id, Name, Email, Address) values (3, 'Danny', 'danny@gmail.com','Chennai');
insert into student (Id, Name, Email, Address) values (4, 'Sheik', 'sheik@gmail.com','Chennai');

select* from student;

-- Update
SET SQL_SAFE_UPDATES = 0;
update student set Address = 'Banglore' where Name ='Thilip';

select* from student;


-- Delete

delete from student where Id = 4;
select* from student;

-- Truncate

truncate table student;
select* from student;

-- *****************************************************

-- DQL Data Query language 



insert into student (Id, Name, Email, Address) values (1, 'Thilip', 'thilip.D@gmail.com','Chennai');
insert into student (Id, Name, Email, Address) values (2, 'Udhaya', 'udhaya@gmail.com','Chennai');
insert into student (Id, Name, Email, Address) values (3, 'Danny', 'danny@gmail.com','Chennai');
insert into student (Id, Name, Email, Address) values (4, 'Sheik', 'sheik@gmail.com','Chennai');

select* from student;

-- Distinct

select distinct Id, Name from student;

-- Order by

select Name from student order by Name desc; 

-- Limit

select Id, Name, Email, Address from student order by Name desc limit 2; 

-- Offset

select Id, Name, Email, Address from student order by Name asc limit 4 offset 2; 

-- Alias

select Address as Place from student;

-- Conditions
-- *********

-- And

select * from student where Id = 1 and Address='Chennai';

-- OR
select * from student where Id = 1 or Id = 2;

-- Not
select * from student where not Id = 1;

-- In
select * from student where  Id in (1,3,4);

-- Between
select * from student where Id between 2 and 3;





