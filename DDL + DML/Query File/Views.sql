USE Netplix
GO

-- 1. Display number of users
-- Implemented concepts: built-in function, aggregate function

CREATE VIEW [NumOfUsers] AS
SELECT CAST(COUNT(*) AS VARCHAR(30)) + ' user(s)' AS [Number of Users]
FROM [User]

-- 2. Show number of reviews given by each user
-- Implemented concepts: built-in function, joining tables, aggregate function, grouping attributes

CREATE VIEW [TotalUserReview] AS
SELECT U.[user_id],
	CAST(COUNT(*) AS VARCHAR(30)) + ' review(s)' AS [Total Review]
FROM [User] AS U
	JOIN REVIEW AS R ON R.[user_id] = U.[user_id]
GROUP BY U.[user_id]

-- 3. Show average review rating given by each user
-- Implemented concepts: grouping attributes, built-in function, aggregate function

CREATE VIEW [AvgRatingByUser] AS
SELECT [user_id] AS [User ID],
	CAST(AVG(rating) AS VARCHAR(30)) + ' star(s)' AS [Average Review Rating]
FROM Review
GROUP BY [user_id]

-- 4. Show number of reviews given by genre
-- Implemented concepts: joining tables, built-in function, grouping attributes, aggregate function

CREATE VIEW [ReviewCountByGenre] AS
SELECT g.[name] AS [Genre],
	CAST(COUNT(*) AS VARCHAR(30)) + ' review(s)' AS [Review Count]
FROM Show AS s 
	JOIN Review AS r ON s.show_id = r.show_id
	JOIN ShowGenre AS sg ON s.show_id = sg.show_id
	JOIN Genre AS g ON sg.genre_id = g.genre_id
GROUP BY g.[name]

-- 5. Show average rating of each show, along with their basic information (director and release date)
-- Implemented concepts: joining tables, built-in function, grouping attributes, aggregate function

CREATE VIEW [AvgRatingPerShow] AS 
SELECT s.title as [Show Title], 
	s.director AS [Show Director], 
	s.release_date as [Release Date],
	CAST(AVG(r.rating) AS VARCHAR(30)) + ' star(s)' AS [Average Show Rating]
FROM Show s JOIN Review r ON s.show_id = r.show_id
GROUP BY s.title, s.director, s.release_date

-- 6. Show each user who's in working age (15-64 years old) and display the number of shows they have watched
-- Implemented concepts: joining tables, built-in functions, grouping attributes, aggregat function

CREATE VIEW [NumShowByWorkingAge] AS
SELECT u.[name] as Username, 
	DATEDIFF(YEAR, u.dob, GETDATE()) as Age,
	CAST(COUNT(*) AS VARCHAR(30)) + ' show(s)' AS [Shows Watched]
FROM [User] u JOIN WatchList w ON w.[user_id] = u.[user_id]
WHERE DATEDIFF(YEAR, u.dob, GETDATE()) BETWEEN 15 AND 64
GROUP BY u.[name], u.dob

-- 7. Show number of movies by genre
-- Implemented concepts: joining tables, built-in functions, grouping attributes, aggregate function

CREATE VIEW [NumMoviesByGenre] AS
SELECT g.[name] as Genre, 
	CAST(COUNT(*) AS VARCHAR(30)) + ' movie(s)' AS [Number of Movies]
FROM Show s 
	JOIN ShowCategory sc ON s.category_id = sc.category_id
	JOIN ShowGenre sg ON s.show_id = sg.show_id
	JOIN Genre g ON sg.genre_id = g.genre_id
WHERE sc.[name] = 'Movie'
GROUP BY g.[name]

-- 8. Show Movies which rating is higher than the average rating of all shows
-- Implemented concepts: built-in function, joining tables, subquery

CREATE VIEW [TopMovies] AS
SELECT title AS [Show Name], 
	CAST(rating  AS VARCHAR(30)) + ' star(s)' AS [Show Rating]
FROM Show s JOIN Review r ON s.show_id = r.show_id
WHERE s.category_id = 'SHC001' AND r.rating > (SELECT AVG(rating) FROM Review)


