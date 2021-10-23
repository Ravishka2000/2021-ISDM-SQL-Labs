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

