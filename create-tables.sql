-- Create users table
CREATE TABLE users (
    user_id VARCHAR(10) PRIMARY KEY,
    age_group VARCHAR(20),
    gender VARCHAR(10),
    location VARCHAR(50)
);

-- Create movies table
CREATE TABLE movies (
    movie_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    release_year YEAR
);

-- Create ratings table
CREATE TABLE ratings (
    rating_id VARCHAR(10) PRIMARY KEY,
    user_id VARCHAR(10),
    movie_id VARCHAR(10),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    rating_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);
