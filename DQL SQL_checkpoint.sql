-- 1/ tables from relational check point

Employees (pk Num_E,first_name,last_name,position,salary,#department_num_s)

Departments (pk Num_S,label,name_manager)

Projects (pk Num_P,title,#department_num_s)

Roles (pk #Num_e,pk #Num_p,role,start_date,end_date)

--1
select e.first_name,e.last_name,count(r.num_p) as projects
from employees e
inner join roles r on r.num_e =e.num_e
group by e.first_name,e.last_name
having count(r.num_p)>1;

--2
select p.title as projects,d.label as departments,d.name_manager as managers_name
from departments d
inner join projects p on p.department_num_s=d.num_s
order by d.label;

--3
select e.first_name,e.last_name,p.role
from employees e
inner join projects p on p.num_e=e.num_e
where p.title='website redesign';

--4
select top 1 d.label,d.name_manager,count(e.num_e) as number_employee
from departments d
inner join employees e e.department_num_s=d.num_s
group by d.label,d.name_manager;

--5
select e.first_name,e.last_name,e.position,d.label
from employees e
inner join departments d d.num_s=e.department_num_s
where salary > 60000;

--6
select count(r.num_e) as number_employee,p.title
from role r
inner join projects p p.num_p=r.num_p
group by p.title;

--7
select e.last_name,e.fisrt_name,p.title,r.role
from employees e
inner join roles r on r.num_e=e.num_e
inner join projects p on p.num_p=r.num_p
order by e.last_name,e.fisrt_name;

--8
select sum(e.salary),d.label,d.name_manager
from employees e
inner join departments d on d.num_s=e.department_num_s
group by d.label,d.name_manager;