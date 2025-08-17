--2. where,group by,having and order by clause base views .

select * from attendance 

select * from fees

select * from school

select * from teacher

create view fees_info as
select sum(amount) as sum_amount from fees 
group by student_name

select * from fees_info

create view teacher_info as
select  count(*) as teacher_count from teacher 
group by age >30
having sum(salary) > 56000

select * from teacher_info

create view school_data as 
select contact_no,email,address 
from school
order by name desc

select * from school_data
