DELETE FROM student WHERE groupnumber >= 4;
DELETE FROM student WHERE id IN (SELECT student_id FROM Mark WHERE mark < 4);
DELETE FROM paymenttype WHERE name = 'Daily';
DELETE FROM mark WHERE mark < 7;