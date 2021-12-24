
 select Sname, (select Cname from tbl_Class where Cid = stu.Class_id ) 
 where Sid > 20  from tbl_Student;