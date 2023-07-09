SELECT f.f_name, AVG(m.price) AS avgprice
FROM menu m
JOIN food f
ON m.f_id = f.f_id
GROUP BY f.f_id, f.f_name;
