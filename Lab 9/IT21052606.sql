create table Course (
	CID char(6),
	Cname varchar(50),
	C_Description varchar(200),
	C_Fee int,
	constraint course_pk primary key (CID)
);

create table Student (
	SID char(10),
	Sname varchar(50),
	Address varchar(50),
	dob date,
	NIC char(10),
	CID char(6),
	constraint student_pk primary key (SID),
	constraint student_fk foreign key (CID) references Course(CID)
);

create table Module (
	Mcode char(6),
	Mname varchar(50),
	M_Description varchar(200),
	NoOfCredits int,
	constraint Module_pk primary key (Mcode)
);

create table Offers (
	CID char(6),
	Mcode char(6),
	Accadamic_year char(2),
	Semester int,
	constraint offers_pk primary key (CID,Mcode),
	constraint offers_cid_fk foreign key (CID) references Course(CID),
	constraint offers_mcode_fk foreign key (Mcode) references Module (Mcode)
);

select *
from Course

select *
from Student

insert into Course values('IT','Information Technology','The programme is designed for technically focused students who capabilities in programming','175000');
insert into Course values('SE','Software Engineering','Software engineering is the discipline of designing, creating and maintaining','185000');
insert into Course values('CSNE','Computer Systems And Network Engineering','The programme aims to provide students with the knowledge, skills, planning, and designing','155000');
insert into Course values('DS','Data Scinece','The meticulous curriculum focuses on the fundamentals of computer science, statistics, and applied mathematics','170000');

insert into Student values('CN18384756','Kamal','No122, Rose street, matale','1994-05-02','946785467v','CSNE');
insert into Student values('DS18234876','Pubudu','No678 , 3rd new lane, Maharahgama','1994-11-08','948763759v','DS');
insert into Student values('IT18234568','Ann','No12, Kings street, colombo','1996-11-11','961234587v','IT');
insert into Student values('SE19238567','Malith','No08, st.thomas street, Kandy','1992-12-20','922356785v','SE');

insert into Module values('SE3050','User Experience Engineering','subject under SE','3');
insert into Module values('IT1010','Introduction to Programming','subject under IT','4');
insert into Module values('IT2050','Computer Networks','subject under IT','4');
insert into Module values('IT3051','Fundamentals of Data Mining','subject under DS','4');

insert into Offers values('SE','SE3050','Y3','2');
insert into Offers values('IT','IT1010','Y1','2');
insert into Offers values('IT','IT2050','Y2','1');
insert into Offers values('DS','IT3051','Y3','2');









update Student
set Address = 'No15,Gamunupura,New Kandy Rd,Malabe'
where Sname = 'Ann'

delete from Offers



delete from Module
where Mname='User Experience Engineering'