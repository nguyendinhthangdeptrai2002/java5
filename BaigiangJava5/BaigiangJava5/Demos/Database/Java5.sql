USE [master]
GO
/****** Object:  Database [Java5]    Script Date: 6/28/2021 10:57:01 AM ******/
CREATE DATABASE [Java5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Java5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Java5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Java5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Java5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Java5] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Java5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Java5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Java5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Java5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Java5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Java5] SET ARITHABORT OFF 
GO
ALTER DATABASE [Java5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Java5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Java5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Java5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Java5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Java5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Java5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Java5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Java5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Java5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Java5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Java5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Java5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Java5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Java5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Java5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Java5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Java5] SET RECOVERY FULL 
GO
ALTER DATABASE [Java5] SET  MULTI_USER 
GO
ALTER DATABASE [Java5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Java5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Java5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Java5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Java5] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Java5', N'ON'
GO
ALTER DATABASE [Java5] SET QUERY_STORE = OFF
GO
USE [Java5]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Java5]
GO
/****** Object:  Table [dbo].[Majors]    Script Date: 6/28/2021 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Majors](
	[Id] [char](3) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Majors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 6/28/2021 10:57:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Mark] [float] NOT NULL,
	[Gender] [bit] NOT NULL,
	[Birthday] [date] NOT NULL,
	[MajorId] [char](3) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/28/2021 10:57:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'app', N'ung dung phan mem')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'DOM', N'Digital & Online Marketing...')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'MAR', N'Marketing và bán hàng')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'MOB', N'Lập trình trên điện thoại di động')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'MUL', N'Mỹ thuật đa phương tiện')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'PRE', N'PR và tổ chức sự kiện')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'WEB', N'Thiết kế trang web')
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (1, N'HUỲNH MINH TUẤN', 7.74, 1, CAST(N'1985-11-10' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (4, N'NGUYỄN ĐỨC CHIẾN', 0, 1, CAST(N'1976-05-06' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (5, N'TÔ CHÍ HẢI', 4.56, 1, CAST(N'1973-10-03' AS Date), N'PRE')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (6, N'VŨ QUỐC AN', 1.71, 1, CAST(N'1975-08-09' AS Date), N'DOM')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (7, N'LÊ TIẾN ĐẠT', 0.48, 1, CAST(N'1993-11-07' AS Date), N'PRE')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (8, N'PHẠM ĐỨC TUẤN', 8.02, 1, CAST(N'1979-10-25' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (9, N'HUỲNH THANH HUY', 1.21, 1, CAST(N'1980-01-01' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (12, N'TRẦN THẾ PHƯỚC', 7.65, 1, CAST(N'1979-06-07' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (14, N'LÊ MINH TÚ', 6.61, 1, CAST(N'1979-10-23' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (15, N'NGUYỄN HOÀNG NHÂN', 9.17, 1, CAST(N'1981-11-18' AS Date), N'WEB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (17, N'LÊ NGUYỄN TRỌNG HỮU', 7.29, 1, CAST(N'1980-03-28' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (18, N'NGÔ ANH TÚ', 2.04, 1, CAST(N'1978-11-02' AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (19, N'NGUYỄN VĂN QUANG', 0, 1, CAST(N'1972-03-25' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (20, N'NGUYỄN VĂN LINH', 8.92, 1, CAST(N'1986-04-28' AS Date), N'PRE')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (21, N'HỒ TRỌNG TÂM', 8.91, 1, CAST(N'1986-02-20' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (22, N'NGUYỄN TRẦN MINH MẪN', 0, 1, CAST(N'1993-11-03' AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (23, N'HOÀNG CÔNG DY', 8.48, 1, CAST(N'1980-11-14' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (25, N'PHẠM ĐÌNH QUỐC AN', 1.89, 1, CAST(N'1983-08-01' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (26, N'PHẠM HOÀI THƯƠNG', 9.09, 1, CAST(N'1979-09-22' AS Date), N'DOM')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (27, N'NGUYỄN MINH DUYÊN', 9.34, 1, CAST(N'1976-01-14' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (28, N'NGUYỄN PHƯỚC LỘC', 6.16, 1, CAST(N'1989-01-25' AS Date), N'DOM')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (29, N'TRƯƠNG MINH TRÍ', 8.14, 1, CAST(N'1971-11-13' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (30, N'VÒNG TUẤN XƯƠNG', 7.26, 1, CAST(N'1993-12-05' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (32, N'HỒ XUÂN HUY', 6.1, 1, CAST(N'1987-01-11' AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (33, N'LÊ SỸ THÀNH', 6.34, 1, CAST(N'1991-05-23' AS Date), N'WEB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (34, N'TRẦN TƯỜNG DUY', 8.09, 1, CAST(N'1991-05-28' AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (35, N'NGUYỄN TRẦN PHÚ', 6.3, 1, CAST(N'1982-09-17' AS Date), N'DOM')
SET IDENTITY_INSERT [dbo].[Students] OFF
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02004', N'PS02004', N'TRIỆU QUỐC DUY', N'PS02004.png', N'PS02004@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02123', N'PS02123', N'TÔ CHÍ HẢI', N'PS02123.png', N'PS02123@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02875', N'PS02875', N'VÕ THỊ TUYẾT NGÂN', N'PS02875.png', N'PS02875@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02902', N'PS02902', N'GIANG MINH MẪN', N'PS02902.png', N'PS02902@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02939', N'PS02939', N'LÊ NGUYÊN KHÁNH', N'PS02939.png', N'PS02939@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02970', N'PS02970', N'LƯƠNG TRỌNG QUÍ', N'PS02970.png', N'PS02970@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03025', N'PS03025', N'PHẠM PHÚ LỘC', N'PS03025.png', N'PS03025@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03670', N'PS03670', N'LÂM TẤN HUY', N'PS03670.png', N'PS03670@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03680', N'PS03680', N'ĐẶNG NGUYÊN THÁNH', N'PS03680.png', N'PS03680@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03690', N'PS03690', N'LƯU XUÂN THỊNH', N'PS03690.png', N'PS03690@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03692', N'PS03692', N'BÙI HOÀNG NGUYÊN', N'PS03692.png', N'PS03692@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03694', N'PS03694', N'LƯƠNG THỊ THƠ', N'PS03694.png', N'PS03694@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03701', N'PS03701', N'HÀ THANH QUANG', N'PS03701.png', N'PS03701@gmail.com')
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Majors] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Majors] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Majors]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chuyên ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Majors', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên chuyên ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Majors', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã sinh viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Điểm trung bình' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Mark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sinh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chuyên ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'MajorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Email'
GO
USE [master]
GO
ALTER DATABASE [Java5] SET  READ_WRITE 
GO
