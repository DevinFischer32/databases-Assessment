--Artist Table 
--Question 1 
INSERT INTO artist (name)
VALUES ('Juice WLD')

INSERT INTO artist (name)
VALUES ('Lil Baby')

INSERT INTO artist (name)
VALUES ('Trippie Redd')

--Question 2
SELECT name FROM artist 
ORDER BY name ASC
LIMIT 5

--Employee Table
--Question 1 
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary'

--Question 2
SELECT employee_id FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards'

SELECT * FROM employee 
WHERE reports_to = 2

--Question 3 
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge'
--2 

--Invoice Table 
--Question 1 
SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA'
--91

--Question 2
SELECT total FROM invoice 
ORDER BY total DESC
LIMIT 1
--26

--Question 3 
SELECT total FROM invoice 
ORDER BY total ASC
LIMIT 1
--1

--Question 4
SELECT * FROM invoice 
WHERE total > 5 
ORDER BY total ASC

--Question 5 
SELECT * FROM invoice 
WHERE total < 5 
ORDER BY total ASC

--Question 6 
SELECT SUM(total) FROM invoice 
--2351

--Join Queries 
--Question 1 
SELECT * FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id 
WHERE unit_price > 0.99
ORDER BY unit_price DESC

--Question 2 
SELECT i.invoice_date, c.first_name, c.last_name, i.total FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id
ORDER BY total ASC

--Question 3 
SELECT c.first_name "Customer First Name", c.last_name "Customer Last Name", e.first_name "Support First Name", e.last_name "Support Last Name" FROM customer c JOIN employee e ON c.support_rep_id = e.employee_id

--Question 4 
SELECT al.title "Album Title" , a.name "Artist"  FROM artist a
JOIN album al ON a.artist_id = al.artist_id



