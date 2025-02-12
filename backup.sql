USE [master]
GO
/****** Object:  Database [Shopmarket]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
CREATE DATABASE [Shopmarket]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shopmarket', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Shopmarket.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shopmarket_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Shopmarket_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Shopmarket] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shopmarket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shopmarket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shopmarket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shopmarket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shopmarket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shopmarket] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shopmarket] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shopmarket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shopmarket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shopmarket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shopmarket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shopmarket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shopmarket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shopmarket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shopmarket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shopmarket] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Shopmarket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shopmarket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shopmarket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shopmarket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shopmarket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shopmarket] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Shopmarket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shopmarket] SET RECOVERY FULL 
GO
ALTER DATABASE [Shopmarket] SET  MULTI_USER 
GO
ALTER DATABASE [Shopmarket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shopmarket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shopmarket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shopmarket] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shopmarket] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shopmarket] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Shopmarket', N'ON'
GO
ALTER DATABASE [Shopmarket] SET QUERY_STORE = ON
GO
ALTER DATABASE [Shopmarket] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Shopmarket]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBaner]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBaner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PathBaner] [nvarchar](max) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_TblBaner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBrand]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBrand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TblBrand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblColor]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblColor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ColorName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TblColor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblComment]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblComment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CommentUser] [nvarchar](max) NOT NULL,
	[CreatDate] [datetime2](7) NOT NULL,
	[Accept] [bit] NOT NULL,
 CONSTRAINT [PK_TblComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblImages]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[PathImages] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TblImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblLogo]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLogo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PathLogo] [nvarchar](max) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_TblLogo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblMenu]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](max) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_TblMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProduct]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](max) NOT NULL,
	[CatId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Offer] [int] NOT NULL,
	[MainImage] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[BranId] [int] NOT NULL,
	[Garanti] [nvarchar](max) NOT NULL,
	[Info] [nvarchar](max) NOT NULL,
	[CheckIn] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TblProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSliders]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PathSlider] [nvarchar](max) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_TblSliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUsers]    Script Date: 07/11/1403 10:28:53 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Namefamily] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TblUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241224183553_slider', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241226190143_Baner', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241229151801_Logo', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250102155420_menu', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250102185728_menu2', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250117170940_product', N'8.0.1')
GO
SET IDENTITY_INSERT [dbo].[TblBaner] ON 

INSERT [dbo].[TblBaner] ([Id], [PathBaner], [Active]) VALUES (5, N'd225ff96-113c-4606-8fb2-2e3d456d2e59.jpg', 1)
INSERT [dbo].[TblBaner] ([Id], [PathBaner], [Active]) VALUES (10, N'ec5a1283-6451-44c7-8760-102010ea2414.jpg', 1)
INSERT [dbo].[TblBaner] ([Id], [PathBaner], [Active]) VALUES (11, N'693250c0-51d9-4e48-9f85-c03ba9f77b5b.jpg', 1)
SET IDENTITY_INSERT [dbo].[TblBaner] OFF
GO
SET IDENTITY_INSERT [dbo].[TblBrand] ON 

INSERT [dbo].[TblBrand] ([Id], [BrandName]) VALUES (4, N'sumsong')
INSERT [dbo].[TblBrand] ([Id], [BrandName]) VALUES (6, N'apple')
SET IDENTITY_INSERT [dbo].[TblBrand] OFF
GO
SET IDENTITY_INSERT [dbo].[TblColor] ON 

INSERT [dbo].[TblColor] ([Id], [ProductId], [ColorName]) VALUES (4, 0, N'قرمز')
INSERT [dbo].[TblColor] ([Id], [ProductId], [ColorName]) VALUES (5, 0, N'سبز')
INSERT [dbo].[TblColor] ([Id], [ProductId], [ColorName]) VALUES (7, 0, N'سفید')
SET IDENTITY_INSERT [dbo].[TblColor] OFF
GO
SET IDENTITY_INSERT [dbo].[TblLogo] ON 

INSERT [dbo].[TblLogo] ([Id], [PathLogo], [Active]) VALUES (12, N'5ad2edcc-6802-40a9-860d-8ccba73b7884.png', 1)
SET IDENTITY_INSERT [dbo].[TblLogo] OFF
GO
SET IDENTITY_INSERT [dbo].[TblMenu] ON 

INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (27, N'لوازم منزل', 0, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (28, N'مد پوشاک', 0, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (29, N'فرهنگ هنر', 0, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (30, N'سلامت زیبایی', 0, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (31, N'جواهرات', 0, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (32, N'مبلمان ', 27, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (33, N'دکوراسیون', 27, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (34, N'زنانه ', 28, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (35, N'مردانه', 28, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (36, N'آلات موسیقی', 29, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (37, N'صنایع دستی', 29, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (38, N'محصولات', 30, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (39, N'برند ها', 30, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (40, N'مردانه', 31, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (41, N'زنانه ', 31, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (43, N'شلوار', 28, 1)
INSERT [dbo].[TblMenu] ([Id], [CatName], [ParentId], [Active]) VALUES (44, N'صندلی', 32, 1)
SET IDENTITY_INSERT [dbo].[TblMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSliders] ON 

INSERT [dbo].[TblSliders] ([Id], [PathSlider], [Active]) VALUES (3, N'a4d6ebbb-4cb5-4bea-8854-d09d498fa281.jpg', 1)
INSERT [dbo].[TblSliders] ([Id], [PathSlider], [Active]) VALUES (8, N'89dcefab-3512-46ce-ad1f-b93f6c7ab5cc.jpg', 1)
INSERT [dbo].[TblSliders] ([Id], [PathSlider], [Active]) VALUES (9, N'bbf09e26-0335-4b65-bb04-88f833e7503a.jpg', 1)
SET IDENTITY_INSERT [dbo].[TblSliders] OFF
GO
USE [master]
GO
ALTER DATABASE [Shopmarket] SET  READ_WRITE 
GO
