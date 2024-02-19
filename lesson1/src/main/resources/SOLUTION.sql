create table if not exists Student (id bigint NOT NULL AUTO_INCREMENT PRIMARY KEY, name varchar(50) not null, birthday date not null, group_number int not null);
create table if not exists Subject (id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, name varchar(50) not null, description varchar not null, grade int not null);
create table if not exists PaymentType (id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, name varchar(50) not null);
create table if not exists Payment (id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, type_id bigint,amount decimal, student_id bigint, payment_date TIMESTAMP, FOREIGN KEY (type_id) REFERENCES PaymentType(id), FOREIGN KEY (student_id) REFERENCES Student(id));
create table if not exists Mark (id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, student_id bigint, subject_id bigint, mark int, FOREIGN KEY (student_id) references Student(id), FOREIGN KEY (subject_id) references Subject(id));

