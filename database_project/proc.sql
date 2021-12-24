
create proc SearchStudent
(
    @Sname varchar
)

AS BEGIN 

  select Sname from tbl_Student where @Sname like 'S%'

END

exec SearchStudent 'S'

-- --------------------------------------------
create proc SelectMaxStudent
(
    @Sid int
)

AS BEGIN 

select Max(@Sid) from tbl_Student;

END

exec SelectMaxStudent 20

-- -----------------------------

create proc getSubjectCountFromStudent
(
    @Subject_id int
)

AS BEGIN 

    select  @Subject_id, count(@Subject_id) from tbl_Student  group by Subject_id ;

END

exec getSubjectCountFromStudent  1
