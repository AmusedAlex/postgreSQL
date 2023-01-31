
-- SELECT all staff ordered by first name:
SELECT * 
FROM staff 
ORDER BY first_name;

-- SELECT all payments ordered by amount in descending order:
SELECT * 
FROM payment 
ORDER BY amount DESC;

-- SELECT all addresses ordered by postal code in ascending order:
SELECT * 
FROM address 
ORDER BY postal_code;

-- SELECT all customers and join their addresses:
SELECT c.*, a.* 
FROM customer c 
JOIN address a 
ON c.address_id = a.address_id;

-- SELECT all stores and join their addresses:
SELECT s.*, a.* 
FROM store s 
JOIN address a 
ON s.address_id = a.address_id;

-- SELECT all stores and join staff using manager_staff_id:
SELECT s.*, st.* 
FROM store s 
JOIN staff st 
ON s.manager_staff_id = st.staff_id;

-- SELECT all addresses and join cities:
SELECT a.*, c.* 
FROM address a 
JOIN city c 
ON a.city_id = c.city_id;

-- Find total payment by date:
SELECT payment_date, SUM(amount) as total_sales
FROM payment 
GROUP BY payment_date
ORDER BY total_sales DESC

-- Find average payment:
SELECT AVG(amount) AS average_payment 
FROM payment;

-- Sum all payments:
SELECT SUM(amount) AS total_payments 
FROM payment;