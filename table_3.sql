select * from bank

select max (fund),branch from bank group by branch

select max(fund) from bank

select * from bank where fund < (select max(fund) from bank)

select * from bank

select * from customer 

select * from employee_info

select e.email_id,e.hire_date,b.name,b.id,c.bank_id,e.first_name,e.last_name
from bank as b
right join customer as c
on b.name = c.last_name
left join employee_info as e
on c.last_name = e.first_name 





