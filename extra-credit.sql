--Extra Credit

--Artist Table
--Question 1
SELECT * FROM artist 
ORDER BY name DESC LIMIT 10

--Question 2 
SELECT * FROM artist 
WHERE name LIKE 'Black%'

--Question 3
SELECT * FROM artist 
WHERE name LIKE '%Black%'

-- Employee Table 
--Question 1 
SELECT * FROM employee  
ORDER BY birth_date DESC LIMIT 1 

--Question 2 
SELECT * FROM employee  
ORDER BY birth_date ASC LIMIT 1 

--Invoice Table 
--Question 1 
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA','TX','AZ')

--Question 2 
SELECT ROUND(AVG(total),2) FROM invoice 

--More JOINS 
--Question 1 
SELECT p.playlist_id, pt.track_id , p.name FROM playlist p
JOIN playlist_track pt ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music' ORDER BY playlist_id ASC

--Question 2 
SELECT t.name FROM playlist_track pt
JOIN track t ON pt.track_id = t.track_id
WHERE playlist_id = 5

--Question 3 
SELECT t.name, p.name FROM track t 
JOIN playlist_track pt ON t.track_id = pt.track_id 
JOIN playlist p ON pt.playlist_id = p.playlist_id
ORDER BY t.name ASC

--Question 4 
SELECT t.name, a.title, g.name FROM album a
JOIN track t ON a.album_id = t.album_id
JOIN genre g ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative' OR g.name ='Punk'
 
