select * from payment where amount>=500;
select * from student where dateadd('YEAR', 20, current_date) < birthday;
SELECT * FROM Student WHERE groupnumber = 10 AND dateadd('YEAR', 20, current_date) > birthday;
SELECT * FROM Student WHERE name = 'Mike' OR groupnumber IN (4, 5, 6);
SELECT * FROM Payment WHERE payment_date < dateadd('MONTH', -8, current_date);
SELECT * FROM Student WHERE name LIKE 'A%';
SELECT * FROM Student WHERE (name = 'Roxi' AND groupnumber = 4) OR (name = 'Tallie' AND groupnumber = 9);