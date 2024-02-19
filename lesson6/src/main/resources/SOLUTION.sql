select * from payment where type_id=(SELECT id FROM PaymentType WHERE name = 'MONTHLY');
select * from mark where subject_id=(select id from subject where name='Art');
SELECT * from student where id IN (SELECT student_id FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'WEEKLY'));
select * from student where id in (select student_id from mark where subject_id=(select id from subject where name = 'Math'));