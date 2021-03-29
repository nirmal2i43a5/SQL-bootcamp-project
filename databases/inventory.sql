create table tbl_Item(
Iid int identity(1,1) primary key, 
ItemCode varchar(5), 
ItemName varchar(20), 
ItemCategoryId int, --foreign key
Units varchar(10),
EntryDate Datetime, 
UserId int,--foreign key
SupplierId int, --foreign key
IsActive bit,
ItemPrice money
 );
 sp_help tbl_User;


create table tbl_Purchase(Pid int identity(1,1) primary key,ItemId int,Quantity int,SupplierId int,EntryDate Datetime, Price money, ExpiryDate Datetime,UserId int)
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

CREATE TABLE tbl_Suppliers(
Sid int identity(1,1) primary key,
 SupplierCategoryName varchar(100),
  Saddress varchar(100),
  Semail varchar(100), 
  Sphone varchar(100)
  PAN varchar(100),
  isActive bit,
  EntryDate Datetime,
  Uid int FOREIGN KEY(Uid) REFERENCES tbl_User(Uid),
  );
create table tbl_Category(Cid int identity(1,1) primary key, Cname varchar(100), Cdescription text);

insert into tbl_Item(Iid, ItemCode, ItemName, ItemCategoryId, Units, EntryDate, UserId, SupplierId, IsActive, ItemPrice) values()

insert into tbl_User (username,password) values('nirmal','admin123')

INSERT INTO tbl_Item(ItemCode, ItemName, ItemCategoryId, Units, EntryDate, UserId, SupplierId, IsActive, ItemPrice)
 VALUES(
    123,'Glass', 1,'Pcs','2020-01-01',1,1,0,120
    )


--Tables  

 --tbl_Category,(stationary,non,consumable)
 --tbl_Suppliers,(sid, suppliercompanyname, address, contact,email, pan, contact_person, contact_mobile, isactive, entrydate, userid)
 --tbl_User, 
 --tbl_Supplier,
 -- tbl_Purchase,(Pid, supplierid, itemid, costprice, quantity, total_amount, purchasedate, expiry date, userid)
 -- tbl_Sales, 

--
--procedure for select * from tbl_User;
 create procedure proc_User 
    AS 
    BEGIN
        select * from tbl_User
            END;


 create procedure GetUserList 
 (
     @RoleId int
 )
    AS 
    BEGIN
        select * from tbl_User where RoleId = @RoleId
            END;


--for executing procedure 
exec procedure name--it is like calling function
exec GetUserList
exec procedure name id --retrieve with respective id create


--for insert query
create procedure InsertItemDetails
(
    @Iid int,
    @ItemCode varchar(5),--datatype size should be same as that in already existing table
    @ItemName varcahar(50),
    @ItemBrand varchar(20),
    @ItemCategoryId int,
    @Units varchar(10),
    @EntryDate datetime,
    @UserId int,
    @SupplierId int,

    @IsActive bit,
    @ItemPrice money,
)
AS
BEGIN
INSERT INTO tbl_Item (Iid, ItemCode, ItemName, ItemCategoryId, Units, EntryDate,
 UserId, SupplierId, IsActive, ItemPrice) VALUES(@Iid, @ItemCode, @ItemName, @ItemCategoryId, @Units, @EntryDate,
 @UserId, @SupplierId, @IsActive, @ItemPrice))

exec InsertItemDetails 23, 322, 'Mobile','Samsung Brand', 'Pcs', 1,'get_date()' , 


create procedure InsertItemDetails(
 @Iid,
 @ItemCode varchar(100),
  @ItemName varchar(100), 
  @ItemCategoryId int,
   @Units varchar(20), 
   @EntryDate datetime, 
   @UserId int,
    @SupplierId int,
    @IsActive bit,
     @ItemPrice money
     )



