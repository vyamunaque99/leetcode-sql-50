select name results from (select name,count(rating) from Users u inner join MovieRating mr on u.user_id=mr.user_id group by 1 order by 2 desc,1 asc limit 1) tmp
union all
select title results from (select m.title,avg(rating) from Movies m inner join MovieRating mr on m.movie_id=mr.movie_id where year(created_at)=2020 and month(created_at)=02 group by 1 order by 2 desc,1 asc limit 1) tmp;
