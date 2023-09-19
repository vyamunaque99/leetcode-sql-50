select person_name from (select q1.turn,q1.person_name,q1.weight,sum(q2.weight) AS cumulative_consumption 
from Queue q1 inner join Queue q2 on q1.turn>=q2.turn group by 1 order by 1 desc) tmp where cumulative_consumption<=1000 limit 1;
