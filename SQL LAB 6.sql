
--Implement SQL In-built functions (Math, String, and Date Functions)

----------------------------------Math functions---------------------------------

--PART-A

--1.Display the result of 5 multiply by 30.
SELECT (5*30)

--2.Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

--3.Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)

--4.Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

--5.Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT (5%2) , (5%3)

--6.Find out value of 3 raised to 2nd power and 4 raised 3rd power
SELECT POWER(3,2) , POWER(4,3)

--7.Find out the square root of 25, 30 and 50.
SELECT SQRT(25) , SQRT(30) , SQRT(50)

--8.Find out the square of 5, 15, and 25.
SELECT SQUARE(5) , SQUARE(15) , SQUARE(25)

--9.Find out the value of PI.
SELECT PI()

--10.Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,0) , ROUND(157.732,2) , ROUND(157.732,-2)

--11.Find out exponential value of 2 and 3.
SELECT EXP(2) , EXP(3)

--12.Find out logarithm having base e of 10 and 2.
SELECT LOG(10) , LOG(2)

--13.Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5) , LOG10(100)

--14.Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415) , COS(3.1415) , TAN(3.1415)

--15.Find sign of -25, 0 and 25
SELECT SIGN(-25) , SIGN(0) , SIGN(25)

--16.Generate random number using function(0 to 1 ma j generate krse!!)
SELECT RAND()
--------OR--------
--16.Generate random number using function(0 to 10 ma number generate krse!!)
SELECT RAND()*10


--PART-B

CREATE TABLE EMP_MASTER
(
	EMPNO INT,
	EMPNAME VARCHAR(50),
	JOININGDATE DATETIME,
	SALARY DECIMAL,
	COMMISSION INT,
	CITY VARCHAR(50),
	DEPTCODE VARCHAR(50)
)

DROP TABLE EMP_MASTER

SELECT * FROM EMP_MASTER

INSERT INTO EMP_MASTER(EMPNO,EMPNAME,JOININGDATE,SALARY,COMMISSION,CITY,DEPTCODE)
VALUES
	(101,'KEYUR','20050105',12000,4500,'RAJKOT','3@g'),
	(102,'HARDIK','20040215',14000,2500,'AHMEDABAD','3@'),
	(103,'KAJAL','20060314',15000,3000,'BARODA','3-GD'),
	(104,'BHOOMI','20050623',12500,1000,'AHMEDABAD','1A3D'),
	(105,'HARMIT','20040215',14000,2000,'RAJKOT','312A')

--1.Display the result of Salary plus Commission
SELECT (SALARY+COMMISSION) AS RESULT
FROM EMP_MASTER

--2.Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2
SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2)

--3.Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2)

--4.Find out remainder of 55 divided 2 and 55 divided by 3.
SELECT (55%2) , (55%3)

--5.Find out value of 23 raised to 2nd power and 14 raised 3rd power.
SELECT POWER(23,2) , POWER(14,3)


--PART-C

--1.Find out the square root of 36, 49 and 81.
SELECT SQRT(36),SQRT(49),SQRT(81)

--2.Find out the square of 3, 9, and 12.
SELECT SQUARE(3),SQUARE(9),SQUARE(12)

--3.Find out round value of 280.8952 for 2, 0 and -2 decimal points
SELECT ROUND(280.8952,0),ROUND(280.8952,2),ROUND(280.8952,-2)

--4.Find sine, cosine and tangent of 4.2014.
SELECT SIN(4.2014),COS(4.2014),TAN(4.2014)

--5.Find sign of -55, 0 and 95.
SELECT SIGN(-55),SIGN(0),SIGN(95)


--------------------------------String Function-------------------------------------


--PART-A

--1.Find the length of following. (I) NULL (II) � hello � (III) Blank
SELECT LEN(NULL),LEN('HELLO'),LEN('')

--2.Display your name in lower & upper case.
SELECT LOWER('MANSI'),UPPER('mansi')

--3.Display first three characters of your name.
SELECT LEFT('MANSI',3)

--4.Display 3rd to 10th character of your name.
SELECT SUBSTRING('DARSHAN UNIVERSITY',3,10)

--5.. Write a query to convert �abc123efg� to �abcXYZefg� & �abcabcabc� to �ab5ab5ab5� using REPLACE.
SELECT REPLACE('abc123efg','123','XYZ'),REPLACE('abcabcabc','c','5')

--6.Write a query to display ASCII code for �a�,�A�,�z�,�Z�, 0, 9.
SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9)

--7.Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)

--8. Write a query to remove spaces from left of a given string �hello world �
SELECT LTRIM('   HELLO WORLD')

--9.Write a query to remove spaces from right of a given string � hello world �
SELECT RTRIM('HELLO WORLD   ')

--10.Write a query to display first 4 & Last 5 characters of �SQL Server�.
SELECT LEFT('SQL SERVER',4),RIGHT('SQL SERVER',5)

--11.Write a query to convert a string �1234.56� to number (Use cast and convert function).
-------USING CAST---------
--SELECT CAST('1234.56' AS INT)
-------USING CONVERT---------
SELECT CONVERT(INT,1234.56)

--12.Write a query to convert a float 10.58 to integer (Use cast and convert function).
-------USING CAST---------
SELECT CAST(10.58 AS INT)
-------USING CONVERT---------
SELECT CONVERT(INT,10.58)

--13.Put 10 space before your name using function.
SELECT SPACE(10)+'MANSI'

--14.Combine two strings using + sign as well as CONCAT ().
------USING (+)--------
SELECT ('MANSI'+'FATEPARA')
------USING CONCAT------
SELECT CONCAT('MANSI','FATEPARA')

--15.Find reverse of �Darshan�.
SELECT REVERSE('DARSHAN')

--16.Repeat your name 3 times.
SELECT REPLICATE('MANSI',3)


--PART-B(Perform following queries on Student table of practical no 5)

SELECT * FROM STUDENT

--1.Find the length of FirstName and LastName columns.
SELECT LEN(FIRSTNAME) AS FIRST_NAME,LEN(LASTNAME) AS LAST_NAME
FROM STUDENT

--2.Display FirstName and LastName columns in lower & upper case.
SELECT LOWER(FIRSTNAME) AS LOW_FIR,UPPER(FIRSTNAME) AS UPP_FIR,
LOWER(LASTNAME) AS LOW_LAST,UPPER(LASTNAME) AS UPP_LAST
FROM STUDENT

--3.Display first three characters of FirstName column
SELECT LEFT(FIRSTNAME,3) AS FIR_3_CHAR_OF_FIRSTNAME
FROM STUDENT

--4.Display 3rd to 10th character of Website column.
SELECT SUBSTRING(WEBSITE,3,10) AS THREERD_TO_TEN_CHAR
FROM STUDENT

--5.Write a query to display first 4 & Last 5 characters of Website column.
SELECT LEFT(WEBSITE,4) AS FIR_4, RIGHT(WEBSITE,5) AS LAST_5
FROM STUDENT


--PART-C

--1.Put 10 space before FirstName using function.
SELECT SPACE(10)+(FIRSTNAME) AS FIR_BEFORE_10_SPACE
FROM STUDENT

--2.Combine FirstName and LastName columns using + sign as well as CONCAT ().
------USING(+)---------
SELECT (FIRSTNAME+' '+LASTNAME) AS CONCAT_STRING
FROM STUDENT

------USING CONCAT-------
SELECT CONCAT(FIRSTNAME,' ',LASTNAME) AS CONCAT_STRING
FROM STUDENT

--3.Combine all columns using + sign as well as CONCAT ()
SELECT CONCAT() AS COMBINE_ALL_COLUMN
FROM STUDENT

--------------------------------DATE FUNCTION-------------------------------------


---PART-A---

--1.Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS CURRENT_DATE_TIME

--2.Write a query to find new date after 365 day with reference to today.
SELECT GETDATE()+365 AS TODAY

--3.Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT CONVERT(VARCHAR(100), GETDATE(), 100) AS 'DD-MM-YYYY Format';

--4.Display the current date in a format that appears as 03 Jan 1995.SELECT CONVERT(VARCHAR(100), GETDATE(), 106) AS 'DD-MM-YYYY Format';

--5.Display the current date in a format that appears as Jan 04, 96.SELECT CONVERT(VARCHAR(100), GETDATE(), 7) AS 'DD-MM-YYYY Format';--6.Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.SELECT DATEDIFF(MONTH,'31-Dec-08','31-Mar-09') AS TOTAL_MONTH--7.Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.SELECT DATEDIFF(YEAR,'25-Jan-12','14-Sep-10') AS TOTAL_YEAR--8.Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.SELECT DATEDIFF(HOUR,'25-Jan-12 7:00','26-Jan-12 10:30') AS TOTAL_HOUR--9.Write a query to extract Day, Month, Year from given date 12-May-16.SELECT DATEPART(DAY,'12-May-16') AS EXT_DAYSELECT DATEPART(MONTH,'12-May-16') AS EXT_MONTHSELECT DATEPART(YEAR,'12-May-16') AS EXT_YEAR--10. Write a query that adds 5 years to current date.SELECT DATEADD(YEAR,5,GETDATE()) AS ADD_DATE--11.Write a query to subtract 2 months from current date.SELECT DATEADD(MONTH,-2,GETDATE()) AS DIFF_MONTH--12.Extract month from current date using datename () and datepart () function.--USING DATENAME()SELECT DATENAME(MONTH,GETDATE()) AS EXT_MONTH--USING DATEPART()SELECT DATEPART(MONTH,GETDATE()) AS EXT_MONTH--13. Write a query to find out last date of current month.SELECT EOMONTH(GETDATE()) AS LASTDATE--14.Calculate your age in years and months.SELECT DATEDIFF(YEAR,'20-SEP-06',GETDATE()) AS MY_AGE_IN_YEARSELECT DATEDIFF(MONTH,'20-SEP-06',GETDATE()) AS MY_AGE_IN_MONTH-------PART-B----------Create a table EMP_DETAIL and insert the following records in the table.CREATE TABLE EMP_DETAIL(	EMP_NO INT,	EMP_NAME VARCHAR(25),	JOININGDATE DATETIME,	SALARY DECIMAL(8,2),	CITY VARCHAR(25))INSERT INTO EMP_DETAIL(EMP_NO,EMP_NAME,JOININGDATE,SALARY,CITY)VALUES(101,'KEYUR','15-JAN-2002',12000.00,'RAJKOT'),(102,'HARDIK','15-FEB-2004',14000.00,'AHMEDABAD'),(103,'KAJAL','14-MAR-2006',15000.00,'BARODA'),(104,'BHOOMI','23-JUN-2005',12500.00,'AHMEDABAD'),(105,'HARMIT','15-FEB-2004',14000.00,'RAJKOT'),(106,'JAY','12-MAR-2007',12000.00,'SURAT')DROP TABLE EMP_DETAILSELECT * FROM EMP_DETAIL--1.Write a query to find new date after 365 day with reference to JoiningDateSELECT DATEADD(DAY,365,JOININGDATE) AS JOINIGDATE from EMP_DETAIL--2.Display the JoiningDate in a format that appears as may 5 1994 12:00AM.SELECT CONVERT(VARCHAR(100), GETDATE(), 100) AS 'DD-MM-YYYY Format'--3.Display the JoiningDate in a format that appears as 03 Jan 1995.SELECT CONVERT(VARCHAR(100), GETDATE(), 106) AS 'DD-MM-YYYY Format'--4.Display the JoiningDate in a format that appears as Jan 04, 96.SELECT CONVERT(VARCHAR(100), GETDATE(), 107) AS 'DD-MM-YYYY Format'--5.Write a query to find out total number of months between JoiningDate and 31-Mar-09.
SELECT DATEDIFF(MONTH,JOININGDATE,'31-Mar-09') FROM EMP_DETAIL

--6.Write a query to find out total number of years between JoiningDate and 14-Sep-10.SELECT DATEDIFF(YEAR,JOININGDATE,'14-Sep-10') FROM EMP_DETAIL--------PART-C-----------1.Write a query to extract Day, Month, Year from JoiningDate.SELECT DATEPART(DAY,JOININGDATE) FROM EMP_DETAIL--2.Write a query that adds 5 years to JoiningDateSELECT DATEADD(YEAR,5,JOININGDATE) FROM EMP_DETAIL--3.Write a query to subtract 2 months from JoiningDate.SELECT DATEADD(MONTH,-2,JOININGDATE) FROM EMP_DETAIL--4.Extract month from JoiningDate using datename () and datepart () function.-----USING DATENAME-----SELECT DATENAME(MONTH,JOININGDATE) FROM EMP_DETAIL-----USING DATEPART-----SELECT DATEPART(MONTH,JOININGDATE) FROM EMP_DETAIL--5.Calculate your age in years and monthSELECT DATEDIFF(YEAR,'20-SEP-06',GETDATE()) AS MY_AGE_IN_YEARSELECT DATEDIFF(MONTH,'20-SEP-06',GETDATE()) AS MY_AGE_IN_MONTH