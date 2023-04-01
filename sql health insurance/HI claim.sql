create database dbp2;
use dbp2;
select * from health_insurance;

/*1.fetch the highest claim amount from health insurance claim*/
select max(claim) from health_insurance;

/*2. fetch the count of diabetic patients*/
select diabetic,count(*) from health_insurance 
group by diabetic;

/* 3.fetch the region where bmi is greater than 30*/
select  region from health_insurance
where bmi>30;

select * from health_insurance;

/* 4.fetch patientid of patient whose blood pressure greater than 80*/
select patientId from health_insurance
where bloodpressure>80;

/* 5.fetch patientId whose claim lies between 11000 and 1200*/
select patientId from health_insurance
where claim between 1100 and 1200;

/* 6.fetch the age group which has more diabetic patients*/
select age, count(*) as totalpatient from health_insurance where diabetic='yes'
group by age order by totalpatient desc limit 1 ;


select * from health_insurance;

/* 7.get the information from dataset who is more diabetic male or female*/
select gender,count(*) from health_insurance
where diabetic='yes'
group by gender;

/* 8.get the information from dataset who has more BP male or female*/
select gender, count(*) from health_insurance
where bloodpressure is not null
group by gender;


/*9. which region has more diabetic patients*/
select region, count(*)  as diabetic_count
from health_insurance
where diabetic='yes'
group by region
order by diabetic_count desc limit 1;

/*10. which region has more BP patients*/
select region, count(*) Bp from health_insurance
where bloodpressure>=140
group by region
order by Bp  desc;

