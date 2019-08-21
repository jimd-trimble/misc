USE [master]
GO

/****** Object:  Database [UserOpRogue]    Script Date: 5/29/2018 9:04:40 AM ******/
CREATE DATABASE [UserOpRogue]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UserOpRogue', FILENAME = N'c:\AgFarm\DATA\UserOpRogue.mdf' , SIZE = 171200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UserOpRogue_log', FILENAME = N'c:\AgFarm\DATA\UserOpRogue_log.ldf' , SIZE = 152384KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [UserOpRogue] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UserOpRogue].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [UserOpRogue] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [UserOpRogue] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [UserOpRogue] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [UserOpRogue] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [UserOpRogue] SET ARITHABORT OFF 
GO

ALTER DATABASE [UserOpRogue] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [UserOpRogue] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [UserOpRogue] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [UserOpRogue] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [UserOpRogue] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [UserOpRogue] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [UserOpRogue] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [UserOpRogue] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [UserOpRogue] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [UserOpRogue] SET  ENABLE_BROKER 
GO

ALTER DATABASE [UserOpRogue] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [UserOpRogue] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [UserOpRogue] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [UserOpRogue] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [UserOpRogue] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [UserOpRogue] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [UserOpRogue] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [UserOpRogue] SET RECOVERY FULL 
GO

ALTER DATABASE [UserOpRogue] SET  MULTI_USER 
GO

ALTER DATABASE [UserOpRogue] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [UserOpRogue] SET DB_CHAINING OFF 
GO

ALTER DATABASE [UserOpRogue] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [UserOpRogue] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [UserOpRogue] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [UserOpRogue] SET  READ_WRITE 
GO


