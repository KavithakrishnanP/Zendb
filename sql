DB Model for Guvi Zen Class

create database zen;

use zen; 

create table users(
id integer PRIMARY KEY,
name text,
phone double,
email text,
batch varchar(10),
qualification text,
year_of_passing integer,
notice_period integer
);

create table attendance(
id integer PRIMARY KEY,
classes_attended integer,
classes_conducted integer,
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

create table classes(
id integer PRIMARY KEY,
class_date date,
topic text,
FOREIGN KEY (task_id) REFERENCES tasks(id),
solved boolean,
task_marks integer,
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

create table tasks(
id integer PRIMARY KEY,
task_name text,
frontend_url text,
backend_url text,
);

create table queries(
id integer PRIMARY KEY,
category text,
status text,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (mentor) REFERENCES mentors(id)
);

create table mentors(
id integer PRIMARY KEY,
name text,
email text
);
