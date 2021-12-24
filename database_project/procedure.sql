-- create proc getStudent(
--  @Sid int 
--  )
--  AS BEGIN 
--  select * from tbl_Student where Sid=@Sid
--  END
 
--  exec getStudent 13


--  create proc getCollege(
--  @Cid VARCHAR 
--  )
--  AS BEGIN 
--  select * from tbl_College where Cid=@Cid
--  END
 
-- exec getCollege 1


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

-- drop proc InsertValueIntoCollege

-- SET IDENTITY_INSERT tbl_College OFF  in case of explicit value error
exec InsertValueIntoCollege @Cname = 'Virinchi',  @Caddress = 'Kumaripati',  @Cemail = 'virinchi@gmail.com',  @Cphone = '9812901818',  @Cwebsite = 'virinchi.edu.np'  
-- select * from tbl_College
