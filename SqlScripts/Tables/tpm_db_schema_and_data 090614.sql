USE [TPM]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorias](
	[CategoriaId] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NULL,
 CONSTRAINT [PK_CAtegorias] PRIMARY KEY CLUSTERED 
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Divisiones]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Divisiones](
	[DivisionId] [int] IDENTITY(1,1) NOT NULL,
	[NombreDivision] [nvarchar](50) NULL,
 CONSTRAINT [PK_Divisiones] PRIMARY KEY CLUSTERED 
(
	[DivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Equipos]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipos](
	[EquipoId] [int] IDENTITY(1,1) NOT NULL,
	[CategoriaId] [int] NULL,
	[LigaId] [int] NULL,
	[DivisionId] [int] NULL,
 CONSTRAINT [PK_Equipos] PRIMARY KEY CLUSTERED 
(
	[EquipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 09/06/2014 11:14:40 p.m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JugadoresPorEquipo]    Script Date: 09/06/2014 11:14:40 p.m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ligas]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ligas](
	[LigaId] [int] IDENTITY(1,1) NOT NULL,
	[NombreLiga] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ligas] PRIMARY KEY CLUSTERED 
(
	[LigaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 09/06/2014 11:14:40 p.m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PersonalEspecializado]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalEspecializado](
	[PersonalEspId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_PersonalEspecializado] PRIMARY KEY CLUSTERED 
(
	[PersonalEspId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PersonalPorEquipo]    Script Date: 09/06/2014 11:14:40 p.m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 09/06/2014 11:14:40 p.m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TiposDeDoc]    Script Date: 09/06/2014 11:14:40 p.m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (1, N'''95')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (2, N'''96')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (3, N'''97')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (4, N'''98')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (5, N'''99')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (6, N'''00')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (7, N'''01')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (8, N'''02')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
SET IDENTITY_INSERT [dbo].[Divisiones] ON 

INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (1, N'Primera')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (2, N'Reserva')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (3, N'Novena')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (4, N'Octava')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (5, N'Septima')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (6, N'Sexta')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (7, N'Quina')
SET IDENTITY_INSERT [dbo].[Divisiones] OFF
SET IDENTITY_INSERT [dbo].[Equipos] ON 

INSERT [dbo].[Equipos] ([EquipoId], [CategoriaId], [LigaId], [DivisionId]) VALUES (1, 1, 2, 2)
INSERT [dbo].[Equipos] ([EquipoId], [CategoriaId], [LigaId], [DivisionId]) VALUES (2, 1, 3, 2)
INSERT [dbo].[Equipos] ([EquipoId], [CategoriaId], [LigaId], [DivisionId]) VALUES (3, 2, 1, 1)
INSERT [dbo].[Equipos] ([EquipoId], [CategoriaId], [LigaId], [DivisionId]) VALUES (4, 2, 3, 2)
INSERT [dbo].[Equipos] ([EquipoId], [CategoriaId], [LigaId], [DivisionId]) VALUES (5, 3, 2, 2)
SET IDENTITY_INSERT [dbo].[Equipos] OFF
SET IDENTITY_INSERT [dbo].[Jugadores] ON 

INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId]) VALUES (1, N'Diego', N'Unanue', 1, 35121213, N'Santa Fe 654', 1)
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId]) VALUES (2, N'Matias', N'Dobra', 1, 32123123, N'Antonio Marchi 224', 1)
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId]) VALUES (3, N'Martin', N'Bodello', 1, 35734073, N'Saenz Peña 373', 1)
SET IDENTITY_INSERT [dbo].[Jugadores] OFF
SET IDENTITY_INSERT [dbo].[Ligas] ON 

INSERT [dbo].[Ligas] ([LigaId], [NombreLiga]) VALUES (1, N'AFA')
INSERT [dbo].[Ligas] ([LigaId], [NombreLiga]) VALUES (2, N'Cordobesa')
INSERT [dbo].[Ligas] ([LigaId], [NombreLiga]) VALUES (3, N'Escuelita')
INSERT [dbo].[Ligas] ([LigaId], [NombreLiga]) VALUES (4, N'Seleccionado')
SET IDENTITY_INSERT [dbo].[Ligas] OFF
SET IDENTITY_INSERT [dbo].[Localidades] ON 

INSERT [dbo].[Localidades] ([LocalidadId], [Nombre]) VALUES (1, N'Córdoba')
INSERT [dbo].[Localidades] ([LocalidadId], [Nombre]) VALUES (2, N'Río Cuarto')
INSERT [dbo].[Localidades] ([LocalidadId], [Nombre]) VALUES (3, N'Villa María')
SET IDENTITY_INSERT [dbo].[Localidades] OFF
SET IDENTITY_INSERT [dbo].[TiposDeDoc] ON 

INSERT [dbo].[TiposDeDoc] ([TipoDocId], [Nombre]) VALUES (1, N'DNI')
INSERT [dbo].[TiposDeDoc] ([TipoDocId], [Nombre]) VALUES (2, N'LI')
INSERT [dbo].[TiposDeDoc] ([TipoDocId], [Nombre]) VALUES (3, N'Pasaporte')
SET IDENTITY_INSERT [dbo].[TiposDeDoc] OFF
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD  CONSTRAINT [FK_Equipos_Categorias] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categorias] ([CategoriaId])
GO
ALTER TABLE [dbo].[Equipos] CHECK CONSTRAINT [FK_Equipos_Categorias]
GO
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD  CONSTRAINT [FK_Equipos_Divisiones] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisiones] ([DivisionId])
GO
ALTER TABLE [dbo].[Equipos] CHECK CONSTRAINT [FK_Equipos_Divisiones]
GO
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD  CONSTRAINT [FK_Equipos_Ligas] FOREIGN KEY([LigaId])
REFERENCES [dbo].[Ligas] ([LigaId])
GO
ALTER TABLE [dbo].[Equipos] CHECK CONSTRAINT [FK_Equipos_Ligas]
GO
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_Localidades]
GO
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_TiposDeDoc] FOREIGN KEY([TipoDocId])
REFERENCES [dbo].[TiposDeDoc] ([TipoDocId])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_TiposDeDoc]
GO
ALTER TABLE [dbo].[JugadoresPorEquipo]  WITH CHECK ADD  CONSTRAINT [FK_JugadoresPorEquipo_Equipos] FOREIGN KEY([EquipoId])
REFERENCES [dbo].[Equipos] ([EquipoId])
GO
ALTER TABLE [dbo].[JugadoresPorEquipo] CHECK CONSTRAINT [FK_JugadoresPorEquipo_Equipos]
GO
ALTER TABLE [dbo].[JugadoresPorEquipo]  WITH CHECK ADD  CONSTRAINT [FK_JugadoresPorEquipo_Jugadores] FOREIGN KEY([JugadorId])
REFERENCES [dbo].[Jugadores] ([JugadorId])
GO
ALTER TABLE [dbo].[JugadoresPorEquipo] CHECK CONSTRAINT [FK_JugadoresPorEquipo_Jugadores]
GO
ALTER TABLE [dbo].[PersonalPorEquipo]  WITH CHECK ADD  CONSTRAINT [FK_PersonalPorEquipo_Equipos] FOREIGN KEY([EquipoId])
REFERENCES [dbo].[Equipos] ([EquipoId])
GO
ALTER TABLE [dbo].[PersonalPorEquipo] CHECK CONSTRAINT [FK_PersonalPorEquipo_Equipos]
GO
ALTER TABLE [dbo].[PersonalPorEquipo]  WITH CHECK ADD  CONSTRAINT [FK_PersonalPorEquipo_PersonalEspecializado] FOREIGN KEY([PersonalEspId])
REFERENCES [dbo].[PersonalEspecializado] ([PersonalEspId])
GO
ALTER TABLE [dbo].[PersonalPorEquipo] CHECK CONSTRAINT [FK_PersonalPorEquipo_PersonalEspecializado]
GO
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD  CONSTRAINT [FK_Provincias_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[Provincias] CHECK CONSTRAINT [FK_Provincias_Localidades]
GO
/****** Object:  StoredProcedure [dbo].[CategoriaById]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CategoriaById]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT *
    FROM Categorias
    WHERE CategoriaId = @Id
	
END

GO
/****** Object:  StoredProcedure [dbo].[CategoriaGetAll]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CategoriaGetAll]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Categorias
END

GO
/****** Object:  StoredProcedure [dbo].[DivisionById]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DivisionById]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT *
    FROM Divisiones
    WHERE DivisionId = @Id
	
END

GO
/****** Object:  StoredProcedure [dbo].[DivisionGetAll]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DivisionGetAll]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Division	
END

GO
/****** Object:  StoredProcedure [dbo].[EquipoById]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EquipoById]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT e.EquipoId , c.NombreCategoria, d.NombreDivision, l.NombreLiga
    FROM Equipos e join Categorias c on e.CategoriaId = c.CategoriaId join Divisiones d on e.DivisionId = d.DivisionId join Ligas l on e.LigaId = l.LigaId
    WHERE EquipoId = @Id
	
END

GO
/****** Object:  StoredProcedure [dbo].[EquipoGetAll]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EquipoGetAll]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT e.EquipoId , c.NombreCategoria, d.NombreDivision, l.NombreLiga  
	From Equipos e join Categorias c on e.CategoriaId = c.CategoriaId join Divisiones d on e.DivisionId = d.DivisionId join Ligas l on e.LigaId = l.LigaId
END

GO
/****** Object:  StoredProcedure [dbo].[EquipoUpdate]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EquipoUpdate]
	 @Id int
	,@CategoriaId int
	,@DivisionId int
	,@LigaId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE Equipos
	SET CategoriaId = @CategoriaId , DivisionId = @DivisionId , LigaId = @LigaId
	WHERE EquipoId = @Id
END

GO
/****** Object:  StoredProcedure [dbo].[JugadorById]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JugadorById]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT *
    FROM Jugadores
    WHERE JugadorId = @Id
	
END

GO
/****** Object:  StoredProcedure [dbo].[JugadoresGetAll]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JugadoresGetAll]
	-- Add the parameters for the stored procedure here
	

AS
BEGIN
	SELECT *, j.Nombre as jNombre, l.Nombre as lNombre, tp.Nombre as tdNombre
	FROM Jugadores j join Localidades l on j.LocalidadId = l.LocalidadId join TiposDeDoc tp on j.TipoDocId = tp.TipoDocId
END

GO
/****** Object:  StoredProcedure [dbo].[JugadorInsert]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JugadorInsert]
	@Nombre nvarchar(50)
	,@Apellido nvarchar(50)
	,@TipoDocId int
    ,@NumeroDoc int
    ,@Domicilio nvarchar(50)
    ,@LocalidadId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Jugadores
	VALUES (@Nombre, @Apellido, @TipoDocId, @NumeroDoc, @Domicilio, @LocalidadId)

	SELECT SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[JugadorUpdate]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JugadorUpdate]
	 @Id int
	,@Nombre nvarchar(50)
	,@Apellido nvarchar(50)
	,@TipoDocId int
    ,@NumeroDoc int
    ,@Domicilio nvarchar(50)
    ,@LocalidadId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE Jugadores
	SET nombre = @Nombre, apellido = @Apellido, tipoDocId = @TipoDocId, NumeroDoc = @NumeroDoc, Domicilio = @Domicilio, LocalidadId = @LocalidadId
	WHERE JugadorId = @Id
END

GO
/****** Object:  StoredProcedure [dbo].[LigaById]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LigaById]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT *
    FROM Ligas
    WHERE LigaId = @Id
	
END

GO
/****** Object:  StoredProcedure [dbo].[LigaGetAll]    Script Date: 09/06/2014 11:14:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LigaGetAll]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Liga	
END

GO
