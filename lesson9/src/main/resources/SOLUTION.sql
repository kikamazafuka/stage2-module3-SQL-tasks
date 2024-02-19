select * from student where id in (select student_id from mark group by student_id having AVG(mark) > 8);
select id, name from student where id in (select student_id from mark group by student_id having MIN(mark) > 7);
select id, name from student where id in (select student_id from payment where year(payment_date)=2019 group by student_id having count(id)>2);