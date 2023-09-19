select id,count(id) num from (select requester_id id from RequestAccepted
union all
select accepter_id id from RequestAccepted) tmp group by 1 order by 2 desc limit 1;
