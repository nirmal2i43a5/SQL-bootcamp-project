create view vw_GetPatientTransactionDetail 
as
select pat.Date as RegisterDate,bill.Date as BillDate from tbl_Patient pat--there is controversy in date in Patient and BIll so i use alias for field date field
join  tbl_Billing bill on pat.ID = bill.PatientId
join tbl_BillingDetails billd on bill.BillingID = billd.BillingID
join tbl_Services S on S.ServicesID = billd.ServicesID


select * from vw_GetPatientTransactionDetail;


-- pat.Date as ---alias for particular field 

-- pat.Date as alies_name bill.Date as alias_name2