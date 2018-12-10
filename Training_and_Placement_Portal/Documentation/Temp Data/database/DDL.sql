drop table Post;
drop table Location;
drop table Notice;
drop table Register;
drop table Status;
drop table Schedule;
drop table Company;
drop table UserInfo;
drop table Branch;
drop SEQUENCE branch_id;
drop SEQUENCE admin_id;
drop SEQUENCE student_id;
drop SEQUENCE post_id;
drop SEQUENCE company_id;
drop SEQUENCE schedule_id;
drop SEQUENCE notice_id;
drop SEQUENCE register_id;
drop SEQUENCE status_id;

---------------Branch Table-----------------
CREATE SEQUENCE branch_id INCREMENT BY 1;

CREATE TABLE Branch (
	b_id	VARCHAR2(10)		NOT NULL PRIMARY KEY,
	bname  	VARCHAR2(5)   	NOT NULL,
	hod    	VARCHAR2(20) 	NULL,
	CONSTRAINT bname_branch  CHECK (REGEXP_LIKE(bname, '^[A-Z]{2}$'))
);


-----------------User Table-----------------
CREATE SEQUENCE admin_id INCREMENT BY 1 Start with 101;
CREATE SEQUENCE student_id INCREMENT BY 1 start with 101;

CREATE TABLE UserInfo (
	u_id			VARCHAR(10)		NOT NULL PRIMARY KEY,
	fname			VARCHAR2(50)	NULL,
	mname			VARCHAR2(50)	NULL,
	lname			VARCHAR2(50)	NULL,
	imageurl		VARCHAR2(20)	NULL,
	mobile		    VARCHAR2(10)	NULL,
	email			VARCHAR2(50)	NULL,
	dob				DATE			NULL,
	b_id			VARCHAR2(10)		NULL,
	rollno			VARCHAR2(10)		NULL,
	password		VARCHAR2(50)	NULL,
	cpi				NUMBER(4,2)		NULL,
	backlog			VARCHAR2(10)		NULL,
	address		  	VARCHAR2(80)	NULL,
	sequrity_q_a  	VARCHAR2(20)	NULL,
	role			VARCHAR2(10)		NULL,
	active			VARCHAR2(10)		DEFAULT 'false',
	CONSTRAINT FK_bid_user FOREIGN KEY(b_id) REFERENCES Branch(b_id),
	CONSTRAINT fname_userinfo CHECK (REGEXP_LIKE(fname,'^[A-Za-z]{2,10}$')),
	CONSTRAINT mname_userinfo CHECK (REGEXP_LIKE(mname,'^[A-Za-z]{2,10}$')),
	CONSTRAINT lname_userinfo CHECK (REGEXP_LIKE(lname,'^[A-Za-z]{2,10}$')),
	CONSTRAINT mobile_userinfo CHECK    (REGEXP_LIKE(mobile,'^([1-9]{1}[0-9]{9})$')),
	CONSTRAINT password_userinfo CHECK  (REGEXP_LIKE(password,'^([a-zA-Z0-9@*#]{7,14})$')),
	CONSTRAINT email_userinfo CHECK (REGEXP_LIKE(email,'^([a-zA-Z0-9_\-\.]+)@((gmail.com)|(yahoo.com))$'))
);


---------------------------Post Table---------------------------
CREATE SEQUENCE post_id INCREMENT BY 1;

CREATE TABLE Post(
	p_id		NUMBER(6)	NOT NULL PRIMARY KEY,
	u_id		VARCHAR2(10) 	NULL,
	description	VARCHAR2(10) 	NULL,
	post_date	DATE 		NULL,
	CONSTRAINT FK_uid_Post FOREIGN KEY(u_id) REFERENCES UserInfo(u_id)
);


-----------------------------Company Table------------------------
CREATE SEQUENCE company_id INCREMENT BY 1 start with 1000;

CREATE TABLE Company(
	c_id	VARCHAR2(10) 		NOT NULL PRIMARY KEY,
	cname	VARCHAR(50) 	NULL,
	phone	VARCHAR2(12)	NULL,
	email	VARCHAR2(50)	NULL,
	website	VARCHAR2(50) 	NULL,
	CONSTRAINT cname_company CHECK (REGEXP_LIKE(cname,'^[A-Za-z]{2,19}$')),
	CONSTRAINT email_company CHECK (REGEXP_LIKE(email,'^([a-zA-Z0-9_\-\.]+)@((gmail.com)|(yahoo.com))$'))
);


----------------------------Location Table---------------------

CREATE TABLE Location(
	c_id		VARCHAR2(10) 		NOT NULL,
	location	VARCHAR2(100) 	NULL,
	CONSTRAINT FK_cid_location FOREIGN KEY(c_id) REFERENCES Company(c_id)
);


------------------------------Schedule Table-------------------
CREATE SEQUENCE schedule_id INCREMENT BY 1;

CREATE TABLE Schedule(
	s_id		VARCHAR2(10) 		NOT NULL PRIMARY KEY,
	c_id		VARCHAR2(10) 		NULL,
	package		NUMBER(4,2)		NULL,
	visit_date	DATE 			NULL,
	deadline	DATE 			NULL,
	min_cpi		NUMBER(4,2)		NULL,
	backlog		VARCHAR2(10) 		NULL,
	vacancy		INT 			NULL,
	hrname		VARCHAR2(20) 		NULL,
	description	VARCHAR(100) 	NULL,
	CONSTRAINT FK_cid_schedule FOREIGN KEY(c_id) REFERENCES Company(c_id),
	CONSTRAINT hrname_schedule CHECK (REGEXP_LIKE(hrname,'^[A-Za-z]{2,9}$'))
);


-----------------------------Notice Table-----------------------------
CREATE SEQUENCE notice_id INCREMENT BY 1;

CREATE TABLE Notice(
	n_id		VARCHAR2(10) 	NOT NULL PRIMARY KEY,
	u_id		VARCHAR2(10) 	NULL,
	notice_date	DATE 		NULL,
	CONSTRAINT FK_uid_notice FOREIGN KEY(u_id) REFERENCES UserInfo(u_id)
);


-------------------------------Register Table---------------------------
CREATE SEQUENCE register_id INCREMENT BY 1;

CREATE TABLE Register(
	r_id	NUMBER(6)	NOT NULL PRIMARY KEY,
	u_id	VARCHAR2(10) 	NULL,
	s_id	VARCHAR2(10) 	NULL,
	active	VARCHAR2(10) 	DEFAULT 'true',
	CONSTRAINT FK_uid_Registers FOREIGN KEY(u_id) REFERENCES UserInfo(u_id),
    CONSTRAINT FK_sid_Registers FOREIGN KEY(s_id) REFERENCES Schedule(s_id)
);


------------------------------Status Table------------------------
CREATE SEQUENCE status_id INCREMENT BY 1;

CREATE TABLE Status(
	st_id		NUMBER(6)	NOT NULL PRIMARY KEY,
	u_id		VARCHAR2(10) 	NULL,
	c_id		VARCHAR2(10) 	NULL,
	package		NUMBER(4,2)	NULL,
	placed_date	DATE 		NULL,
	placed		VARCHAR2(10) 	NULL,
	CONSTRAINT FK_uid_Status FOREIGN KEY(u_id) REFERENCES UserInfo(u_id),
    CONSTRAINT FK_cid_Status FOREIGN KEY(c_id) REFERENCES Company(c_id)
);
COMMIT;
-------------------------------End---------------------------
