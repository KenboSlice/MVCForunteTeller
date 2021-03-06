USE [master]
GO
/****** Object:  Database [FortuneTellerDB]    Script Date: 9/18/2016 11:29:16 PM ******/
CREATE DATABASE [FortuneTellerDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FortuneTellerDB', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\FortuneTellerDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FortuneTellerDB_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\FortuneTellerDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FortuneTellerDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FortuneTellerDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FortuneTellerDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FortuneTellerDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FortuneTellerDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FortuneTellerDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FortuneTellerDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FortuneTellerDB] SET  MULTI_USER 
GO
ALTER DATABASE [FortuneTellerDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FortuneTellerDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FortuneTellerDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FortuneTellerDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FortuneTellerDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FortuneTellerDB]
GO
/****** Object:  Table [dbo].[BirthMonths]    Script Date: 9/18/2016 11:29:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BirthMonths](
	[BirthMonthID] [int] IDENTITY(1,1) NOT NULL,
	[BirthMonthName] [nchar](20) NOT NULL,
 CONSTRAINT [PK_BirthMonths] PRIMARY KEY CLUSTERED 
(
	[BirthMonthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 9/18/2016 11:29:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[BirthMonthID] [int] NOT NULL,
	[FavoriteColorID] [int] NOT NULL,
	[NumberOfSiblingsID] [int] NOT NULL,
	[FirstName] [nchar](20) NOT NULL,
	[LastName] [nchar](30) NOT NULL,
	[Age] [int] NOT NULL,
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FavoriteColors]    Script Date: 9/18/2016 11:29:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteColors](
	[FavoriteColorID] [int] IDENTITY(1,1) NOT NULL,
	[FavoriteColorName] [nchar](20) NOT NULL,
 CONSTRAINT [PK_FavoriteColors] PRIMARY KEY CLUSTERED 
(
	[FavoriteColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NumberOfSiblings]    Script Date: 9/18/2016 11:29:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumberOfSiblings](
	[NumberOfSiblingsID] [int] NOT NULL,
	[NumOfSibs] [nchar](10) NOT NULL,
 CONSTRAINT [PK_NumberOfSiblings] PRIMARY KEY CLUSTERED 
(
	[NumberOfSiblingsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BirthMonths] ON 

INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (1, N'                    ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (2, N'January             ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (3, N'February            ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (4, N'March               ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (5, N'April               ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (6, N'May                 ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (7, N'June                ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (8, N'July                ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (9, N'August              ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (10, N'September           ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (11, N'October             ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (12, N'November            ')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [BirthMonthName]) VALUES (13, N'December            ')
SET IDENTITY_INSERT [dbo].[BirthMonths] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([BirthMonthID], [FavoriteColorID], [NumberOfSiblingsID], [FirstName], [LastName], [Age], [CustomerID]) VALUES (3, 5, 3, N'Kenneth             ', N'Likavec                       ', 27, 2)
INSERT [dbo].[Customers] ([BirthMonthID], [FavoriteColorID], [NumberOfSiblingsID], [FirstName], [LastName], [Age], [CustomerID]) VALUES (4, 7, 3, N'Albert              ', N'Einstein                      ', 137, 5)
INSERT [dbo].[Customers] ([BirthMonthID], [FavoriteColorID], [NumberOfSiblingsID], [FirstName], [LastName], [Age], [CustomerID]) VALUES (8, 3, 2, N'Henry               ', N'Jones Jr.                     ', 117, 6)
INSERT [dbo].[Customers] ([BirthMonthID], [FavoriteColorID], [NumberOfSiblingsID], [FirstName], [LastName], [Age], [CustomerID]) VALUES (2, 2, 5, N'Mercedes            ', N'Kaestner-Varnado              ', 24, 7)
INSERT [dbo].[Customers] ([BirthMonthID], [FavoriteColorID], [NumberOfSiblingsID], [FirstName], [LastName], [Age], [CustomerID]) VALUES (8, 4, 3, N'Amelia              ', N'Earhart                       ', 119, 8)
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[FavoriteColors] ON 

INSERT [dbo].[FavoriteColors] ([FavoriteColorID], [FavoriteColorName]) VALUES (1, N'                    ')
INSERT [dbo].[FavoriteColors] ([FavoriteColorID], [FavoriteColorName]) VALUES (2, N'Red                 ')
INSERT [dbo].[FavoriteColors] ([FavoriteColorID], [FavoriteColorName]) VALUES (3, N'Orange              ')
INSERT [dbo].[FavoriteColors] ([FavoriteColorID], [FavoriteColorName]) VALUES (4, N'Yellow              ')
INSERT [dbo].[FavoriteColors] ([FavoriteColorID], [FavoriteColorName]) VALUES (5, N'Green               ')
INSERT [dbo].[FavoriteColors] ([FavoriteColorID], [FavoriteColorName]) VALUES (6, N'Blue                ')
INSERT [dbo].[FavoriteColors] ([FavoriteColorID], [FavoriteColorName]) VALUES (7, N'Indigo              ')
INSERT [dbo].[FavoriteColors] ([FavoriteColorID], [FavoriteColorName]) VALUES (8, N'Violet              ')
SET IDENTITY_INSERT [dbo].[FavoriteColors] OFF
INSERT [dbo].[NumberOfSiblings] ([NumberOfSiblingsID], [NumOfSibs]) VALUES (1, N'          ')
INSERT [dbo].[NumberOfSiblings] ([NumberOfSiblingsID], [NumOfSibs]) VALUES (2, N'0         ')
INSERT [dbo].[NumberOfSiblings] ([NumberOfSiblingsID], [NumOfSibs]) VALUES (3, N'1         ')
INSERT [dbo].[NumberOfSiblings] ([NumberOfSiblingsID], [NumOfSibs]) VALUES (4, N'2         ')
INSERT [dbo].[NumberOfSiblings] ([NumberOfSiblingsID], [NumOfSibs]) VALUES (5, N'3         ')
INSERT [dbo].[NumberOfSiblings] ([NumberOfSiblingsID], [NumOfSibs]) VALUES (6, N'4 or More ')
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_BirthMonths] FOREIGN KEY([BirthMonthID])
REFERENCES [dbo].[BirthMonths] ([BirthMonthID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_BirthMonths]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_FavoriteColors] FOREIGN KEY([FavoriteColorID])
REFERENCES [dbo].[FavoriteColors] ([FavoriteColorID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_FavoriteColors]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_NumberOfSiblings] FOREIGN KEY([NumberOfSiblingsID])
REFERENCES [dbo].[NumberOfSiblings] ([NumberOfSiblingsID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_NumberOfSiblings]
GO
USE [master]
GO
ALTER DATABASE [FortuneTellerDB] SET  READ_WRITE 
GO
