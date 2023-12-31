use ftips;

create table Employee(
ID varchar (10),
Name varchar (10),
Last_Name varchar (10),
Department int (5)
);
insert into Employee(Id,Name,Last_Name,Department) values 
("123234877","Michael","Rogers",14),
("152934485","Anand","Manikutty",14),
("222364883","Carol","Smith",37),
("326587417","Joe","Stevens",37),
("332154719","Mary-Anne","Foster",14),
("332569843","George","ODonnell",77),
("546523478","John","Doe",59),
("631231482","Devid","Smith",77),
("654873219","Zacary","Efron",59),
("745685214","Eric","Goldsmith",59),
("845657245","Elizabeth","Doe",14),
("845657246","Kumar","Swamy",14);
select * from employee;

create table Department (
Code int (10),
Name varchar (20),
Budget int (10)
);
insert into department(Code, Name, Budget) values
(14,"IT",6500),
(37,"Accounting",15000),
(59,"Human Resources",240000),
(77,"Research",55000);
select * from department;

#1. Select the last name of all employees, without duplicates
 select distinct(last_name) from employee;

#2. Select all the data of employees whose last name is "Smith". 
select * from employee where last_name = "Smith";

#3. Select all the data of employees whose last name is "Smith" or "Doe". . 
select * from employee where last_name in ("Smith", "Doe");

#4. Select all the data of employees that work in department 14
select * from employee where department = 14;

#5.  Select all the data of employees that work in department 37 or department 77
select * from employee where department in (37, 77);

#6. Select all the data of employees whose last name begins with an "S". 
select * from employee where last_name like "s%";

#7. Select the sum of all the departments' budgets
select sum(budget) from department;

#8. Select the number of employees in each department
select department, count(ID) from employee group by department;

#9. Select all the data of employees, including each employee's department's data. 
select * from employee join department on employee.department = department.code;

#10. Select the name and last name of each employee, along with the name and budget of the employee's department
select employee.name, last_name, department.name, budget from employee join department
on employee.department = department.code;

#11. Select the name and last name of employees working for departments with a budget greater than $60,000
select employee.name, last_name from employee join department 
on employee.department = department.code where department.budget > 60000;

#12.  Select the departments with a budget larger than the average budget of all the departments
select name from department where budget > (select avg(budget) from department);

#13. Select the names of departments with more than two employees
select department.name, count(employee.id) from employee join department
on employee.department = department.code group by employee.department having count(employee.id) > 2;

#14. Select the name and last name of employees working for departments with second lowest budget
select employee.name, last_name, department.budget from employee join department on
employee.department = department.code where department.budget = (select budget from department order by budget limit 1,1);

#15. Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11
insert into department (code, name, budget) values
(11, "Quality Assurance", 40000);

#16. Add an employee called "Mary Moore" in that department, with SSN 847-21-9811
insert into employee (id, name, last_name, department) values
("847219811", "Mary", "Moore", 11);

#17.  Reduce the budget of all departments by 10%. 
update department set budget = budget*0.9;

#18.  Reassign all employees from the Research department (code 77) to the IT department (code 14)
update employee set department = 14 where department = 77;

#19.  Delete from the table all employees in the IT department (code 14)
delete from employee where department = 14;

#20.  Delete from the table all employees who work in departments with a budget greater than or equal to $60,000
delete employee from employee join department on
employee.department = department.code where department.budget > 60000;

#21.  Delete from the table all employees
delete from employee;

