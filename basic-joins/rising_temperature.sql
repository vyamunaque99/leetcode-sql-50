select w.id Id from Weather w inner join weather wy ON DATEDIFF(w.recordDate, wy.recordDate) = 1 and w.temperature>wy.temperature;
