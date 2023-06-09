USE [master]
GO
/****** Object:  Database [lol]    Script Date: 14.05.2023 17:23:39 ******/
CREATE DATABASE [lol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'lol', FILENAME = N'D:\SQLServer\MSSQL15.SQLEXPRESS01\MSSQL\DATA\lol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'lol_log', FILENAME = N'D:\SQLServer\MSSQL15.SQLEXPRESS01\MSSQL\DATA\lol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [lol] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [lol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [lol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [lol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [lol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [lol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [lol] SET ARITHABORT OFF 
GO
ALTER DATABASE [lol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [lol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [lol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [lol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [lol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [lol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [lol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [lol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [lol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [lol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [lol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [lol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [lol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [lol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [lol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [lol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [lol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [lol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [lol] SET  MULTI_USER 
GO
ALTER DATABASE [lol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [lol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [lol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [lol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [lol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [lol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [lol] SET QUERY_STORE = OFF
GO
USE [lol]
GO
/****** Object:  Table [dbo].[Build]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Build](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ID_Hero] [int] NOT NULL,
	[ID_Summoner_Spell1] [int] NOT NULL,
	[ID_Summoner_Spell2] [int] NOT NULL,
	[ID_MainSubRune1] [int] NOT NULL,
	[ID_MainSubRune2] [int] NOT NULL,
	[ID_MainSubRune3] [int] NOT NULL,
	[ID_MainRune] [int] NOT NULL,
	[ID_SudeSubRune1] [int] NULL,
	[ID_SudeSubRune2] [int] NULL,
	[ID_SudeSubRune3] [int] NULL,
	[ID_Passive1] [int] NOT NULL,
	[ID_Passive2] [int] NOT NULL,
	[ID_Passive3] [int] NOT NULL,
 CONSTRAINT [PK_Build] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Difficult]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Difficult](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Difficult] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hero]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hero](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ID_Difficult] [int] NOT NULL,
	[Image] [varbinary](max) NULL,
	[ID_TypeDamage] [int] NOT NULL,
	[ID_Role] [int] NOT NULL,
	[ID_Class] [int] NOT NULL,
 CONSTRAINT [PK_Hero] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MainRune]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainRune](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_MainRune] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passive1]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passive1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Passive1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passive2]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passive2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Passive2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passive3]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passive3](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Passive3] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubRune1]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubRune1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SubRune1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubRune2]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubRune2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SubRune2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubRune3]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubRune3](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SubRune3] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summoner_Spell1]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Summoner_Spell1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Summoner_Spell1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summoner_Spell2]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Summoner_Spell2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Summoner_Spell2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeDamage]    Script Date: 14.05.2023 17:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeDamage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeDamage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Build] ON 

INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (9, NULL, 2, 5, 6, 3, 1, 1, 2, 8, NULL, 8, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (10, NULL, 3, 5, 7, 3, 2, 1, 4, NULL, 12, 11, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (11, NULL, 4, 5, 7, 3, 1, 1, 1, 12, 13, NULL, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (12, NULL, 6, 5, 7, 13, 15, 14, 15, NULL, 13, 13, 4, 2, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (13, NULL, 7, 5, 8, 2, 2, 3, 4, 4, NULL, 7, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (14, NULL, 8, 5, 6, 4, 6, 6, 5, 3, NULL, 1, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (15, NULL, 9, 5, 7, 5, 6, 7, 5, 8, 7, NULL, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (16, NULL, 10, 5, 6, 2, 2, 3, 4, NULL, 13, 12, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (18, NULL, 11, 5, 6, 8, 7, 10, 10, 14, 15, NULL, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (19, NULL, 12, 5, 2, 1, 3, 2, 4, NULL, 10, 10, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (20, NULL, 13, 5, 7, 11, 13, 13, 14, NULL, 4, 6, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (22, NULL, 14, 5, 8, 2, 1, 1, 4, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (23, NULL, 15, 5, 7, 13, 16, 14, 15, NULL, 13, 13, 4, 2, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (24, NULL, 16, 5, 7, 11, 13, 13, 14, NULL, 16, 14, 3, 2, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (26, NULL, 17, 5, 7, 5, 6, 4, 7, 8, NULL, 8, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (27, NULL, 18, 5, 8, 2, 2, 1, 4, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (28, NULL, 19, 5, 8, 2, 1, 3, 2, NULL, 9, 9, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (29, NULL, 20, 5, 1, 2, 1, 1, 2, 5, NULL, 4, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (30, NULL, 22, 5, 6, 14, 16, 14, 17, 8, 7, NULL, 4, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (31, NULL, 23, 5, 2, 2, 1, 1, 2, 5, NULL, 4, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (32, NULL, 24, 5, 7, 5, 6, 7, 5, 8, 7, NULL, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (33, NULL, 26, 5, 7, 8, 7, 8, 10, NULL, 16, 14, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (34, NULL, 27, 5, 8, 2, 1, 1, 4, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (37, NULL, 28, 5, 6, 14, 16, 14, 17, 8, 7, NULL, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (38, NULL, 29, 5, 2, 9, 7, 10, 11, 14, NULL, 14, 4, 1, 1)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (39, NULL, 30, 5, 6, 12, 12, 12, 12, 3, 2, NULL, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (40, NULL, 31, 5, 8, 2, 1, 3, 4, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (41, NULL, 32, 5, 6, 12, 13, 11, 13, 9, 7, NULL, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (42, NULL, 33, 5, 6, 14, 16, 14, 17, 5, NULL, 4, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (43, NULL, 34, 5, 6, 2, 2, 3, 4, NULL, 11, 11, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (44, NULL, 35, 6, 7, 3, 1, 3, 4, NULL, 13, 13, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (45, NULL, 37, 2, 8, 9, 9, 9, 11, NULL, 6, 5, 1, 1, 1)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (46, NULL, 39, 5, 6, 2, 1, 3, 3, NULL, 13, 11, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (47, NULL, 40, 5, 8, 6, 6, 4, 7, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (48, NULL, 41, 5, 8, 2, 1, 1, 3, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (49, NULL, 42, 5, 2, 2, 2, 3, 4, NULL, 13, 13, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (50, NULL, 43, 5, 8, 2, 1, 1, 4, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (51, NULL, 44, 5, 6, 3, 1, 3, 4, 14, 16, NULL, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (52, NULL, 46, 5, 1, 3, 3, 1, 3, NULL, 9, 10, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (53, NULL, 47, 5, 6, 2, 1, 3, 2, NULL, 13, 13, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (54, NULL, 48, 5, 2, 3, 3, 1, 2, NULL, 10, 10, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (55, NULL, 49, 5, 8, 2, 1, 1, 4, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (56, NULL, 50, 5, 6, 10, 12, 11, 12, 14, NULL, 15, 3, 2, 1)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (57, NULL, 51, 5, 9, 2, 3, 1, 2, 5, NULL, 4, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (59, NULL, 52, 5, 7, 2, 1, 3, 2, NULL, 12, 13, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (60, NULL, 53, 5, 4, 14, 16, 14, 15, 11, NULL, 12, 4, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (61, NULL, 54, 5, 6, 8, 7, 8, 10, 5, NULL, 6, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (62, NULL, 55, 5, 8, 11, 11, 12, 13, 2, 2, NULL, 4, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (63, NULL, 56, 5, 7, 5, 6, 7, 5, NULL, 7, 8, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (64, NULL, 57, 5, 4, 14, 16, 14, 17, 8, NULL, 8, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (65, NULL, 58, 5, 2, 2, 1, 3, 2, NULL, 11, 11, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (66, NULL, 59, 5, 6, 8, 7, 8, 10, 14, 16, NULL, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (67, NULL, 60, 5, 7, 8, 7, 9, 9, 4, NULL, 6, 4, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (68, NULL, 61, 5, 7, 5, 6, 4, 5, 8, NULL, 8, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (69, NULL, 62, 5, 8, 9, 7, 9, 9, NULL, 14, 14, 4, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (70, NULL, 63, 5, 6, 3, 2, 3, 4, 10, 13, NULL, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (71, NULL, 64, 5, 7, 2, 1, 3, 4, NULL, 16, 14, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (72, NULL, 65, 5, 6, 2, 3, 3, 4, 10, 13, NULL, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (73, NULL, 66, 5, 8, 14, 14, 14, 17, 6, NULL, 4, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (74, NULL, 67, 5, 8, 14, 14, 14, 17, 6, NULL, 4, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (75, NULL, 68, 5, 8, 2, 2, 3, 4, 14, NULL, 14, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (76, NULL, 69, 5, 1, 3, 3, 1, 2, 14, 16, NULL, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (77, NULL, 70, 5, 4, 2, 1, 1, 2, 5, NULL, 4, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (78, NULL, 71, 6, 7, 12, 13, 13, 12, 14, 16, NULL, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (79, NULL, 72, 5, 7, 8, 7, 8, 10, NULL, 16, 14, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (80, NULL, 73, 4, 8, 4, 6, 7, 7, 3, NULL, 3, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (81, NULL, 74, 5, 6, 5, 6, 7, 5, 3, 2, NULL, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (82, NULL, 75, 5, 6, 3, 2, 3, 4, 8, 7, NULL, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (83, NULL, 76, 5, 7, 2, 2, 3, 4, 6, NULL, 3, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (84, NULL, 77, 5, 7, 2, 3, 2, 3, NULL, 10, 10, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (85, NULL, 78, 5, 6, 2, 1, 3, 2, NULL, 13, 11, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (87, NULL, 79, 5, 1, 3, 3, 1, 2, NULL, 10, 10, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (88, NULL, 80, 5, 6, 9, 7, 8, 9, 5, NULL, 7, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (89, NULL, 81, 5, 7, 6, 6, 4, 5, 3, NULL, 3, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (90, NULL, 82, 5, 8, 2, 1, 1, 1, 6, NULL, 4, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (92, NULL, 83, 5, 7, 2, 1, 3, 4, 10, 13, NULL, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (93, NULL, 84, 5, 2, 2, 3, 3, 2, NULL, 11, 11, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (94, NULL, 85, 5, 6, 14, 16, 14, 17, 5, NULL, 7, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (95, NULL, 86, 5, 6, 10, 11, 11, 12, NULL, 16, 15, 3, 2, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (96, NULL, 87, 5, 8, 2, 1, 1, 4, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (97, NULL, 88, 5, 7, 5, 6, 4, 5, 8, NULL, 8, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (98, NULL, 89, 5, 7, 13, 16, 14, 15, NULL, 13, 13, 4, 2, 1)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (99, NULL, 91, 5, 8, 2, 2, 1, 4, NULL, 9, 9, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (100, NULL, 92, 5, 8, 2, 1, 1, 4, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (101, NULL, 93, 5, 6, 4, 6, 7, 5, 8, 7, NULL, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (102, NULL, 94, 5, 7, 8, 7, 8, 9, NULL, 16, 14, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (103, NULL, 95, 5, 7, 8, 7, 8, 10, 4, NULL, 7, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (104, NULL, 96, 5, 1, 3, 3, 1, 1, 14, 16, NULL, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (105, NULL, 97, 5, 6, 8, 7, 8, 9, 14, NULL, 14, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (106, NULL, 98, 5, 6, 12, 11, 11, 12, 8, 7, NULL, 3, 2, 1)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (107, NULL, 99, 5, 8, 9, 7, 9, 11, 4, NULL, 4, 4, 1, 1)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (108, NULL, 100, 5, 8, 2, 1, 1, 2, NULL, 6, 4, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (109, NULL, 101, 5, 1, 8, 7, 8, 9, NULL, 13, 12, 4, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (110, NULL, 102, 5, 1, 3, 3, 1, 1, 14, 16, NULL, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (112, NULL, 103, 5, 7, 8, 7, 8, 10, 15, 16, NULL, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (113, NULL, 104, 5, 6, 2, 2, 3, 4, NULL, 13, 12, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (115, NULL, 105, 5, 7, 8, 7, 7, 9, NULL, 16, 14, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (116, NULL, 106, 6, 2, 2, 2, 3, 3, NULL, 12, 13, 4, 2, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (117, NULL, 107, 5, 7, 13, 15, 14, 15, NULL, 13, 13, 3, 2, 2)
GO
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (118, NULL, 108, 5, 8, 6, 6, 4, 7, NULL, 7, 9, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (119, NULL, 109, 5, 7, 5, 6, 4, 5, 8, NULL, 8, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (121, NULL, 110, 5, 2, 2, 3, 3, 4, 6, NULL, 4, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (122, NULL, 111, 5, 8, 2, 1, 1, 2, NULL, 6, 7, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (123, NULL, 112, 5, 8, 9, 9, 9, 11, 2, 2, NULL, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (124, NULL, 113, 5, 2, 2, 1, 3, 4, NULL, 16, 15, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (125, NULL, 114, 5, 6, 8, 7, 8, 9, NULL, 16, 14, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (126, NULL, 116, 5, 6, 10, 13, 11, 12, 14, 16, NULL, 3, 2, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (127, NULL, 117, 5, 7, 4, 4, 7, 8, NULL, 13, 13, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (128, NULL, 122, 5, 7, 2, 2, 1, 1, 6, NULL, 4, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (129, NULL, 123, 5, 6, 12, 13, 12, 12, NULL, 16, 16, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (130, NULL, 124, 5, 6, 8, 7, 9, 11, NULL, 16, 14, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (131, NULL, 125, 5, 7, 9, 10, 8, 10, NULL, 13, 13, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (132, NULL, 126, 5, 8, 11, 11, 13, 13, 2, 1, NULL, 3, 2, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (133, NULL, 127, 5, 8, 2, 1, 1, 4, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (134, NULL, 128, 5, 7, 13, 15, 14, 15, NULL, 13, 13, 4, 2, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (135, NULL, 129, 5, 7, 12, 13, 12, 14, NULL, 16, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (136, NULL, 130, 5, 8, 2, 1, 1, 3, 6, NULL, 5, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (137, NULL, 131, 5, 7, 2, 1, 3, 1, NULL, 13, 13, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (138, NULL, 132, 5, 7, 2, 2, 3, 4, 9, 7, NULL, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (139, NULL, 133, 5, 7, 11, 13, 13, 14, NULL, 4, 7, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (140, NULL, 134, 5, 7, 3, 2, 3, 4, NULL, 12, 13, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (141, NULL, 135, 5, 4, 2, 3, 3, 4, 5, NULL, 4, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (142, NULL, 136, 5, 7, 3, 2, 3, 4, NULL, 11, 11, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (145, NULL, 137, 5, 8, 11, 11, 11, 13, 2, 1, NULL, 3, 2, 1)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (146, NULL, 138, 5, 4, 3, 1, 2, 3, NULL, 16, 15, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (149, NULL, 139, 5, 7, 8, 7, 8, 9, NULL, 16, 14, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (150, NULL, 140, 5, 7, 2, 1, 3, 4, NULL, 12, 13, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (151, NULL, 141, 5, 2, 3, 3, 1, 2, 14, 16, NULL, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (152, NULL, 142, 5, 2, 2, 2, 3, 4, 9, 9, NULL, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (153, NULL, 143, 5, 6, 14, 15, 14, 17, 8, 7, NULL, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (154, NULL, 144, 5, 6, 10, 11, 11, 12, NULL, 15, 15, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (155, NULL, 145, 5, 8, 2, 1, 3, 4, NULL, 7, 9, 3, 1, 1)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (156, NULL, 146, 5, 7, 8, 7, 10, 9, NULL, 11, 12, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (157, NULL, 147, 5, 1, 8, 7, 8, 9, NULL, 13, 12, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (158, NULL, 149, 5, 6, 12, 12, 13, 12, 2, 1, NULL, 3, 2, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (159, NULL, 150, 5, 6, 14, 16, 14, 17, 8, 7, NULL, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (160, NULL, 151, 5, 7, 14, 14, 14, 17, 6, NULL, 4, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (161, NULL, 152, 5, 7, 14, 16, 14, 15, NULL, 11, 12, 3, 2, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (162, NULL, 153, 5, 6, 5, 6, 4, 5, NULL, 15, 16, 3, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (163, NULL, 154, 5, 2, 3, 1, 1, 2, 5, NULL, 4, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (164, NULL, 155, 5, 7, 2, 1, 3, 1, NULL, 13, 11, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (165, NULL, 156, 5, 8, 2, 1, 1, 2, 14, NULL, 15, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (166, NULL, 157, 5, 7, 13, 16, 14, 15, NULL, 13, 13, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (167, NULL, 158, 5, 2, 2, 2, 3, 2, NULL, 12, 13, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (168, NULL, 159, 5, 1, 2, 3, 1, 2, 5, NULL, 4, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (169, NULL, 160, 2, 8, 2, 2, 3, 4, NULL, 11, 13, 3, 1, 1)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (170, NULL, 161, 5, 6, 2, 2, 3, 1, NULL, 13, 11, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (171, NULL, 162, 5, 8, 15, 14, 14, 17, 4, NULL, 7, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (172, NULL, 163, 5, 7, 6, 6, 4, 5, 2, NULL, 1, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (173, NULL, 164, 5, 6, 10, 12, 13, 12, 8, NULL, 8, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (174, NULL, 165, 5, 7, 8, 10, 8, 10, 14, 16, NULL, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (175, NULL, 166, 5, 6, 10, 11, 11, 12, 2, 2, NULL, 3, 2, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (176, NULL, 167, 7, 8, 6, 6, 6, 8, NULL, 1, 1, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (177, NULL, 168, 5, 2, 3, 3, 1, 2, 14, 16, NULL, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (178, NULL, 169, 5, 6, 12, 12, 12, 12, 4, NULL, 7, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (179, NULL, 170, 5, 8, 6, 6, 4, 7, NULL, 7, 10, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (180, NULL, 171, 5, 8, 6, 6, 6, 5, NULL, 10, 10, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (181, NULL, 172, 5, 1, 3, 3, 1, 1, 14, 16, NULL, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (182, NULL, 173, 5, 8, 6, 6, 4, 7, 14, NULL, 14, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (183, NULL, 174, 5, 8, 4, 6, 6, 7, 9, NULL, 9, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (184, NULL, 175, 5, 7, 4, 6, 6, 5, 8, 10, NULL, 1, 1, 3)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (185, NULL, 176, 5, 2, 3, 3, 1, 2, NULL, 16, 15, 3, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (186, NULL, 177, 4, 7, 8, 7, 8, 9, 3, NULL, 2, 1, 1, 2)
INSERT [dbo].[Build] ([ID], [Name], [ID_Hero], [ID_Summoner_Spell1], [ID_Summoner_Spell2], [ID_MainSubRune1], [ID_MainSubRune2], [ID_MainSubRune3], [ID_MainRune], [ID_SudeSubRune1], [ID_SudeSubRune2], [ID_SudeSubRune3], [ID_Passive1], [ID_Passive2], [ID_Passive3]) VALUES (187, NULL, 178, 5, 7, 2, 1, 3, 2, NULL, 13, 13, 3, 1, 3)
SET IDENTITY_INSERT [dbo].[Build] OFF
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([ID], [Name]) VALUES (1, N'Топ')
INSERT [dbo].[Class] ([ID], [Name]) VALUES (2, N'Лес')
INSERT [dbo].[Class] ([ID], [Name]) VALUES (3, N'Мид')
INSERT [dbo].[Class] ([ID], [Name]) VALUES (4, N'Стрелок')
INSERT [dbo].[Class] ([ID], [Name]) VALUES (5, N'Поддержка')
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
SET IDENTITY_INSERT [dbo].[Difficult] ON 

INSERT [dbo].[Difficult] ([ID], [Name]) VALUES (1, N'Очень легко')
INSERT [dbo].[Difficult] ([ID], [Name]) VALUES (2, N'Легко')
INSERT [dbo].[Difficult] ([ID], [Name]) VALUES (3, N'Средне')
INSERT [dbo].[Difficult] ([ID], [Name]) VALUES (4, N'Сложно')
INSERT [dbo].[Difficult] ([ID], [Name]) VALUES (5, N'Очень сложно')
SET IDENTITY_INSERT [dbo].[Difficult] OFF
GO
SET IDENTITY_INSERT [dbo].[Hero] ON 

INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (2, N'Азир', 5, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (3, N'Акали', 3, NULL, 2, 1, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (4, N'Акшан', 2, NULL, 1, 1, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (6, N'Алистар', 1, NULL, 2, 6, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (7, N'Амуму', 1, NULL, 2, 6, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (8, N'Анивия', 4, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (9, N'Ари', 2, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (10, N'Атрокс', 3, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (11, N'Аурелион Сол', 2, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (12, N'Афелий', 5, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (13, N'Бард', 4, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (14, N'Бел''Вет', 2, NULL, 4, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (15, N'Блицкранк', 2, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (16, N'Браум', 3, NULL, 2, 6, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (17, N'Брэнд', 1, NULL, 2, 3, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (18, N'Вай', 2, NULL, 1, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (19, N'Варвик', 1, NULL, 1, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (20, N'Варус', 3, NULL, 2, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (22, N'Вейгар', 2, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (23, N'Вейн', 3, NULL, 4, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (24, N'Векс', 1, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (26, N'Вел''Коз', 1, NULL, 3, 3, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (27, N'Виего', 2, NULL, 1, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (28, N'Виктор', 2, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (29, N'Владимир', 3, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (30, N'Волибир', 2, NULL, 3, 6, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (31, N'Вуконг', 2, NULL, 1, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (32, N'Галио', 2, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (33, N'Гангпланк', 5, NULL, 1, 1, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (34, N'Гарен', 1, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (35, N'Гвен', 2, NULL, 2, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (37, N'Гекарим', 3, NULL, 1, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (39, N'Гнар', 3, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (40, N'Грагас', 4, NULL, 2, 3, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (41, N'Грейвз', 3, NULL, 1, 4, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (42, N'Дариус', 2, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (43, N'Джарван IV', 2, NULL, 1, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (44, N'Джейс', 3, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (46, N'Джин', 2, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (47, N'Джакс', 2, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (48, N'Джинкс', 1, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (49, N'Диана', 2, NULL, 2, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (50, N'Доктор Мундо', 1, NULL, 2, 6, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (51, N'Дрейвен', 3, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (52, N'Ёнэ', 4, NULL, 4, 2, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (53, N'Жанна', 2, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (54, N'Зайра', 1, NULL, 2, 3, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (55, N'Зак', 2, NULL, 2, 6, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (56, N'Зед', 4, NULL, 1, 2, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (57, N'Зерат', 2, NULL, 2, 3, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (58, N'Зери', 4, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (59, N'Зиггс', 2, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (60, N'Зилеан', 2, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (61, N'Зои', 4, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (62, N'Иверн', 3, NULL, 2, 6, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (63, N'Иллаой', 2, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (64, N'Ирелия', 4, NULL, 1, 2, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (65, N'Йорик', 1, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (66, N'Ка''Зикс', 3, NULL, 1, 1, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (67, N'Каин(синий)', 3, NULL, 1, 1, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (68, N'Каин(красный)', 3, NULL, 1, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (69, N'Кай''Са', 3, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (70, N'Калиста', 4, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (71, N'Камилла', 4, NULL, 4, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (72, N'Карма', 2, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (73, N'Картус', 2, NULL, 2, 3, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (74, N'Кассадин', 3, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (75, N'Кассиопея', 3, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (76, N'Катарина', 4, NULL, 2, 1, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (77, N'Квинн', 2, NULL, 1, 1, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (78, N'Кейл', 2, NULL, 2, 4, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (79, N'Кейтлин', 2, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (80, N'Кеннен', 2, NULL, 2, 3, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (81, N'Киана', 4, NULL, 1, 1, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (82, N'Киндред', 4, NULL, 1, 4, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (83, N'Клед', 3, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (84, N'Ког''Мао', 3, NULL, 3, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (85, N'Корки', 3, NULL, 2, 1, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (86, N'К''Санте', 5, NULL, 3, 6, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (87, N'Ксин Жао', 1, NULL, 1, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (88, N'Ле Блан', 4, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (89, N'Леона', 1, NULL, 2, 6, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (91, N'Лиллия', 2, NULL, 2, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (92, N'Ли Син', 5, NULL, 1, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (93, N'Лиссандра', 2, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (94, N'Лулу', 1, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (95, N'Люкс', 1, NULL, 2, 3, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (96, N'Люциан', 3, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (97, N'Мальзахар', 2, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (98, N'Мальфит', 1, NULL, 2, 6, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (99, N'Маокай', 2, NULL, 2, 6, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (100, N'Мастер Йи', 1, NULL, 3, 1, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (101, N'Милио', 2, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (102, N'Мисс Фортуна', 1, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (103, N'Моргана', 2, NULL, 2, 3, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (104, N'Мордекайзер', 1, NULL, 2, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (105, N'Нами', 1, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (106, N'Насус', 1, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (107, N'Наутилус', 2, NULL, 2, 6, 5)
GO
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (108, N'Нидали', 4, NULL, 2, 1, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (109, N'Нико', 2, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (110, N'Нила', 3, NULL, 1, 2, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (111, N'Ноктюрн', 2, NULL, 1, 1, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (112, N'Нуну и Виллумп', 2, NULL, 2, 6, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (113, N'Олаф', 2, NULL, 3, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (114, N'Орианна', 3, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (116, N'Орн', 3, NULL, 2, 6, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (117, N'Пайк', 3, NULL, 1, 1, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (122, N'Пантеон', 2, NULL, 1, 2, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (123, N'Поппи', 2, NULL, 1, 6, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (124, N'Райз', 4, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (125, N'Рамбл', 3, NULL, 2, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (126, N'Раммус', 1, NULL, 2, 6, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (127, N'Рек''Сай', 4, NULL, 1, 1, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (128, N'Релл', 3, NULL, 2, 6, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (129, N'Рената Гласк', 2, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (130, N'Ренгар', 3, NULL, 1, 1, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (131, N'Ренектон', 3, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (132, N'Ривен', 5, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (133, N'Рэйкан', 2, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (134, N'Сайлас', 4, NULL, 2, 2, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (135, N'Самира', 3, NULL, 1, 2, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (136, N'Свейн', 2, NULL, 2, 3, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (137, N'Седжуани', 2, NULL, 3, 6, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (138, N'Сенна', 3, NULL, 1, 4, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (139, N'Серафина', 1, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (140, N'Сетт', 3, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (141, N'Сивир', 1, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (142, N'Синджед', 3, NULL, 2, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (143, N'Синдра', 3, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (144, N'Сион', 2, NULL, 1, 6, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (145, N'Скарнер', 3, NULL, 1, 6, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (146, N'Сона', 1, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (147, N'Сорака', 1, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (149, N'Таам Кенч', 2, NULL, 2, 6, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (150, N'Талия', 4, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (151, N'Талон', 3, NULL, 1, 1, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (152, N'Тарик', 4, NULL, 2, 6, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (153, N'Твистед Фэйт', 4, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (154, N'Твич', 3, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (155, N'Тимо', 1, NULL, 2, 3, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (156, N'Трандл', 2, NULL, 1, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (157, N'Треш', 4, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (158, N'Триндамир', 2, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (159, N'Тристана', 1, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (160, N'Удир', 2, NULL, 2, 6, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (161, N'Ургот', 1, NULL, 1, 2, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (162, N'Фиддлстикс', 3, NULL, 2, 3, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (163, N'Физз', 4, NULL, 2, 1, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (164, N'Фиора', 4, NULL, 4, 2, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (165, N'Хеймердингер', 2, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (166, N'Чо''Гат', 1, NULL, 2, 6, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (167, N'Шако', 4, NULL, 1, 1, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (168, N'Шая', 3, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (169, N'Шен', 1, NULL, 3, 6, 1)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (170, N'Шивана', 2, NULL, 2, 3, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (171, N'Эвелинн', 4, NULL, 2, 1, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (172, N'Эзреаль', 4, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (173, N'Экко', 3, NULL, 2, 1, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (174, N'Элиза', 4, NULL, 2, 1, 2)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (175, N'Энни', 1, NULL, 2, 3, 3)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (176, N'Эш', 1, NULL, 1, 4, 4)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (177, N'Юми', 1, NULL, 2, 5, 5)
INSERT [dbo].[Hero] ([ID], [Name], [ID_Difficult], [Image], [ID_TypeDamage], [ID_Role], [ID_Class]) VALUES (178, N'Ясуо', 4, NULL, 1, 2, 3)
SET IDENTITY_INSERT [dbo].[Hero] OFF
GO
SET IDENTITY_INSERT [dbo].[MainRune] ON 

INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (1, N'Решительное наступление', N'Поражая вражеского чемпиона 3 последовательными автоатаками вы дополнительно наносите ему 40-180 адаптивного урона (в зависимости от уровня) и ослабляете его. Ослабленный чемпион получает на 8-12% больше урона из всех источников в течении 6 сек.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (2, N'Смертельный темп', N'Ваша скорость атаки увеличивается на [60-90%](для чемпионов ближнего боя) или на [24-54%](для чемпионов дальнего боя) на 6 сек.,когда вы атакуете вражеского чемпиона. Прибавка суммируется до 6 раз.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (3, N'Искусное лавирование', N'Во время передвижения и атак накапливаются заряды энергии. Когда их станет 100, ваша следующая атака будет заряженой. Заряженные атаки востанавилвают вам здоровье в размере 10-100(+0.3 от допольнительной силы атаки, +0.2 от силы умений) и увеличивают скорость передвижения на 20% на 1 сек.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (4, N'Завоеватель', N'Автоатаки или умения, которые наносят уронвражескому чемпиону, дают 2 заряда Завоевателя на 5 сек. Вы получаете 2-4.5 адаптивной силы за каждый заряд. Может накапливаться до 12 зарядов. Чемпионы дальнего боя получают лишь 1 заряд за автоатаку. При максимальном количесвте зарядов восстанавилвает здоровье в размере 8% от урона, нанесённого чемпионам (5% для чемпионов дальнего боя).')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (5, N'Казнь электричеством', N'Наносит дополнительный адаптивный урон, если вы поражаете врага 3 отдельными атаками или умениями в течении 3 сек.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (6, N'Хищник', N'При погоне за вражескими чемпионами ваша скорость передвижения увеличивается на 25-50% в течении 1 сек. После разгона атаки и умения, наносящие урон чемпионам, прерывают действие эффекта, а также наносят 20-180 (+25% от дополнительной силы атаки)(+15% от силы умений) дополнительного адаптивного урона.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (7, N'Тёмная жатва', N'При нанесении урона чемпиону, уровень здоровья которого ниже 50% вы дополнительно наносите адаптивный урон. Кроме того, вы пожинаете его душу, навсегда увеличивая урон, который наносит тёмная жатва, на 5.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (8, N'Град клинков', N'Атакуя вражеских чемпионов, вы увеличиваете свою скорость атаки на 110%. Эффект действует в течение 3 автоатак. Эффект заканчивается, если во время его действия между атаками проходит более 3 сек.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (9, N'Призыв пушинки', N'При нанесении урона вражеским чемпионам с помощью автоатак или умений вы посылаете к ним Пушинку, которая наносит 10-40 урона в зависимости от уровня (+0.1 от силы умений)(+0.15 от дополнительноый силы атаки). При усилении или защите союзников с помощью умений, вы посылаете к ним Пушинку, накладывая щит прочностью 30-75 в зависимости от уровня.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (10, N'Магическая комета', N'Когда вы наносите чемпиону урон умением, туда, где он находится, падает комета. Если при нанесении урона Магическая комета находится на перезарядке, оставшееся время перезарядки сокращается.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (11, N'Фазовый рывок', N'При поражении вражеского чемпиона 3 атаками или отдельными умениями в течении 4 сек. ваша скорость передвижения увеличивается на 15-40% в зависимости от уровня и вы получаете 75% устойчивости к замедлению.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (12, N'Хватка нежити', N'Каждые 4 сек. в бою ваша следующая автоатака против чемпиона наносит дополнительный магический урон в размере 3.5% от вашего максимального запаса здоровья, восстанавливает вам здоровье в размере 3 + 1.2% от вашего максимального запаса здоровья, навсегда увеличивает ваш запас здоровья на 7.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (13, N'Дрожь земли', N'После обездвиживания вражеского чемпиона ваши броня и сопротивление магии увеличиваются на 35 + 80% от выших дополнительных защитных показателей на 2.5 сек. После этого вы взрываетесь, нанося магический урон ближайшим врагам.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (14, N'Страж', N'Вы на 2.5 сек. защищаете союзников в пределах 350 ед. от вас, а также тех, к которым вы применяете умения. Когда кто-то из вас получает больше определённого колиества урона во время действия защиты, вы оба получаете щит на 1.5 сек.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (15, N'Ледяной нарост', N'Когда вы обездвиживаете вражеского чемпиона, из него исходят 3 ледяных луча, направленные на вас и других чемпионов поблизости. Лучи на 3 (+100% от продолжительности эффекта обездвиживания) сек. создают области холода, которые замедляют врагов на 30% (+9% за каждые 10% эффективности лечения и щитов) (+3% за каждые 100 силы умений)(+4% за каждые 100 дополнительной силы атаки) и уменьшают их урон против ваших союзников (но не против вас) на 15%.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (16, N'Раскрытая книга заклинаний', N'Вы заменяете выбранное заклинание призывателя на новое, которое можно использовать один раз. Каждое уникольное заменённое заклинание призывателя навсегда уменьшает перезарядку замены на 25 сек. Изначально перезарядка замены 5 мин.')
INSERT [dbo].[MainRune] ([ID], [Name], [Description]) VALUES (17, N'Удар на опережение', N'Если вы поражаете вражеского чемпиона атакой или умением, в течении 0.25 сек. после начала боя с чемпионами, вы получаете 5 золота и Удар на опережение на 3 сек. Пока действует эффект, вы дополнительно наносите 9% урона и получаете золото в размере 100% (70% для чемпионов дальнего боя) от этого урона.')
SET IDENTITY_INSERT [dbo].[MainRune] OFF
GO
SET IDENTITY_INSERT [dbo].[Passive1] ON 

INSERT [dbo].[Passive1] ([ID], [Name], [Description]) VALUES (1, N'Адаптивная сила', N'+9 адаптивной силы')
INSERT [dbo].[Passive1] ([ID], [Name], [Description]) VALUES (3, N'Скорость атаки', N'+10% скорости атаки')
INSERT [dbo].[Passive1] ([ID], [Name], [Description]) VALUES (4, N'Ускорение умений', N'+8 ускорения умений')
SET IDENTITY_INSERT [dbo].[Passive1] OFF
GO
SET IDENTITY_INSERT [dbo].[Passive2] ON 

INSERT [dbo].[Passive2] ([ID], [Name], [Description]) VALUES (1, N'Адаптивная сила', N'+9 адаптивной силы')
INSERT [dbo].[Passive2] ([ID], [Name], [Description]) VALUES (2, N'Броня', N'+6 брони')
INSERT [dbo].[Passive2] ([ID], [Name], [Description]) VALUES (3, N'Сопротивление магии', N'+8 сопротивления магии')
SET IDENTITY_INSERT [dbo].[Passive2] OFF
GO
SET IDENTITY_INSERT [dbo].[Passive3] ON 

INSERT [dbo].[Passive3] ([ID], [Name], [Description]) VALUES (1, N'Масштабирование от здоровья', N'+15-140 здоровья (в зависимости от уровня)')
INSERT [dbo].[Passive3] ([ID], [Name], [Description]) VALUES (2, N'Броня ', N'+6 брони')
INSERT [dbo].[Passive3] ([ID], [Name], [Description]) VALUES (3, N'Сопротивление магии', N'+8 сопротивления магии')
SET IDENTITY_INSERT [dbo].[Passive3] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Убийца')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'Воин')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (3, N'Маг')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (4, N'Стрелок')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (5, N'Поддержка')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (6, N'Танк')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[SubRune1] ON 

INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (1, N'Сверхлечение', N'Избыточное лечение, применяемое к вам, превращается в щит прочностью 20-300 (в зависимости от уровня).')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (2, N'Триумф', N'При участии в убийстве восстанавливает 5% от недостающего здоровья и 2.5% от максимального запаса здоровья, а также дополнительно даёт 20 золота')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (3, N'Присутствие духа', N'При нанесении урона вражескому чемпиону увеличивает ваше восстановление маны на 1.5-11 (80% для чемпионов дальнего боя) на 4 сек. Чемпионы с энергией восстанавливают 1.5 энергии в секунду. Убийства и содействия восстанавливают 15% от максимального запаса маны или энергии.')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (4, N'Грязный приём', N'Нанося урон чемпионам, которые ограничены в передвижении или выполнении действий, вы дополнительно наносите им 10-45 чистого урона (в зависимости от уровня).')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (5, N'Вкус крови', N'При нанесении урона вражескому чемпиону вы восстанавливаете себе здоровье.')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (6, N'Внезапный удар', N'При нанесении любого урона чемпиону после прыжка, рывка, телепортации или выхода из скрытности ваша смертоносность увеличивается на 9, а магическое пробивание - на 7 на 5 сек.')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (7, N'Сфера уничтожения', N'При получении магического урона, после которого ваш уровень здоровья опускается ниже 30%, вы получаете щит, поглощающий магический урон в размере 35-110 (в зависимости от уровня) (+14% от дополнительной силы атаки) + (9% от силы умений) в течение 4 сек.')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (8, N'Поток маны', N'Поражение вражеского чемпиона умением навсегда увеличивает ваш максимальный запас маны на 25 (вплоть до 250 маны). После получения 250 дополнительной маны восстанавливает 1% от вашей недостающей маны каждые 5 сек.')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (9, N'Сияющий плащ', N'После применения заклинаня призывателя ваша скорость передвижения увеличивается на 2 сек. и вы получаете способность проходить сквозь бойцов.')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (10, N'Снос', N'Вы готовите мощную атаку против башни в течении 3 сек., когда находитесь в пределах 600 ед. от неё. Заряженная атака наносит дополнительный физический урон в размере 100 (+35% от вашего максимального запаса здоровья).')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (11, N'Живой источник', N'Если вы ограничиваете передвижение вражеского чемпиона, он помечается на 4 сек. Союзные чемпионы, которые атакуют помеченных врагов, восстанавливают себе здоровье в размере 5 + 0.9% от вашего максимального запаса здоровья в течение 2 сек.')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (12, N'Удар щитом', N'Во время действия щитов вы увеличиваете свои броню и сопротивление магии на 1-10 в зависимости от уровня. При получении нового щита ваша следующая автоатака против чемпиона дополнительно наносит 5-30 (+1.5% от дополнительного здоровья) (+8.5% от прочности нового щита) адаптивного урона.')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (13, N'Хекстековый скачок', N'Когда Скачок находится на перезарядке, его заменяет Хекс-скачок. Хекс-скачок: после 2 сек. подготовки перемещает вас в новое место.')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (14, N'Магическая обувь', N'Вы получаете бесплатные Ботинки с капелькой магии на 12 минуте, но не можете купить ботинки до этого момента. За каждое добивание время, оставшееся до получения ботинок, сокращается на 45 сек.')
INSERT [dbo].[SubRune1] ([ID], [Name], [Description]) VALUES (15, N'Самое время', N'Вы начинаете игру с предметом Начальный секундомер, который превращается в предмет Секундомер спустя 14 мин. Каждое заработанное убийство или содействие уменьшает это время на 120 сек.')
SET IDENTITY_INSERT [dbo].[SubRune1] OFF
GO
SET IDENTITY_INSERT [dbo].[SubRune2] ON 

INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (1, N'Легенда: рвение', N'Ваша скорость атаки увеличивается на 3% плюс ещё на 1.5% за каждый заряд Легенды (не более 10 зарядов). Вы получаете заряды Легенды за добивания чемпионов, добивания эпических монстров, убийства больших монстров и убийства миньонов.')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (2, N'Легенда: стойкость', N'Ваша стойкость увеличивается на 5% плюс ещё 1.5% за каждый заряд Легенды (не более 10 зарядов). Вы получаете заряды Легенды за добивания чемпионов, добивания эпических монстров, убийства больших монстров и убийства миньонов.')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (3, N'Легенда: родословная', N'Вы получаете 0.35% вампиризма за каждый заряд легенды (максимум:15). При максимальном количестве зарядов Легенды ваш максимальный запас здоровья увеличивается на 85. Вы получаете заряды Легенды за добивания чемпионов, добивания эпических монстров, убийства больших монстров и убийства миньонов')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (4, N'Тотем-зомби', N'При каждом добивании вражеского тотема на его месте появляется дружественный Тотем-зомби. Даёт 1.2 силы атаки или 2 силы умений (адаптивно) за каждый поднятый Тотем-зомби - вплоть до 10. После появления 10 Тотемов-зомби дополнительно даёт 10 адаптивной силы.')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (5, N'Призрачный поро', N'Когда заканчивается время действия вашего тотема, на его месте появляется Призрачный поро, который обеспечивает обзор в течение 90 сек. При обнаружении вражескмими чемпионами Призрачный поро пугается и убегает. Даёт 1.2 силы атаки или 2 силы умений (адаптивно) за каждого призванного Призрачного поро, а также когда Призрачный поро обнаруживает вражеского чемпиона - вплоть до 10 зарядов. При накоплении 10 зарядов дополнительно даёт 10 адаптивной силы.')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (6, N'Коллекция глаз', N'Вы получаете глаза за добивания чемпионов. Каждый глаз даёт вам 1.2 силы атаки или 2 силы умений (адаптивно). Собрав полную коллекцию из 10 глаз, вы также получаете 6 силы атаки или 10 силы умений (адаптивно).')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (7, N'Превосходство', N'При получении следующих уровней вы получаете бонусы: Уровень 5: +5 ускорения умений. Уровень 8: +5 ускорения умений. Уровень 11: каждое участие в убийстве чемпиона сокращает оставшуюся перезарядку базовых умений на 20%')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (9, N'Быстрота', N'Все действующие на вас прибавки к скорости передвижения становятся на 7% эффективнее, а ваша скорость передвижения увеличивается на 1%')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (10, N'Полная сосредоточенность', N'Кода уровень вашего здоровья выше 70%, вы получаете до 18 силы атаки или 30 силы умений (адаптивно)(в зависимости от уровня).')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (11, N'Накопление', N'После 12 мин. вы получаете 8 брони и 8 сопротивления магии; кроме того, ваши дополнительные броня и сопротивление магии увеличивается на 3%')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (12, N'Второе дыхание', N'При получении урона от вражеского чемпиона вы восстанавливаете себе здоровье в размере 4% от недостающего здоровья +3 в течение 10 сек.')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (13, N'Костяная пластина', N'После получения урона от вражеского чемпиона следующие вражеские умения или автоатаки (до 3 раз) наносят вам на 30-60 меньше урона.')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (14, N'Рынок будущего', N'Вы получаете возможность покупать предметы в долг. Максимальная сумма долга повышается со временем.')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (15, N'Дезинтегратор миньонов', N'В начале игры вы получаете предмет Дезинтегратор миньонов с 3 зарядами, который мгновенно убивает и поглащает миньонов на линии. Первые 180 сек. игры Дезинтегратор миньонов находится на перезарядке. При поглащении миньона ваш урон против этого типа миньонов навсегда увеличивается на 6% и ещё на 3% за каждого дополнительного поглощённого миньона этого типа')
INSERT [dbo].[SubRune2] ([ID], [Name], [Description]) VALUES (16, N'Доставка печенья', N'Доставка печенья: вы получаете предмет Тотальная печенька вечной воли каждые 2 мин. вплоть до 6 минуты. Печеньки восстанавливают 8% от недостающего здоровья и маны. При использовании или продаже печенек они навсегда увеличивают ваш максимальный запас маны на 40. Чемпионы без маны восстанавливают себе 12% от недостающего здоровья.')
SET IDENTITY_INSERT [dbo].[SubRune2] OFF
GO
SET IDENTITY_INSERT [dbo].[SubRune3] ON 

INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (1, N'Удар милосердия', N'Вы наносите на 8% больше урона чемпионам, уровень здоровья которых ниже 40%.')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (2, N'Реванш', N'Вы дополнительно наносите от 5% до 15% урона чемпионам в зависимости от того, насколько у них больше максимальный запас здоровья. Дополнительный урон масштабируется линейно при разнице в здоровье от 10% до 100%.')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (3, N'Последний рубеж', N'Вы наносите на 5-11% больше урона чемпионам, когда ваш уровень здоровья ниже 60%. Максимальное количество урона достигается при 30% здоровья.')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (4, N'Охотник за сокровищами', N'При получении зарядов Охотника за головами вы дополнительно зарабатываете 50 золота. Количество получаемого золота увеличивается на 20 за каждый заряд Охотника за головами (вплоть до 130). Вы получаете заряды охотника за головами за участия в убийствах вражеских чемпионов (по одному заряду на врага)')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (5, N'Изобретательный охотник', N'Даёт 20 ускорения предметов плюс ещё 6 ускорения предметов за каждый заряд Охотника за головами (включая аксессуары). Вы получаете заряды Охотника за головами за первое добивание каждого вражеского чемпиона (по одному заряду на врага).')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (6, N'Беспощадный охотник', N'Увеличивает скорость передвижения вне боя на 5 плюс 8 за каждый заряд Охотника за головами. Вы получаете заряды Охотника за головами за первое добивание каждого вражеского чемпиона (по одному заряду на врага).')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (7, N'Абсолютный охотник', N'Перезарядка вашего абсолютного умения сокращается на величину, равную 6 ускорения умений плюс 5 ускорения умений за каждый заряд Охотника за головами. Вы получаете заряды Охотника за головами за первое добивание каждого вражеского чемпиона (по одному заряду на врага).')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (8, N'Ожог', N'При следующем попадании умением по чемпиону ваша цель воспламеняется и дополнительно получаете 20-40 магического урона в зависимости от уровня через 1 сек.')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (9, N'Хождение по воде', N'Даёт 25 скорости передвижения и до 18 силы атаки или 30 силы умений (адаптивно) (в зависимости от уровня), когда вы находитесь на реке.')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (10, N'Надвигающаяся буря', N'Раз в 10 мин. вы получаете силу умений или силу атаки (адаптивно).')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (11, N'Разрастание', N'Вы поглащаете жизненную силу монстров и вражеских миньонов, умерших около вас, навсегда увеличивая максимальный запас здоровья на 3 за каждых 8. При поглащении 120 монстров или вражеских миньонов ваш максимальный запас здоровья дополнительно увеличивается на 3.5%.')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (12, N'Оживление', N'Увеличивает эффективность лечения и щитов на 5%. Эффективность лечения и щитов, которые вы накладываете или получаете, увеличивается на 10%, если у цели менее 40% здоровья.')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (13, N'Неустрашимость', N'Вы получаете 5% стойкости и 5% устойчивости к замедлению. Кроме того, вы можете получить ещё до 20% стойкости и 20% устойчивости к замедлению в зависимости от недостающего здоровья. Максимальная эффективность достигается при 30% здоровья')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (14, N'Космическое знание', N'+18 ускорения заклинаний призывателя. +10 ускорения предметов')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (15, N'Скорость сближения', N'Увеличивает скорость передвижения на 7.5% при перемещении в сторону вражеских чемпионов, у которых ограничено передвижение. Ускорение увеличивается до 15%, если вы ограничили передвижение любому вражескому чемпиону.')
INSERT [dbo].[SubRune3] ([ID], [Name], [Description]) VALUES (16, N'Тоник искривления времени', N'При использовании зелья или печеньки 30% от их восстановления здоровья или маны применяется сразу. Кроме того, пока действуют эффекты восстановления этих предметов, ваша скорость передвижения увеличивается на 2%')
SET IDENTITY_INSERT [dbo].[SubRune3] OFF
GO
SET IDENTITY_INSERT [dbo].[Summoner_Spell1] ON 

INSERT [dbo].[Summoner_Spell1] ([ID], [Name]) VALUES (1, N'Исцеление')
INSERT [dbo].[Summoner_Spell1] ([ID], [Name]) VALUES (2, N'Призрак')
INSERT [dbo].[Summoner_Spell1] ([ID], [Name]) VALUES (3, N'Барьер')
INSERT [dbo].[Summoner_Spell1] ([ID], [Name]) VALUES (4, N'Изнурение')
INSERT [dbo].[Summoner_Spell1] ([ID], [Name]) VALUES (5, N'Скачок')
INSERT [dbo].[Summoner_Spell1] ([ID], [Name]) VALUES (6, N'Телепорт')
INSERT [dbo].[Summoner_Spell1] ([ID], [Name]) VALUES (7, N'Воспламенение')
INSERT [dbo].[Summoner_Spell1] ([ID], [Name]) VALUES (8, N'Кара')
INSERT [dbo].[Summoner_Spell1] ([ID], [Name]) VALUES (9, N'Очищение')
SET IDENTITY_INSERT [dbo].[Summoner_Spell1] OFF
GO
SET IDENTITY_INSERT [dbo].[Summoner_Spell2] ON 

INSERT [dbo].[Summoner_Spell2] ([ID], [Name]) VALUES (1, N'Исцеление')
INSERT [dbo].[Summoner_Spell2] ([ID], [Name]) VALUES (2, N'Призрак')
INSERT [dbo].[Summoner_Spell2] ([ID], [Name]) VALUES (3, N'Барьер')
INSERT [dbo].[Summoner_Spell2] ([ID], [Name]) VALUES (4, N'Изнурение')
INSERT [dbo].[Summoner_Spell2] ([ID], [Name]) VALUES (5, N'Скачок')
INSERT [dbo].[Summoner_Spell2] ([ID], [Name]) VALUES (6, N'Телепорт')
INSERT [dbo].[Summoner_Spell2] ([ID], [Name]) VALUES (7, N'Воспламенение')
INSERT [dbo].[Summoner_Spell2] ([ID], [Name]) VALUES (8, N'Кара')
INSERT [dbo].[Summoner_Spell2] ([ID], [Name]) VALUES (9, N'Очищение')
SET IDENTITY_INSERT [dbo].[Summoner_Spell2] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeDamage] ON 

INSERT [dbo].[TypeDamage] ([ID], [Name]) VALUES (1, N'Физический')
INSERT [dbo].[TypeDamage] ([ID], [Name]) VALUES (2, N'Магический')
INSERT [dbo].[TypeDamage] ([ID], [Name]) VALUES (3, N'Смешанный')
INSERT [dbo].[TypeDamage] ([ID], [Name]) VALUES (4, N'Чистый')
SET IDENTITY_INSERT [dbo].[TypeDamage] OFF
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_Hero] FOREIGN KEY([ID_Hero])
REFERENCES [dbo].[Hero] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_Hero]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_MainRune] FOREIGN KEY([ID_MainRune])
REFERENCES [dbo].[MainRune] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_MainRune]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_Passive1] FOREIGN KEY([ID_Passive1])
REFERENCES [dbo].[Passive1] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_Passive1]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_Passive2] FOREIGN KEY([ID_Passive2])
REFERENCES [dbo].[Passive2] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_Passive2]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_Passive3] FOREIGN KEY([ID_Passive3])
REFERENCES [dbo].[Passive3] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_Passive3]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_SubRune1] FOREIGN KEY([ID_MainSubRune1])
REFERENCES [dbo].[SubRune1] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_SubRune1]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_SubRune11] FOREIGN KEY([ID_SudeSubRune1])
REFERENCES [dbo].[SubRune1] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_SubRune11]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_SubRune2] FOREIGN KEY([ID_MainSubRune2])
REFERENCES [dbo].[SubRune2] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_SubRune2]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_SubRune21] FOREIGN KEY([ID_SudeSubRune2])
REFERENCES [dbo].[SubRune2] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_SubRune21]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_SubRune3] FOREIGN KEY([ID_MainSubRune3])
REFERENCES [dbo].[SubRune3] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_SubRune3]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_SubRune31] FOREIGN KEY([ID_SudeSubRune3])
REFERENCES [dbo].[SubRune3] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_SubRune31]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_Summoner_Spell1] FOREIGN KEY([ID_Summoner_Spell1])
REFERENCES [dbo].[Summoner_Spell1] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_Summoner_Spell1]
GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_Summoner_Spell2] FOREIGN KEY([ID_Summoner_Spell2])
REFERENCES [dbo].[Summoner_Spell2] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_Summoner_Spell2]
GO
ALTER TABLE [dbo].[Hero]  WITH CHECK ADD  CONSTRAINT [FK_Hero_Class] FOREIGN KEY([ID_Class])
REFERENCES [dbo].[Class] ([ID])
GO
ALTER TABLE [dbo].[Hero] CHECK CONSTRAINT [FK_Hero_Class]
GO
ALTER TABLE [dbo].[Hero]  WITH CHECK ADD  CONSTRAINT [FK_Hero_Difficult] FOREIGN KEY([ID_Difficult])
REFERENCES [dbo].[Difficult] ([ID])
GO
ALTER TABLE [dbo].[Hero] CHECK CONSTRAINT [FK_Hero_Difficult]
GO
ALTER TABLE [dbo].[Hero]  WITH CHECK ADD  CONSTRAINT [FK_Hero_Role] FOREIGN KEY([ID_Role])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Hero] CHECK CONSTRAINT [FK_Hero_Role]
GO
ALTER TABLE [dbo].[Hero]  WITH CHECK ADD  CONSTRAINT [FK_Hero_TypeDamage] FOREIGN KEY([ID_TypeDamage])
REFERENCES [dbo].[TypeDamage] ([ID])
GO
ALTER TABLE [dbo].[Hero] CHECK CONSTRAINT [FK_Hero_TypeDamage]
GO
USE [master]
GO
ALTER DATABASE [lol] SET  READ_WRITE 
GO
