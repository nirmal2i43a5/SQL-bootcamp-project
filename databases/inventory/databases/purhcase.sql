
create table tbl_Purchase(
    Pid int identity(1,1) primary key,
    ItemId int,--fk
    Quantity int,
    SupplierId int,--fk
    EntryDate Datetime,
    Price money,
    ExpiryDate Datetime,
    UserId int,
    Discount decimal(5,2),
    Vat decimal(5,2)
    
    
)
create table tbl_Purchase(
    Pid int identity(1,1) primary key,
    Itemid int FOREIGN KEY REFERENCES tbl_Item(Iid) ,
    Quantity int,
    SupplierId int FOREIGN KEY REFERENCES tbl_Suppliers(Sid),
    EntryDate Datetime,
    Price money,
    ExpiryDate Datetime,
    UserId int FOREIGN KEY REFERENCES tbl_User(Uid),
)

-- alter table tbl_User add  Uphone varchar(100);
insert into tbl_Purchase(ItemId, Quantity, SupplierId, EntryDate, Price, ExpiryDate, UserId) 
values(11,100,101,getdate(),100,'2020-10-11',1);



insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(12,100,102,getdate(),100,'2020-10-11',2);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(13,100,103,getdate(),100,'2020-10-11',2);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(14,100,104,getdate(),100,'2020-10-11',3);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(15,100,105,getdate(),100,'2020-10-11',4);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(16,100,106,getdate(),100,'2020-10-11',5);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(17,100,107,getdate(),100,'2020-10-11',6);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(18,100,108,getdate(),100,'2020-10-11',7);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(19,100,109,getdate(),100,'2020-10-11',8);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(20,100,110,getdate(),100,'2020-10-11',9);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(21,100,111,getdate(),100,'2020-10-11',10);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(22,100,112,getdate(),100,'2020-10-11',11);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(23,100,113,getdate(),100,'2020-10-11',12);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(24,100,114,getdate(),100,'2020-10-11',13);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(25,100,115,getdate(),100,'2020-10-11',14);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(26,100,116,getdate(),100,'2020-10-11',15);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(27,100,117,getdate(),100,'2020-10-11',16);
insert into tbl_Purchase(ItemId,Quantity,SupplierId,EntryDate,UserId) 
values(28,100,118,getdate(),100,'2020-10-11',17);



https://github.com/Pushparajkvp/school-management-application/tree/master/Database%20Script
