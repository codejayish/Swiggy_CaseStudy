USE casestudy;
SELECT o.order_id, r.r_name, f.f_name
FROM orders o
JOIN restaurants r ON o.r_id = r.r_id
JOIN order_details od ON o.order_id = od.order_id
JOIN food f ON f.f_id = od.f_id
WHERE user_id = (SELECT user_id FROM users WHERE name LIKE 'Ankit')
  AND (date > '2022-06-10' AND date < '2022-07-10')
LIMIT 0, 1000;
