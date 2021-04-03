-- 1)
SELECT * FROM movies WHERE year = '1995'
--2)
SELECT COUNT(*) FROM roles r JOIN movies m ON r.movie_id = m.id WHERE m.name='Lost in Translation'
--3)
SELECT first_name, last_name FROM actors a JOIN roles r ON r.actor_id = a.id JOIN movies m ON m.id=r.movie_id WHERE m.name='Lost in Translation'
--4)
SELECT first_name, last_name FROM directors d JOIN movies_directors md ON d.id = md.director_id JOIN movies m ON m.id=md.movie_id WHERE m.name='Fight Club'
--5)
SELECT COUNT(*) FROM movies_directors md JOIN directors d ON d.id = md.director_id WHERE d.first_name = 'Clint' AND d.last_name='Eastwood'
--6)
SELECT name FROM movies m JOIN movies_directors md ON md.movie_id=m.id JOIN directors d ON d.id=md.director_id WHERE d.first_name = 'Clint' AND d.last_name='Eastwood'
--7)
SELECT first_name, last_name FROM directors d JOIN movies_directors md ON md.director_id = d.id JOIN movies_genres mg ON mg.movie_id=md.movie_id WHERE mg.genre = 'horror'
--8)
SELECT actors.first_name, actors.last_name FROM actors a
                                                    JOIN roles r ON r.actor_id=a.id
                                                    JOIN movies_directors md ON md.movie_id = r.movie_id
                                                    JOIN directors d ON d.id=md.director_id
WHERE d.first_name='Christopher' AND d.last_name='Nolah'