--1.Create join base views on following table.

select * from employee_info

select * from bank

select * from customer

create view emp_report as 
select e.first_name,e.last_name,e.email_id,e.hire_date,b.name,b.id
from employee_info as e
left join bank as b
on e.first_name = b.name

select * from emp_report

create view cus_report as 
select e.first_name,e.last_name,e.email_id,e.hire_date,b.name,b.id,c.bank_id
from employee_info as e
inner join bank as b
on e.first_name = b.name
inner join customer as c
on
b.id = c.bank_id

select * from cus_report


create view bank_repo as 
select e.email_id,e.hire_date,b.name,b.id,c.bank_id,e.first_name,e.last_name
from bank as b
inner join customer as c
on b.name = c.last_name
inner join employee_info as e
on
c.bank_id = e.bank_id

select * from bank_repo











