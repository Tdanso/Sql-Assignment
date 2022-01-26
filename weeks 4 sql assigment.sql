-- select avg(amount)from payment;

-- select round(avg(amount),2) from payment;

-- select min(amount)from payment;
-- select amount from payment order by amount;

-- select count(amount)from payment where amount = 0.00;

-- select * from payment;
-- select count(customer_ID), last_name
-- from customer
-- group BY last_name;

select * from payment limit 10;

select * from payment;
select count(amount), sum(amount), s.first_name, s.last_name
from payment as p
inner join staff as s
on p.staff_id=s.staff_id
group BY s.last_name, s.first_name;




