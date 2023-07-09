USE casestudy;
SELECT r.r_name, SUM(amount) AS `revenue`
FROM orders o
JOIN restaurants r
 ON o.r_id = r.r_id
WHERE MONTHNAME(date) LIKE 'JUNE'
GROUP BY r.r_name, o.r_id
HAVING SUM(amount) > 500
LIMIT 0, 1000;

