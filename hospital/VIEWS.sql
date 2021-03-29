1.There is no update delete in views it use only select
2.Maximum use in reporting case
3.instead of join use views for joining multiple tables
4.precompiled
5.Column name should be unique in views so use alias for dif field
6.use this when using multiple join is mandatory

-- syntax:
create view <view_name> AS query;


create view vw_GetPatientTransactionDetail 
as

select pat.Date as RegisterDate,bill.Date as BillDate from tbl_Patient pat--there is controversy in date in Patient and BIll so i use alias for field date field
join  tbl_Billing bill on pat.ID = bill.PatientId
join tbl_BillingDetails billd on bill.BillingID = billd.BillingID
join tbl_Services S on S.ServicesID = billd.ServicesID

select * from vw_GetPatientTransactionDetail;


-- pat.Date as ---alias for particular field 

-- pat.Date as alies_name bill.Date as alias_name2
--  change this logic to views
 ------------------------------



--for virtual table
create proc GetPatientVisitByDateRange(
    @Fromdate datetime
    @ToDate datetime
)

AS
BEGIN
    select * from vw where date between   @Fromdate to @ToDate
END