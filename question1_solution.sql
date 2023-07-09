SELECT name 
FROM users
WHERE user_id NOT IN (SELECT user_id FROM orders);

