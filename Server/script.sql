USE [master]
GO
/****** Object:  Database [ChatUser]    Script Date: 2015/6/26 17:32:59 ******/
CREATE DATABASE [ChatUser]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChatUser', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ChatUser.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ChatUser_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ChatUser_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ChatUser] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChatUser].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChatUser] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChatUser] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChatUser] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChatUser] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChatUser] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChatUser] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChatUser] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChatUser] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChatUser] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChatUser] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChatUser] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChatUser] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChatUser] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChatUser] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChatUser] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChatUser] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChatUser] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChatUser] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChatUser] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChatUser] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChatUser] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChatUser] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChatUser] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChatUser] SET  MULTI_USER 
GO
ALTER DATABASE [ChatUser] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChatUser] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChatUser] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChatUser] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ChatUser]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 2015/6/26 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[NikeName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](100) NULL,
	[Sex] [int] NULL CONSTRAINT [DF_tUser_Sex]  DEFAULT ((0)),
	[BirthDay] [datetime] NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](20) NULL,
	[Status] [int] NULL CONSTRAINT [DF_tUser_State]  DEFAULT ((0)),
	[OnlineTime] [datetime] NULL,
	[OfflineTime] [datetime] NULL,
	[IsValid] [int] NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [ChatUser] SET  READ_WRITE 
GO
