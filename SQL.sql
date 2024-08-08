-- Create Database
create database fitness_center_db;
use fitness_center_db;

-- Create and Initialize the tables
CREATE TABLE Members (
    id INT auto_increment PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);
CREATE TABLE WorkoutSessions (
    session_id INT auto_increment PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Task 1: Add member 'Jane Doe' and add her session
insert Members (name,age)
values ('Jane Doe',35);
insert Workoutsessions (session_date,session_time,activity)
values ('2024-8-8','7:30 Am','Cardio');

-- Task 2: Change session time
update workoutsessions
set session_time = '9:00 Pm'
where member_id = 1;

-- Task 3: Jane leaving the gym
delete from workoutsessions
where member_id = 1;
delete from members
where member_id = 1;



