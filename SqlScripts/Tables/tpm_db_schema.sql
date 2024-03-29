USE [master]
GO
/****** Object:  Database [tpm]    Script Date: 05/21/2014 22:49:49 ******/
CREATE DATABASE [tpm] ON  PRIMARY 
( NAME = N'tpm', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\tpm.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tpm_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\tpm_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tpm] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tpm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tpm] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [tpm] SET ANSI_NULLS OFF
GO
ALTER DATABASE [tpm] SET ANSI_PADDING OFF
GO
ALTER DATABASE [tpm] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [tpm] SET ARITHABORT OFF
GO
ALTER DATABASE [tpm] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [tpm] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [tpm] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [tpm] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [tpm] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [tpm] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [tpm] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [tpm] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [tpm] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [tpm] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [tpm] SET  DISABLE_BROKER
GO
ALTER DATABASE [tpm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [tpm] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [tpm] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [tpm] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [tpm] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [tpm] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [tpm] SET  READ_WRITE
GO
ALTER DATABASE [tpm] SET RECOVERY SIMPLE
GO
ALTER DATABASE [tpm] SET  MULTI_USER
GO
ALTER DATABASE [tpm] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [tpm] SET DB_CHAINING OFF
GO
USE [tpm]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 05/21/2014 22:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[LocalidadId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Localidades] PRIMARY KEY CLUSTERED 
(
	[LocalidadId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDeDoc]    Script Date: 05/21/2014 22:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDeDoc](
	[TipoDocId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_TiposDeDoc] PRIMARY KEY CLUSTERED 
(
	[TipoDocId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonalEspecializado]    Script Date: 05/21/2014 22:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalEspecializado](
	[PersonalEspId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_PersonalEspecializado] PRIMARY KEY CLUSTERED 
(
	[PersonalEspId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 05/21/2014 22:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CategoriaId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CAtegorias] PRIMARY KEY CLUSTERED 
(
	[CategoriaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 05/21/2014 22:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[ProvinciaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[LocalidadId] [int] NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[ProvinciaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 05/21/2014 22:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugadores](
	[JugadorId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[TipoDocId] [int] NULL,
	[NumeroDoc] [int] NULL,
	[Domicilio] [nvarchar](50) NULL,
	[LocalidadId] [int] NULL,
 CONSTRAINT [PK_Jugadores] PRIMARY KEY CLUSTERED 
(
	[JugadorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonalPorEquipo]    Script Date: 05/21/2014 22:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalPorEquipo](
	[PersonalPorEquipoId] [int] IDENTITY(1,1) NOT NULL,
	[PersonalEspId] [int] NULL,
	[EquipoId] [int] NULL,
 CONSTRAINT [PK_PersonalPorEquipo] PRIMARY KEY CLUSTERED 
(
	[PersonalPorEquipoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JugadoresPorEquipo]    Script Date: 05/21/2014 22:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JugadoresPorEquipo](
	[JugadorPorEquipo] [int] IDENTITY(1,1) NOT NULL,
	[JugadorId] [int] NULL,
	[EquipoId] [int] NULL,
 CONSTRAINT [PK_JugadoresPorEquipo] PRIMARY KEY CLUSTERED 
(
	[JugadorPorEquipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipos]    Script Date: 05/21/2014 22:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipos](
	[EquipoId] [int] IDENTITY(1,1) NOT NULL,
	[CategoriaId] [int] NULL,
 CONSTRAINT [PK_Equipos] PRIMARY KEY CLUSTERED 
(
	[EquipoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Provincias_Localidades]    Script Date: 05/21/2014 22:49:50 ******/
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD  CONSTRAINT [FK_Provincias_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[Provincias] CHECK CONSTRAINT [FK_Provincias_Localidades]
GO
/****** Object:  ForeignKey [FK_Jugadores_Localidades]    Script Date: 05/21/2014 22:49:50 ******/
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_Localidades]
GO
/****** Object:  ForeignKey [FK_Jugadores_TiposDeDoc]    Script Date: 05/21/2014 22:49:50 ******/
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_TiposDeDoc] FOREIGN KEY([TipoDocId])
REFERENCES [dbo].[TiposDeDoc] ([TipoDocId])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_TiposDeDoc]
GO
/****** Object:  ForeignKey [FK_PersonalPorEquipo_Equipos]    Script Date: 05/21/2014 22:49:50 ******/
ALTER TABLE [dbo].[PersonalPorEquipo]  WITH CHECK ADD  CONSTRAINT [FK_PersonalPorEquipo_Equipos] FOREIGN KEY([EquipoId])
REFERENCES [dbo].[Equipos] ([EquipoId])
GO
ALTER TABLE [dbo].[PersonalPorEquipo] CHECK CONSTRAINT [FK_PersonalPorEquipo_Equipos]
GO
/****** Object:  ForeignKey [FK_PersonalPorEquipo_PersonalEspecializado]    Script Date: 05/21/2014 22:49:50 ******/
ALTER TABLE [dbo].[PersonalPorEquipo]  WITH CHECK ADD  CONSTRAINT [FK_PersonalPorEquipo_PersonalEspecializado] FOREIGN KEY([PersonalEspId])
REFERENCES [dbo].[PersonalEspecializado] ([PersonalEspId])
GO
ALTER TABLE [dbo].[PersonalPorEquipo] CHECK CONSTRAINT [FK_PersonalPorEquipo_PersonalEspecializado]
GO
/****** Object:  ForeignKey [FK_JugadoresPorEquipo_Equipos]    Script Date: 05/21/2014 22:49:50 ******/
ALTER TABLE [dbo].[JugadoresPorEquipo]  WITH CHECK ADD  CONSTRAINT [FK_JugadoresPorEquipo_Equipos] FOREIGN KEY([EquipoId])
REFERENCES [dbo].[Equipos] ([EquipoId])
GO
ALTER TABLE [dbo].[JugadoresPorEquipo] CHECK CONSTRAINT [FK_JugadoresPorEquipo_Equipos]
GO
/****** Object:  ForeignKey [FK_JugadoresPorEquipo_Jugadores]    Script Date: 05/21/2014 22:49:50 ******/
ALTER TABLE [dbo].[JugadoresPorEquipo]  WITH CHECK ADD  CONSTRAINT [FK_JugadoresPorEquipo_Jugadores] FOREIGN KEY([JugadorId])
REFERENCES [dbo].[Jugadores] ([JugadorId])
GO
ALTER TABLE [dbo].[JugadoresPorEquipo] CHECK CONSTRAINT [FK_JugadoresPorEquipo_Jugadores]
GO
/****** Object:  ForeignKey [FK_Equipos_Categorias]    Script Date: 05/21/2014 22:49:50 ******/
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD  CONSTRAINT [FK_Equipos_Categorias] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categorias] ([CategoriaId])
GO
ALTER TABLE [dbo].[Equipos] CHECK CONSTRAINT [FK_Equipos_Categorias]
GO
