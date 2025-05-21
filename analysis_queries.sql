-- ==============================================
-- E-COMMERCE SALES ANALYSIS QUERIES
-- ==============================================

-- 1. Average Rating by Movie
-- Objective: Calculate the average rating of each movie
SELECT movies.title, ROUND(AVG(ratings.rating), 2) AS avg_rating
FROM ratings
JOIN movies ON ratings.movie_id = movies.movie_id
GROUP BY movies.title
ORDER BY avg_rating DESC;


-- ------------------------------------------------

-- 2. Number of Ratings per Genre
-- Objective: Count the number of ratings per movie genre
SELECT movies.genre, COUNT(ratings.rating_id) AS number_of_ratings
FROM ratings
JOIN movies ON ratings.movie_id = movies.movie_id
GROUP BY movies.genre
ORDER BY number_of_ratings DESC;


-- ------------------------------------------------

-- 3. Average Rating by Age Group
-- Objective: Calculate the average rating of the movies by age group
SELECT users.age_group, ROUND(AVG(ratings.rating), 2) AS avg_rating
FROM ratings
JOIN users ON ratings.user_id = users.user_id
GROUP BY users.age_group
ORDER BY avg_rating DESC;


-- ------------------------------------------------

-- 4. Most Active Users (By Rating Count)
-- Objective: Identify the most active users based on rating count
SELECT users.user_id, users.age_group, COUNT(ratings.rating_id) AS total_ratings
FROM ratings
JOIN users ON ratings.user_id = users.user_id
GROUP BY users.user_id, users.age_group
ORDER BY total_ratings DESC;


-- ==============================================
-- End of Analysis Queries
-- ==============================================
