  use movielens;
  select id from genres where name = "Horror";
  
  select movie_id from genres_movies where genre_id = ( select id from genres where name = "Horror");
  describe ratings;
  
  select name, count(name) as summy from (
	select name from (select occupation_id from
		(select user_id from ratings where movie_id in 
			(select movie_id from genres_movies where genre_id =
				(select id from genres where name = "Horror")))
					as ratedHorror join users on ratedHorror.user_id = users.id)
						as allOccRatedHorror join occupations on allOccRatedHorror.occupation_id = occupations.id) as allOccs
							group by name;
                            
      -- creating the view                      
--  create view horrorRater as (select name, count(name) as summy from (
-- 	select name from (select occupation_id from
-- 		(select user_id from ratings where movie_id in 
-- 			(select movie_id from genres_movies where genre_id =
-- 				(select id from genres where name = "Horror")))
-- 					as ratedHorror join users on ratedHorror.user_id = users.id)
-- 						as allOccRatedHorror join occupations on allOccRatedHorror.occupation_id = occupations.id) as allOccs
-- 							group by name);

select name from horrorRater where summy = (select max(summy) from horrorRater);

