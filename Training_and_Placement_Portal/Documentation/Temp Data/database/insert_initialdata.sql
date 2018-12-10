INSERT INTO Branch (b_id,bname,hod) VALUES (branch_id.NEXTVAL,'CE','CKB');
INSERT INTO Branch (b_id,bname,hod) VALUES (branch_id.NEXTVAL,'IT','ABC');
----------------------------------------

INsert into userinfo (u_id,fname,mname,lname,mobile,password,email,dob,b_id,rollno,cpi,backlog,address,sequrity_q_a,role) VALUEs (to_char(sysdate,'yyyy')|| 'CE' || student_id.nextval,'brijedh','pradipbhai','savaliya','9876543210','asdfghjasdfghj','brijeshsa33@yahoo.com','31-MAR-1998','1','CE112',9.31,'false','asbdgcfdeg','1_red','student');


------------------------------------------------

INSERT INTO Company (c_id,cname,phone,email,website) VALUES (company_id.NEXTVAL,'Amazon','9876543210','amazon@gmail.com','amazon.com');
INSERT INTO Location (c_id,location) VALUES (company_id.CURRVAL,'banglore');
INSERT INTO Company (c_id,cname,phone,email,website) VALUES (company_id.NEXTVAL,'Google','9876543210','amazon@gmail.com','amazon.com');
INSERT INTO Location (c_id,location) VALUES (company_id.CURRVAL,'banglore');
INSERT INTO Company (c_id,cname,phone,email,website) VALUES (company_id.NEXTVAL,'Oracle','9876543210','amazon@gmail.com','amazon.com');
INSERT INTO Location (c_id,location) VALUES (company_id.CURRVAL,'banglore');

------------------------------------------------

INSERT INTO Schedule (s_id,c_id,package,visit_date,deadline,min_cpi,backlog,vacancy,hrname,description) VALUES (schedule_id.nextval,'1000',9.31,'19-OCT-2017','13-OCT-2017',7.5,'false',100,'acfx','description');
INSERT INTO Schedule (s_id,c_id,package,visit_date,deadline,min_cpi,backlog,vacancy,hrname,description) VALUES (schedule_id.nextval,'1001',9.31,'19-OCT-2017','13-OCT-2017',7.5,'false',100,'acfx','description');
INSERT INTO Schedule (s_id,c_id,package,visit_date,deadline,min_cpi,backlog,vacancy,hrname,description) VALUES (schedule_id.nextval,'1002',9.31,'19-OCT-2017','13-OCT-2017',7.5,'false',100,'acfx','description');


------------------------------------------------

INSERT INTO Notice (n_id,c_id,notice_date) VALUES (notice_id.NEXTVAL,'companyid','DATE');

------------------------------------------------

INSERT INTO  Register (r_id,u_id,s_id) VALUES (register_id.NEXTVAL,'2017CE101','1');
INSERT INTO  Register (r_id,u_id,s_id) VALUES (register_id.NEXTVAL,'2017CE101','2');
INSERT INTO  Register (r_id,u_id,s_id) VALUES (register_id.NEXTVAL,'2017CE101','3');

INSERT INTO Status (st_id,u_id,c_id,package,placed_date,placed) VALUES (status_id.NEXTVAL,'2017CE101','1001',9.31,'20-OCT-2017','true');

-------------------------------------------------

INSERT INTO Post (p_id,u_id,description,post_date) VALUES ();

-------------------------------------------------