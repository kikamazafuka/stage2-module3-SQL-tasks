insert into student (name, birthday, groupnumber) VALUES ('John', '2000-01-01', 1), ('Chris', '2000-02-02', 1), ('Carl', '2000-03-03', 1), ('Oliver', '2001-04-04', 2), ('James', '2001-05-05', 2), ('Lucas', '2001-06-06', 2), ('Henry', '2002-07-07', 2), ('Jacob', '2003-08-08', 3), ('Logan', '2003-09-09', 3), ('Ilona', '2003-08-08', 4), ('Markus', '2003-08-08', 5);
insert into subject (name, description, grade) VALUES ('Art', 'Art and music for 1 grade', 1), ('Music', 'Art and music for 1 grade', 1), ('Geography', 'Geography and history for 2 grade', 2), ('History', 'Geography and history for 2 grade', 2), ('PE', 'PE and math for 3 grade', 3), ('Math', 'PE and math for 3 grade', 3), ('Science', 'Science for 4 grade', 4), ('IT', 'IT for 4 grade', 4), ('Subject1', 'Subject1 for 5 grade', 5), ('Subject2', 'Subject2 for 5 grade', 5);
insert into paymenttype (name) values ('DAILY'), ('WEEKLY'), ('MONTHLY');
insert into payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 100.00, '2024-02-19 12:00:00', (SELECT id FROM Student WHERE name = 'John')), ((SELECT id FROM PaymentType WHERE name = 'MONTHLY'), 250.00, '2024-02-19 12:00:00', (SELECT id FROM Student WHERE name = 'Oliver')), ((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 120.00, '2024-02-19 12:00:00', (SELECT id FROM Student WHERE name = 'Henry')), ((SELECT id FROM PaymentType WHERE name = 'DAILY'), 20.00, '2024-02-19 12:00:00', (SELECT id FROM Student WHERE name = 'James')), ((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 150.00, '2026-02-19 12:00:00', (SELECT id FROM Student WHERE name = 'John'));
insert into mark (student_id, subject_id, mark) VALUES ((SELECT id FROM Student WHERE name = 'Chris'), (SELECT id FROM Subject WHERE name = 'Art'), 8), ((SELECT id FROM Student WHERE name = 'Oliver'), (SELECT id FROM Subject WHERE name = 'History'), 5), ((SELECT id FROM Student WHERE name = 'James'), (SELECT id FROM Subject WHERE name = 'Geography'), 9), ((SELECT id FROM Student WHERE name = 'Jacob'), (SELECT id FROM Subject WHERE name = 'Math'), 4), ((SELECT id FROM Student WHERE name = 'Logan'), (SELECT id FROM Subject WHERE name = 'PE'), 9);


