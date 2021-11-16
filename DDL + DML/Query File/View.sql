USE Netplix

-- Select TV shows
-- (Basic Query)

CREATE VIEW [TV Shows] AS
SELECT title AS [TV Show], [description] AS [Show Description], release_date AS [Release Date]
FROM Show
WHERE category_id = 'SHC002'

-- Calculate Number of Shows grouped by genre
-- (Aggregating Tables)

CREATE VIEW [Number of Shows by Genre] AS
SELECT g.[name] AS [Genre], COUNT(*) AS [Number of Shows]
FROM Show s 
	JOIN ShowGenre sg ON s.show_id = sg.show_id
	JOIN Genre g ON g.genre_id = sg.genre_id
GROUP BY g.[name]

-- Show movies with rating higher than average
-- (Subqueries)

CREATE VIEW [Top Movies] AS
SELECT title AS [Show Name], rating AS [Show Rating]
FROM Show s JOIN Review r ON s.show_id = r.show_id
WHERE s.category_id = 'SHC001' AND r.rating > (SELECT AVG(rating) FROM Review)
ORDER BY rating
