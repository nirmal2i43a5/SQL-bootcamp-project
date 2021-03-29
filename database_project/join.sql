
-- joining tbl_Student, tbl_Class, and tbl_Subject 
select Stu.Sname ,Cour.Cname, Cls.Cname, Sub.Sname
from tbl_Student Stu 
join tbl_Class Cls
on Stu.Class_id = Cls.Cid
join tbl_Subject Sub 
on Stu.Subject_id = Sub.Sid 
join tbl_Course Cour
on Stu.Course_id = Cour.Cid
where Stu.Sid = 14;