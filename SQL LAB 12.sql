--LAB 12

select * from person

select * from dept



--select person.PersonName,dept.DepartmentName,dept.DepartmentCode
--From person join dept
--on person.DepartmentID=dept.DepartmentID



----PART_A----

--1. Find all persons with their department name & code.
select person.PersonName,dept.DepartmentName,dept.DepartmentCode
From person join dept
on person.DepartmentID=dept.DepartmentID

--2.Find the person's name whose department is in C-Block.select person.PersonName
from person
join dept
on person.DepartmentID=dept.DepartmentID
where dept.Location='c-block'

--3.Retrieve person name, salary & department name who belongs to Jamnagar city.
select person.PersonName,person.Salary,dept.DepartmentName
from person
join dept
on person.DepartmentID=dept.DepartmentID
where person.city='jamnagar'

--4.Retrieve person name, salary & department name who does not belong to Rajkot city.
select person.PersonName,person.Salary,dept.DepartmentName
from person
join dept
on person.DepartmentID=dept.DepartmentID
where person.city<>'rajkot'

--5.Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001
select person.PersonName
from person
join dept
on person.DepartmentID=dept.DepartmentID
where dept.DepartmentName='civil' and person.JoiningDate>'01-aug-2001'

--6.Find details of all persons who belong to the computer department.
select *
from person
join dept
on person.DepartmentID=dept.DepartmentID
where dept.DepartmentName='computer'

--7.Display all the person's name with the department whose joining date difference with the current date 
--is more than 365 days.
select person.PersonName,dept.DepartmentName
from person
join dept
on person.DepartmentID=dept.DepartmentID
where datediff(day,JoiningDate,getdate())>365

--8.Find department wise person counts.
select count(person.PersonID),dept.DepartmentName
from person
join dept
on person.DepartmentID=dept.DepartmentID
group by dept.DepartmentName

--9.Give department wise maximum & minimum salary with department name.select max(person.Salary) as max_sal , min(person.salary) as min_sal , dept.DepartmentNamefrom personjoin depton person.DepartmentID=dept.DepartmentIDgroup by dept.DepartmentName--10.Find city wise total, average, maximum and minimum salary.select city,sum(salary) as total_sal,avg(salary) as avg_sal,max(salary) as max_sal,min(salary) as min_salfrom persongroup by city--11.Find the average salary of a person who belongs to Ahmedabad city.select avg(salary) as avg_salfrom personwhere city='ahmedabad'--12.Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In 
--single column)select person.PersonName + ' lives in ' + person.city + ' and works in ' + dept.DepartmentName + ' department.' as single_line_queryfrom personjoin depton person.DepartmentID=dept.DepartmentID----PART_B--------1.Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In 
--single column)select person.PersonName + ' earns ' + convert(varchar,person.Salary) + ' from ' + dept.DepartmentName + ' department monthly.' as single_line_queryfrom personjoin depton person.DepartmentID=dept.DepartmentID--2.Find city & department wise total, average & maximum salaries.select person.city,dept.DepartmentName,avg(person.salary),max(person.salary)from personjoin depton person.DepartmentID=dept.DepartmentIDgroup by person.city,dept.DepartmentName--3.Find all persons who do not belong to any department.select person.PersonName,dept.DepartmentNamefrom personleft outer join depton person.DepartmentID=dept.DepartmentIDwhere dept.DepartmentName is null--4.Find all departments whose total salary is exceeding 100000.select dept.DepartmentName,sum(person.Salary)from personjoin depton person.DepartmentID=dept.DepartmentIDgroup by dept.DepartmentNamehaving sum(person.Salary)>100000----PART-C------------1.List all departments who have no person.select dept.DepartmentNamefrom personjoin depton person.DepartmentID=dept.DepartmentIDwhere person.PersonName is null--2.List out department names in which more than two persons are working.select count(person.PersonID) as more_than_2_person,dept.DepartmentNamefrom personjoin depton person.DepartmentID=dept.DepartmentIDgroup by dept.DepartmentNamehaving count(person.PersonID)>2--3.Give a 10% increment in the computer department employee’s salary. (Use Update)--1.Give 10% Increment in Loan Amount. (Use Borrow Table)--UPDATE BORROW SET AMOUNT = (AMOUNT*0.1) + AMOUNTupdate personset person.Salary=(person.Salary*0.1)+person.Salaryfrom personjoin depton person.DepartmentID=dept.DepartmentIDwhere dept.DepartmentName='computer'select * from personselect * from dept