USE casestudy;
SELECT r.r_name, COUNT(*) AS `month`
FROM orders o
JOIN restaurants r ON o.r_id = r.r_id
WHERE MONTH(date) = 6
GROUP BY r.r_name, o.r_id
ORDER BY `month` DESC
LIMIT 1;

