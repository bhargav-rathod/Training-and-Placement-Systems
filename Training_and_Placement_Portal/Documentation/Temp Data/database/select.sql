select * from userinfo where u_id = '?' and password = '?'; --validate user

select * from userinfo where fname='?' and mname='?' and lname='?';
select * from userinfo where rollno='?';  --search user

select * from company where cname='?'; --show company details

select * from schedules where visit_date > sysdate - 1;