
create table tbl_Suppliers(
Sid int identity(1,1) primary key,
 SupplierCategoryName varchar(100),
  Saddress varchar(100),
  Semail varchar(100), 
  Sphone varchar(100),
  PAN varchar(100),
  isActive bit,
  EntryDate Datetime,
  Uid int FOREIGN KEY REFERENCES tbl_User(Uid));



insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate)
values('ABC_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate())
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC1_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),1)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC2_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),2)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC3_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),3)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC4_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),4)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC5_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),5)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC6_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),6)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC7_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),7)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC8_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),8)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC9_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),9)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC_10category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),10)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC11_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),11)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC12_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),12)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC12_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),13)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC13_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),14)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC14_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),15)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC15_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),16)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC16_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),17)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC17_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),18)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC18_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),19)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC19_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),20)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC20_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),21)
insert into tbl_Suppliers(SupplierCategoryName,Saddress, Semail,Sphone,PAN,isActive, EntryDate,Uid)
values('ABC21_category','Butwal','abc@gmail.com','9838287287','3387012738903',1,getdate(),22)







