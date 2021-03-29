create table tbl_College(
Cid int IDENTITY(1,1) primary key , --identity for auto increment
Cname varchar(50),
 Caddress varchar(100), 
 Cemail varchar(250),
 Cphone varchar(10),
  Cwebsite varchar(100), 
  Cpan varchar(9),
logo binary);

create table  tbl_Student(
Sid int identity(1,1) primary key, 
Sname varchar(100),
 Semail varchar(100),
 Susername varchar(100),
  Spassword varchar(100),
  Saddress varchar(100), 
  Sphone varchar(10), 
  Sgender varchar(100), 
  Sdob timestamp, 
  Sreligion varchar(100), 
  Sroll_no varchar(10), 
  Sphoto binary,  
  is_active bit default 0);

create table tbl_User(Uid int identity(1,1) primary key, Uname varchar(100), Uemail varchar(100), Uusername varchar(100), Upassword varchar(100), Uaddress varchar(100),Sphone varchar(100), Ugender varchar(100), Udob timeUtamp, Ureligion varchar(100), Uroll_no varchar(100), Uphoto binary, is_active bit default 0);
