USE [master]
GO
/****** Object:  Database [DemoRepositoryPattern]    Script Date: 5/16/2019 11:47:18 PM ******/
CREATE DATABASE [DemoRepositoryPattern]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemoRepositoryPattern', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DemoRepositoryPattern.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DemoRepositoryPattern_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DemoRepositoryPattern_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DemoRepositoryPattern] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoRepositoryPattern].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoRepositoryPattern] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoRepositoryPattern] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoRepositoryPattern] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DemoRepositoryPattern] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoRepositoryPattern] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DemoRepositoryPattern] SET  MULTI_USER 
GO
ALTER DATABASE [DemoRepositoryPattern] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoRepositoryPattern] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoRepositoryPattern] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoRepositoryPattern] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DemoRepositoryPattern] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DemoRepositoryPattern]
GO
/****** Object:  Table [dbo].[tbl_product]    Script Date: 5/16/2019 11:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_product_final]    Script Date: 5/16/2019 11:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_product_final](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_product] ON 

INSERT [dbo].[tbl_product] ([product_id], [product_name]) VALUES (1, N'abc')
INSERT [dbo].[tbl_product] ([product_id], [product_name]) VALUES (2, N'xyz')
SET IDENTITY_INSERT [dbo].[tbl_product] OFF
SET IDENTITY_INSERT [dbo].[tbl_product_final] ON 

INSERT [dbo].[tbl_product_final] ([product_id], [product_name]) VALUES (1, N'abc')
INSERT [dbo].[tbl_product_final] ([product_id], [product_name]) VALUES (2, N'xyz')
SET IDENTITY_INSERT [dbo].[tbl_product_final] OFF
USE [master]
GO
ALTER DATABASE [DemoRepositoryPattern] SET  READ_WRITE 
GO
