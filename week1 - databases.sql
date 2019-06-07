-- create database school;
use school;
-- create table pupils (pupil_id int, first_name varchar(30), parent_no int, primary key (pupil_id));
-- create table grades (grade_id int, pupil_id int, topic varchar(50), marks int, 
-- 	primary key (grade_id), 
--     foreign key (pupil_id) references pupils(pupil_id));
--  insert into pupils values
--  ("1", "Chris", "0795000000"), ("2", "Danny", "0797000000"), ("3", "Johnny", "0770000000"), ("4", "Al", "0700000000"), ("5", "Adrian", "0740000000");   
-- select * from pupils;
-- insert into grades (grade_id, pupil_id, topic, marks) values 
-- 	("1", "1", "maths", "70"), ("2", "1", "physics", "40"), ("3", "1", "chem", "100"), ("4", "2", "physics", "30"),
--     ("5", "2", "chem", "40"), ("6", "3", "physics", "20"), ("7", "3", "chem", "10");
--  update grades set marks = 45 where grade_id = 1;
-- update grades set marks = 55 where grade_id = 2;
-- update grades set marks = 60 where grade_id = 3;
--  select * from grades;

-- select first_name from pupils where first_name like 'A%';
-- select first_name from pupils where first_name like '%N%';
-- select first_name from pupils where pupil_id > 2 and pupil_id < 4;
-- select * from pupils where first_name in ("Al", "danny");
-- insert into pupils (pupil_id, first_name) values ("6", "Hugo");
-- select * from pupils;
 -- select * from pupils where parent_no is null;
-- select topic, marks/60*100 as percentage from grades;

--  select marks from grades where pupil_id = (select pupil_id from pupils where first_name = "Chris");
-- select topic, marks from grades where pupil_id in (select pupil_id from pupils where first_name like '%y');

-- Asda exercise
-- create database asda;
-- create table category (id int, category_name varchar(30), primary key (id));
insert into category values ("1", "drink"), ("2", "food");

  


 