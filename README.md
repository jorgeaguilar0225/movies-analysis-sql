# 🎬 Movie Ratings Analysis Using SQL

This project explores user-generated movie ratings using a simulated dataset in MySQL. The goal is to identify trends in viewer behavior, genre popularity, and overall movie performance.

---

## 📌 Project Objectives

- Analyze average ratings per movie
- Understand user engagement across genres and age groups
- Identify top-rated movies and most active users
- Track rating activity trends over time

---

## 🗃️ Database Structure

The project uses three core tables:

### `users`
Stores demographic data for users:
- `user_id` (e.g. USR101)
- `age_group` (e.g. '18-25')
- `gender`
- `location`

### `movies`
Basic metadata for each movie:
- `movie_id` (e.g. MOV301)
- `title`
- `genre`
- `release_year`

### `ratings`
User ratings and timestamps:
- `rating_id` (e.g. RAT501)
- `user_id` (FK)
- `movie_id` (FK)
- `rating` (1 to 5)
- `rating_date`

---

## 🔍 Key SQL Queries & Insights

### 1️⃣ Average Rating by Movie
```sql
SELECT movies.title, ROUND(AVG(ratings.rating), 2) AS avg_rating
FROM ratings
JOIN movies ON ratings.movie_id = movies.movie_id
GROUP BY movies.title
ORDER BY avg_rating DESC;
```


### 2️⃣ Number of Ratings by Genre 
```sql
SELECT movies.genre, COUNT(ratings.rating_id) AS number_of_ratings
FROM ratings
JOIN movies ON ratings.movie_id = movies.movie_id
GROUP BY movies.genre
ORDER BY number_of_ratings DESC;
```


### 3️⃣ Average Rating by Age Group 
```sql
SELECT users.age_group, ROUND(AVG(ratings.rating), 2) AS avg_rating
FROM ratings
JOIN users ON ratings.user_id = users.user_id
GROUP BY users.age_group
ORDER BY avg_rating DESC;
```


### 4️⃣ Most Active Users (Rating Count) 
```sql
SELECT users.user_id, users.age_group, COUNT(ratings.rating_id) AS total_ratings
FROM ratings
JOIN users ON ratings.user_id = users.user_id
GROUP BY users.user_id, users.age_group
ORDER BY total_ratings DESC;
```







