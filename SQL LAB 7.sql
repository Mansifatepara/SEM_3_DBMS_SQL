
--LAB-7. Perform SQL queries for Aggerate function and group by (without having) 

--PART-A--
--Create table and inset records as per below

CREATE TABLE EMP
(
	EID INT,
	ENAME VARCHAR(25),
	DEPARTMENT VARCHAR(25),
	SALARY INT,
	JOININGDATE DATETIME,
	CITY VARCHAR(25)
)
 
INSERT INTO EMP(EID,ENAME,DEPARTMENT,SALARY,JOININGDATE,CITY)
VALUES
(101,'Rahul','Admin',56000,'01-jan-90','Rajkot'),
(102,'Hardik','IT',18000,'25-sep-90','Ahmedabad'),
(103,'Bhavin','HR',25000,'14-may-91','Baroda'),
(104,'Bhoomi','Admin',39000,'08-feb-91','Rajkot'),
(105,'Rohit','IT',17000,'23-jul-90','Jamnagar'),
(106,'Priya','IT',9000,'18-oct-90','Ahmedabad'),
(107,'Bhoomi','HR',34000,'25-dec-91','Rajkot')

drop table EMP

select * from EMP

--1.Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM,MIN(SALARY) AS MINIMUM
FROM EMP

--2.Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, 
--respectively.
SELECT SUM(SALARY) AS Total_sal,AVG(SALARY) AS Average_Sal
FROM EMP

--3.Find total number of employees of EMPLOYEE table.SELECT COUNT(EID) AS NO_OF_EMPLOYEEFROM EMP--4.Find highest salary from Rajkot city.SELECT MAX(SALARY) AS HIG_SALFROM EMPWHERE CITY = 'RAJKOT'--5.Give maximum salary from IT department.SELECT MAX(SALARY) AS MAX_SALFROM EMPWHERE DEPARTMENT = 'IT'--6.Count employee whose joining date is after 8-feb-91.SELECT COUNT(EID) AS COUNT_EMPFROM EMPWHERE JOININGDATE > '08-feb-91'--7.Display average salary of Admin department.SELECT AVG(SALARY) AS AVG_SALFROM EMPWHERE DEPARTMENT = 'Admin'--8.Display total salary of HR department.SELECT SUM(SALARY) AS TOTAL_SALFROM EMPWHERE DEPARTMENT = 'HR'--9.Count total number of cities of employee without duplication.SELECT COUNT(DISTINCT city) AS TOTAL_CITYFROM EMP--10.Count unique departments.SELECT COUNT(DISTINCT DEPARTMENT) AS UNIQ_DEPFROM EMP--11.Give minimum salary of employee who belongs to Ahmedabad.SELECT MIN(SALARY) AS MIN_SALFROM EMPWHERE CITY='Ahmedabad'--12.Find city wise highest salary.SELECT MAX(SALARY) AS MAX_SAL_CITY_WISE,CITYFROM EMPGROUP BY CITY--13.Find department wise lowest salary.SELECT MIN(SALARY) AS MIN_SAL,DEPARTMENTFROM EMPGROUP BY DEPARTMENT--14.Display city with the total number of employees belonging to each city.SELECT COUNT(EID) AS NO_OF_EMP,CITYFROM EMPGROUP BY CITY--15.Give total salary of each department of EMP table.SELECT SUM(SALARY) AS TOTAL_SAL,DEPARTMENTFROM EMPGROUP BY DEPARTMENT--16.Give average salary of each department of EMP table without displaying the respective department 
--name.
SELECT AVG(SALARY) AS AVG_SAL,DEPARTMENT
FROM EMP
GROUP BY DEPARTMENT


---PART-B---

--1.Count the number of employees living in Rajkot
SELECT COUNT(EID) AS NO_OF_EMP
FROM EMP
WHERE CITY='RAJKOT'

--2.Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENCE_OF_SAL
FROM EMP

--3.Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(EID) AS TOTAL_NO_OF_EMP
FROM EMP
WHERE JOININGDATE < '01-jan-91'


---PART-C---

--1.Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(EID) AS NO_OF_EMP
FROM EMP
WHERE CITY='RAJKOT' OR CITY = 'BARODA'

--2.Display the total number of employees hired before 1st January, 1991 in IT department.SELECT COUNT(EID) AS NO_OF_EMPFROM EMPWHERE JOININGDATE < '01-jan-91' AND DEPARTMENT = 'IT'--3.Find the Joining Date wise Total Salaries.SELECT SUM(SALARY) AS TOTAL_SAL,JOININGDATEFROM EMPGROUP BY JOININGDATE--4.Find the Maximum salary department & city wise in which city name starts with ‘R’.SELECT MAX(SALARY) AS MAX_SAL,DEPARTMENT,CITYFROM EMPWHERE CITY LIKE 'R%'GROUP BY DEPARTMENT,CITY