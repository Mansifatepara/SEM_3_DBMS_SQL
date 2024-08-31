
----------LAB-10----------

--implement SQL view

------PART-A-------

--Views (First create a view then display all views)

create table student_info
(
	rno int,
	name varchar(50),
	branch varchar(25),
	spi decimal(8,2),
	bklog int
)

insert into student_info(rno,name,branch,spi,bklog)
values
(101,'raju','CE',8.80,0),
(102,'amit','CE',2.20,3),
(103,'sanjay','ME',1.50,6),
(104,'neha','EC',7.65,1),
(105,'meera','EE',5.52,2),
(106,'mahesh','EC',4.50,3)

select * from student_info

--1.Create a view Personal with all columns.
create view personal as select * from student_info

--2.Create a view Student_Details having columns Name, Branch & SPI. 
create view student_details as select name,branch,spi from student_info

drop view student_details

--3.Create a view AcademicData having columns RNo, Name, Branch.
create view AcademicData as select rno,name,branch from student_info

--4.Create a view Student_ bklog having all columns but students whose bklog more than 2.create view student_bklog as select * from student_info where bklog>2--5.Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four 
--letters.create view student_pattern as select rno,name,branch from student_info where name like '____'--6.Insert a new record to AcademicData view. (107, Meet, ME)insert into AcademicData(rno,name,branch) values(107, 'Meet', 'ME')select * from AcademicDataselect * from Student_Details--7.Update the branch of Amit from CE to ME in Student_Details view.update Student_Detailsset branch = 'ME'where name = 'amit'--8.Delete a student whose roll number is 104 from AcademicData view.delete from AcademicDatawhere rno=104-----PART-B---------1.Create a view that displays information of all students whose SPI is above 8.5create view vw_student_info as select * from student_info where spi>8.5--2.Create a view that displays 0 backlog students.create view vw_dis_bklog as select name from student_info where bklog=0--3.Create a view Computerview that displays CE branch data only.create view vw_Computerview as select * from student_info where branch='CE'-------PART-C-----------1.Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.create view Result_EC as select name,spi from student_info where spi<5 and branch='EC'drop view Result_EC--2.Update the result of student MAHESH to 4.90 in Result_EC view.update Result_ECset spi=4.90where name='mahesh'select * from Result_EC--3.Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having 
--bklogs more than 5.
create view Stu_Bklog as select rno,name,bklog from student_info where name like 'm%' and bklog>5

--4. Drop Computerview form the database.
drop view vw_Computerview