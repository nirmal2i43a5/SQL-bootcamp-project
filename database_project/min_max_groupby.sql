select Max(Sid) from tbl_Student;

select  Subject_id, count(Subject_id) 
from tbl_Student group by Subject_id ;