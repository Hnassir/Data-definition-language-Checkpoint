-- 1/ tables from relational check point
/*
Employees (Num_E,name,position,salary,#department_num_s)

Departments (Num_S,label,name_manager)

Projects (Num_P,title,Start_Date,End_Date,#department_num_s)

Roles (#Num_e,#Num_p,role)

*/
--- 2/ creating tables


create table department (

Num_S INT PRIMARY KEY,
Label VARCHAR(255),
Manager_Name VARCHAR(255)

);
go

create table employee (

Num_E INT PRIMARY KEY,
Name VARCHAR(255),
Position VARCHAR(255),
Salary DECIMAL(10, 2),
Department_Num_S INT,
foreign key (Department_Num_S) references department (Num_S)

);
go


create table project (

Num_P INT PRIMARY KEY,
Title VARCHAR(255),
Start_Date DATE,
End_Date DATE,
Department_Num_S INT,
FOREIGN KEY (Department_Num_S) references department (Num_S)
 
);
go


create table role (

Employee_Num_E INT,
Project_Num_P INT,
Role VARCHAR(255),
primary key (employee_num_e,project_num_p),
FOREIGN KEY (Employee_Num_E) references employee (Num_E),
FOREIGN KEY (Project_Num_P) references project (Num_P)

);
go

