USE casestudy;

CREATE TABLE orders (
   order_id INT,
   user_id INT,
   r_id INT,
   amount INT,
   date varchar(30),
   partner_id INT,
   delivery_time INT,
   delivery_rating INT,
   restaurent_rating INT
);

SELECT * FROM orders;
