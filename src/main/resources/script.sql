SELECT first_name, last_name, address, birthday
FROM people p
INNER JOIN homes h on (p.home_id = h.id)
WHERE birthday IS NOT NULL
ORDER BY MONTH(birthday);

SELECT *
FROM people p
INNER JOIN homes h on (p.home_id = h.id);

INSERT INTO movies (title, runtime, genre, imdb_score, rating)
VALUES ('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG'),
('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'),
('Waltz With Bashir', 90, 'Documentary', 8.0, 'R'),
('Spaceballs', 96, 'Comedy', 7.1, 'PG'),
('Monsters Inc.', 92, 'Animation', 8.1, 'G'),
('Home Alone', 103, 'Comedy', 7.5, 'PG'),
('Elf', 97, 'Comedy', 6.9, 'PG'),
('Titanic', 194, 'Drama', 7.8, 'PG-13');

SELECT * FROM movies
WHERE imdb_score >= 6.5;

SELECT * FROM movies
WHERE rating IN ('G', 'PG') AND runtime < 100;

SELECT genre, AVG(runtime) AS average_runtime FROM movies
WHERE imdb_score < 7.5
GROUP BY genre;

UPDATE movies SET rating = 'R' WHERE title = 'Starship Troopers';

SELECT id, rating FROM movies
WHERE genre IN ('Horror', 'Documentary');

SELECT rating, AVG(imdb_score) as average_score, MAX(imdb_score) as maximum_score, MIN(imdb_score) as minimum_score FROM movies
GROUP BY rating;

SELECT rating, AVG(imdb_score) as average_score, MAX(imdb_score) as maximum_score, MIN(imdb_score) as minimum_score FROM movies
GROUP BY rating
HAVING COUNT(*) > 1;

DELETE FROM movies
WHERE rating = 'R';