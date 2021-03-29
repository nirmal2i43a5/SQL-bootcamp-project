
create database school_management_system;
use school_management_system;


select * from tbl_College;
create table tbl_College(
Cid int IDENTITY(1,1) primary key , --identity for auto increment
Cname varchar(50),
Caddress varchar(100), 
Cemail varchar(250),
Cphone varchar(10),
Cwebsite varchar(100), 
Cpan varchar(9),
logo binary
);



create table tbl_Course(
    Cid int identity(1,1) primary key,
    Cname varchar(100),
    Ctype varchar(100)
)


create table tbl_Class(
    Cid int identity(1,1) primary key,
    Cname varchar(100),
    Teacher_id int FOREIGN KEY REFERENCES tbl_Teacher(Tid),
    Course_id int FOREIGN KEY REFERENCES tbl_Course(Cid),
    Cdescription varchar(100),
    is_active bit,
)

create table tbl_Section(
    Sid int identity(1,1) primary key,
    Sname varchar(100),
    Scapacity int,
    Tid int FOREIGN KEY REFERENCES tbl_Teacher(Tid),
    Cid int FOREIGN KEY REFERENCES tbl_Class(Cid),
    Sdescription varchar(100),

)


create table  tbl_Student(
Sid int identity(1,1) primary key, 
Sname varchar(100),
 Semail varchar(100),
 Susername varchar(100),
  Spassword varchar(100),
  Saddress varchar(100), 
  Sphone varchar(10), 
  Sgender varchar(100), 
  Sdob Datetime, 
  Sreligion varchar(100), 
  Sroll_no varchar(10), 
  Sphoto binary,  
  is_active bit,
  Course_id int FOREIGN KEY REFERENCES tbl_Course(Cid),
  Class_id int FOREIGN KEY REFERENCES tbl_Class(Cid),
 Subject_id int FOREIGN KEY REFERENCES tbl_Subject(Sid),

  );


create table tbl_User(
Uid int identity(1,1) primary key, 
Uname varchar(100), 
Uemail varchar(100),
Uusername varchar(100),
Upassword varchar(100), 
Uaddress varchar(100),Sphone varchar(100),
Ugender varchar(100),
Udob Datetime, 
Ureligion varchar(100),
Uroll_no varchar(100),
Uphoto binary, 
is_active bit

);

create table  tbl_Teacher(
Tid int identity(1,1) primary key, 
Tname varchar(100),
Temail varchar(100),
Tusername varchar(100),
Tpassword varchar(100),
Taddress varchar(100), 
Tphone varchar(10), 
Tgender varchar(100), 
Tdob Datetime, 
Treligion varchar(100), 
Trollno varchar(10), 
Tphoto binary,  
is_active bit default 0);


create table tbl_Subject(
    Sid int identity(1,1) primary key,
    Sname varchar(100),
    Scode varchar(100),
    Tid int FOREIGN KEY REFERENCES tbl_Teacher(Tid),
    Class_id int FOREIGN KEY REFERENCES tbl_Class(Cid)

)

SP_RENAME 'tbl_Subject.Cid','Class_id'
alter table tbl_Student add JoinYear DATETIME;

alter table tbl_Teacher add JoinDate DATETIME;

-- adding foreign key with alter key words



