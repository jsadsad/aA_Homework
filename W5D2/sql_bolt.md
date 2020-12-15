# SQLBolt

Learn SQL with simple, interactive exercises.

# Query

A query in itself is just a statement which declares what data we are looking for, where to find it in the database, and optionally, how to transform it before it is returned.

Id | Title | Director | Year | Length_minutes
---|-------|-----------|-----|---------------
1	| Toy Story	| John Lasseter	| 1995	| 81
2	| A Bug's Life	| John Lasseter	| 1998	| 95
3	| Toy Story 2	| John Lasseter	| 1999	| 93
4	| Monsters, Inc.	| Pete Docter	| 2001	| 92
5	| Finding Nemo	| Andrew Stanton	| 2003	| 107
6	| The Incredibles	| Brad Bird	| 2004	116
7	| Cars	| John Lasseter	| 2006	| 117
8	| Ratatouille	| Brad Bird	| 2007	| 115
9	| WALL-E	| Andrew Stanton	| 2008	| 104
10	| Up	| Pete Docter	| 2009	| 101
11	| Toy Story 3	| Lee Unkrich	| 2010	| 103

#basics

1. Find the title of each film: `SELECT title FROM movies;`
2. Find the director of each film: `SELECT director FROM movies;`
3. Find the title and director of each film: `SELECT title, director FROM movies;`
4. Find the title and year of each film: `SELECT title, year FROM movies;`
5. Find all the information about the film: `SELECT * FROM movies;`

# constraints

1. Find the movie with a row id of 6:
`SELECT * FROM movies
WHERE id = 6;`
2. Find the movies released in the years between 2000 and 2010:
` SELECT * FROM movies
  WHERE year BETWEEN 2000 AND 2010;`
3. Find the movies not released in the years between 2000 and 2010
`SELECT * FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;`
4. Find the first 5 Pixar movies and their release year
`SELECT title, year FROM movies
WHERE year <= 2003;`

# tasks
1. Find all the Toy Story movies
`SELECT * FROM movies
WHERE title LIKE "%Toy%";`
2. Find all the movies directed by John Lasseter
`SELECT * FROM movies
WHERE director = "John Lasseter"`
3. Find all the movies (and director) not directed by John Lasseter
`SELECT * FROM movies
WHERE director != "John Lasseter"`
4. Find all the WALL-* movies
`SELECT * FROM movies
WHERE title LIKE "%WALL%"`
