USE [master]
GO
/****** Object:  Database [Proper_Agc]    Script Date: 29/08/2022 11:53:12 ******/
CREATE DATABASE [Proper_Agc]
 CONTAINMENT = NONE
 ALTER DATABASE [Proper_Agc] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proper_Agc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proper_Agc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proper_Agc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proper_Agc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proper_Agc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proper_Agc] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proper_Agc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proper_Agc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proper_Agc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proper_Agc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proper_Agc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proper_Agc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proper_Agc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proper_Agc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proper_Agc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proper_Agc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proper_Agc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proper_Agc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proper_Agc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proper_Agc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proper_Agc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proper_Agc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proper_Agc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proper_Agc] SET RECOVERY FULL 
GO
ALTER DATABASE [Proper_Agc] SET  MULTI_USER 
GO
ALTER DATABASE [Proper_Agc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proper_Agc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proper_Agc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proper_Agc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proper_Agc] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Proper_Agc', N'ON'
GO
ALTER DATABASE [Proper_Agc] SET QUERY_STORE = OFF
GO
ALTER DATABASE [Proper_Agc] SET  READ_WRITE 
GO

USE [Proper_Agc]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Term](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Term_code] [nvarchar](200) NULL,
	[Term_description] [nvarchar](255) NULL,
	[Type] [nvarchar](50) NULL,
	[Functionality] [nvarchar](100) NULL,
	[Field] [nvarchar](100) NULL,
	[Width] [numeric](18, 0) NULL,
	[Order_Grid] [numeric](18, 0) NULL,
	[Field_name] [nvarchar](100) NULL,
	[Menu_structure] [nvarchar](10) NULL,
	[Quantity_Frozen_Fields] [numeric](18, 0) NULL,
	[Align] [nchar](1) NULL,
	[Complemento] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Term_Language](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[language_id] [numeric](18, 0) NULL,
	[term_id] [numeric](18, 0) NULL,
	[term_description] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
