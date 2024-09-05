-- Comments in SQL Start with dash-dash --
--1--
SELECT app_name FROM analytics WHERE id = 1880;
--2--
SELECT id,app_name FROM analytics WHERE last_updated = '08-01-2018';
--3--
SELECT category, COUNT(*) FROM analytics GROUP BY category;
--4--
SELECT app_name, reviews FROM analytics ORDER BY reviews LIMIT 5;
--5--
SELECT app_name FROM analytics WHERE rating = 4.8 OR rating > 4.8 ORDER BY reviews LIMIT 1;
--6--
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating);
--7--
SELECT app_name,price,rating FROM analytics WHERE rating < 3 ORDER BY price LIMIT 1;
--8--
SELECT app_name, rating FROM analytics WHERE min_installs = 50 OR min_installs < 50 AND reviews > 0 ORDER BY rating;
--9--
SELECT app_name FROM analytics WHERE rating < 3 AND reviews > 9999;
--10--
SELECT app_name, reviews FROM analytics WHERE price BETWEEN .1 AND 1 ORDER BY reviews LIMIT 10;
--11--
SELECT app_name, last_updated FROM analytics ORDER BY last_updated LIMIT 1;
--12--
SELECT app_name, price FROM analytics ORDER BY price DESC LIMIT 1;
--13--
SELECT SUM(reviews) FROM analytics;
--14--
SELECT category,COUNT(*) FROM analytics GROUP BY category HAVING COUNT(*) > 300;
--15--
SELECT app_name,reviews,min_installs,min_installs/reviews FROM analytics WHERE min_installs > 99999 ORDER BY min_installs/reviews DESC LIMIT 1;