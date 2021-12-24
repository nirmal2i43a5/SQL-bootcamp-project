



insert into tbl_College(Cname,Caddress,Cemail,Cphone,Cwebsite,Cpan) 
values
('Virinchi1','Kumaripati','virinchi1@gmail.com','9812901818','virinchicollge.edu.np','1929384'),
('Patan1','Pulchowk','patan1@gmail.com','9812901818','patan.edu.np','1929384'),
('Virinchi2','Kumaripati','virinchi2@gmail.com','9812901818','virinchicollge.edu.np','1929384'),
('Patan2','Pulchowk','patan2@gmail.com','9812901818','patan.edu.np','1929384'),
('Virinchi3','Kumaripati','virinchi3@gmail.com','9812901818','virinchicollge.edu.np','1929384'),
('Patan3','Pulchowk','patan3@gmail.com','9812901818','patan.edu.np','1929384'),
('Virinchi4','Kumaripati','virinchi4@gmail.com','9812901818','virinchicollge.edu.np','1929384'),
('Patan4','Pulchowk','patan4@gmail.com','9812901818','patan.edu.np','1929384'),
('Virinchi5','Kumaripati','virinchi5@gmail.com','9812901818','virinchicollge.edu.np','1929384'),
('Patan5','Pulchowk','patan5@gmail.com','9812901818','patan.edu.np','1929384'),
('Virinchi4','Kumaripati','virinchi4@gmail.com','9812901818','virinchicollge.edu.np','1929384'),
('Patan4','Pulchowk','patan4@gmail.com','9812901818','patan.edu.np','1929384'),
('Virinchi6','Kumaripati','virinchi6@gmail.com','9812901818','virinchicollge.edu.np','1929384'),
('Patan6','Pulchowk','patan6@gmail.com','9812901818','patan.edu.np','1929384')

insert into tbl_Course(Cname)values('Science'),('Commerce'),('HM')

insert into tbl_Teacher(Tname, Temail,Tusername,Tpassword, Taddress, Tgender, Tdob, Treligion, Trollno)
values
('Nirmal Pandey','nirmalpandey1@gmail.com','nirmal7','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal2 Pandey','nirmalpandey2@gmail.com','nirmal8','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal3 Pandey','nirmalpandey3@gmail.com','nirmal70','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal4 Pandey','nirmalpandey4@gmail.com','nirmal71','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal5 Pandey','nirmalpandey5@gmail.com','nirmal72','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal6 Pandey','nirmalpandey6@gmail.com','nirmal73','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal7 Pandey','nirmalpandey7@gmail.com','nirmal74','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal8 Pandey','nirmalpandey8@gmail.com','nirmal76','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal9 Pandey','nirmalpandey9@gmail.com','nirmal75','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal10 Pandey','nirmalpandey10@gmail.com','nirmal77','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal11 Pandey','nirmalpandey11@gmail.com','nirmal78','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal12 Pandey','nirmalpandey12@gmail.com','nirmal79','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal13 Pandey','nirmalpandey13@gmail.com','nirmal80','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('Nirmal14 Pandey','nirmalpandey14@gmail.com','nirmal81','admin123','9838281282','Male','2056-07-08','Hindu','1')


insert into  tbl_Class(Cname, Teacher_id, Course_id)
values
('One','1','1'),('Two','2','2'),('Three','4','2'),('Four','5','1'),('FIve','1','2'),('Six','1','2'),('Seven','1','3')

insert into tbl_Section(Sname, Scapacity, Tid, Cid)
values
('Section-A','100','1','1'),('Section-B','50','1','2'),('Section-C','80','4','1')
('Section-D','75','5','3'),('Section-E', '65','6','2')



insert into tbl_Subject(Sname, Scode, Tid, Cid)
values
('Physics','C301','1','1'),('Math','M301','2','1'),('Chemistry','CM301','3','1'),
('HM','C301','4','2'),('Commerce','C301','5','4')

insert into tbl_Student(Sname, Semail,Susername,Spassword, Saddress, Sgender, Sdob, Sreligion, Sroll_no,Course_id,Class_id,Subject_id)
values
('Student Pandey','Studentpandey1@gmail.com','Student7','admin123','Butwal','Male','2056-07-08','Hindu','1','1','1','1'),
('Student2 Pandey','Studentpandey2@gmail.com','Student8','admin123','Butwal','Male','2056-07-08','Hindu','2','1','2','2'),
('Student3 Pandey','Studentpandey3@gmail.com','Student70','admin123','Butwal','Male','2056-07-08','Hindu','3','2','1','1'),
('Student4 Pandey','Studentpandey4@gmail.com','Student71','admin123','Butwal1','Male','2056-07-08','Hindu','4','1','3','1'),
('Student5 Pandey','Studentpandey5@gmail.com','Student72','admin123','Butwal1','Male','2056-07-08','Hindu','5','2','4','1'),
('Student6 Pandey','Studentpandey6@gmail.com','Student73','admin123','Butwal1','Male','2056-07-08','Hindu','6','1','3','2'),
('Student7 Pandey','Studentpandey7@gmail.com','Student74','admin123','Butwal1','Male','2056-07-08','Hindu','7','1','2','3'),
('Student8 Pandey','Studentpandey8@gmail.com','Student76','admin123','Butwal1','Male','2056-07-08','Hindu','8','1','4','2'),
('Student9 Pandey','Studentpandey9@gmail.com','Student75','admin123','Butwal1','Male','2056-07-08','Hindu','9','1','1','1'),
('Student10 Pandey','Studentpandey10@gmail.com','Student77','admin123','Butwal1','Male','2056-07-08','Hindu','10','1','2','1'),
('Student11 Pandey','Studentpandey11@gmail.com','Student78','admin123','Butwal1','Male','2056-07-08','Hindu','11','1','5','3'),
('Student12 Pandey','Studentpandey12@gmail.com','Student79','admin123','Butwal1','Male','2056-07-08','Hindu','12','2','4','2'),
('Student13 Pandey','Studentpandey13@gmail.com','Student80','admin123','Butwal1','Male','2056-07-08','Hindu','13','3','2','1'),
('Student14 Pandey','Studentpandey14@gmail.com','Student81','admin123','Butwal1','Male','2056-07-08','Hindu','14','1','2','2')



insert into tbl_User(Uname, Uemail,Uusername,Upassword, Uaddress, Ugender, Udob, Ureligion, Uroll_no)
values
('User Pandey','Userpandey1@gmail.com','User7','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User2 Pandey','Userpandey2@gmail.com','User8','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User3 Pandey','Userpandey3@gmail.com','User70','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User4 Pandey','Userpandey4@gmail.com','User71','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User5 Pandey','Userpandey5@gmail.com','User72','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User6 Pandey','Userpandey6@gmail.com','User73','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User7 Pandey','Userpandey7@gmail.com','User74','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User8 Pandey','Userpandey8@gmail.com','User76','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User9 Pandey','Userpandey9@gmail.com','User75','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User10 Pandey','Userpandey10@gmail.com','User77','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User11 Pandey','Userpandey11@gmail.com','User78','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User12 Pandey','Userpandey12@gmail.com','User79','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User13 Pandey','Userpandey13@gmail.com','User80','admin123','9838281282','Male','2056-07-08','Hindu','1'),
('User14 Pandey','Userpandey14@gmail.com','User81','admin123','9838281282','Male','2056-07-08','Hindu','1')











