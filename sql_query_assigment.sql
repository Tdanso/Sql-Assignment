-- total purchases
select count(*) from purchases;
-- average price items in table
select avg(price) from products;
-- how find the max price from table not computer
select max(price) from products where title != '% computer';
select max(price) from products where title not ilike '% computer';
select max(price) from products where lower(title) not like '% computer';
-- users wth gamil adddress
select count(*) from users where email like '%gamil.com';
select count(email) from users where email like '%gamil.com';
select count(user_id) from users where email like '%gamil.com';
-- purchses items from table 
select sum(price)from purchase_items where status = 'Returned';
select sum(price * quantity)from purchase_items where status = 'Returned';
select * from purchase_items;

-- how to finds all products contains books
select avg(price)from products where title ilike '% book';

-- extar credits 
select min(price), max(price), avg(price) from products;

select max(price)-min(price) from products;



