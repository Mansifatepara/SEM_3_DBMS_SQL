

--------LAB-11---------

--Implement SQL Joins

create table stu_info
(
	rno int,
	name varchar(50),
	branch varchar(50)
)

insert into stu_info(rno,name,branch)
values
(101,'raju','CE'),
(102,'amit','CE'),
(103,'sanjay','ME'),
(104,'neha','EC'),
(105,'meera','EE'),
(106,'mahesh','ME')

select * from stu_info

create table result
(
	rno int,
	spi decimal(8,2)
)

insert into result(rno,spi)
values
(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(107,8.9)

select * from result

create table employee2_Master
(
	emp_no varchar(50),
	name varchar(50),
	managerNo varchar(50)
)

drop table employee2_Master

insert into employee2_Master(emp_no,name,managerNo)
values
('E01','tarun',null),
('E02','rohan','E02'),
('E03','priya','E01'),
('E04','milan','E03'),
('E05','jay','E01'),
('E06','anjana','E04')

select * from employee2_Master



-------PART-A--------



--1.Combine information from student and result table using cross join or Cartesian product.select * from stu_info,resultselect * from stu_info cross join result--2.Perform inner join on Student and Result tables.select * from stu_info inner join result on stu_info.rno=result.rno--3.Perform the left outer join on Student and Result tablesselect * from stu_info left outer join result on stu_info.rno=result.rno--4.Perform the right outer join on Student and Result tablesselect * from stu_info right outer join result on stu_info.rno=result.rno--5.Perform the full outer join on Student and Result tables. select * from stu_info full outer join result on stu_info.rno=result.rno--6.Display Rno, Name, Branch and SPI of all students.select stu_info.rno,stu_info.name,stu_info.branch,result.spi from stu_info full outer join result on stu_info.rno=result.rno--7.Display Rno, Name, Branch and SPI of CE branch’s student onlyselect stu_info.rno,stu_info.name,stu_info.branch,result.spi from stu_info join result on stu_info.rno=result.rnowhere stu_info.branch = 'CE'--8.Display Rno, Name, Branch and SPI of other than EC branch’s student only.select stu_info.rno,stu_info.name,stu_info.branch,result.spi from stu_info full outer join result on stu_info.rno=result.rnowhere stu_info.branch != 'EC'--or where stu_info.branch <> 'EC'--9.Display average result of each branch.select stu_info.branch,avg(result.spi) as avg_spifrom stu_info join resulton stu_info.rno=result.rnogroup by stu_info.branch--10.Display average result of CE and ME branch.select stu_info.branch,avg(result.spi) as avg_spifrom stu_info join resulton stu_info.rno=result.rnowhere stu_info.branch = 'CE' or stu_info.branch = 'ME'group by stu_info.branch------PART-B----------1.Display average result of each branch and sort them in ascending order by SPI.select stu_info.branch,avg(result.spi) as avg_spifrom stu_info join resulton stu_info.rno=result.rnogroup by stu_info.branchorder by avg_spi--2.Display highest SPI from each branch and sort them in descending order.select stu_info.branch,max(result.spi) as avg_spifrom stu_info join resulton stu_info.rno=result.rnogroup by stu_info.branchorder by avg_spi desc-----------PART-C-------------1.Retrieve the names of employee along with their manager’s name from the Employee table.select e1.name as emp_name,e2.name as manager_namefrom employee2_Master as e1left join employee2_Master as e2on e1.emp_no = e2.managerNo