select case 
when id%2=0 then id-1 
when id%2<>0 and id=(select count(1) from Seat) then id
else id+1 end id,student from Seat order by 1;
