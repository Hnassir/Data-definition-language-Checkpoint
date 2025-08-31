--1/     
-- insert department records 
INSERT INTO Department VALUES (1, 'IT', 'Alice Johnson'),
(2, 'HR', 'Bob Smith'),
(3, 'Marketing', 'Clara Bennett');

-- insert employee records 
INSERT INTO Employee VALUES (101, 'John Doe','Developer',60000.00,1),
(102,'Jane Smith','Analyst',55000.00,2),
(103,'Mike Brown','Designer',50000.00,3),
(104,'Sarah Johnson','Data Scientist',70000.00,1),
(105,'Emma Wilson','HR Specialist',52000.00,2);

-- insert Project records 
INSERT INTO Project VALUES (201,'Website Redesign','2024-01-15','2024-06-30',1),
(202,'Employee Onboarding','2024-03-01','2024-09-01',2),
(203,'Market Research','2024-02-01','2024-07-31',3),
(204,'IT Infrastructure Setup','2024-04-01','2024-12-31',1);

-- insert employee_Project records 
INSERT INTO Employee_Project VALUES (101,201,'Frontend Developer'),
(104,201,'Backend Developer'),
(102,202,'Trainer'),
(105,202,'Coordinator'),
(103,203,'Research Lead'),
(101,204,'Network Specialist');


-- 2/
-- updates records
update Employee_Project
set Role = 'Full Stack Developer'
where Employee_Num_E =101;


-- 3/
-- delete records
delete from Employee_Project
where Employee_Num_E = 103;
    
delete from Employee
where Num_E = 103;




