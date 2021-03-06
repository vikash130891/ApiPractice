USE [master]
GO
/****** Object:  Database [interviewtrial]    Script Date: 2/7/2018 1:57:32 AM ******/
CREATE DATABASE [interviewtrial]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'interviewtrial', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\interviewtrial.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'interviewtrial_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\interviewtrial_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [interviewtrial] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [interviewtrial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [interviewtrial] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [interviewtrial] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [interviewtrial] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [interviewtrial] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [interviewtrial] SET ARITHABORT OFF 
GO
ALTER DATABASE [interviewtrial] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [interviewtrial] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [interviewtrial] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [interviewtrial] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [interviewtrial] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [interviewtrial] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [interviewtrial] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [interviewtrial] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [interviewtrial] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [interviewtrial] SET  DISABLE_BROKER 
GO
ALTER DATABASE [interviewtrial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [interviewtrial] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [interviewtrial] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [interviewtrial] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [interviewtrial] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [interviewtrial] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [interviewtrial] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [interviewtrial] SET RECOVERY FULL 
GO
ALTER DATABASE [interviewtrial] SET  MULTI_USER 
GO
ALTER DATABASE [interviewtrial] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [interviewtrial] SET DB_CHAINING OFF 
GO
ALTER DATABASE [interviewtrial] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [interviewtrial] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [interviewtrial] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'interviewtrial', N'ON'
GO
USE [interviewtrial]
GO
/****** Object:  Table [dbo].[student]    Script Date: 2/7/2018 1:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Role] [int] NOT NULL,
	[Address] [varchar](150) NOT NULL,
	[gender] [varchar](15) NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (1, N'updatesuccess', N'updatesuccess', 0, N'updatesuccess', N'updatesuccess')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (2, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (3, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (4, N'updatesuccess', N'updatesuccess', 0, N'updatesuccess', N'updatesuccess')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (5, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (11, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (14, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (15, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (16, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (17, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (18, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (19, N'Saurav', N'Chatterjee', 1, N'Dhanbad', N'Male')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (20, N'Vikash', N'Kumar', 1, N'Dhanbad', N'Male')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (21, N'Vikash', N'Kumar', 1, N'Dhanbad', N'Male')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (22, N'Vikash', N'Kumar', 1, N'Dhanbad', N'Male')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (23, N'Prafull', N'Ranjan', 2, N'Delhi', N'Male')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (24, N'AJITABH ', N'mOAHANTY', 823, N'sacuuu rei  uireiu iureg;lreofoi riu r fugyufui riuieiu fo.euou4 uo.', N'MALE')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (25, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (26, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (27, N'Test', N'Test', 1, N'Test', N'Test')
INSERT [dbo].[student] ([ID], [Name], [LastName], [Role], [Address], [gender]) VALUES (28, N'Test', N'Test', 1, N'Test', N'Test')
SET IDENTITY_INSERT [dbo].[student] OFF
USE [master]
GO
ALTER DATABASE [interviewtrial] SET  READ_WRITE 
GO
