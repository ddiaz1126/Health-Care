-- Create new schema and Use it

create schema HeartDisease;

use HeartDisease;

-- Heart1.csv was imported through Table Data Import Wizard to create the table, heart1.

show tables;

select * from heart1;


-- Visualize count for each sex on whether they had a heart attack or not

select sex, target, count(*) as count
from heart1
group by sex, target;

-- Find Averages of Resting Blood Pressure and Cholesterol categorized by Sex and Target

select target, sex, avg(trestbps) as avg_resting_bp, avg(chol) as avg_cholesterol
from heart1
group by target, sex;

-- Descriptive Statistics on Age in groups of Target

select target,
	count(*) as count,
    avg(age) as average,
    min(age) as minimum,
    max(age) as maximum,
    std(age) as standard_deviation
from heart1
group by target;

-- Maximum Heart Rate per Heart Attack (Target)

select target, avg(thalach) as average_max_hr
from heart1
group by target;


-- New Table for just Individuals who Had a Heart Attack

create table heart_attack_group
select *
from heart1
where target = 1;

select * from heart_attack_group;

select
	min(age) as min_value,
    max(age) as max_value,
    avg(age) as mean,
    std(age) as std
from heart1;    

-- New Table for Individuals who did not have a Heart Attack

create table no_heart_attack_group
select *
from heart1
where target = 0;

select * from no_heart_attack_group;

select
	min(thalach) as min_value,
    max(thalach) as max_value,
    avg(thalach) as mean,
    std(thalach) as std
from heart1;



