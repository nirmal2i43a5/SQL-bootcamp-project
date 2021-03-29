-- to retrieve data of supplier from purchase table we use join blc supplierid is fk in purchase
--fk and pk is not mandatory to use join in some cases.


select * from tbl_Purchase;

 +  join + supplier_id #supplierid is in purchase table so use supplierid

select * from tbl_Supplier 

  + join+Itemid `#jun common xa tei based ma join laune

select * from 

Main query:
-----------
select * from tbl_Purchase P 
join tbl_Supplier S on S.Sid = P.SupplierId 
join tbl_Item I on I.Iid = P.Itemid

If i want next join then join start w
