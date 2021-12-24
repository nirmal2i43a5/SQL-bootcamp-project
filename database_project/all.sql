
-- for join
select Stu.Sname ,Cour.Cname, Cls.Cname, Sub.Sname
from tbl_Student Stu 
join tbl_Class Cls
on Stu.Class_id = Cls.Cid
join tbl_Subject Sub 
on Stu.Subject_id = Sub.Sid 
join tbl_Course Cour
on Stu.Course_id = Cour.Cid
where Stu.Sid = 14;


-- for max min group

select Max(Sid) from tbl_Student;

select  Subject_id, count(Subject_id) 
from tbl_Student group by Subject_id ;




------------------------------- for procedure----------------------------------------


create proc InsertValueIntoCollege
(

	@Cname varchar,
	@Caddress varchar,
	@Cemail varchar,
    @Cphone varchar,
	@Cwebsite varchar

)
AS BEGIN
	insert into tbl_College ( Cname, Caddress, Cemail, Cphone, Cwebsite)
	values ( @Cname, @Caddress, @Cemail, @Cphone, @Cwebsite)
END


exec InsertValueIntoCollege @Cname = 'Virinchi',  @Caddress = 'Kumaripati',  @Cemail = 'virinchi@gmail.com',  @Cphone = '9812901818',  @Cwebsite = 'virinchi.edu.np'  


-- select * from tbl_College


-- create proc getStudent(
--  @Sid int 
--  )
--  AS BEGIN 
--  select * from tbl_Student where Sid=@Sid
--  END
 
--  exec getStudent 13

-- ---------------------Search------------------------

select Sname from tbl_Student where Sname like 'S%'



-- ---------------------For creating------------------------


create view vw_GetStudent
as
select stu.Course_id as Stu_Course_id, cls.Course_id as Cls_Course_id, 
stu.Sname,stu.Class_id, stu.Subject_id
from tbl_Student stu
join  tbl_Class cls on cls.Cid = stu.Class_id 
join tbl_Subject sub on   cls.Cid = sub.Class_id


select * from vw_GetStudent