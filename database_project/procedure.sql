create proc getStudent(
 @Sid int 
 )
 AS BEGIN 
 select * from tbl_Student where Sid=@Sid
 END
 
 exec getStudent 13


 create proc getCollege(
 @Cid VARCHAR 
 )
 AS BEGIN 
 select * from tbl_College where Cid=@Cid
 END
 
exec getCollege 1





