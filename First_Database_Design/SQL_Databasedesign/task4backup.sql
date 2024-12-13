-- 4.1 Select the title of all movies.
--SELECT Title FROM Movies;
-- 4.2 Show all the distinct ratings in the database.
--These are too simple and similar questions were answered in the first 3 tasks repeatedly
-- 4.3 Show all unrated movies.

-- 4.4 Select all movie theaters that are not currently showing a movie.


-- 4.5 Select all data from all movie theaters and, additionally, 
--the data from the movie that is being shown in the theater (if one is being shown).

--SELECT * FROM MovieTheaters
--JOIN Movies
--ON Movies.Code = MovieTheaters.Code
--;


-- 4.6 Select all data from all movies and, if that movie is being shown in a theater,
-- show the data from the theater.

--SELECT Movies.Title,MovieTheaters.Movie

--FROM Movies
--JOIN MovieTheaters
--ON Movies.Code = MovieTheaters.Code

--WHERE MovieTheaters.Movie IS NOT NULL
--;

-- 4.7 Show the titles of movies not currently being shown in any theaters.
--SELECT Movies.Title,MovieTheaters.Movie

--FROM Movies
--JOIN MovieTheaters
--ON Movies.Code = MovieTheaters.Code

--WHERE MovieTheaters.Movie IS NULL;

-- 4.8 Add the unrated movie "One, Two, Three".
--INSERT INTO Movies(Code,Title,Rating) VALUES(9,'One',NULL);
--INSERT INTO Movies(Code,Title,Rating) VALUES(10,'Two',NULL);
--INSERT INTO Movies(Code,Title,Rating) VALUES(11,'Three',NULL);

-- 4.9 Set the rating of all unrated movies to "G".

--UPDATE Movies
--SET Rating = 'G'
--WHERE Rating IS NULL;

--SELECT * FROM Movies;
--WHERE Rating IS NULL;


-- 4.10 Remove movie theaters projecting movies rated "NC-17".
--DELETE FROM MovieTheaters
--WHERE MovieTheaters.Movie IN (
--SELECT Movies.Code FROM MovieTheaters
--JOIN Movies
--ON  MovieTheaters.Movie = Movies.Code
--WHERE Movies.Rating = 'NC-17')
--; 