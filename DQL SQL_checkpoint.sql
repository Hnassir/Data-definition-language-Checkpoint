--1
select e.name,count(r.projet_num_p) as projects
from employees e
inner join roles r on r.employee_num_e =e.num_e
group by e.name
having count(r.projet_num_p)>1;

--2
select p.title as projects,d.label as departments,d.manager_name as managers_name
from departments d
inner join projects p on p.department_num_s=d.num_s
order by d.label;

--3
select e.name,r.role
from employees e
inner join role r on r.employee_num_e=e.num_e
inner join projects p on p.num_p=r.project_num_p
where p.title='website redesign';

--4
select top 1 d.label,d.manager_name,count(e.num_e) as number_employee
from departments d
inner join employees e on e.department_num_s=d.num_s
group by d.label,d.manager_name
order by number_employee desc;

--5
select e.name,e.position,d.label
from employees e
inner join departments d on d.num_s=e.department_num_s
where salary > 60000;

--6
select count(r.employee_num_e) as number_employee,p.title
from role r
inner join projects p on p.num_p=r.projet_num_p
group by p.title;

--7
select e.last_name,e.fisrt_name,p.title,r.role
from employees e
inner join roles r on r.employee_num_e=e.num_e
inner join projects p on p.num_p=r.projet_num_p
order by e.last_name,e.fisrt_name;

--8
select sum(e.salary) as salary,d.label,d.manager_name
from employees e
inner join departments d on d.num_s=e.department_num_s
group by d.label,d.manager_name;
