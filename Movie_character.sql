 SELECT CONCAT(D.director_first_name, D.director_last_name) AS director_name, M.movie_title
 FROM movies_directors MD
 INNER JOIN movies M ON M.movie_id = MD.movie_id
 INNER JOIN directors D ON D.director_id = MD.director_id
 INNER JOIN movies_cast MC ON MC.movie_id = M.movie_id
 WHERE (MC.role = 'SeanMaguire');
