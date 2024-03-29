USE [master]
GO
/****** Object:  Database [school_management_system]    Script Date: 4/3/2021 9:07:27 PM ******/
CREATE DATABASE [school_management_system]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'school_management_system', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\school_management_system.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'school_management_system_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\school_management_system_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [school_management_system] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [school_management_system].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [school_management_system] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [school_management_system] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [school_management_system] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [school_management_system] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [school_management_system] SET ARITHABORT OFF 
GO
ALTER DATABASE [school_management_system] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [school_management_system] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [school_management_system] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [school_management_system] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [school_management_system] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [school_management_system] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [school_management_system] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [school_management_system] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [school_management_system] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [school_management_system] SET  ENABLE_BROKER 
GO
ALTER DATABASE [school_management_system] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [school_management_system] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [school_management_system] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [school_management_system] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [school_management_system] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [school_management_system] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [school_management_system] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [school_management_system] SET RECOVERY FULL 
GO
ALTER DATABASE [school_management_system] SET  MULTI_USER 
GO
ALTER DATABASE [school_management_system] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [school_management_system] SET DB_CHAINING OFF 
GO
ALTER DATABASE [school_management_system] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [school_management_system] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [school_management_system] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'school_management_system', N'ON'
GO
ALTER DATABASE [school_management_system] SET QUERY_STORE = OFF
GO
USE [school_management_system]
GO
/****** Object:  Table [dbo].[tbl_Class]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Class](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [varchar](100) NULL,
	[Teacher_id] [int] NULL,
	[Course_id] [int] NULL,
	[Cdescription] [varchar](100) NULL,
	[is_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Subject]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Subject](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](100) NULL,
	[Scode] [varchar](100) NULL,
	[Tid] [int] NULL,
	[Class_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Student]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Student](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](100) NULL,
	[Semail] [varchar](100) NULL,
	[Susername] [varchar](100) NULL,
	[Spassword] [varchar](100) NULL,
	[Saddress] [varchar](100) NULL,
	[Sphone] [varchar](10) NULL,
	[Sgender] [varchar](100) NULL,
	[Sdob] [datetime] NULL,
	[Sreligion] [varchar](100) NULL,
	[Sroll_no] [varchar](10) NULL,
	[Sphoto] [binary](1) NULL,
	[is_active] [bit] NULL,
	[Course_id] [int] NULL,
	[Class_id] [int] NULL,
	[Subject_id] [int] NULL,
	[College_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_GetStudent]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_GetStudent]
as
select stu.Course_id as Stu_Course_id, cls.Course_id as Cls_Course_id, 
stu.Sname,stu.Class_id, stu.Subject_id
from tbl_Student stu
join  tbl_Class cls on cls.Cid = stu.Class_id 
join tbl_Subject sub on   cls.Cid = sub.Class_id
GO
/****** Object:  Table [dbo].[tbl_College]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_College](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [varchar](50) NULL,
	[Caddress] [varchar](100) NULL,
	[Cemail] [varchar](250) NULL,
	[Cphone] [varchar](10) NULL,
	[Cwebsite] [varchar](100) NULL,
	[Cpan] [varchar](9) NULL,
	[logo] [binary](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Course]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Course](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [varchar](100) NULL,
	[Ctype] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Section]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Section](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](100) NULL,
	[Scapacity] [int] NULL,
	[Tid] [int] NULL,
	[Cid] [int] NULL,
	[Sdescription] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Teacher]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Teacher](
	[Tid] [int] IDENTITY(1,1) NOT NULL,
	[Tname] [varchar](100) NULL,
	[Temail] [varchar](100) NULL,
	[Tusername] [varchar](100) NULL,
	[Tpassword] [varchar](100) NULL,
	[Taddress] [varchar](100) NULL,
	[Tphone] [varchar](10) NULL,
	[Tgender] [varchar](100) NULL,
	[Tdob] [datetime] NULL,
	[Treligion] [varchar](100) NULL,
	[Trollno] [varchar](10) NULL,
	[Tphoto] [binary](1) NULL,
	[is_active] [bit] NULL,
	[College_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Uname] [varchar](100) NULL,
	[Uemail] [varchar](100) NULL,
	[Uusername] [varchar](100) NULL,
	[Upassword] [varchar](100) NULL,
	[Uaddress] [varchar](100) NULL,
	[Sphone] [varchar](100) NULL,
	[Ugender] [varchar](100) NULL,
	[Udob] [datetime] NULL,
	[Ureligion] [varchar](100) NULL,
	[Uroll_no] [varchar](100) NULL,
	[Uphoto] [binary](1) NULL,
	[is_active] [bit] NULL,
	[College_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Teacher] ADD  DEFAULT ((0)) FOR [is_active]
GO
ALTER TABLE [dbo].[tbl_Class]  WITH CHECK ADD FOREIGN KEY([Course_id])
REFERENCES [dbo].[tbl_Course] ([Cid])
GO
ALTER TABLE [dbo].[tbl_Class]  WITH CHECK ADD FOREIGN KEY([Teacher_id])
REFERENCES [dbo].[tbl_Teacher] ([Tid])
GO
ALTER TABLE [dbo].[tbl_Section]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[tbl_Class] ([Cid])
GO
ALTER TABLE [dbo].[tbl_Section]  WITH CHECK ADD FOREIGN KEY([Tid])
REFERENCES [dbo].[tbl_Teacher] ([Tid])
GO
ALTER TABLE [dbo].[tbl_Student]  WITH CHECK ADD FOREIGN KEY([Class_id])
REFERENCES [dbo].[tbl_Class] ([Cid])
GO
ALTER TABLE [dbo].[tbl_Student]  WITH CHECK ADD FOREIGN KEY([College_id])
REFERENCES [dbo].[tbl_College] ([Cid])
GO
ALTER TABLE [dbo].[tbl_Student]  WITH CHECK ADD FOREIGN KEY([Course_id])
REFERENCES [dbo].[tbl_Course] ([Cid])
GO
ALTER TABLE [dbo].[tbl_Student]  WITH CHECK ADD FOREIGN KEY([Subject_id])
REFERENCES [dbo].[tbl_Subject] ([Sid])
GO
ALTER TABLE [dbo].[tbl_Subject]  WITH CHECK ADD FOREIGN KEY([Class_id])
REFERENCES [dbo].[tbl_Class] ([Cid])
GO
ALTER TABLE [dbo].[tbl_Subject]  WITH CHECK ADD FOREIGN KEY([Tid])
REFERENCES [dbo].[tbl_Teacher] ([Tid])
GO
ALTER TABLE [dbo].[tbl_Teacher]  WITH CHECK ADD FOREIGN KEY([College_id])
REFERENCES [dbo].[tbl_College] ([Cid])
GO
ALTER TABLE [dbo].[tbl_User]  WITH CHECK ADD FOREIGN KEY([College_id])
REFERENCES [dbo].[tbl_College] ([Cid])
GO
/****** Object:  StoredProcedure [dbo].[getStudent]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getStudent](
@Sid int 
 )
AS BEGIN 
select * from tbl_Student where Sid=@Sid
END
GO
/****** Object:  StoredProcedure [dbo].[getSubjectCountFromStudent]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getSubjectCountFromStudent]
(
    @Subject_id int
)

AS BEGIN 

    select  @Subject_id, count(@Subject_id) from tbl_Student  group by Subject_id ;

END
GO
/****** Object:  StoredProcedure [dbo].[InsertValueIntoCollege]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertValueIntoCollege]
(

	@Cname varchar,
	@Caddress varchar,
	@Cemail varchar,
    @Cphone varchar,
	@Cwebsite varchar

)
AS BEGIN
	insert into tbl_College ( Cname, Caddress, Cemail, Cphone, Cwebsite)
	values ( @Cname, @Caddress, @Cemail, @Cphone, @Cwebsite)
END
GO
/****** Object:  StoredProcedure [dbo].[SearchStudent]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SearchStudent]
(
    @Sname varchar
)

AS BEGIN 

  select Sname from tbl_Student where @Sname like 'S%'

END
GO
/****** Object:  StoredProcedure [dbo].[SelectMaxStudent]    Script Date: 4/3/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectMaxStudent]
(
    @Sid int
)

AS BEGIN 

select Max(@Sid) from tbl_Student;

END
GO
USE [master]
GO
ALTER DATABASE [school_management_system] SET  READ_WRITE 
GO
