select Tid,Tname,Temail from tbl_Teacher 
where Tid  IN 
(select Tid from tbl_Teacher)

