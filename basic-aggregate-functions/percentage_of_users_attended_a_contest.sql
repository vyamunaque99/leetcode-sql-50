select contest_id,round(count(contest_id)/(select count(1) from Users)*100,2) percentage from Register
group by 1 order by 2 desc,1 asc;
