select user_id,concat(upper(left(name,1)),lower(substr(name,2))) name from Users order by 1;
