select s.student_id,s.student_name,su.subject_name,count(e.subject_name) attended_exams from Students s cross join Subjects su left join Examinations e on e.subject_name=su.subject_name and s.student_id=e.student_id group by 1,2,3 order by 1,3;
