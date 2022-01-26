-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Grouping by multiple columns]: SELECT state, zipcode, COUNT(id) FROM purchases GROUP BY state, zipcode;
SELECT state, zipcode, COUNT(purchase_id) FROM purchases GROUP BY state, zipcode;
-- 2. [Group by using a HAVING filter]:
-- SELECT state, COUNT(id) FROM purchases 
--                                      GROUP BY state 
--                                      HAVING COUNT(id) > 100;
SELECT state, COUNT(purchase_id) FROM purchases 
GROUP BY state 
HAVING COUNT(purchase_id) > 100;

-- 3. [Multiple-value subquery]: SELECT * FROM purchases WHERE
--            user_id IN 
--            (SELECT user_id FROM users WHERE email LIKE '%@gmail.com');
SELECT * FROM purchases WHERE
user_id IN 
(SELECT user_id FROM users WHERE email LIKE '%@gmail.com');

-- 4. [Using alias in filter]: SELECT name, email FROM users AS u 
--            JOIN purchases AS p ON p.user_id=u.id 
--            WHERE u.email LIKE '%@gmail.com';
SELECT name, email FROM users AS u 
JOIN purchases AS p ON p.user_id=u.user_id 
WHERE u.email LIKE '%@gmail.com';

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find the most recent purchase made by each user.
select * from users ORDER BY created_at DESC;

-- 2. Which Jeopardy shows had a question worth more than $4000?

-- 3. Find the oldest purchase made by a user with a yahoo email
--    address.
SELECT min(p.created_at), p.user_id, email
FROM purchases as p
JOIN users as u
ON p.user_id = u.user_id
WHERE u.email like '%@verizon.com'
GROUP BY p.user_id, email;

select * from users where email ilike '%yahoo.com' order by created_at
-- 4. Find all the users' emails who made at least one purchase from the
--    state of NY.
SELECT state, user_id, COUNT(purchase_id) >= 1 AS at_least_one_purchase
FROM purchases
WHERE user_id IN 
(SELECT user_id
FROM users)
AND state = 'NY'
GROUP BY state, user_id;

select * from users where email ilike '%yahoo.com' order by created_at
----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Use the DATEPART() function to find the number of users created
--    during each day of the week.
--    Hint: Use DW as the first input

-- 2. How about each day of the month?