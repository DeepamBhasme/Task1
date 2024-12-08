
create table Employee_Details(Emplyoeeid serial primary key,FirstName varchar(50),LastName varchar(50),Email varchar(100),PhoneNumber varchar(15),HireDate Date,Salary DECIMAL(10,2),DepartmentID int,IsActive Bool,JobTitle varchar(100));

insert into Employee_Details values (1,'Aditya','Mohile','aditya@gmail.com','8421351746','2025-02-09',30000.00,12, TRUE, 'Analyst');

insert into Employee_Details values (2,'Ankush','Lanjewar','ankush@gmail.com','8469309427','2025-01-09',40000.00,06, TRUE, 'Data Analyst')
									,(3,'Sanket','Kirpal','sanket@gmail.com','9595469309','2025-01-23',60000.00,03, TRUE, 'Finance')
									,(4,'Manish','thakre','manish@gmail.com','9846942759','2020-01-09',70000.00,02, FALSE, 'Business Analyst')
								,(5,'Amin','pathan','amin@gmail.com','8390446632','2021-01-09',55000.00,01, FALSE, 'Teacher');


copy Employee_Details from 'C:/SQL Task-1/Employee_Details.csv' delimiter ',' csv header;

update Employee_Details set DepartmentID = 0 where IsActive = 'false';

update Employee_Details set Salary= Salary * 1.08 where IsActive ='false' and DepartmentID = 0 and jobTitle = 'Data Analyst';

select firstname as name,lastname as surname from Employee_details where Salary between 30000 and 50000;

select * from Employee_Details where FirstName like 'A%';

delete from Employee_Details where EmployeeID between 1 and 5;

alter table employee_details rename to employee_database;

alter table employee_database rename column FirstName to Name;

alter table employee_database rename column LastName to Surname;

alter table employee_database add column State varchar;

update employee_database set State = 'India' where IsActive = 'true';

update employee_database set State = 'USA' where IsActive = 'false';

alter table employee_database alter column State set not null;
