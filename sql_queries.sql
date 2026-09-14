--1. View a sample of the data

SELECT field2 AS name, field7 AS neighbourhood, field14 AS room_type
FROM Airbnb_Open_Data
WHERE field1 <> 'id'
LIMIT 10;

--2. Filter — listings in Manhattan

SELECT field2 AS name, field7 AS neighbourhood, field14 AS room_type
FROM Airbnb_Open_Data
WHERE field6 = 'Manhattan';

--3. Distinct room types available

SELECT DISTINCT field14 AS room_type
FROM Airbnb_Open_Data
WHERE field1 <> 'id';

--4. Count listings per room type

SELECT field14 AS room_type, COUNT(*) AS total
FROM Airbnb_Open_Data
WHERE field1 <> 'id'
GROUP BY field14;

--5. Listings with more than 50 reviews, sorted

SELECT field2 AS name, field19 AS num_reviews
FROM Airbnb_Open_Data
WHERE field19 > 50 AND field1 <> 'id'
ORDER BY field19 DESC;

--6. Average review rate number by neighbourhood group

SELECT field6 AS neighbourhood_group, AVG(field22) AS avg_review_rate
FROM Airbnb_Open_Data
WHERE field1 <> 'id'
GROUP BY field6;

--7.Instant-bookable listings only

SELECT field2 AS name, field6 AS neighbourhood_group, field12 AS instant_bookable
FROM Airbnb_Open_Data
WHERE field12 = 'TRUE';

--8.Listings with highest availability (days per year)

SELECT field2 AS name, field6 AS neighbourhood_group, field24 AS availability_365
FROM Airbnb_Open_Data
WHERE field1 <> 'id'
ORDER BY field24 DESC
LIMIT 10;






