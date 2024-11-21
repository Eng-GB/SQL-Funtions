use GB;

# Functions of MySQL 
select * from students ; 
select concat(name, ' ',tell,  ' ',sex) as info , birth res_id from students;

select upper(name) , tell, sex from students;
select lower(name) , tell, sex from students;


select concat("Name: ",name," Dhashay: " , birth) Info, tell, sex from students where sex='female';

select concat("Name: ",lpad(name,20,".")) Magac from students;
select  lpad(sex, 25,"??") from students;
select concat('Sex: ', lpad(sex,25,"  ")) from students;

select concat("Name: ",rpad(name,40,".")) Magac from students;


select substring(name,1,2) Magac, tell,sex, birth from students;

# Time and Date

select curdate() tariikh, curtime() saacad,now();

select now();

select curdate() Date;

select curtime() Time;

select date(now());

select time(now());

#--------------------------------joining:

select name,tell,sex, district,village,area from address a join students s on a.add_id=s.add_id;

select name ,tell, sex , res_name, res_tell from responsible r join students s on r.res_id=s.id;

select name,tell,sex, birth, concat(district, ' ', village,' ', area) deegaan, concat(res_name,' ', res_tell ) resposible
from address a, students s, responsible r where  a.add_id=s.id and r.res_id=s.id;


