-- Return to Window Functions!
-- BASIC SYNTAX
-- SELECT <aggregator> OVER(PARTITION BY <col1> ORDER BY <col2>)
-- PARTITION BY (like GROUP BY) a column to do the aggregation within particular category in <col1>
-- Choose what order to apply the aggregator over (if it's a type of RANK)
-- Example SELECT SUM(sales) OVER(PARTITION BY department)
-- Feel free to google RANK examples too.



-- Return a list of all customers, RANKED in order from highest to lowest total spendings
-- WITHIN the country they live in.
-- HINT: find a way to join the order_details, products, and customers tables

WITH total AS (SELECT (unit_price*quantity), OVER(PARTITION BY FROM order_details
GROUP BY order_id)

SELECT c.customer_id, country, total,
RANK() 
OVER(PARTITION BY customer_id ORDER BY total DESC)
FROM customers as c
JOIN orders as o  
ON c.customer_id = o.customer_id;
JOIN order_details as od
ON o.order_ID = od.order_ID;

-- Return the same list as before, but with only the top 3 customers in each country.





