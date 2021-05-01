SELECT movies.movie_title, movies.movie_year, concat(d.director_first_name, d.director_last_name) as director_name, concat(a.actor_first_name, a.actor_last_name) as actor_name,movies_cast.role
From movies_directors md
inner join directors d on d.director_id = md.director_id
inner join movies_cast on movies_cast.movie_id = md.movie_id
inner join actors a on a.actor_id = movies_cast.actor_id
inner join movies on movies.movie_id = md.movie_id
ORDER by movies.movie_time LIMIT 1