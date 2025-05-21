INSERT INTO users (user_id, age_group, gender, location) VALUES
('USR101', '18-25', 'Female', 'New York'),
('USR102', '26-35', 'Male', 'Texas'),
('USR103', '36-45', 'Female', 'California'),
('USR104', '26-35', 'Male', 'Florida'),
('USR105', '18-25', 'Non-binary', 'Illinois');

INSERT INTO movies (movie_id, title, genre, release_year) VALUES
('MOV301', 'The Last Horizon', 'Sci-Fi', 2022),
('MOV302', 'Love & Lattes', 'Romance', 2021),
('MOV303', 'Mission Alpha', 'Action', 2020),
('MOV304', 'Laugh Out Loud', 'Comedy', 2019),
('MOV305', 'Truth Seekers', 'Thriller', 2023);

INSERT INTO ratings (rating_id, user_id, movie_id, rating, rating_date) VALUES
('RAT501', 'USR101', 'MOV301', 5, '2024-12-01'),
('RAT502', 'USR102', 'MOV303', 4, '2024-12-02'),
('RAT503', 'USR103', 'MOV302', 3, '2024-12-03'),
('RAT504', 'USR104', 'MOV305', 5, '2024-12-05'),
('RAT505', 'USR105', 'MOV304', 4, '2024-12-06'),
('RAT506', 'USR101', 'MOV302', 2, '2024-12-07'),
('RAT507', 'USR102', 'MOV305', 3, '2024-12-08');
