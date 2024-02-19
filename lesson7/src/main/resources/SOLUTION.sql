select * from mark where mark>6 order by mark desc;
select * from payment where amount<300 order by amount asc;
select * from paymenttype order by name;
select * from students order by name desc;
select * from student where id IN (SELECT student_id FROM Payment WHERE amount > 1000) ORDER BY birthday ASC;
