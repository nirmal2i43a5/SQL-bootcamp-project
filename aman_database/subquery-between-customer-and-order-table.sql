select CusID, Username, [Password] ,FName, LName, Email, [Address]
from tbl_Customer
where CusID Not IN (select CusID from tbl_Order)