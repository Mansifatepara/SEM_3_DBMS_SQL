CREATE DATABASE CSE_3B_306

--ALTER OPERATION

--PART-A

SELECT * FROM DEPOSIT

--1.Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSIT
ADD CITY VARCHAR(20) , PINCODE INT

--2.Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSIT 
ALTER COLUMN CNAME VARCHAR(35)

--3.Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT

--4.Rename Column ActNo to ANO.
EXEC SP_RENAME 'DEPOSIT.ACTNO', 'ANO'

--5.Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSIT
DROP COLUMN CITY

SELECT * FROM DEPOSIT

--6.Change name of table DEPOSIT to DEPOSIT_DETAIL.
EXEC SP_RENAME 'DEPOSIT' , 'DEPOSIT_DETAIL'


--PART-B

--1.Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE' , 'AOPENDATE'

SELECT* FROM DEPOSIT_DETAIL

--2.Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE

SELECT * FROM DEPOSIT_DETAIL

--3.Rename Column CNAME to CustomerName.
EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME' , 'CUSTOMERNAME'


--PART-C

CREATE TABLE STUDENT_DETAIL
(
	ENROLLMENT_NO VARCHAR(20),
	NAME VARCHAR(25),
	CPI DECIMAL(5,2),
	BIRTHDATE DATETIME
)

--1.Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL
ADD CITY VARCHAR(20)

--2.Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN NAME VARCHAR(35)

--3.Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN CPI INT

--4.Rename Column Enrollment_No to ENO.
EXEC SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO' , 'ENO'

--5.Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL
DROP COLUMN CITY

--6.Change name of table student_detail to STUDENT_MASTER.
EXEC SP_RENAME 'STUDENT_DETAIL' , 'STUDENT_MASTER'



--DELETE,TRUNCATE,DROP OPERATION

--PART-A

--Use Deposit_Detail table (Altered table of DEPOSIT)

SELECT * FROM DEPOSIT_DETAIL

--1.Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM DEPOSIT_DETAIL
WHERE AMOUNT>=4000

--2.Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL
WHERE BNAME='CHANDI'

--3.Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL
WHERE ANO>105

--4.Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL

--5.Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL


--PART-B


--Create following table using query according to the definition.

CREATE TABLE EMPLOYEE_MASTER
(
	EmpNo INT,
	EmpName VARCHAR(20),
	JoiningDate DATETIME,
	Salary DECIMAL(8,2),
	City VARCHAR(20)
)

INSERT INTO EMPLOYEE_MASTER (EmpNo,EmpName,JoiningDate,Salary,City)
VALUES
(101,'KEYUR','20-FEB-02',12000.00,'RAJKOT'),
(102,'HARDIK','15-FEB-04',14000.00,'AHMEDABAD'),
(103,'KAJAL','14-MAR-06',15000.00,'BARODA'),
(104,'BHOOMI','23-MAR-05',12500.00,'AHMEDABAD'),
(105,'HARMIT','15-FEB-04',14000.00,'RAJKOT'),
(106,'MITESH','25-SEP-01',5000.00,'JAMNAGAR'),
(107,'MEERA',NULL,7000.00,'MORBI'),
(108,'KISHAN','06-FEB-03',10000.00,NULL)

SELECT * FROM EMPLOYEE_MASTER

--1.Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
DELETE FROM EMPLOYEE_MASTER
WHERE SALARY>=14000

--2.Delete all the Employees who belongs to ‘RAJKOT’ city
DELETE FROM EMPLOYEE_MASTER
WHERE CITY='RAJKOT'

--3.Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER
WHERE JoiningDate > '01-JAN-07'

--4.Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER
WHERE JoiningDate IS NULL AND EmpName IS NOT NULL

--5.Delete the records of Employees whose salary is 50% of 20000.


--6.Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER
WHERE CITY IS NOT NULL

--7.Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER

--8.Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYEE_MASTER


--PART-C

--Summarize Delete, Truncate and Drop