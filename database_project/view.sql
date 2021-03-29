

-- I have Course_id as Fk in tbl_Student and in tbl_Class.So,this bring conflict which can be solve with following alias
create view vw_GetStudent
as
select stu.Course_id as Stu_Course_id, cls.Course_id as Cls_Course_id, 
stu.Sname,stu.Class_id, stu.Subject_id
from tbl_Student stu
join  tbl_Class cls on cls.Cid = stu.Class_id 
join tbl_Subject sub on   cls.Cid = sub.Class_id


select Sname, Class_id, Stu_Course_id from vw_GetStudent 
