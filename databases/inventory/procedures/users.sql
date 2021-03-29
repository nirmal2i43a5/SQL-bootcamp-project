
 create procedure GetUserList 
 (
     @uid int
 )
    AS 
    BEGIN
        select * from tbl_User where Uid = @uid
            END;



exec GetUserList 1 