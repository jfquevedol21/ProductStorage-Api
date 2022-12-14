USE [master]
GO
/****** Object:  Database [ProductStorage]    Script Date: 9/30/2022 1:40:56 PM ******/
CREATE DATABASE [ProductStorage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bodega', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bodega.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bodega_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bodega_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProductStorage] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductStorage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductStorage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProductStorage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProductStorage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProductStorage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProductStorage] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProductStorage] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProductStorage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProductStorage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProductStorage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProductStorage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProductStorage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProductStorage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProductStorage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProductStorage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProductStorage] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProductStorage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProductStorage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProductStorage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProductStorage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProductStorage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProductStorage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProductStorage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProductStorage] SET RECOVERY FULL 
GO
ALTER DATABASE [ProductStorage] SET  MULTI_USER 
GO
ALTER DATABASE [ProductStorage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProductStorage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProductStorage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProductStorage] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProductStorage] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProductStorage] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProductStorage', N'ON'
GO
ALTER DATABASE [ProductStorage] SET QUERY_STORE = OFF
GO
USE [ProductStorage]
GO
/****** Object:  Table [dbo].[product]    Script Date: 9/30/2022 1:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsFaulty] [bit] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([Id], [Name], [Quantity], [IsFaulty], [Active]) VALUES (1, N'Camarones editados                                                                                  ', 0, 0, 1)
INSERT [dbo].[product] ([Id], [Name], [Quantity], [IsFaulty], [Active]) VALUES (2, N'Camarones - Rio Grande                                                                              ', 300, 0, 1)
INSERT [dbo].[product] ([Id], [Name], [Quantity], [IsFaulty], [Active]) VALUES (3, N'Desinfectante para vegetales                                                                        ', 150, 1, 0)
INSERT [dbo].[product] ([Id], [Name], [Quantity], [IsFaulty], [Active]) VALUES (5, N'Toalla                                                                                              ', 200, 1, 1)
INSERT [dbo].[product] ([Id], [Name], [Quantity], [IsFaulty], [Active]) VALUES (6, N'Bolsa de hielo                                                                                      ', 2000, 1, 1)
INSERT [dbo].[product] ([Id], [Name], [Quantity], [IsFaulty], [Active]) VALUES (7, N'Chocolate amargo - Paquete de 3                                                                     ', 800, 1, 0)
INSERT [dbo].[product] ([Id], [Name], [Quantity], [IsFaulty], [Active]) VALUES (8, N'Brocoli en paquete                                                                                  ', 100, 1, 1)
INSERT [dbo].[product] ([Id], [Name], [Quantity], [IsFaulty], [Active]) VALUES (1002, N'Purina gatos castrados                                                                              ', 1000, 1, 1)
INSERT [dbo].[product] ([Id], [Name], [Quantity], [IsFaulty], [Active]) VALUES (2002, N'string                                                                                              ', 0, 1, 1)
INSERT [dbo].[product] ([Id], [Name], [Quantity], [IsFaulty], [Active]) VALUES (2003, N'test                                                                                                ', 0, 1, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
USE [master]
GO
ALTER DATABASE [ProductStorage] SET  READ_WRITE 
GO
