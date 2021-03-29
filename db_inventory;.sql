-- drop table tbl_User;
-- select  * from sys.tables;
-- sp_help tbl_Category;
select * from tbl_Purchase;
alter table tbl_Purchase alter SupplierId add FOREIGN KEY(Sid) REFERENCES tbl_Suppliers(Sid)


select * from tbl_Purchase P 
join tbl_Suppliers S on S.Sid = P.SupplierId 
join tbl_Item I on I.Iid = P.ItemId--join with the existing data that come from above join


select * from tbl_Purchase P 
RIGHT JOIN tbl_Suppliers S on S.Sid = P.SupplierId 
RIGHT JOIN tbl_Item I on I.Iid = P.ItemId--join with the existing data that come from above join




