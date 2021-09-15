create database ManagementSystem;

use ManagementSystem;

create table AdminPanel(Username varchar(20),
						Password varchar(28));

select* from AdminPanel;

create table Department(dept_code varchar(10),
						dept_name varchar(30),
						primary key(dept_name));

insert into Department values('11','CSE');
insert into Department values('12','EEE');
insert into Department values('13','CE');
insert into Department values('14','BBA');
insert into Department values('15','LLB');

select * from Department;


create table Student(std_id int,
					 std_name varchar(20),/*name*/
					 f_name varchar(20),
					 std_address varchar(45),/*address*/
					 contact_no int,
					 date_of_birth date,
					 primary key(std_id));
					

insert into Student values(1109001,'Tania','preTania','Cumilla',01153454,'2000-11-12');
insert into Student values(1109002,'Zerin','preZerin','America',01153454,'2000-01-13');
insert into Student values(1109003,'Sukti','preSukti','London',01153454,'2000-02-14');
insert into Student values(1109004,'Fardin','preFardin','Paris',01153454,'2000-03-15');
insert into Student values(1109005,'Rakib','preRakib','Noakhali',01153454,'2000-04-16');
insert into Student values(1209001,'Aklima','preAklima','Debbiddar',01153454,'2000-05-17');
insert into Student values(1209002,'Nasrin','preNasrin','Harisa',01153454,'2000-06-22');
insert into Student values(1209003,'Nikita','preNikita','Laksam',01153454,'2000-07-30');
insert into Student values(1209004,'Inzamam','preInzamam','Cumilla',01153454,'2000-08-13');
insert into Student values(1209005,'Eftay','preEftay','Bdesh',01153454,'2000-09-14');
insert into Student values(1309001,'Rakhee','preRakhee','Noakhali',01153454,'2000-10-16');
insert into Student values(1309002,'Abdullah','preAbdullah','Singapur',01153454,'2000-11-17');
insert into Student values(1309003,'Limu','preLimu','Italy',01153454,'2000-12-18');
insert into Student values(1309004,'Nahid','preNahid','Dhaka',01153454,'2000-01-19');
insert into Student values(1309005,'Zubaer','preZubaer','India',01153454,'2000-02-29');
insert into Student values(1409001,'Tanmoy','preTanmoy','Kotbari',01153454,'2000-03-13');
insert into Student values(1409002,'Forhad','Jamal','Mymensingh',01153454,'2000-04-12');
insert into Student values(1409003,'Asha','preAsha','Paris',01153454,'2000-05-22');
insert into Student values(1409004,'Tanvir','preTanvir','Chittagong',01153454,'2000-06-13');
insert into Student values(1409005,'Sakib','preSakib','Mugoltuli',01153454,'2000-07-16');
insert into Student values(1509001,'Ina','preIna','Cumilla',01153454,'2000-08-15');
insert into Student values(1509002,'Ratul','preRatul','Chadpur',01153454,'2000-09-15');
insert into Student values(1509003,'Risve','preRisve','Kishorgong',01153454,'2000-10-19');
insert into Student values(1509004,'Robin','preRobin','Chittagong',01153454,'2000-11-25');
insert into Student values(1509005,'Mehedi','preMehedi','Nanarbari',01153454,'2000-12-30');

UPDATE Student SET date_of_birth = '1999-12-30'  WHERE std_id = 1409002;

select * from Student;


create table Admission_info(std_id int,
							admitted_semester varchar(20),
							check(admitted_semester in('spring','fall')),
							year_of_admission int,
							dept_name varchar(30)
							foreign key(dept_name) references Department,
							foreign key(std_id) references Student);
							

insert into Admission_info values(1109001,'Spring',2019,'CSE');
insert into Admission_info values(1109002,'Spring',2019,'CSE');
insert into Admission_info values(1109003,'Spring',2019,'CSE');
insert into Admission_info values(1109004,'Spring',2019,'CSE');
insert into Admission_info values(1109005,'Spring',2019,'CSE');
insert into Admission_info values(1209001,'fall',2019,'EEE');
insert into Admission_info values(1209002,'fall',2019,'EEE');
insert into Admission_info values(1209003,'fall',2019,'EEE');
insert into Admission_info values(1209004,'fall',2019,'EEE');
insert into Admission_info values(1209005,'fall',2019,'EEE');
insert into Admission_info values(1309001,'Spring',2020,'CE');
insert into Admission_info values(1309002,'Spring',2020,'CE');
insert into Admission_info values(1309003,'Spring',2020,'CE');
insert into Admission_info values(1309004,'Spring',2020,'CE');
insert into Admission_info values(1309005,'Spring',2020,'CE');
insert into Admission_info values(1409001,'fall',2020,'BBA');
insert into Admission_info values(1409002,'fall',2020,'BBA');
insert into Admission_info values(1409003,'fall',2020,'BBA');
insert into Admission_info values(1409004,'fall',2020,'BBA');
insert into Admission_info values(1409005,'fall',2020,'BBA');
insert into Admission_info values(1509001,'Spring',2021,'LLB');
insert into Admission_info values(1509002,'Spring',2021,'LLB');
insert into Admission_info values(1509003,'Spring',2021,'LLB');
insert into Admission_info values(1509004,'Spring',2021,'LLB');
insert into Admission_info values(1509005,'Spring',2021,'LLB');

select * from Admission_info;
			
			
create table Course(course_code int,
					title varchar(30),
					level_term numeric(2,1),
					dept_name varchar(30),
					credit int,
					primary key(course_code,level_term),
					foreign key(dept_name) references Department);
				

insert into Course values(111,'ME',1.1,'CSE',12);
insert into Course values(112,'CSE',1.2,'CSE',15);
insert into Course values(113,'CE',2.1,'CSE',18);
insert into Course values(114,'English',2.2,'CSE',19);
insert into Course values(115,'Software',4.1,'CSE',25);
insert into Course values(121,'ME',1.1,'EEE',12);
insert into Course values(122,'CSE',1.2,'EEE',14);
insert into Course values(123,'CE',2.2,'EEE',16);
insert into Course values(124,'English',3.1,'EEE',10);
insert into Course values(125,'Software',4.1,'EEE',21);
insert into Course values(131,'ME',1.1,'CE',12);
insert into Course values(132,'CSE',1.2,'CE',15);
insert into Course values(133,'CE',2.2,'CE',18);
insert into Course values(134,'English',3.1,'CE',19);
insert into Course values(135,'MK',4.1,'CE',24);
insert into Course values(141,'MV',1.1,'BBA',10);
insert into Course values(142,'CSE',1.2,'BBA',11);
insert into Course values(143,'ECO',2.2,'BBA',12);
insert into Course values(144,'English',3.1,'BBA',13);
insert into Course values(145,'History',4.1,'BBA',15);
insert into Course values(151,'AI',1.1,'LLB',12);
insert into Course values(152,'KB',1.2,'LLB',13);
insert into Course values(153,'CE',2.2,'LLB',16);
insert into Course values(154,'English',3.1,'LLB',14);
insert into Course values(155,'AM',4.1,'LLB',15);

select * from Course;
				
				
create table Result(std_id int,
					course_code int,
					level_term numeric(2,1),
					cgpa numeric(3,2),
					exam_type varchar(10),/*final,referred,backlog*/
					check(exam_type in ('final','referred','backlog')),
					exam_date date,
					foreign key(std_id) references Student,
					foreign key(course_code,level_term) references Course);

alter table Result add course varchar(20);
					
insert into Result values(1109001,111,1.1,3.50,'final','2020-01-01');
insert into Result values(1109002,111,1.1,3.75,'final','2020-01-01');
insert into Result values(1109003,111,1.1,3.25,'final','2020-01-01');
insert into Result values(1109004,111,1.1,3.58,'final','2020-01-01');
insert into Result values(1109005,111,1.1,3.90,'final','2020-01-01');
insert into Result values(1109001,112,1.2,3.45,'final','2020-06-01');
insert into Result values(1109002,112,1.2,3.59,'final','2020-06-01');
insert into Result values(1109003,112,1.2,4.00,'final','2020-06-01');
insert into Result values(1109004,112,1.2,3.75,'final','2020-06-01');
insert into Result values(1109005,112,1.2,2.57,'final','2020-06-01');
insert into Result values(1109001,113,2.1,4.00,'final','2021-01-01');
insert into Result values(1109002,113,2.1,3.67,'final','2021-01-01');
insert into Result values(1109003,113,2.1,3.56,'final','2021-01-01');
insert into Result values(1109004,113,2.1,3.50,'final','2021-01-01');
insert into Result values(1109005,113,2.1,2.88,'final','2021-01-01');
insert into Result values(1109001,114,2.2,3.78,'final','2021-06-01');
insert into Result values(1109002,114,2.2,3.87,'final','2021-06-01');
insert into Result values(1109003,114,2.2,4.00,'final','2021-06-01');
insert into Result values(1109004,114,2.2,3.98,'final','2021-06-01');
insert into Result values(1109005,114,2.2,3.90,'final','2021-06-01');
insert into Result values(1209005,114,2.2,0.00,'referred','2021-01-01','CSE-201');
insert into Result values(1209004,114,2.2,3.00,'backlog','2021-01-01','EEE-101');
insert into Result values(1209002,114,2.2,0.00,'referred','2021-01-01','PHY-101');
insert into Result values(1309001,114,2.2,0.00,'referred','2021-06-01','ENGLISH-101');
insert into Result values(1309005,114,2.2,3.00,'backlog','2021-06-01','ALU-555');

select * from Result;

select std_id,course_code,cgpa,level_term from Result where level_term<=2.2;

delete from Result where std_id='1209005' or std_id='1209004' or std_id='1209002' or std_id='1309001' or std_id='1309005';


create table Session_clearance(std_id int,
								course_code int,
								level_term numeric(2,1),
								session_fee int,
								payment_amount int,
								payment_status varchar(20),
							    check(payment_status in ('partially paid','full paid','unpaid')),
								foreign key(std_id) references Student,
								foreign key(course_code,level_term) references Course);
							

insert into Session_clearance values(1109001,111,1.1,91000,91000,'full paid');
insert into Session_clearance values(1109002,111,1.1,91000,45000,'partially paid');
insert into Session_clearance values(1109003,111,1.1,91000,0,'unpaid');
insert into Session_clearance values(1109004,111,1.1,91000,50000,'partially paid');
insert into Session_clearance values(1109005,111,1.1,91000,91000,'full paid');
insert into Session_clearance values(1209001,121,1.1,91000,91000,'full paid');
insert into Session_clearance values(1209002,121,1.1,91000,45000,'partially paid');
insert into Session_clearance values(1209003,121,1.1,91000,0,'unpaid');
insert into Session_clearance values(1209004,121,1.1,91000,50000,'partially paid');
insert into Session_clearance values(1209005,121,1.1,91000,91000,'full paid');
insert into Session_clearance values(1309001,131,1.1,91000,91000,'full paid');
insert into Session_clearance values(1309002,131,1.1,91000,45000,'partially paid');
insert into Session_clearance values(1309003,131,1.1,91000,0,'unpaid');
insert into Session_clearance values(1309004,131,1.1,91000,50000,'partially paid');
insert into Session_clearance values(1309005,131,1.1,91000,91000,'full paid');
insert into Session_clearance values(1409001,141,1.1,91000,91000,'full paid');
insert into Session_clearance values(1409002,141,1.1,91000,45000,'partially paid');
insert into Session_clearance values(1409003,141,1.1,91000,0,'unpaid');
insert into Session_clearance values(1409004,141,1.1,91000,50000,'partially paid');
insert into Session_clearance values(1409005,141,1.1,91000,91000,'full paid');
insert into Session_clearance values(1509001,151,1.1,91000,91000,'full paid');
insert into Session_clearance values(1509002,151,1.1,91000,45000,'partially paid');
insert into Session_clearance values(1509003,151,1.1,91000,0,'unpaid');
insert into Session_clearance values(1509004,151,1.1,91000,50000,'partially paid');
insert into Session_clearance values(1509005,151,1.1,91000,91000,'full paid');

select * from Session_clearance;

select count(std_id),sum(session_fee-payment_amount) as Due from Session_clearance where payment_status='partially paid';

select std_id,level_term,cgpa from Result,sum(credit) as total_credit from Course group by level_term;


select Result.std_id,Course.level_term,avg(Result.cgpa) as cgpa,sum(Course.credit) as earned_credit
from Course inner join Result on Course.level_term = Result.level_term group by Course.level_term,Result.std_id;

select std_id,level_term,exam_type,course from Result where exam_type='referred'or exam_type='backlog' order by exam_type;

select dept_name, count(std_id) as total_student from Admission_info group by dept_name order by dept_name;

select std_id,std_name ,date_of_birth,datediff(yy,date_of_birth,getdate()) as age, case  
when (month(date_of_birth) = 3 and day (date_of_birth) >= 21) or (month(date_of_birth) = 4 and day (date_of_birth) <= 19) then 'Aries'
when (month(date_of_birth) = 4 and day (date_of_birth) >= 20) or (month(date_of_birth) = 5 and day (date_of_birth) <= 20) then 'Taurus'
when (month(date_of_birth) = 5 and day (date_of_birth) >= 21) or (month(date_of_birth) = 6 and day (date_of_birth) <= 20) then 'Gemini'
when (month(date_of_birth) = 6 and day (date_of_birth) >= 21) or (month(date_of_birth) = 7 and day (date_of_birth) <= 20) then 'Cancer'
when (month(date_of_birth) = 7 and day (date_of_birth) >= 21) or (month(date_of_birth) = 8 and day (date_of_birth) <= 20) then 'Leo'
when (month(date_of_birth) = 8 and day (date_of_birth) >= 21) or (month(date_of_birth) = 9 and day (date_of_birth) <= 20) then 'Virgo'
when (month(date_of_birth) = 9 and day (date_of_birth) >= 21) or (month(date_of_birth) = 10 and day (date_of_birth) <= 20) then 'Libra'
when (month(date_of_birth) = 10 and day (date_of_birth) >= 21) or (month(date_of_birth) = 11 and day (date_of_birth) <= 20) then 'Scorpio'
when (month(date_of_birth) = 11 and day (date_of_birth) >= 21) or (month(date_of_birth) = 12 and day (date_of_birth) <= 20) then 'Sagittarius'
when (month(date_of_birth) = 12 and day (date_of_birth) >= 21) or (month(date_of_birth) = 1 and day (date_of_birth) <= 20) then 'Capricorn'
when (month(date_of_birth) = 1 and day (date_of_birth) >= 21) or (month(date_of_birth) = 2 and day (date_of_birth) <= 20) then 'Aquarius'
when (month(date_of_birth) = 2 and day (date_of_birth) >= 21) or (month(date_of_birth) = 3 and day (date_of_birth) <= 20) then 'Pisces'
end 'HoroScope'
from Student;
