USE [master]
GO
/****** Object:  Database [QuanLyBanHang]    Script Date: 5/9/2021 11:21:09 PM ******/
CREATE DATABASE [QuanLyBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyBanHang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanHang] SET QUERY_STORE = OFF
GO
USE [QuanLyBanHang]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/9/2021 11:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[ContractDate] [datetime] NULL,
	[Type] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Input]    Script Date: 5/9/2021 11:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Input](
	[ID] [nvarchar](128) NOT NULL,
	[DateInput] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InputInfo]    Script Date: 5/9/2021 11:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InputInfo](
	[ID] [nvarchar](128) NOT NULL,
	[IDObject] [nvarchar](128) NOT NULL,
	[IDInput] [nvarchar](128) NOT NULL,
	[Count] [int] NULL,
	[InputPrice] [float] NULL,
	[OutputPrice] [float] NULL,
	[Status] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Object]    Script Date: 5/9/2021 11:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Object](
	[ID] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[IDUnit] [int] NOT NULL,
	[IDSuplier] [int] NOT NULL,
	[QRCode] [nvarchar](max) NULL,
	[BarCode] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Output]    Script Date: 5/9/2021 11:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Output](
	[ID] [nvarchar](128) NOT NULL,
	[IDCustomer] [int] NOT NULL,
	[IDUser] [int] NOT NULL,
	[IDPromotion] [int] NULL,
	[DateOutput] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
	[Total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutputInfo]    Script Date: 5/9/2021 11:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutputInfo](
	[ID] [nvarchar](128) NOT NULL,
	[IDOutput] [nvarchar](128) NOT NULL,
	[IDObject] [nvarchar](128) NOT NULL,
	[IDInputInfo] [nvarchar](128) NOT NULL,
	[Count] [int] NULL,
	[Status] [nvarchar](max) NULL,
	[SumPrice] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 5/9/2021 11:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[PromotionalValue] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suplier]    Script Date: 5/9/2021 11:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[ContractDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 5/9/2021 11:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 5/9/2021 11:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/9/2021 11:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[UserName] [nvarchar](100) NULL,
	[PassWord] [nvarchar](max) NULL,
	[IDRole] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (38, N'NoName', NULL, NULL, NULL, NULL, N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (39, N'NoName', NULL, NULL, NULL, CAST(N'2021-05-04T00:00:00.000' AS DateTime), N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (40, N'quyeet', NULL, NULL, NULL, CAST(N'2021-05-04T00:00:00.000' AS DateTime), N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (41, N'qwewqe', NULL, NULL, NULL, CAST(N'2021-05-04T00:00:00.000' AS DateTime), N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (42, N'NoName', NULL, NULL, NULL, CAST(N'2021-05-04T00:00:00.000' AS DateTime), N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (43, N'quyet', NULL, NULL, NULL, CAST(N'2021-05-05T00:00:00.000' AS DateTime), N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (44, N'NoName', NULL, NULL, NULL, NULL, N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (45, N'NoName', NULL, NULL, NULL, NULL, N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (46, N'NoName', NULL, NULL, NULL, NULL, N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (47, N'NoName', NULL, NULL, NULL, NULL, N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (48, N'NoName', NULL, NULL, NULL, NULL, N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (49, N'NoName', NULL, NULL, NULL, NULL, N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (50, N'NoName', NULL, NULL, NULL, NULL, N'Unknow')
INSERT [dbo].[Customer] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate], [Type]) VALUES (51, N'vũ văn quyết', N'Hải dương', N'0823513818', N'vuvanquyet17102@gmail.com', CAST(N'2018-12-02T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'00c25e8e-4ca3-4928-8998-9e2f46278834', CAST(N'2021-04-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'0e6cdf7a-68ed-4dd8-9128-213467d43fa9', CAST(N'2021-04-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'0e9268d4-1403-4e7b-9132-9a6335bd4496', CAST(N'2021-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'3ee271c5-300e-44c7-aa1f-f6e49d89dcc3', CAST(N'2021-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'4b6200a8-afd8-474f-b842-93ccdd48dc3a', CAST(N'2021-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'532a44e7-0fe0-4b83-a1d4-73e7c2459382', CAST(N'2021-04-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'573964a7-9b81-426e-a663-cf72436ec6c1', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'72b485af-4afc-4b20-88f9-e774bfefa0cf', CAST(N'2020-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'8298e553-7ddf-4007-9c7f-2e1688023cfa', CAST(N'2021-04-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'85a1c9bd-7103-4b50-96d4-0bab3201e8a7', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'91feba3e-2aca-469d-9cf4-f5d22d13eb7b', CAST(N'2021-04-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'973f756a-8030-4b65-8783-b9aa7cf7e6c2', CAST(N'2021-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'9ce30ca6-798d-4681-ade6-d97eb254dcef', CAST(N'2021-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'a0bf3316-ad6f-4738-b335-95eb0e46cc77', CAST(N'2021-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'a60a6622-f64f-4cb4-a3e2-a935355ed504', CAST(N'2021-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'b6af512d-9899-4500-8f48-284abb0c760f', CAST(N'2021-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([ID], [DateInput]) VALUES (N'eafae290-06b8-4376-8e2e-95e81a40e13a', CAST(N'2020-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[InputInfo] ([ID], [IDObject], [IDInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'4326f50b-eabb-4f95-b355-c894da40d04d', N'4ba5118a-86bd-45e2-a5a2-df6da0f386d2', N'a0bf3316-ad6f-4738-b335-95eb0e46cc77', 70, 50000, 70000, NULL)
INSERT [dbo].[InputInfo] ([ID], [IDObject], [IDInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'507af023-8c79-4b6c-bc9e-2dab8c4dc059', N'77d18b8a-1804-4d30-9656-8fe4364dbb4f', N'0e9268d4-1403-4e7b-9132-9a6335bd4496', 30, 1500000, 2000000, NULL)
INSERT [dbo].[InputInfo] ([ID], [IDObject], [IDInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'a868043d-07a5-4592-9299-2910b360b8d9', N'a187dc29-1812-4a4b-8c5b-6ed47f2a6ab6', N'b6af512d-9899-4500-8f48-284abb0c760f', 130, 150000, 200000, NULL)
INSERT [dbo].[Object] ([ID], [DisplayName], [IDUnit], [IDSuplier], [QRCode], [BarCode]) VALUES (N'4ba5118a-86bd-45e2-a5a2-df6da0f386d2', N'ốp lưng', 56, 24, N'ưeewqe', N'qưewew')
INSERT [dbo].[Object] ([ID], [DisplayName], [IDUnit], [IDSuplier], [QRCode], [BarCode]) VALUES (N'77d18b8a-1804-4d30-9656-8fe4364dbb4f', N'điện thoại', 56, 29, N'ưeewqe', N'qưewew')
INSERT [dbo].[Object] ([ID], [DisplayName], [IDUnit], [IDSuplier], [QRCode], [BarCode]) VALUES (N'a187dc29-1812-4a4b-8c5b-6ed47f2a6ab6', N'tai nghe', 56, 24, N'ưeewqe', N'qưewew')
INSERT [dbo].[Output] ([ID], [IDCustomer], [IDUser], [IDPromotion], [DateOutput], [Status], [Total]) VALUES (N'32704aae-2560-42bf-832f-93df90eeb517', 49, 37, NULL, NULL, NULL, 2000000)
INSERT [dbo].[Output] ([ID], [IDCustomer], [IDUser], [IDPromotion], [DateOutput], [Status], [Total]) VALUES (N'5e590a58-9a46-4c05-8e85-188a883698de', 50, 37, NULL, NULL, NULL, 2000000)
INSERT [dbo].[Output] ([ID], [IDCustomer], [IDUser], [IDPromotion], [DateOutput], [Status], [Total]) VALUES (N'f0081558-0ba5-4304-afee-59adc02331a2', 51, 35, NULL, CAST(N'2021-05-17T00:00:00.000' AS DateTime), NULL, 10010000)
INSERT [dbo].[OutputInfo] ([ID], [IDOutput], [IDObject], [IDInputInfo], [Count], [Status], [SumPrice]) VALUES (N'60c1a6ce-b0ec-4baa-94c7-79cd445ae632', N'f0081558-0ba5-4304-afee-59adc02331a2', N'4ba5118a-86bd-45e2-a5a2-df6da0f386d2', N'4326f50b-eabb-4f95-b355-c894da40d04d', 23, NULL, 1610000)
INSERT [dbo].[OutputInfo] ([ID], [IDOutput], [IDObject], [IDInputInfo], [Count], [Status], [SumPrice]) VALUES (N'64106861-36a0-45a2-9857-3d7a0eea8fed', N'f0081558-0ba5-4304-afee-59adc02331a2', N'a187dc29-1812-4a4b-8c5b-6ed47f2a6ab6', N'a868043d-07a5-4592-9299-2910b360b8d9', 12, NULL, 2400000)
INSERT [dbo].[OutputInfo] ([ID], [IDOutput], [IDObject], [IDInputInfo], [Count], [Status], [SumPrice]) VALUES (N'e3aaf40d-839e-4f32-b4b4-addec6d486cb', N'f0081558-0ba5-4304-afee-59adc02331a2', N'77d18b8a-1804-4d30-9656-8fe4364dbb4f', N'507af023-8c79-4b6c-bc9e-2dab8c4dc059', 3, NULL, 6000000)
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([ID], [DisplayName], [StartDate], [EndDate], [PromotionalValue]) VALUES (1, N'Giảm giá 10%', CAST(N'2018-11-23T00:00:00.000' AS DateTime), CAST(N'2018-12-23T00:00:00.000' AS DateTime), 0.1)
SET IDENTITY_INSERT [dbo].[Promotion] OFF
SET IDENTITY_INSERT [dbo].[Suplier] ON 

INSERT [dbo].[Suplier] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate]) VALUES (24, N'Anker', N'Hà Nội', N'2222722222', N'anker@gmail.com', CAST(N'2001-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Suplier] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate]) VALUES (28, N'IPhone2', N'USA', N'0122223332', N'Apple@apple.com', CAST(N'2021-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Suplier] ([ID], [DisplayName], [Address], [Phone], [Email], [ContractDate]) VALUES (29, N'IPhone', N'USA', N'0122223332', N'Apple@apple.com', CAST(N'2021-04-06T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Suplier] OFF
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([ID], [DisplayName]) VALUES (52, N'Hộp')
INSERT [dbo].[Unit] ([ID], [DisplayName]) VALUES (56, N'cái')
SET IDENTITY_INSERT [dbo].[Unit] OFF
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([ID], [DisplayName]) VALUES (1, N'Quản lý')
INSERT [dbo].[UserRole] ([ID], [DisplayName]) VALUES (2, N'Nhân viên')
INSERT [dbo].[UserRole] ([ID], [DisplayName]) VALUES (3, N'Thủ kho')
INSERT [dbo].[UserRole] ([ID], [DisplayName]) VALUES (4, N'Quản trị')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (1, NULL, N'admin', N'db69fc039dcbd2962cb4d28f5891aae1', 1, N'', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (2, NULL, N'staff', N'978aae9bb6bee8fb75de3e4830a1be46', 2, N'', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (3, NULL, N'admin', N'3e3cef25aaad65723e4da3507ee278a5', 2, N'', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (5, NULL, N'admin', NULL, 2, N'', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (6, NULL, N'banhang', N'998a9505bc8241649e5650bf329f5283', 2, N'', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (7, NULL, N'newbie', N'cdd96d3cc73d1dbdaffa03cc6cd7339b', 4, N'', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (8, NULL, N'newbie2', N'db69fc039dcbd2962cb4d28f5891aae1', 2, N'', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (10, NULL, N'admin3', N'cdd96d3cc73d1dbdaffa03cc6cd7339b', 2, N'', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (11, NULL, N'dsd', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (12, NULL, N'sd', N'0b8b946432f1ac91f0b07bd5f8df6587', 4, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (13, NULL, N'dsd', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (14, NULL, N'sdsds', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (15, NULL, N'sdsds', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (16, NULL, N'sdsds', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (17, NULL, N'admin2s', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (18, NULL, N'sds', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (19, NULL, N'admin2ss', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (20, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 4, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (21, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 1, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (22, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 4, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (23, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 1, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (24, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 4, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (25, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (26, NULL, N'docnhatvonhi', N'ce0a909a000e9c9699265711ef44eb2e', 1, N'', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (27, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (28, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 4, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (29, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (31, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 4, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (32, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 4, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (33, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 4, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (34, NULL, N'admin', N'0b8b946432f1ac91f0b07bd5f8df6587', 4, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (35, N'NguoiMoi', N'gatay', N'ae3225f581d33a458f2acc18b2387072', 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (36, NULL, N'gatay2', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (37, N'ADMIN', N'admin', N'db69fc039dcbd2962cb4d28f5891aae1', 4, N'', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (38, N'NguoiMoi2', N'gatay2', N'7768ee16303d56057b1b8ed1b7985cc2', 2, N'', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (42, NULL, N'managerw', N'0b8b946432f1ac91f0b07bd5f8df6587', 1, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (43, NULL, N'gatay23', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (44, NULL, N'gatay23', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [DisplayName], [UserName], [PassWord], [IDRole], [Note], [Image]) VALUES (45, N'NguoiMoi', N'gatay23', N'0b8b946432f1ac91f0b07bd5f8df6587', 2, N'* Mật khẩu mặc định là "password". Nhấn đổi mật khẩu để thay đổi.', NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[InputInfo] ADD  DEFAULT ((0)) FOR [InputPrice]
GO
ALTER TABLE [dbo].[InputInfo] ADD  DEFAULT ((0)) FOR [OutputPrice]
GO
ALTER TABLE [dbo].[Output] ADD  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[OutputInfo] ADD  DEFAULT ((0)) FOR [SumPrice]
GO
ALTER TABLE [dbo].[Promotion] ADD  DEFAULT ((0)) FOR [PromotionalValue]
GO
ALTER TABLE [dbo].[InputInfo]  WITH CHECK ADD FOREIGN KEY([IDInput])
REFERENCES [dbo].[Input] ([ID])
GO
ALTER TABLE [dbo].[InputInfo]  WITH CHECK ADD FOREIGN KEY([IDObject])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[Object]  WITH CHECK ADD FOREIGN KEY([IDSuplier])
REFERENCES [dbo].[Suplier] ([ID])
GO
ALTER TABLE [dbo].[Object]  WITH CHECK ADD FOREIGN KEY([IDUnit])
REFERENCES [dbo].[Unit] ([ID])
GO
ALTER TABLE [dbo].[Output]  WITH CHECK ADD FOREIGN KEY([IDCustomer])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Output]  WITH CHECK ADD FOREIGN KEY([IDPromotion])
REFERENCES [dbo].[Promotion] ([ID])
GO
ALTER TABLE [dbo].[Output]  WITH CHECK ADD FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[OutputInfo]  WITH CHECK ADD FOREIGN KEY([IDInputInfo])
REFERENCES [dbo].[InputInfo] ([ID])
GO
ALTER TABLE [dbo].[OutputInfo]  WITH CHECK ADD FOREIGN KEY([IDObject])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[OutputInfo]  WITH CHECK ADD FOREIGN KEY([IDOutput])
REFERENCES [dbo].[Output] ([ID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([IDRole])
REFERENCES [dbo].[UserRole] ([ID])
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanHang] SET  READ_WRITE 
GO
