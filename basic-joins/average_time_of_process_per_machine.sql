select a.machine_id,round(avg(a2.timestamp-a.timestamp),3) processing_time
from Activity a inner join Activity a2 on a.machine_id=a2.machine_id and a.process_id=a2.process_id and a.activity_type='start' and a2.activity_type='end' group by 1;
