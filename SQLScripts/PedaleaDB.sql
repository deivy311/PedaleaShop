USE [master]
GO
/****** Object:  Database [PedaleaDB]    Script Date: 24/01/2023 00:14:23 ******/
CREATE DATABASE [PedaleaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PedaleaDB', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PedaleaDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PedaleaDB_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PedaleaDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PedaleaDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PedaleaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PedaleaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PedaleaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PedaleaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PedaleaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PedaleaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PedaleaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PedaleaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PedaleaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PedaleaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PedaleaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PedaleaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PedaleaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PedaleaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PedaleaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PedaleaDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PedaleaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PedaleaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PedaleaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PedaleaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PedaleaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PedaleaDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [PedaleaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PedaleaDB] SET RECOVERY FULL 
GO
ALTER DATABASE [PedaleaDB] SET  MULTI_USER 
GO
ALTER DATABASE [PedaleaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PedaleaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PedaleaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PedaleaDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PedaleaDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PedaleaDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PedaleaDB', N'ON'
GO
ALTER DATABASE [PedaleaDB] SET QUERY_STORE = OFF
GO
USE [PedaleaDB]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IconCSS] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IconCSS] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IconCSS] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImageURL] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[AllProductsView]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AllProductsView]
AS
SELECT        dbo.Products.*, dbo.Categories.Name AS CategoryName, dbo.Colors.Name AS ColorName, dbo.Sizes.Name AS SizeName
FROM            dbo.Products INNER JOIN
                         dbo.Colors ON dbo.Products.ColorId = dbo.Colors.Id INNER JOIN
                         dbo.Categories ON dbo.Products.CategoryId = dbo.Categories.Id INNER JOIN
                         dbo.Sizes ON dbo.Products.SizeId = dbo.Sizes.Id
GO
/****** Object:  View [dbo].[AllProductsCategoriesView]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[AllProductsCategoriesView]
AS
SELECT *
FROM   dbo.Categories
GO
/****** Object:  View [dbo].[AllProductsSizesView]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[AllProductsSizesView]
AS
SELECT *
FROM   dbo.Sizes
GO
/****** Object:  View [dbo].[AllProductsColorsView]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[AllProductsColorsView]
AS
SELECT *
FROM   dbo.Colors
GO
/****** Object:  Table [dbo].[ShoppingCartItems]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShoppingCartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Separated] [bit] NOT NULL,
	[Paid] [bit] NOT NULL,
 CONSTRAINT [PK_ShoppingCartItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[AllShoppingCartsItemsView]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AllShoppingCartsItemsView]
AS
SELECT        dbo.ShoppingCartItems.Id, dbo.ShoppingCartItems.ProductId, dbo.Products.Name AS ProductName, dbo.Products.Description AS ProductDescription, dbo.Products.ImageURL AS ProductImageURL, dbo.Products.Price, 
                         dbo.ShoppingCartItems.ShoppingCartId AS CartId, dbo.ShoppingCartItems.Quantity, dbo.ShoppingCartItems.Separated, dbo.ShoppingCartItems.Paid, dbo.Products.Price * dbo.ShoppingCartItems.Quantity AS TotalPrice, 
                         dbo.ShoppingCarts.UserId
FROM            dbo.ShoppingCartItems INNER JOIN
                         dbo.Products ON dbo.ShoppingCartItems.ProductId = dbo.Products.Id INNER JOIN
                         dbo.ShoppingCarts ON dbo.ShoppingCartItems.ShoppingCartId = dbo.ShoppingCarts.Id
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24/01/2023 00:14:23 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](256) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](256) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](256) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](256) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceCodes]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCodes](
	[UserCode] [nvarchar](200) NOT NULL,
	[DeviceCode] [nvarchar](200) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DeviceCodes] PRIMARY KEY CLUSTERED 
(
	[UserCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Keys]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keys](
	[Id] [nvarchar](450) NOT NULL,
	[Version] [int] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Use] [nvarchar](450) NULL,
	[Algorithm] [nvarchar](100) NOT NULL,
	[IsX509Certificate] [bit] NOT NULL,
	[DataProtected] [bit] NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Keys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersistedGrants](
	[Key] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[ConsumedTime] [datetime2](7) NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TotalUsertAcquisitions]    Script Date: 24/01/2023 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TotalUsertAcquisitions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](256) NOT NULL,
	[TotalPaidProducts] [int] NOT NULL,
	[TotalSeparatedProducts] [int] NOT NULL,
 CONSTRAINT [PK_TotalUsertAcquisitions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230118071711_pedalea', N'6.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230118072507_test2', N'6.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230118072631_test3', N'6.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230118072713_test4', N'6.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230118074044_AddingSeparatePlan', N'6.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230118074328_AddingSeparatePlan', N'6.0.1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'149ab3f6-90c5-4d75-9869-7ac39b3e97d9', N'davidestebanimbajoa@gmail.com', N'davidestebanimbajoa@gmail.com', N'davidestebanimbajoa@gmail.com', N'davidestebanimbajoa@gmail.com', 1, N'AQAAAAEAACcQAAAAEMETj55V93QAGz/VUC+mh0aSHZpTsjs/iDCPl9gb3WfR5Hh37e4lpqA0jcXUqXJVXA==', N'MF25UIELSTRYUTJ6BBZBKZNHQISDIKSY', N'27fb2476-a45f-43e3-a5c8-7e229fd823ee', N'313', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [IconCSS]) VALUES (1, N'Beauty', N'fas fa-spa')
INSERT [dbo].[Categories] ([Id], [Name], [IconCSS]) VALUES (2, N'Furniture', N'fas fa-couch')
INSERT [dbo].[Categories] ([Id], [Name], [IconCSS]) VALUES (3, N'Electronics', N'fas fa-headphones')
INSERT [dbo].[Categories] ([Id], [Name], [IconCSS]) VALUES (4, N'Shoes', N'fas fa-shoe-prints')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name], [IconCSS]) VALUES (1, N'Red', N'fas fa-shoe-prints')
INSERT [dbo].[Colors] ([Id], [Name], [IconCSS]) VALUES (2, N'Green', N'fas fa-shoe-prints')
INSERT [dbo].[Colors] ([Id], [Name], [IconCSS]) VALUES (3, N'Blue', N'fas fa-shoe-prints')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
INSERT [dbo].[Keys] ([Id], [Version], [Created], [Use], [Algorithm], [IsX509Certificate], [DataProtected], [Data]) VALUES (N'EED4566954B2837B730382C78AC2DE8E', 1, CAST(N'2023-01-18T07:31:25.6468289' AS DateTime2), N'signing', N'RS256', 0, 1, N'CfDJ8BepFkJZtqVLgl9Wfh9I6BYhgHnD-Eaq7wwJjUfFpKlQ8MEmursiahOZ7223ahyubXZfJ0zMbNx9DMMv8qDZuMVTU8aFvFpUodZuFnuSaasnrb0Ek9MtTtPpSG3dvU-QeoOOLWVkJa_S5VW-3Pr8GnX25RjeyFAmDjrfImIJqe-l5sTSvKrYp5h-ZRNfEkAVOATkiJdC2C_LfOs7PtKm5LM2nS7Tg98v1zvXTC7gPA6rYUQ3MpXTCI5Dgl8bHj3xI6qhe5DafnKvSL0kbxe4V8vWptmeYx3VBJgvagfA3GT7IypN5Lvxhiy9GgRlCczvpEpCtDGRzwPQ6EEgXKXOYGr_IPzGXlKw9Mpq0Z43dhEzCzC_Us3fJ00-wjMtDnHkGQgQ-H7sA-_U6KHzIfVX_lmFRC8711XHJ8jMfIxOHPsRz7-zEJsXCs1IWUAMJsVYpGsEPo5Ruh2tEswCnc_zbuOX9D5IGboCOgcvy6d3Nhk3q2VpIAUf-N3cjd8U9jcYd1mthjrf8I_xb4qxtmjJDh47Ps8v2enpeIdEQBSBAYBdCyawyrjU5Hp_GXZD-8jYKibr6O_xnWjeH8R6R5I-cv019U2JIO11WqRgK0_NmmtxpqzzMbz7-VqlXZlyg3qOSk-XpPH5e3zew80f2dCRCN9C1VyXXC9Pr11jj37hWHGKq2TvgU9VwtpqZ5OX4F2ViMxYKEqm3N4-N_zJr2Almab08NNH6sJ-vWjhCI5LkGNnT-17YKcvgEk2RAV5_VEeoRov4OfkMU6HJ0fgH_qTkfhFTdd68cdIY9QJ1lXABi3oxrSmKdj3EbWb9LnP9DwIt5S6DO5K7Yd3p5FcHw8HELFMZZX9PbBCpfy45NWGYuZUYww4HyKojpljqTGbIz4zAwdlNzmRxFv2cpfcZReYQGNucUG7OFgwtHiCzL1n957TESjwhoQ37XEpJzk_NmG13nJiVvGFU_T1ZRb3-TdXA5NMUHpRxBDL5RZw0kvJLd0nIq6dJuizDGsAAuVxsKxKEOCS1M4zeaU41rvKIUnskwtCI3Qep8SokUgYWLLBBOjMqzM5ANfP8UqCAJa-5k1yfeDWv4ENjPdxBkd6lY4csWh6gF-fN2xHL6csAjJtHS5kmjDYvvvvSIiG7mYUYq4xtlBLavbmM4BjSu5EFrGl5DJRtG49QYjs9nxl6ObBLwQ6YC6-e_C8IDDZdJnu9rHa8ua1RyQCrnwvU0kqyIPFRJ4rG4KBpySJRTqzFqAAdf47a-BXx5H3QzvcAZo1ggOV_U3wHT_lygshfdiNsUYrshbX0vJloUnGpoDY3Mf1CIlPj04ndXDeZBW39YvFyEwcXHAGc5RVMed6RQ6TrZiiRCSgCymQmmDojriUs7OThufjR_KWuT5ZBl3IUG0-32JFVMxK2dJdJ3EGCXpAc7zmBjKPan6LUJpCatMCHZ2GBz1Syw-bms9N8bPG18dn4tbzpnlrXsn65YbAWYkPWIJL20_7tmBsuOA3q-NuUjRpQz6ZF41um4ueX2r7zlsJZUboFuBvwz1tfXPmnf7hxX6GPcbRsSwO9aWPoLiV5n64tKju2aoWY2jiEYoUWvTd6jal24hYQq01uoU78dlz379rFwx_9gvbCJSX418Q8-slb33JO1wRKUgZGGrDP-89FeVYJ3FoFLQS9IdSkZHchoHSqgD3NjLcxq5U2i_yfcLToNE_VhUJxZ9sc9aSS_LgQ0-WNSw8llZtCBMOX0vE9STxonj8HLTkgcOFwioTXZaQC6zuOP-l-CLpBaEpVs1Bs4Y8b3JcHsQxAwlB-pTd0s2Y_ibGGIXupRYWxEGbfB-9EpAl8JeL79TD_KY9s9w_7OcxqZM3be6wR8VvEfidJpLJTgng7rDdyHJglXrtDTzzwPmKs4RJQ0kSqmZ506GOcs2XVP9lnnv2yqj-sKYYjqJyK137hAfQOlIK24zig-eGlU94fJJSuehCqWLoQZB7Klasbx2b54DTCfxErWIBOL5nQYJSFzcTjknmOw2xX_4c4W2GQ91emnjjqZA16dGNUDZ4EaBjJTFdPY8LOmJMr4eLaOqkXCV45QjjB9ekfgjs6GOmQehuG0_1MsrNQyu04Qi0qj6-9uq6ajz6-V18iJouf_it8gJTbBBNf6sS5ibzfJLPv7nwUrB0WCZCDy2zC8fBRYzdqOU1mkIAVRog6BpmYzbYWWSwyQRJpVrBdfgKTzVwr9GFqrAy7lONt1K9PswpESdM9SWWXsHmv52S-lpLYfUqkce0c9LeM18CktfATZzxX7_ZLWxrIkzvShqzD1IJjHWGQyLDXFJ4GrD85QqeCO4z5bYYnp4iKuVcBxM2VuZnh1M3PTJl_JLNQZgOIDnnBBibE9slvFJZU-6ASHFPQJ9Hr1lbAWeHEaJvkIQ_2A7i7iSsVW0DZsN6EQSP7MZHrtBkD4tts-xuUyHEgCKwxKSa7a01E4fR3s-6u4Na2AGk')
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [SessionId], [ClientId], [Description], [CreationTime], [Expiration], [ConsumedTime], [Data]) VALUES (N'2fPO8GXYdBEmx9r019fx6AGxHbzRphZkrhxO+nwKOpA=', N'authorization_code', N'149ab3f6-90c5-4d75-9869-7ac39b3e97d9', N'5016CC0700DA5D80147BE131595F716D', N'PedaleaShop.WebApp.Client', NULL, CAST(N'2023-01-22T20:02:19.0000000' AS DateTime2), CAST(N'2023-01-22T20:07:19.0000000' AS DateTime2), NULL, N'{"PersistentGrantDataContainerVersion":1,"DataProtected":true,"Payload":"CfDJ8BepFkJZtqVLgl9Wfh9I6BYNICRxkR0rBcaVfhzoWr4pVtkUg40_6QH7EpH0CxOAcz6NA3EoBlxjK3O4Vf5NcF3Jt5v9TVmDp9WFwFTSR-DPU1NOpdwPv5JxNAffzITfFvtMHJbahvkGsAlynT76mqoVwkWsqHJbE6tnXS8kaLUfnH8HBKIUTGsvPtxLnY7T2ysMGX9b9fEB48Gi5wIixYiOGE_gXmPjd3WsU6LCIeDBN91x0WKRkV_4UE6Fem_GUc-o_lhlsXI-sqxfhfZ4KDf8VBUAjxF4hBTUxmm9wphzYIqWxFB-sMJwL33hBWkcxEQmlnpI062daQFPBNkRL2ImldAS1iz5Fl0RTWv5EnBamjpDeT03snZnAJF3gOlnprRFaMEKmEeMhJ7fyW5fK-qKr7WQl4KZLOzrlZorN3JHgN-895rQyX9hW8Y_Hz_X1v82xEEqcVaW51NjHvAwI03Kkwxz0fMRloqwDzcYQqRhwyLEOQZTBYCntuWQT8kHt4-Y-WJdfwkrj9WAOhO2_M77pb4jjLEF3rKAemta7-lz6LpJEYPOfUmddtgwLZ2OdhASPx0gJu9tJue2pCdjekunLjLdMwCuJpFu8qGEi5aeaQHfgD-U9zMOi-gFCYlIfBk--i0pYE1JqnaWI-Uq2822pzpTl72V0bRYQx-B1YCw-TbqxR2dLdZk79NqWReu0PcpTH7KZoDxeR-UAmytu1JhCo8nDd6wmXpnSjFUYCdPKbm6blDAVoGQv6fRbXBqNPAtVjDs60qO0a3d8Z3RxYiDlENSFtbFjVFVjzhBLoTEhiXvlAelEIG7NIbQA9gHNyBWXz_nfi5SYNpdOGxtBJbvcoHYLTTcEGTQVzDDoTrGLj9m4zcDxDQac-vj0D2eT7Ug1cdwBj6XEtjeURY5pHTwR3XaYYSEyGdwSGX59z0XId9aVvn_IXulYlZijOWjtTM_PwN0s2r-utQCXbFcmDgxuFC6-ZMq9wwXqWu2juEDIGP-kCd9D4qXOOJgLoFPabNimbTG9Lf720i2x50aFTtIZTyP7iU0D84AXK54X0Nq1I3UpRmVPIv4U9swn4j2kWrcUHUpQwoxUz_sTG0K3NNkkeq8ST4saTpoZ0kHcJJ5CyeknYn21W5SGmESyvBfahFkzu3d00rnbncCWjA5rc8lTLlsTJGKfIWeo8BCkHaepilxfD3D2zTJKbQ4NLaV1zka_fxjO-_xcte0mHYU9fSxcuOi5C0fAACr_bBps4FmDV3WUjb3ntgLjFOmHXIG2qRji3ib2PQ9vcpMEMUtuebnysx30rkM9pzLLy5oDrXR5cUntTcmICwln-hhyynhmx1jdpSRieZeo4OxV5mwBNNg7_TbjA-B-UQlMG3Uk00QaNyDaYYnUcjmu0ClC7uKDpj_MnFVrf4w1M2Sg2hqhC4koJ4v9RTS6udpdFNJ2ZUlVBnUSA_zRg1iaWLTOh6t9QKQRVemAt-ZLi2H8v-wGgP47Kdmo5cvVOXf8iVVbRXfLOC3lCeM6UdbabXMuXgkHHO3PYp8dxJiRGz3jQUIG_a7lLhxFtsyFPdDyOQDMxLlki_zcAh3PHe9UhxZ78xDxkecuYFpZ9u5JZZSfTDm2tPwtfslkb6R8P1m6gDi-Mia_Nbh5bYO09fxNcZsN8pakNTfEVTZcKhUX7aqOF6eeBrYTE54dTora_cmvNucR9uLQZbn9ecFhckL8HgRH9DGkX11rqXSIPvX1VYmlUeHZjE4ICQfD9TWJCyHngjXk-arFDZ1ICjw19YasxCSs59fIbgP1Xdk4MJCXmSE0z8CnjtgAAMcgFBsjxA8FmcMKPZQLLtY2EQLXQ8foDQXfWLrxI1WqXMy8LWM7ITVQZ2Il8Tz8rn7ekDamTiR867kyDZ6DKroKmERTte2pZkeKrus4EYydRiEMV5VXzRGFkbCC7cysO6AiJKVSkKmXMjM0hv4"}')
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [SessionId], [ClientId], [Description], [CreationTime], [Expiration], [ConsumedTime], [Data]) VALUES (N'kpX/4mGm7DYJjhfMzZ1ri4Cq7WYR9hzR18eR9zAhCTE=', N'authorization_code', N'149ab3f6-90c5-4d75-9869-7ac39b3e97d9', N'978C624995C9BE0DCB66D1B89C80813A', N'PedaleaShop.WebApp.Client', NULL, CAST(N'2023-01-23T04:19:17.0000000' AS DateTime2), CAST(N'2023-01-23T04:24:17.0000000' AS DateTime2), NULL, N'{"PersistentGrantDataContainerVersion":1,"DataProtected":true,"Payload":"CfDJ8BepFkJZtqVLgl9Wfh9I6BYSGvlp3gr5bdtv6Qa0ADOqHc_zPa6sBm_KSGTh01cqf-pgvU2AyHoDVQh-OuhkmcDAle6VhAlVdOkOHqxak6ilt2XEOKAS9mppPMefnOFY6zbicBshnOocbWIdKZnCmBNvpCsBN6qY2quWrnAx0b1DZTQ2I-GkiRRAzTUilEI1gYhpkO0mYQiV7IIncMgAavJOII7ozjMxQ53KqG6mdZWiDOE6bMmddo580w20w-MTgN8wq8b85ceDCI3mJNYFI8m4vNrkZ-ncQc41SWVCz-4U908EfCRpYD8zxSBZ9NITIETJzqPDaMminN7QNR9vrgM5yyc-4eptuvtXq7ulWuFsWbam3ZnS5sHPuyRPRSCL9YZ5OKlEi16trcGbnuP0Prq6fZHmZr3wTZqQlwTZYY50WxWLbpO4_oNdS6FREk_L0P_2594LfjncY_rQ01-htSjw5tJb47UlKwJxytehNGVXoqDvOrUEk61J7U4FltXuckwuW6YGlbg4CJ8HFr5lGwqTm6nPg6NSpzjdwr0vJzvzXYN28ZKoLp8KEuVcTXgHidTwtnO8oKDvS4dsMCD07Etp73Yxevtx3YqxKnPGVbuMUzUfsEHCBGoV8-_z87ts6A51acVlr-WqSSI-wu6ve1TKEZsYyIMsWyxWjBM5aadIxktQg-XOLgvuWV2NiO4O4wd3KqYsP4tWQRNM0bcQbMrH9ylfITcHXNaqKusXg4bOPDMOqNypu3cZ8eokF67TORDrYTG0HUEKsMO3WFojpW9tfI_6nq-hYW0GxxSXkl3qIa5k58Eo2NQ4YRbpbzSBY0423-xr0ZhMLkoFHF8wWEYGA84ypbggBnVPuY7h9RTR8qd6wSzAFyKh4uUJXCw2aja5tEiJsE4lnDtTya7bmi2vdcRCwY_D7IKsa0hu2iZNSwZnKMA3JBi4WBGloAK5GyzWDxSr3zjIC8StxphRw-HTNCXZF6gsvHJykGqHSZHMmPXdjNkT2LyCOZri1PSPQL7nnvWD2DseQ4OigWhVjWJU3uIgaz1VDzXyCTMyoNe_Sc3aaX78Dswjbd2bfV8CPOJoLh5lGRZ5AHjBtJZ2jHLNaA9VuyoP0vfH4ezvco2_j8Zyt3Gr1ZMVrWOXYGNd8iVjsoLCqGY_ABEhjqfmHeHMNbrfv6tPRv9wnCtx39x5vVWPAa_C3wpOwlY2d1W0VFUsAZWTNY-1kHAe1BS756qHmEY-YJIcTrKocEaBmtqOmQu_vr-8reFsuHdRFPwtdEosgfSHrcuuY6qbL0T06GOewd8mVTdUup5nzGEsCWP9P22hqnvGbuz5HB2O0p_o0cin2diyc_fbKCmJ6BIdRXqDCINRvLPzeMWthUFOnVY_Lkr01RDpum8VdGp8dM8KyDN16ihyNagJ49MoSI7tjgxjuOPvB2oRT6NAndBCMVAuzUW1n47u1ld8kwEyrBq6zGhrzPKaOXb1TnGlN4M5B6ig2BfJ7APT8V34M-jeQ5cCbYjLCQeDoShNlnrMhgA1koIW52hV3YGxuAOQozV-n_Clu6G0rvPYmAMIO27LlsNjBBMy6ZqBYxGxZotpkknQTc6eEgXKmqiNwLX94sx5ttVa2h06LnLjUSFsIh0IDF6ugchZguT_IJXOpWrBZVY6sXVx4jo9yd7k5qBff0Ft1WwhqSpJTJ_ji6ibFD5GcqT8Eo2vNJ8qFlUrG3g_6MyJkDhEox3MDs8rhY41tLrbSzguUsd2_j0Lx3oKwyrjCicA1tPhnEDZ55ePiN4G13UsWyKeOjG2tuj6RFuzjmKLuoNrDpJAT-seSpwH1TRqRaUoi3ENISCJg8tBbyYD7iDgqU19ushQNvUXGEUwhPDzZ8O42X3J_ZWKjJPUAxOhx5hyFVW02EvTGA-hTdYo1NpAYo57GM2goCElUvNB_eZIi-KMcJtXPuxCXox6ehPZzLXL"}')
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [SessionId], [ClientId], [Description], [CreationTime], [Expiration], [ConsumedTime], [Data]) VALUES (N'OSZfkbDJW2/5Su23HgHV8/ixyNUnf8pGjcI7+BTMiKQ=', N'authorization_code', N'149ab3f6-90c5-4d75-9869-7ac39b3e97d9', N'5016CC0700DA5D80147BE131595F716D', N'PedaleaShop.WebApp.Client', NULL, CAST(N'2023-01-22T20:04:49.0000000' AS DateTime2), CAST(N'2023-01-22T20:09:49.0000000' AS DateTime2), NULL, N'{"PersistentGrantDataContainerVersion":1,"DataProtected":true,"Payload":"CfDJ8BepFkJZtqVLgl9Wfh9I6BaUvp8LmirptCTQotnibCNwdyYn0-U3zVeCwhVh5iQDq4bLPYzijNKhsrGU6Hn27C9I8CVO0feqh4rtWlW1EyXKkNWbguLIqyk2jLVfWmQL6wn0VqBHCU7XqAAdT8NjwuuASjbFGWYyFW0hL1ywM4wEEpHIxQulia03_FzuroGyUpU_9qWwiNF-q3JeejccH8_YqBf5lnCFDZ8czxUVk4JVcHrM50iT1lx5AU7FjE_bNwnJ1y2z0ht8bsRznaaLs-zIx1O9MFOB_8ZhGeHBp5y0bUvgSN85IlB0srKhBO3KqBsDBqFRgCuRB3ZsUUGE1scXAYwMhH_Ew0NUqRnrxMQQtpW8b89Fix4IOAwTuI_5YJqDpBU2-cpY1rkw9Cv8C5iTxM7wsXB__aFYO9xRJQC-tyFCOL8-75Q1gs-E9C6CXV7bAIht6D-sM85n9loQKaConcBxf5kmGbbQWP8zuO8MXxOofWKo9Q_hdvpYsvO65LkC78LXbpV9IzKrHsje61sJ-q7fbsbrI4iN4TltRv4PjbIz6twmIQmxZmm8Xe-6S59s4Oj1gqGco-KXVSRSNcvd4e25JLKmr2bF1a2-8UIs2lufjWHm4eaCelz-nz2MxPRriQ1vfDNne3WKFuy36HcbqBmL-1N0F2XsGxVMVigFOXY_DIyyt3Lhf-G3kj3r7OBX4trwtFW6cwR0Siq_zs7PkDyzA00nvcmCRKy39mc-hk8CF7dujN4w5R5Fwec7YHUqJUHMFO6-DGnKdCxAjILN5uhau3ndRtDEhZPTeKmWpRM8cJVNpvB-YtQn3pYwODyIVH73sOWlzbRbEFnfgBdVYj_plmChcxISGt6uFIPrbCEj7vtw7OJ8zQRdGUu9UaBLoDUALFaN2BWTwrn2jc_lJ73mpplJbT3K6NiueSECN0lx5O8bk2LGH-2bu1m5tR22BFYhDrp8qXFL7TheBkgo_t8PBbC-cN7Ih50NMvxjG7o8ZHp0l00JzhqAGvCqQiWMWKj8vzGwcHXMe5J_JYV8jWR9U9OqrYU9z3mAx3jYieaRWHRvrlN1MxUMyvpX-jMAguvMetmdKzG8XpuYV_uKXuklrtNzTioqifZn9m5UDAIGhdwVHuG5cq70g85M1VQp9YzVQXUp5qiAOEP1tnJlhcyUwUZHtlSNoCNmOFjREYkf25pxczKIyZCDfQ7N4J0FWa09JFhKwAWGOqQ8_TsRl-J2yKtU920lKNaGKfOPlrbqxeNV7dpcwiHuokGwrmmuUSPZldnYjjxZuL7bGpfHGVu5HS1ymbrXRhnHb9Au3Zq6l2F0Mum9Gvo1Lt9EmhvNeGwGmOOkX4o5tIjGE_72qMqCf2XEsimhKc9XP2Lx2rYsJG-CCRKQws0kqU1xs6AZnY0oQ4tj9wl7Hg8lLwYVRS0mLeTyOcaU4IMf7hm3whBLQW_Xye6J80fdmu4A3qXvd2F1ZXMDPBqzb24Kjc3LFIqB95RVddALTG_-Y5Ue9cElOYGMqSz6zKmxiHEDoOaBccILZIzDrNEVBKSgXa3VLJMlMM3zRe57LVTXnwWLH-DqttPrKw71YUfFgmE7ZN6zGFYX7w7hSKMANfYYEsolCE4K30npOrmjAmQf-fIal4EbwhQSOMr-eLbruTijPh07eBFwhz1XhUPqoUr4w0NRUCBE33UoPryMjJDWB6ntKta4GJpsuFvOMlWn4YlvRFDmmeELI4jarVnm7l0mmLyA-xnsp18nNTdHgU7lhq2B0DQdBL78ICz3CYplTHw6a1H2HbQjSBh9HfWgDHUy_zrlPDsX77jTTNSaYX9p2u2AXOXBwRr9SuZq0Glqq09aWzbJlr_YRqgYWgqpVA3f8wEEYNm9FEIcBhqdszfOcOcNzyPhS_otjPhhUbLM7CekpZh8Y0dXoQcRMKxVHy1J9Mb9irk-mbrBI_0SF_EJc3A9"}')
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [SessionId], [ClientId], [Description], [CreationTime], [Expiration], [ConsumedTime], [Data]) VALUES (N'Vvz9l6PoIYX8r+2wtTqHi0Sy1vF4ye98aFYP7RJqknM=', N'authorization_code', N'149ab3f6-90c5-4d75-9869-7ac39b3e97d9', N'5016CC0700DA5D80147BE131595F716D', N'PedaleaShop.WebApp.Client', NULL, CAST(N'2023-01-22T20:02:14.0000000' AS DateTime2), CAST(N'2023-01-22T20:07:14.0000000' AS DateTime2), NULL, N'{"PersistentGrantDataContainerVersion":1,"DataProtected":true,"Payload":"CfDJ8BepFkJZtqVLgl9Wfh9I6BaHp6HQnS06ABTtyRI4xv6ixr4RRzlv2ROwi_jnifMmAbPph-16OWljwCf3V4Fs6xDa8R1hzHuOCSCYXbQ7n9E__hZKsEbNFIwDX_EHMWsMaN9cAeo_nPtHLtgainp0tydjt3Ms-Lp1nkgVrAX4c7hFauozPottvPyZ1aSjCIeSJ2c-K0Aasbyl_7bKGtL-AGBmsldO44uXTePi2XBbsW6onBQlthPvwNIHalm0B4nXGh_q_s-wtkQgrCdQHA9XN1D1BUbnthL97fLO8YX6S5-s4EuyWUwW0zqEIS9tS-ca6Blka86CglTAuSaccxU06JsHKb_ZmWkivJNPEXQl89ysY3GGw-Ta_q61blZN_4aF69IsA76ZT9ZgncttkBw1r8twN8lq_Jocu6QDNaUagw_45DQ120dzgyUYhDt4TXunWvzHluYKlf6bbXNqTboF9-_VQV1IvAs67lkmDVv1uaNug3ET2Fu9Tz2FQQjiX5-fk83qc0jqhDi9LJSUWOITGHbXqrCVtmzEen0OXnviTGyt8oKknbf4k1KJOFfWVbYvKNhOw3t0x94_EYW-GL9SXx0FVXoo0u2bBCPzpm0BbFvNOjB9h-ojKVXpOtxw0dXqL3rjB-V1Sjxbd5RQJI7eT3luOmjNtxDA-cYxV54MLt5MkpBRV7Mki5SNu4-kmxZvm8JvHSn2_fSydRVD2S3LAMKEc-bwAQHDQU4wpnrelMt-jAxWs2pD1wZo3_qzDRTBwJeDGzbLAk2Q41rwAXcZS1qE8e6daS2DXT-U9T-9zKK14WRDoZ-14N5sy3t77Z6VXQYUu7UATcVb6NxRlx4rHmZbNt8TI1rnHdvGDUTzhKwilSGlHHSY2Nma3QV5_olCLfgoe4FfgHxKT2jqCeQ4vHXzJHj5sM2ro-Mg1zSTFQQR8Z0G3ebCuNqXAQtq5RVMIJq01wlQTyfgSWaKNnJMVod31NM8x2nx6PstOmQY2OO_3oIiktOBrMRL3YK6d533JPFdFm7PCAx31yceswcWW8YOnqtTF1rLNWrDugq9aA9AosQcBjs2JHmselDj9Gh3PQWwijfOX9EnMJiFw6L9L-fWIntn9UZpskVXRd2jeooGUGw5cRdZyIDCWX6hkEGaJn0iYJwF5jXEmZVq9vNLjc23cZTXOZez7NvyijAxJN8I6SjKtwSy4oWIbvl4oaKUb3hYczXXPLS7Z0YqanfKqRIl2Echq-6i3G_B2GDMHplGh2-5I5ZbY5oGlxuMXlVQGQy7Fi0_FM-TgE6oxeZ5jz9pUPJu0dGxOS1fQu_LIwBKryF7T_SJ6Txe4y2zMLJ4ONiMK1DknHKewa4OzZDYsBRhsv35gT2ueVK8YMEp0Wapx_GS85rzQGpBS3rES6GxwnR23VtFKdxrzaTyTmd3-97qQiNyvG0iT7HQDH-Fs_tKuzZdn00AHhhu2HqwliVqvhp8pbigEP-yW4663KS3mNR0Cd7TFeCu0fPXwsIppk4UJ9xJ0mwHNs01SpafrPwDHj5VRBUdg-8ov_6hMHaMBu5I9VMpbPWuETByIAaa60GI38wkBdHiL0y5TIs3-YJU_DVw3Ch_8pPsP4-E9cWkUP7lrWyDpNhxTHyipPM5UQiXmwRUpeI86PSTFZfwsxl_B3QWC_6zvmr1bcaiteILTkfV0R0hCauSN2qsdoCY-cHnM2iHO4yx-TgRHKlZNJu2dodM1-dtEvsz3UcWI4Hg4V0pbb5qdpOlyKdeWJc1-MgzCrWqdcBM1IEv1SaDQS-VuT21AKCdrP0VmAZrXQoNnpIrDMp7Hf91Il7YMXTuQXnJXIWSFvADBnIQzuy_f9NAHSHBxTTVVhbVCWzqRW3uIOJ-esB99SrRc-8xKlF2Eesa3qs0CRPRagJ8Z-s8JQDAFy3d6dBeov21s9cayIugcqc5DJaMEJxflgg2EbTT3JYH"}')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (1, N'Glossier - Beauty Kit', N'A kit provided by Glossier, containing skin care, hair care and makeup products', N'/Images/Beauty/Beauty1.png', CAST(100.00 AS Decimal(18, 2)), 100, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (2, N'Curology - Skin Care Kit', N'A kit provided by Curology, containing skin care products', N'/Images/Beauty/Beauty2.png', CAST(50.00 AS Decimal(18, 2)), 45, 1, 2, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (3, N'Cocooil - Organic Coconut Oil', N'A kit provided by Curology, containing skin care products', N'/Images/Beauty/Beauty3.png', CAST(20.00 AS Decimal(18, 2)), 30, 1, 3, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (4, N'Schwarzkopf - Hair Care and Skin Care Kit', N'A kit provided by Schwarzkopf, containing skin care and hair care products', N'/Images/Beauty/Beauty4.png', CAST(50.00 AS Decimal(18, 2)), 60, 1, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (5, N'Skin Care Kit', N'Skin Care Kit, containing skin care and hair care products', N'/Images/Beauty/Beauty5.png', CAST(30.00 AS Decimal(18, 2)), 85, 1, 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (6, N'Air Pods', N'Air Pods - in-ear wireless headphones', N'/Images/Electronic/Electronics1.png', CAST(100.00 AS Decimal(18, 2)), 120, 3, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (7, N'On-ear Golden Headphones', N'On-ear Golden Headphones - these headphones are not wireless', N'/Images/Electronic/Electronics2.png', CAST(40.00 AS Decimal(18, 2)), 200, 3, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (8, N'On-ear Black Headphones', N'On-ear Black Headphones - these headphones are not wireless', N'/Images/Electronic/Electronics3.png', CAST(40.00 AS Decimal(18, 2)), 300, 3, 2, 3)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (9, N'Sennheiser Digital Camera with Tripod', N'Sennheiser Digital Camera - High quality digital camera provided by Sennheiser - includes tripod', N'/Images/Electronic/Electronic4.png', CAST(600.00 AS Decimal(18, 2)), 20, 3, 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (10, N'Canon Digital Camera', N'Canon Digital Camera - High quality digital camera provided by Canon', N'/Images/Electronic/Electronic5.png', CAST(500.00 AS Decimal(18, 2)), 15, 3, 3, 5)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (11, N'Nintendo Gameboy', N'Gameboy - Provided by Nintendo', N'/Images/Electronic/technology6.png', CAST(100.00 AS Decimal(18, 2)), 60, 3, 3, 5)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (12, N'Black Leather Office Chair', N'Very comfortable black leather office chair', N'/Images/Furniture/Furniture1.png', CAST(50.00 AS Decimal(18, 2)), 212, 2, 1, 5)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (13, N'Pink Leather Office Chair', N'Very comfortable pink leather office chair', N'/Images/Furniture/Furniture2.png', CAST(50.00 AS Decimal(18, 2)), 112, 2, 2, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (14, N'Lounge Chair', N'Very comfortable lounge chair', N'/Images/Furniture/Furniture3.png', CAST(70.00 AS Decimal(18, 2)), 90, 2, 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (15, N'Silver Lounge Chair', N'Very comfortable Silver lounge chair', N'/Images/Furniture/Furniture4.png', CAST(120.00 AS Decimal(18, 2)), 95, 2, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (16, N'Porcelain Table Lamp', N'White and blue Porcelain Table Lamp', N'/Images/Furniture/Furniture6.png', CAST(15.00 AS Decimal(18, 2)), 100, 2, 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (17, N'Office Table Lamp', N'Office Table Lamp', N'/Images/Furniture/Furniture7.png', CAST(20.00 AS Decimal(18, 2)), 73, 2, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (18, N'Puma Sneakers', N'Comfortable Puma Sneakers in most sizes', N'/Images/Shoes/Shoes1.png', CAST(100.00 AS Decimal(18, 2)), 50, 4, 3, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (19, N'Colorful Trainers', N'Colorful trainsers - available in most sizes', N'/Images/Shoes/Shoes2.png', CAST(150.00 AS Decimal(18, 2)), 60, 4, 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (20, N'Blue Nike Trainers', N'Blue Nike Trainers - available in most sizes', N'/Images/Shoes/Shoes3.png', CAST(200.00 AS Decimal(18, 2)), 70, 4, 2, 3)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (21, N'Colorful Hummel Trainers', N'Colorful Hummel Trainers - available in most sizes', N'/Images/Shoes/Shoes4.png', CAST(120.00 AS Decimal(18, 2)), 120, 4, 1, 5)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (22, N'Red Nike Trainers', N'Red Nike Trainers - available in most sizes', N'/Images/Shoes/Shoes5.png', CAST(200.00 AS Decimal(18, 2)), 100, 4, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [ImageURL], [Price], [Quantity], [CategoryId], [ColorId], [SizeId]) VALUES (23, N'Birkenstock Sandles', N'Birkenstock Sandles - available in most sizes', N'/Images/Shoes/Shoes6.png', CAST(50.00 AS Decimal(18, 2)), 150, 4, 3, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCartItems] ON 

INSERT [dbo].[ShoppingCartItems] ([Id], [ShoppingCartId], [ProductId], [Quantity], [Separated], [Paid]) VALUES (7, 1, 1, 1, 1, 0)
INSERT [dbo].[ShoppingCartItems] ([Id], [ShoppingCartId], [ProductId], [Quantity], [Separated], [Paid]) VALUES (8, 1, 2, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[ShoppingCartItems] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [UserId]) VALUES (1, N'149ab3f6-90c5-4d75-9869-7ac39b3e97d9')
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name], [IconCSS]) VALUES (1, N'XS', N'fas fa-shoe-prints')
INSERT [dbo].[Sizes] ([Id], [Name], [IconCSS]) VALUES (2, N'S', N'fas fa-shoe-prints')
INSERT [dbo].[Sizes] ([Id], [Name], [IconCSS]) VALUES (3, N'M', N'fas fa-shoe-prints')
INSERT [dbo].[Sizes] ([Id], [Name], [IconCSS]) VALUES (4, N'L', N'fas fa-shoe-prints')
INSERT [dbo].[Sizes] ([Id], [Name], [IconCSS]) VALUES (5, N'XL', N'fas fa-shoe-prints')
INSERT [dbo].[Sizes] ([Id], [Name], [IconCSS]) VALUES (6, N'XXL', N'fas fa-shoe-prints')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[TotalUsertAcquisitions] ON 

INSERT [dbo].[TotalUsertAcquisitions] ([Id], [UserId], [TotalPaidProducts], [TotalSeparatedProducts]) VALUES (4, N'149ab3f6-90c5-4d75-9869-7ac39b3e97d9', 3, 7)
SET IDENTITY_INSERT [dbo].[TotalUsertAcquisitions] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 24/01/2023 00:14:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 24/01/2023 00:14:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DeviceCodes_DeviceCode]    Script Date: 24/01/2023 00:14:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DeviceCodes_DeviceCode] ON [dbo].[DeviceCodes]
(
	[DeviceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DeviceCodes_Expiration]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_DeviceCodes_Expiration] ON [dbo].[DeviceCodes]
(
	[Expiration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Keys_Use]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_Keys_Use] ON [dbo].[Keys]
(
	[Use] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersistedGrants_ConsumedTime]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_ConsumedTime] ON [dbo].[PersistedGrants]
(
	[ConsumedTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersistedGrants_Expiration]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_Expiration] ON [dbo].[PersistedGrants]
(
	[Expiration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersistedGrants_SubjectId_ClientId_Type]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_SubjectId_ClientId_Type] ON [dbo].[PersistedGrants]
(
	[SubjectId] ASC,
	[ClientId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersistedGrants_SubjectId_SessionId_Type]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_SubjectId_SessionId_Type] ON [dbo].[PersistedGrants]
(
	[SubjectId] ASC,
	[SessionId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_ColorId]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_Products_ColorId] ON [dbo].[Products]
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_SizeId]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_Products_SizeId] ON [dbo].[Products]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCartItems_ProductId]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCartItems_ProductId] ON [dbo].[ShoppingCartItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCartItems_ShoppingCartId]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCartItems_ShoppingCartId] ON [dbo].[ShoppingCartItems]
(
	[ShoppingCartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ShoppingCarts_UserId]    Script Date: 24/01/2023 00:14:24 ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_UserId] ON [dbo].[ShoppingCarts]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Colors_ColorId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Sizes_SizeId]
GO
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCartItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCartItems] CHECK CONSTRAINT [FK_ShoppingCartItems_Products_ProductId]
GO
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCartItems_ShoppingCarts_ShoppingCartId] FOREIGN KEY([ShoppingCartId])
REFERENCES [dbo].[ShoppingCarts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCartItems] CHECK CONSTRAINT [FK_ShoppingCartItems_ShoppingCarts_ShoppingCartId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_ShoppingCarts] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_ShoppingCarts]
GO
ALTER TABLE [dbo].[TotalUsertAcquisitions]  WITH CHECK ADD  CONSTRAINT [FK_TotalUsertAcquisitions_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TotalUsertAcquisitions] CHECK CONSTRAINT [FK_TotalUsertAcquisitions_AspNetUsers]
GO
/****** Object:  StoredProcedure [dbo].[SeparatePlanInsert]    Script Date: 24/01/2023 00:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,David Esteban Imbajoa Ruiz>
-- =============================================

CREATE PROCEDURE [dbo].[SeparatePlanInsert]
	@UserName nvarchar(256),
	@CartId int
AS
BEGIN
	DECLARE
	@UserId nvarchar(450)
	SET @UserId  =(SELECT [Id] FROM dbo.AspNetUsers WHERE [UserName]=@UserName)

	INSERT INTO [dbo].[SeparatePlans]
           ([UserId]
           ,[ShoppingCartId])
     VALUES
           ( @UserId 
           ,@CartId)

END
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCartItemIsSeparatedToUpdateSp]    Script Date: 24/01/2023 00:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,David Esteban Imbajoa Ruiz>
-- =============================================

CREATE PROCEDURE [dbo].[ShoppingCartItemIsSeparatedToUpdateSp]
	@CartProductToUpdateId int,
	@CartProductIsSeparated bit
AS
BEGIN

UPDATE [dbo].[ShoppingCartItems]
   SET [Separated] = @CartProductIsSeparated
WHERE Id=@CartProductToUpdateId

SELECT * FROM [dbo].[AllShoppingCartsItemsView]
      WHERE Id=@CartProductToUpdateId

END
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCartItemQuantityToUpdateSp]    Script Date: 24/01/2023 00:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,David Esteban Imbajoa Ruiz>
-- =============================================

CREATE PROCEDURE [dbo].[ShoppingCartItemQuantityToUpdateSp]
	@CartProductToUpdateId int,
	@CartProductQuantity int
AS
BEGIN

UPDATE [dbo].[ShoppingCartItems]
   SET [Quantity] = @CartProductQuantity
WHERE Id=@CartProductToUpdateId

SELECT * FROM [dbo].[AllShoppingCartsItemsView]
      WHERE Id=@CartProductToUpdateId

END
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCartItemToAddSp]    Script Date: 24/01/2023 00:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,David Esteban Imbajoa Ruiz>
-- =============================================

CREATE PROCEDURE [dbo].[ShoppingCartItemToAddSp]
	@CartProductToAddId int,
	@ProductToAddId int,
	@QuantityProductToAddId int,
	@IsSeparatedProductToAddId int,
	@IsPaidProductToAddId int
AS
BEGIN

	if EXISTS (SELECT 1 FROM [dbo].[ShoppingCartItems] as shoppingCartItems
	WHERE	shoppingCartItems.ShoppingCartId=@CartProductToAddId AND 
			shoppingCartItems.ProductId=@ProductToAddId)
		SELECT 0 AS Result
    else  
		BEGIN 
			if EXISTS (SELECT 1 FROM [dbo].Products as products
			WHERE products.Id=@ProductToAddId)
				BEGIN
					INSERT INTO [dbo].ShoppingCartItems
						(ShoppingCartId
						,ProductId
						,Quantity
						,Separated
						,Paid)
					VALUES
						(@CartProductToAddId 
						,@ProductToAddId
						,@QuantityProductToAddId
						,@IsSeparatedProductToAddId
						,@IsPaidProductToAddId)
					SELECT *
					FROM [dbo].[AllShoppingCartsItemsView]
					WHERE Id=IDENT_CURRENT('[dbo].ShoppingCartItems')
				End
			ELSE
				SELECT 0 AS Result
		END
END
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCartItemToDeleteSp]    Script Date: 24/01/2023 00:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,David Esteban Imbajoa Ruiz>
-- =============================================

CREATE PROCEDURE [dbo].[ShoppingCartItemToDeleteSp]
	@CartProductToDeleteId int
AS
BEGIN
SELECT * FROM [dbo].[AllShoppingCartsItemsView]
      WHERE Id=@CartProductToDeleteId

DELETE FROM [dbo].[ShoppingCartItems]
      WHERE Id=@CartProductToDeleteId

END
GO
/****** Object:  StoredProcedure [dbo].[UserMetricsToAddOrUpdateSp]    Script Date: 24/01/2023 00:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,David Esteban Imbajoa Ruiz>
-- =============================================

Create PROCEDURE [dbo].[UserMetricsToAddOrUpdateSp]
	@UserName nvarchar(256),
	@PaidItemsToadd int,
	@SeparatedItemsToadd int

AS
BEGIN
	DECLARE
	@UserId nvarchar(256)

	SET @UserId = (SELECT Id FROM [dbo].[AspNetUsers] as users
	WHERE	users.UserName=@UserName)

	BEGIN
		IF EXISTS (SELECT 1 FROM [dbo].TotalUsertAcquisitions as totalUsertAcquisitions
		WHERE	totalUsertAcquisitions.UserId=@UserId)
			BEGIN 
				UPDATE [dbo].[TotalUsertAcquisitions]
				SET [TotalPaidProducts] =TotalPaidProducts+@PaidItemsToadd,
					[TotalSeparatedProducts] = TotalSeparatedProducts+@SeparatedItemsToadd
				WHERE [UserId]=@UserId
			END
		ELSE
		BEGIN 
			INSERT INTO [dbo].TotalUsertAcquisitions
				(UserId
				,TotalPaidProducts
				,TotalSeparatedProducts)
			VALUES
				(@UserId 
				,@PaidItemsToadd
				,@SeparatedItemsToadd)
		END
	END
	
	SELECT *
	FROM [dbo].TotalUsertAcquisitions
	WHERE [UserId]=@UserId
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Products"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "Colors"
            Begin Extent = 
               Top = 265
               Left = 39
               Bottom = 378
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Categories"
            Begin Extent = 
               Top = 142
               Left = 42
               Bottom = 255
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sizes"
            Begin Extent = 
               Top = 366
               Left = 38
               Bottom = 479
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllProductsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllProductsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllProductsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShoppingCartItems"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Products"
            Begin Extent = 
               Top = 6
               Left = 248
               Bottom = 136
               Right = 418
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ShoppingCarts"
            Begin Extent = 
               Top = 140
               Left = 368
               Bottom = 236
               Right = 538
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4500
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllShoppingCartsItemsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllShoppingCartsItemsView'
GO
USE [master]
GO
ALTER DATABASE [PedaleaDB] SET  READ_WRITE 
GO
