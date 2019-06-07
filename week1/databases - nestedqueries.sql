-- create database school;
-- use school;
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
use asda;
-- create table category (id int, category_name varchar(30), primary key (id));
--  insert into category values ("1", "drink"), ("2", "food");
-- select * from category;
-- create table sub_category (id int, category_id int, subcategory_name varchar(30),
-- primary key(id), foreign key (category_id) references category(id));
-- insert into sub_category values ("1", "1", "soft drinks"), ("2", "1", "alcohol"), ("3", "1", "juice"), ("4", "2", "snacks"), ("5", "2", "meals");
-- select * from sub_category;
-- create table product ( Pid int, SubCatID int, prod varchar(50), 
-- 	primary key(Pid), foreign key(SubCatID) references sub_category(id));
-- insert into product values ("1", "1", "Fanta"), ("2", "1", "Coke"), ("3", "1", "7Up"), 
-- 							("4", "2", "Wine"), ("5", "3", "Juice"), ("6", "4", "Twix"), 
--                             ("7", "4", "Kitkat"), ("8", "5", "Meal41");
-- select * from product;
 -- select category_id from sub_category where category_id in (select id from category where category_name = ("drink"));
 
 select prod from product where subcatID in (
 select id from sub_category where category_id in

(select id from category where category_name = "drink"));







  


 