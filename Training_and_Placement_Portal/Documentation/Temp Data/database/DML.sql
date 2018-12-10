INSERT INTO Branch (b_id,bname,hod) VALUES (branch_id.NEXTVAL,"branch_name","hod_name");

----------------------------------------



INSERT INTO UserInfo (fname,mname,lname,imageurl,mobile,email,dob,b_id,rollno,password,cpi,backlog,address,sequrity_q_a,role) VALUE ('values');

------------------------------------------------

INSERT INTO Company (c_id,cname,phone,email,website) VALUES (company_id.NEXTVAL,'Companyname','phone','email','website');
INSERT INTO Location (c_id,location) VALUES (company_id.CURRVAL,'location');

------------------------------------------------

INSERT INTO Schedule (s_id,c_id,package,visit_date,deadline,min_cpi,backlog,vacancy,hrname,description) VALUES ('all VALUE as per define');

------------------------------------------------

INSERT INTO Notice (n_id,c_id,notice_date) VALUES (notice_id.NEXTVAL,'companyid','DATE');

------------------------------------------------

INSERT INTO  Register (r_id,u_id,s_id) VALUES (register_id.NEXTVAL,'u_id','c_id');

CREATE OR REPLACE TRIGGER statusid
AFTER
INSERT ON Status
FOR EACH ROW
BEGIN
IF :NEW.placed = 'true' THEN
	UPDATE Register SET active = 'false' WHERE u_id = :NEW.u_id;
end if;
end;


INSERT INTO Status (st_id,u_id,c_id,package,placed_date,placed) VALUES (status_id.NEXTVAL,'remaining');

-------------------------------------------------

INSERT INTO Post (p_id,u_id,description,post_date) VALUES ();

-------------------------------------------------