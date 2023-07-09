USE casestudy;
SELECT r.r_name, COUNT(*) AS `loyal_customers`
FROM (
    SELECT r_id, user_id, COUNT(*) AS `visits`
    FROM orders
    GROUP BY r_id, user_id
    HAVING visits > 1
) t
JOIN restaurants r ON r.r_id = t.r_id
GROUP BY r.r_name, t.r_id
ORDER BY `loyal_customers` DESC
LIMIT 1;
