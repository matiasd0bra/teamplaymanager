USE [TPM]
GO
/****** Object:  Table [dbo].[TiposDeDoc]    Script Date: 10/15/2014 18:20:27 ******/
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
/****** Object:  Table [dbo].[Especialidades]    Script Date: 10/15/2014 18:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[EspecialidadId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriasPorEquipo]    Script Date: 10/15/2014 18:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriasPorEquipo](
	[EquipoId] [int] NOT NULL,
	[CategoriaId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 10/15/2014 18:20:27 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JugadoresPorPartido]    Script Date: 10/15/2014 18:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JugadoresPorPartido](
	[PartidoId] [int] NULL,
	[JugadorId] [int] NULL,
	[NroCamiseta] [int] NULL,
	[MinutosPrimerAmarilla] [int] NULL,
	[MinutosSegundaAmarilla] [int] NULL,
	[MinutosRojaDirecta] [int] NULL,
	[MinutosSalio] [int] NULL,
	[MinutosEntro] [int] NULL,
	[Destacado] [nvarchar](2) NULL,
	[Titular] [nvarchar](2) NULL,
	[Comentario] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 10/15/2014 18:20:27 ******/
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
/****** Object:  Table [dbo].[Ligas]    Script Date: 10/15/2014 18:20:27 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GolesPorJugadorPorPartido]    Script Date: 10/15/2014 18:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GolesPorJugadorPorPartido](
	[GolesPorJugadorId] [int] IDENTITY(1,1) NOT NULL,
	[JugadorId] [int] NULL,
	[PartidoId] [int] NULL,
	[MinutosGol] [int] NULL,
	[Descripcion] [nvarchar](50) NULL,
	[UrlVideo] [nvarchar](50) NULL,
 CONSTRAINT [PK_GolesPorJugadorPorPartido] PRIMARY KEY CLUSTERED 
(
	[GolesPorJugadorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsistenciasPorJugadorPorPartido]    Script Date: 10/15/2014 18:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsistenciasPorJugadorPorPartido](
	[AsistenciaPorJugadorId] [int] IDENTITY(1,1) NOT NULL,
	[JugadorId] [int] NULL,
	[PartidoId] [int] NULL,
	[MinutosAsistencia] [int] NULL,
	[Descripcion] [nvarchar](50) NULL,
	[UrlVideo] [nvarchar](50) NULL,
 CONSTRAINT [PK_AsistenciasPorJugadorPorPartido] PRIMARY KEY CLUSTERED 
(
	[AsistenciaPorJugadorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Divisiones]    Script Date: 10/15/2014 18:20:27 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonalEspPorPartido]    Script Date: 10/15/2014 18:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalEspPorPartido](
	[PersonalEspPorPartidoId] [int] IDENTITY(1,1) NOT NULL,
	[PersonalEspId] [int] NULL,
	[PartidoId] [int] NULL,
 CONSTRAINT [PK_PersonalEspPorPartido] PRIMARY KEY CLUSTERED 
(
	[PersonalEspPorPartidoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partidos]    Script Date: 10/15/2014 18:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partidos](
	[PartidoId] [int] IDENTITY(1,1) NOT NULL,
	[TemporadaId] [int] NULL,
	[TipoPartido] [nvarchar](50) NULL,
	[EquipoId] [int] NULL,
	[Rival] [nvarchar](50) NULL,
	[FechaHoraInicio] [datetime] NULL,
	[Lugar] [nvarchar](50) NULL,
	[Condicion] [nvarchar](10) NULL,
	[Duracion] [int] NULL,
	[GolesAFavor] [int] NULL,
	[GolesEnContra] [int] NULL,
	[JugadorDestacadoRival] [nvarchar](50) NULL,
	[EstadoPartido] [nvarchar](50) NULL,
	[HoraCitacion] [datetime] NULL,
	[NumeroFecha] [int] NULL,
	[Cancha] [nvarchar](50) NULL,
 CONSTRAINT [PK_Partidos] PRIMARY KEY CLUSTERED 
(
	[PartidoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temporadas]    Script Date: 10/15/2014 18:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temporadas](
	[TemporadaId] [int] IDENTITY(1,1) NOT NULL,
	[TemporadaNombre] [nvarchar](50) NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
 CONSTRAINT [PK_Temporadas] PRIMARY KEY CLUSTERED 
(
	[TemporadaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 10/15/2014 18:20:27 ******/
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
/****** Object:  StoredProcedure [dbo].[PartidoInsert]    Script Date: 10/15/2014 18:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PartidoInsert]
	@TemporadaId int
	,@NumeroFecha int
	,@TipoPartido int
	,@EquipoId int
	,@Rival nvarchar(50)
	,@FechaHoraInicio datetime
	,@HoraCitacion datetime
	,@Lugar nvarchar(50)
	,@Cancha nvarchar(50)
	,@Condicion nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Partidos
	VALUES (@TemporadaId, @TipoPartido, @EquipoId, @Rival,@FechaHoraInicio ,@Lugar 
	,@Condicion, null, null, null, null, 'Creado',@HoraCitacion,@NumeroFecha , @Cancha)

	SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  Table [dbo].[PersonalEspecializado]    Script Date: 10/15/2014 18:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalEspecializado](
	[PersonalEspId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NULL,
	[Apellido] [nchar](50) NULL,
	[TipoDocId] [int] NULL,
	[NumeroDoc] [nchar](50) NULL,
	[Domicilio] [nchar](50) NULL,
	[LocalidadId] [int] NULL,
	[EspecialidadId] [int] NULL,
 CONSTRAINT [PK_PersonalEspecializado] PRIMARY KEY CLUSTERED 
(
	[PersonalEspId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[JugadorPorPartidoInsert]    Script Date: 10/15/2014 18:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorPorPartidoInsert]
	@JugadorId int	
	,@PartidoId int
	,@Titular nvarchar(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO JugadoresPorPartido
	VALUES (@PartidoId, @JugadorId, null,null,null,null,null,null,null,@Titular,null)

	SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorPorPartidoDelete]    Script Date: 10/15/2014 18:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[JugadorPorPartidoDelete]
	@JugadorId int	
	,@PartidoId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from JugadoresPorPartido
	where JugadorId = @JugadorId and PartidoId = @PartidoId
END
GO
/****** Object:  StoredProcedure [dbo].[LocalidadGetAll]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[LocalidadGetAll]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Localidades
END
GO
/****** Object:  StoredProcedure [dbo].[EspecialidadGetAll]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[EspecialidadGetAll]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Especialidades
END
GO
/****** Object:  StoredProcedure [dbo].[DivisionById]    Script Date: 10/15/2014 18:20:29 ******/
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
/****** Object:  StoredProcedure [dbo].[DivisionGetAll]    Script Date: 10/15/2014 18:20:29 ******/
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
	From Divisiones	
END
GO
/****** Object:  StoredProcedure [dbo].[LigaGetAll]    Script Date: 10/15/2014 18:20:29 ******/
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
	From Ligas	
END
GO
/****** Object:  StoredProcedure [dbo].[LigaById]    Script Date: 10/15/2014 18:20:29 ******/
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
/****** Object:  Table [dbo].[Jugadores]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugadores](
	[JugadorId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[TipoDocId] [int] NULL,
	[NumeroDoc] [nvarchar](50) NULL,
	[Domicilio] [nvarchar](50) NULL,
	[LocalidadId] [int] NULL,
	[FechaNac] [datetime] NULL,
	[Categoria] [int] NULL,
	[ImagenPath] [nchar](200) NULL,
	[Peso] [int] NULL,
	[FechaAlta] [datetime] NULL,
	[Estatura] [int] NULL,
	[Colegio] [nvarchar](50) NULL,
	[Telefono] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[CiudadaniaEuropea] [nchar](10) NULL,
	[Representante] [nchar](10) NULL,
	[Apodo] [nvarchar](50) NULL,
	[Posicion] [nvarchar](50) NULL,
	[PiernaHabil] [nvarchar](20) NULL,
 CONSTRAINT [PK_Jugadores] PRIMARY KEY CLUSTERED 
(
	[JugadorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[CategoriaGetAll]    Script Date: 10/15/2014 18:20:29 ******/
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
/****** Object:  StoredProcedure [dbo].[CategoriaById]    Script Date: 10/15/2014 18:20:29 ******/
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
/****** Object:  StoredProcedure [dbo].[CategoriaByEquipo]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matias
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CategoriaByEquipo]
	@IdEquipo int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT *
    FROM CategoriasPorEquipo ce join Categorias c on ce.CategoriaId = c.CategoriaId
    WHERE EquipoId = @IdEquipo
	
END
GO
/****** Object:  Table [dbo].[Equipos]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipos](
	[EquipoId] [int] IDENTITY(1,1) NOT NULL,
	[LigaId] [int] NULL,
	[DivisionId] [int] NULL,
	[NombreEquipo] [nvarchar](250) NULL,
 CONSTRAINT [PK_Equipos] PRIMARY KEY CLUSTERED 
(
	[EquipoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[TipoDocGetAll]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[TipoDocGetAll]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From TiposDeDoc
END
GO
/****** Object:  StoredProcedure [dbo].[TemporadasGetAll]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[TemporadasGetAll]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Temporadas
END
GO
/****** Object:  StoredProcedure [dbo].[PartidosSinDatos]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PartidosSinDatos]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT p.*, t.*, e.*
    FROM Partidos p join Temporadas t on p.TemporadaId = t.TemporadaId
    join Equipos e on e.EquipoId = p.EquipoId
    where p.EstadoPartido = 'Creado'
	
END
GO
/****** Object:  StoredProcedure [dbo].[EquipoInsert]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EquipoInsert]
	@LigaId nvarchar(50)
	,@DivisionId int
	,@NombreEquipo nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Equipos
	VALUES (@LigaId, @DivisionId, @NombreEquipo)

	SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[EquipoGetAll]    Script Date: 10/15/2014 18:20:29 ******/
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
	SELECT e.EquipoId, d.NombreDivision, l.NombreLiga, e.NombreEquipo
	From Equipos e join Divisiones d on e.DivisionId = d.DivisionId join Ligas l on e.LigaId = l.LigaId
END
GO
/****** Object:  StoredProcedure [dbo].[EquipoById]    Script Date: 10/15/2014 18:20:29 ******/
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

    SELECT e.EquipoId , e.NombreEquipo, d.NombreDivision, l.NombreLiga
    FROM Equipos e  join Divisiones d on e.DivisionId = d.DivisionId join Ligas l on e.LigaId = l.LigaId
    WHERE EquipoId = @Id
	
END
GO
/****** Object:  Table [dbo].[CoberturaMedica]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoberturaMedica](
	[JugadorId] [int] NULL,
	[ObraSocial] [nvarchar](50) NULL,
	[NroObraSocial] [int] NULL,
	[ServicioEmergencia] [nvarchar](50) NULL,
	[NroServicioEmergencia] [int] NULL,
	[Telefono] [nvarchar](50) NULL,
	[Hospital] [nvarchar](50) NULL,
	[Direccion] [nvarchar](50) NULL,
	[Medicamento] [nvarchar](50) NULL,
	[Alergico] [nvarchar](50) NULL,
	[Observaciones] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosGeneralesJugador]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosGeneralesJugador](
	[JugadorId] [int] NULL,
	[JuegaOtroLugar] [nvarchar](50) NULL,
	[QuienLoTrajo] [nvarchar](50) NULL,
	[NombreMadre] [nvarchar](50) NULL,
	[TelMadre] [nvarchar](50) NULL,
	[OcupacionMadre] [nvarchar](50) NULL,
	[TrabajoMadre] [nvarchar](50) NULL,
	[DireccionTrabajoMadre] [nvarchar](50) NULL,
	[TelefonoTrabajoMadre] [nvarchar](50) NULL,
	[NombrePadre] [nvarchar](50) NULL,
	[TelPadre] [nvarchar](50) NULL,
	[OcupacionPadre] [nvarchar](50) NULL,
	[TrabajoPadre] [nvarchar](50) NULL,
	[DireccionTrabajoPadre] [nvarchar](50) NULL,
	[TelefonoTrabajoPadre] [nvarchar](50) NULL,
	[PadresConviven] [nvarchar](10) NULL,
	[Hermanos] [int] NULL,
	[NombreResponsable] [nvarchar](50) NULL,
	[OcupacionResponsable] [nvarchar](50) NULL,
	[ParentescoResponsable] [nvarchar](50) NULL,
	[Lesiones] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JugadoresPorEquipos]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JugadoresPorEquipos](
	[JugadorPorEquipos] [int] IDENTITY(1,1) NOT NULL,
	[JugadorId] [int] NULL,
	[EquipoId] [int] NULL,
	[FechaDesde] [datetime] NULL,
	[FechaHasta] [datetime] NULL,
 CONSTRAINT [PK_JugadoresPorEquipo] PRIMARY KEY CLUSTERED 
(
	[JugadorPorEquipos] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[JugadorUpdateFoto]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JugadorUpdateFoto]
	 @Id int
	,@Nombre nvarchar(50)
	,@Apellido nvarchar(50)
	,@TipoDocId int
    ,@NumeroDoc nvarchar(50)
    ,@Domicilio nvarchar(50)
    ,@LocalidadId int
    ,@FechaNac datetime
    ,@ImagenPath nvarchar(200)
    ,@Apodo nvarchar(50)
    ,@Telefono nvarchar(50)
    ,@Email nvarchar(50)
    ,@Peso int
    ,@Estatura int
    ,@Posicion nvarchar(50)
    ,@PiernaHabil nvarchar(50)
    ,@Colegio nvarchar(50)
    ,@Ciudadania nchar(10)
    ,@Reperesentante nchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE Jugadores
	SET nombre = @Nombre, apellido = @Apellido, tipoDocId = @TipoDocId, NumeroDoc = @NumeroDoc, Domicilio = @Domicilio, LocalidadId = @LocalidadId,
	FechaNac = @FechaNac, Categoria = YEAR(@FechaNac), ImagenPath = @ImagenPath, Apodo = @Apodo, Telefono = @Telefono,
	Email = @Email, Peso = @Peso, Estatura = @Estatura, Posicion = @Posicion, PiernaHabil = @PiernaHabil, Colegio = @Colegio,
	CiudadaniaEuropea = @Ciudadania, Representante = @Reperesentante
	WHERE JugadorId = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorUpdate]    Script Date: 10/15/2014 18:20:29 ******/
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
    ,@NumeroDoc nvarchar(50)
    ,@Domicilio nvarchar(50)
    ,@LocalidadId int
    ,@FechaNac datetime
    ,@Apodo nvarchar(50)
    ,@Telefono nvarchar(50)
    ,@Email nvarchar(50)
    ,@Peso int
    ,@Estatura int
    ,@Posicion nvarchar(50)
    ,@PiernaHabil nvarchar(50)
    ,@Colegio nvarchar(50)
    ,@Ciudadania nchar(10)
    ,@Reperesentante nchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE Jugadores
	SET nombre = @Nombre, apellido = @Apellido, tipoDocId = @TipoDocId, NumeroDoc = @NumeroDoc, Domicilio = @Domicilio, 
	LocalidadId = @LocalidadId, FechaNac = @FechaNac, Categoria = YEAR(@FechaNac), Apodo = @Apodo, Telefono = @Telefono,
	Email = @Email, Peso = @Peso, Estatura = @Estatura, Posicion = @Posicion, PiernaHabil = @PiernaHabil, Colegio = @Colegio,
	CiudadaniaEuropea = @Ciudadania, Representante = @Reperesentante
	WHERE JugadorId = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetJugadoresByNameAndCategory]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetJugadoresByNameAndCategory]
	@Name nvarchar(250),
	@CategoryId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT *
    FROM Jugadores jug
    WHERE Year(FechaNac) IN (select NombreCategoria from Categorias where CategoriaId = @CategoryId )
    OR	@Name LIKE '%' + Nombre + '%'
    OR @Name LIKE '%' + Apellido + '%'
	
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorInsert]    Script Date: 10/15/2014 18:20:29 ******/
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
    ,@NumeroDoc nvarchar(50)
    ,@FechaNac datetime
    ,@Domicilio nvarchar(50)
    ,@LocalidadId int
    ,@ImagenPath nvarchar(200)
    ,@Apodo nvarchar(50)
    ,@Peso int
    ,@Estatura int
    ,@Colegio nvarchar(50)
    ,@Telefono nvarchar(50)
    ,@Email nvarchar(50)
    ,@Ciudadania nchar(10)
    ,@Representante nchar(10)
    ,@Posicion nvarchar(50)
    ,@PiernaHabil nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Jugadores
	VALUES (@Nombre, @Apellido, @TipoDocId, @NumeroDoc, @Domicilio, @LocalidadId, @FechaNac, YEAR(@FechaNac), @ImagenPath, @Peso,
	 GETDATE(), @Estatura, @Colegio, @Telefono, @Email, @Ciudadania,@Representante, @Apodo, @Posicion, @PiernaHabil)

	select SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresGetAll]    Script Date: 10/15/2014 18:20:29 ******/
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
	@parametroBuscar nvarchar(250)

AS
BEGIN
	SELECT *, j.Nombre as jNombre, l.Nombre as LocalidadNombre, tp.Nombre as tdNombre
	FROM Jugadores j join Localidades l on j.LocalidadId = l.LocalidadId join TiposDeDoc tp on j.TipoDocId = tp.TipoDocId
	where j.Nombre like '%'+@parametroBuscar+'%' or j.Apellido like '%'+@parametroBuscar+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresByPartido]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresByPartido]
	@IdPartido int 
	,@Titular nvarchar(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select j.*, td.Nombre as tdNombre
	from Partidos p join JugadoresPorPartido jp on  p.PartidoId = jp.PartidoId
	join Jugadores j on j.JugadorId = jp.JugadorId
	join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId 
	where jp.PartidoId = @IdPartido and jp.Titular = @Titular
END
GO
/****** Object:  StoredProcedure [dbo].[PersonalEspById]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[PersonalEspById]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT pe.*, l.Nombre NombreLocalidad, td.Nombre TipoDocNombre
    FROM PersonalEspecializado pe
    JOIN Localidades l ON pe.LocalidadId = l.LocalidadId
    JOIN TiposDeDoc td ON td.TipoDocId = pe.TipoDocId
    WHERE pe.PersonalEspId = @Id
	
END
GO
/****** Object:  StoredProcedure [dbo].[PartidoById]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PartidoById]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT p.*, t.*, e.*
    FROM Partidos p join Temporadas t on p.TemporadaId = t.TemporadaId
    join Equipos e on e.EquipoId = p.EquipoId
    WHERE PartidoId = @Id
	
END
GO
/****** Object:  StoredProcedure [dbo].[PersonalEspInsert]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonalEspInsert]
	@Nombre nvarchar(50)
	,@Apellido nvarchar(50)
	,@TipoDocId int
    ,@NumeroDoc nvarchar(50)
    ,@Domicilio nvarchar(50)
    ,@LocalidadId int
    ,@EspecialidadId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PersonalEspecializado
	VALUES (@Nombre, @Apellido, @TipoDocId, @NumeroDoc, @Domicilio, @LocalidadId, @EspecialidadId)

	select SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[PersonalEspGetAll]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonalEspGetAll]
	-- Add the parameters for the stored procedure here
	

AS
BEGIN
	SELECT *, l.Nombre  LocalidadNombre, tp.Nombre  TipoDocNombre, e.Nombre EspecialidadNombre
	FROM PersonalEspecializado pe 
	join Localidades l on pe.LocalidadId = l.LocalidadId 
	join TiposDeDoc tp on pe.TipoDocId = tp.TipoDocId
	join Especialidades e on e.EspecialidadId = pe.EspecialidadId
END
GO
/****** Object:  Table [dbo].[PersonalPorEquipo]    Script Date: 10/15/2014 18:20:29 ******/
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
/****** Object:  StoredProcedure [dbo].[PersonalSearch]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PersonalSearch]
	@IdEquipo int
	,@nombre nvarchar(250)
	,@apellido nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    select pe.*, td.Nombre NombreDoc, l.Nombre NombreLocalidad, e.Nombre EspecialidadNombre
	from PersonalEspecializado pe join TiposDeDoc td on td.TipoDocId = pe.TipoDocId join Localidades l on l.LocalidadId = pe.LocalidadId
	join Especialidades e on e.EspecialidadId = pe.EspecialidadId
	where pe.Nombre like '%'+@nombre+'%' and pe.apellido like '%'+@apellido+'%' and  pe.PersonalEspId not in (
								select pee.PersonalEspId
								from PersonalPorEquipo pee
								where pee.EquipoId = @IdEquipo)  
	
END
GO
/****** Object:  StoredProcedure [dbo].[PersonalEspPorEquipoInsert]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonalEspPorEquipoInsert]
	@PersonalEspId int	
	,@EquipoId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PersonalPorEquipo
	VALUES (@PersonalEspId, @EquipoId)

	SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[PersonalEspPorEquipoDelete]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[PersonalEspPorEquipoDelete]
	@personalId int	
	,@EquipoId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from PersonalPorEquipo
	where PersonalEspId = @personalId and EquipoId = @EquipoId

	SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[PersonalByEquipo]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonalByEquipo]
	@IdEquipo int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select p.*, td.Nombre NombreDoc, l.Nombre NombreLocalidad, esp.Nombre EspecialidadNombre
	from Equipos e join PersonalPorEquipo pe on  e.EquipoId = pe.EquipoId  join PersonalEspecializado p on p.PersonalEspId = pe.PersonalEspId
	join TiposDeDoc td on td.TipoDocId = p.TipoDocId join Localidades l on l.LocalidadId = p.LocalidadId 
	join Especialidades esp on esp.EspecialidadId = p.EspecialidadId
	where e.EquipoId = @IdEquipo 
	
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresByEquipo]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresByEquipo]
	@IdEquipo int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select j.JugadorId, j.Nombre, j.Apellido, j.TipoDocId, td.Nombre as tdNombre, j.NumeroDoc, j.FechaNac, j.Domicilio, j.LocalidadId
	from Equipos e join JugadoresPorEquipos je on  e.EquipoId = je.EquipoId  join Jugadores j on j.JugadorId = je.JugadorId
	join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId 
	where e.EquipoId = @IdEquipo
	AND je.FechaHasta IS NULL	
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorPorEquipoInsert]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorPorEquipoInsert]
	@JugadorId int	
	,@EquipoId int
	,@FechaDesde datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO JugadoresPorEquipos
	VALUES (@JugadorId, @EquipoId, @FechaDesde, null)

	SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorPorEquipoDelete]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorPorEquipoDelete]
	@JugadorId int	
	,@EquipoId int
	,@FechaHasta datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update JugadoresPorEquipos
	SET FechaHasta = @FechaHasta
	where JugadorId = @JugadorId and EquipoId = @EquipoId

	SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresSearchPartidoTodosEquipos]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresSearchPartidoTodosEquipos]
	@IdPartido int
	,@nombre nvarchar(250)
	,@apellido nvarchar(250)
	,@categoria nvarchar(250)
	,@posicion nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    select j.*, td.Nombre as tdNombre
	from Jugadores j join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId
	join JugadoresPorEquipos je on je.JugadorId = j.JugadorId
	where j.Nombre like '%'+@nombre+'%' and j.apellido like '%'+@apellido+'%' and j.Categoria like '%'+@categoria+'%'  and j.Posicion like '%'+@posicion+'%'
	and  j.JugadorId not in (
								select pe.JugadorId
								from JugadoresPorPartido pe
								where pe.PartidoId = @IdPartido)
	
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresSearchPartido]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresSearchPartido]
	@IdPartido int
	,@IdEquipo int
	,@nombre nvarchar(250)
	,@apellido nvarchar(250)
	,@categoria nvarchar(250)
	,@posicion nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    select j.*, td.Nombre as tdNombre
	from Jugadores j join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId
	join JugadoresPorEquipos je on je.JugadorId = j.JugadorId
	where j.Nombre like '%'+@nombre+'%' and j.apellido like '%'+@apellido+'%' and j.Categoria like '%'+@categoria+'%' and j.Posicion like '%'+@posicion+'%'
	 and  j.JugadorId not in (
								select pe.JugadorId
								from JugadoresPorPartido pe
								where pe.PartidoId = @IdPartido)  
	and j.JugadorId in (
								select pe.JugadorId
								from JugadoresPorEquipos pe
								where pe.EquipoId = @IdEquipo
								and pe.FechaHasta != '')
	
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresSearch]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresSearch]
	@IdEquipo int
	,@nombre nvarchar(250)
	,@apellido nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    select j.JugadorId, j.Nombre, j.Apellido, j.TipoDocId, td.Nombre as tdNombre, j.NumeroDoc, j.FechaNac, j.Domicilio, j.LocalidadId
	from Jugadores j join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId
	where j.Nombre like '%'+@nombre+'%' and j.apellido like '%'+@apellido+'%' and  j.JugadorId not in (
								select je.JugadorId
								from JugadoresPorEquipos je
								where je.EquipoId = @IdEquipo
								AND je.FechaHasta IS NULL )  
	
END
GO
/****** Object:  StoredProcedure [dbo].[DatosGeneralesJugadorUpdate]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DatosGeneralesJugadorUpdate]
	 @Id int
	,@NombreMadre nvarchar(50)
	,@TelMadre nvarchar(50)
	,@OcupacionMadre nvarchar(50)
    ,@TrabajoMadre nvarchar(50)
    ,@DireccionTrabajoMadre nvarchar(50)
    ,@TelefonoTrabajoMadre nvarchar(50)
    ,@NombrePadre nvarchar(50)
    ,@TelPadre nvarchar(50)
    ,@OcupacionPadre nvarchar(50)
    ,@TrabajoPadre nvarchar(50)
    ,@DireccionTrabajoPadre nvarchar(50)
    ,@TelefonoTrabajoPadre nvarchar(50)
    ,@PadresConviven nvarchar(50)
    ,@Hermanos int
    ,@NombreResponsable nvarchar(50)
    ,@OcupacionResponsable nvarchar(50)
    ,@ParentescoResponsable nvarchar(50)
    ,@JuegaOtroLugar nvarchar(50)
    ,@QuienLoTrajo nvarchar(50)
    ,@Lesiones nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE DatosGeneralesJugador
	SET NombreMadre = @NombreMadre, TelMadre = @TelMadre, OcupacionMadre = @OcupacionMadre,
	TrabajoMadre = @TrabajoMadre, DireccionTrabajoMadre = @DireccionTrabajoMadre, TelefonoTrabajoMadre = @TelefonoTrabajoMadre,
	NombrePadre = @NombrePadre , TelPadre = @TelPadre, OcupacionPadre = @OcupacionPadre, TrabajoPadre = @TrabajoPadre,
	DireccionTrabajoPadre = @DireccionTrabajoPadre, TelefonoTrabajoPadre = @TelefonoTrabajoPadre, PadresConviven = @PadresConviven,
	Hermanos = @Hermanos, NombreResponsable = @NombreResponsable, OcupacionResponsable = @OcupacionResponsable,
	ParentescoResponsable = @ParentescoResponsable, JuegaOtroLugar = @JuegaOtroLugar, QuienLoTrajo = @QuienLoTrajo,
	Lesiones = @Lesiones
	WHERE JugadorId = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[DatosGeneralesJugadorInsert]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DatosGeneralesJugadorInsert]
	@IdJugador int
	,@JuegaOtroLugar nvarchar(50)
	,@QuienLoTrajo nvarchar(50)
	,@NombreMadre nvarchar(50)
	,@TelMadre nvarchar(50)
	,@OcupacionMadre nvarchar(50)
	,@TrabajoMadre nvarchar(50)
	,@DireccionTrabajoMadre nvarchar(50)
	,@TelefonoTrabajoMadre nvarchar(50)
	,@NombrePadre nvarchar(50)
	,@TelPadre nvarchar(50)
	,@OcupacionPadre nvarchar(50)
	,@TrabajoPadre nvarchar(50)
	,@DireccionTrabajoPadre nvarchar(50)
	,@TelefonoTrabajoPadre nvarchar(50)
	,@PadresConviven nvarchar(10)
	,@Hermanos int
	,@NombreResponsable nvarchar(50)
	,@OcupacionResponsable nvarchar(50)
	,@ParentescoResponsable nvarchar(50)
	,@Lesiones nvarchar(50)
    
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO DatosGeneralesJugador
	VALUES (@IdJugador, @JuegaOtroLugar, @QuienLoTrajo, @NombreMadre, @TelMadre, @OcupacionMadre, @TrabajoMadre,@DireccionTrabajoMadre
	 , @TelefonoTrabajoMadre, @NombrePadre, @TelPadre, @OcupacionPadre, @TrabajoPadre, @DireccionTrabajoPadre,@TelefonoTrabajoPadre, @PadresConviven,@Hermanos,
	  @NombreResponsable ,@OcupacionResponsable ,@ParentescoResponsable,@Lesiones)
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresNoEquipo]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresNoEquipo]
	@IdEquipo int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select j.JugadorId, j.Nombre, j.Apellido, j.TipoDocId, td.Nombre as tdNombre, j.NumeroDoc, j.FechaNac, j.Domicilio, j.LocalidadId
	from Jugadores j join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId
	where j.JugadorId not in (
								select je.JugadorId
								from JugadoresPorEquipos je
								where je.EquipoId = @IdEquipo)  
	
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorEquiposListHistorico]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[JugadorEquiposListHistorico]
	@IdJugador int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select e.NombreEquipo NombreEquipo, je.FechaDesde, je.FechaHasta
	from Equipos e join JugadoresPorEquipos je on  e.EquipoId = je.EquipoId  join Jugadores j on j.JugadorId = je.JugadorId
	where j.JugadorId = @IdJugador
	AND je.FechaHasta IS NOT NULL
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorEquiposList]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorEquiposList]
	@IdJugador int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select e.NombreEquipo NombreEquipo, je.FechaDesde
	from Equipos e join JugadoresPorEquipos je on  e.EquipoId = je.EquipoId  join Jugadores j on j.JugadorId = je.JugadorId
	where j.JugadorId = @IdJugador
	AND je.FechaHasta IS NULL
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorById]    Script Date: 10/15/2014 18:20:29 ******/
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

    SELECT j.*, l.Nombre NombreLocalidad, TD.Nombre TipoDocNombre, cm.*, dg.*
    FROM Jugadores j 
    JOIN Localidades l
    ON j.LocalidadId = l.LocalidadId
    JOIN TiposDeDoc TD
    ON TD.TipoDocId = j.TipoDocId
    JOIN CoberturaMedica cm ON cm.JugadorId = j.JugadorId
    JOIN DatosGeneralesJugador dg ON dg.JugadorId = j.JugadorId
    WHERE j.JugadorId = @Id
	
END
GO
/****** Object:  StoredProcedure [dbo].[CoberturaMedicaUpdate]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CoberturaMedicaUpdate]
	 @Id int
	,@ObraSocial nvarchar(50)
	,@NroObraSocial int
	,@ServicioEmergencia nvarchar(50)
    ,@NumeroServicio int
    ,@Hospital nvarchar(50)
    ,@Direccion nvarchar(50)
    ,@Telefono nvarchar(50)
    ,@Medicamento nvarchar(50)
    ,@Alergico nvarchar(50)
    ,@Observaciones nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE CoberturaMedica
	SET ObraSocial = @ObraSocial, NroObraSocial = @NroObraSocial, ServicioEmergencia = @ServicioEmergencia, NroServicioEmergencia = @NumeroServicio, 
	Hospital = @Hospital, Direccion = @Direccion, Telefono = @Telefono , Medicamento = @Medicamento, Alergico = @Alergico,
	Observaciones = @Observaciones
	WHERE JugadorId = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[CoberturaMedicaInsert]    Script Date: 10/15/2014 18:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CoberturaMedicaInsert]
	@IdJugador int
	,@ObraSocial nvarchar(50)
	,@NroObraSocial int
    ,@ServicioEmergencia nvarchar(50)
    ,@NroServicioEmergencia int
    ,@Telefono nvarchar(50)
    ,@Hospital nvarchar(50)
    ,@Direccion nvarchar(200)
    ,@Medicamento nvarchar(50)
    ,@Alergico nvarchar(50)
    ,@Observaciones nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO CoberturaMedica
	VALUES (@IdJugador, @ObraSocial, @NroObraSocial, @ServicioEmergencia, @NroServicioEmergencia, @Telefono, @Hospital,@Direccion, @Medicamento, @Alergico, @Observaciones)

END
GO
/****** Object:  Default [DF_Partidos_EstadoPartido]    Script Date: 10/15/2014 18:20:27 ******/
ALTER TABLE [dbo].[Partidos] ADD  CONSTRAINT [DF_Partidos_EstadoPartido]  DEFAULT (N'C') FOR [EstadoPartido]
GO
/****** Object:  ForeignKey [FK_Provincias_Localidades]    Script Date: 10/15/2014 18:20:27 ******/
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD  CONSTRAINT [FK_Provincias_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[Provincias] CHECK CONSTRAINT [FK_Provincias_Localidades]
GO
/****** Object:  ForeignKey [FK_LocalidadID]    Script Date: 10/15/2014 18:20:28 ******/
ALTER TABLE [dbo].[PersonalEspecializado]  WITH CHECK ADD  CONSTRAINT [FK_LocalidadID] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[PersonalEspecializado] CHECK CONSTRAINT [FK_LocalidadID]
GO
/****** Object:  ForeignKey [FK_TipoDocId]    Script Date: 10/15/2014 18:20:28 ******/
ALTER TABLE [dbo].[PersonalEspecializado]  WITH CHECK ADD  CONSTRAINT [FK_TipoDocId] FOREIGN KEY([TipoDocId])
REFERENCES [dbo].[TiposDeDoc] ([TipoDocId])
GO
ALTER TABLE [dbo].[PersonalEspecializado] CHECK CONSTRAINT [FK_TipoDocId]
GO
/****** Object:  ForeignKey [FK_Jugadores_Localidades]    Script Date: 10/15/2014 18:20:29 ******/
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_Localidades]
GO
/****** Object:  ForeignKey [FK_Jugadores_TiposDeDoc]    Script Date: 10/15/2014 18:20:29 ******/
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_TiposDeDoc] FOREIGN KEY([TipoDocId])
REFERENCES [dbo].[TiposDeDoc] ([TipoDocId])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_TiposDeDoc]
GO
/****** Object:  ForeignKey [FK_Equipos_Divisiones]    Script Date: 10/15/2014 18:20:29 ******/
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD  CONSTRAINT [FK_Equipos_Divisiones] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisiones] ([DivisionId])
GO
ALTER TABLE [dbo].[Equipos] CHECK CONSTRAINT [FK_Equipos_Divisiones]
GO
/****** Object:  ForeignKey [FK_Equipos_Ligas]    Script Date: 10/15/2014 18:20:29 ******/
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD  CONSTRAINT [FK_Equipos_Ligas] FOREIGN KEY([LigaId])
REFERENCES [dbo].[Ligas] ([LigaId])
GO
ALTER TABLE [dbo].[Equipos] CHECK CONSTRAINT [FK_Equipos_Ligas]
GO
/****** Object:  ForeignKey [FK_CoberturaMedica_Jugadores]    Script Date: 10/15/2014 18:20:29 ******/
ALTER TABLE [dbo].[CoberturaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CoberturaMedica_Jugadores] FOREIGN KEY([JugadorId])
REFERENCES [dbo].[Jugadores] ([JugadorId])
GO
ALTER TABLE [dbo].[CoberturaMedica] CHECK CONSTRAINT [FK_CoberturaMedica_Jugadores]
GO
/****** Object:  ForeignKey [FK_DatosGeneralesJugador_Jugadores]    Script Date: 10/15/2014 18:20:29 ******/
ALTER TABLE [dbo].[DatosGeneralesJugador]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesJugador_Jugadores] FOREIGN KEY([JugadorId])
REFERENCES [dbo].[Jugadores] ([JugadorId])
GO
ALTER TABLE [dbo].[DatosGeneralesJugador] CHECK CONSTRAINT [FK_DatosGeneralesJugador_Jugadores]
GO
/****** Object:  ForeignKey [FK_JugadoresPorEquipo_Equipos]    Script Date: 10/15/2014 18:20:29 ******/
ALTER TABLE [dbo].[JugadoresPorEquipos]  WITH CHECK ADD  CONSTRAINT [FK_JugadoresPorEquipo_Equipos] FOREIGN KEY([EquipoId])
REFERENCES [dbo].[Equipos] ([EquipoId])
GO
ALTER TABLE [dbo].[JugadoresPorEquipos] CHECK CONSTRAINT [FK_JugadoresPorEquipo_Equipos]
GO
/****** Object:  ForeignKey [FK_JugadoresPorEquipo_Jugadores]    Script Date: 10/15/2014 18:20:29 ******/
ALTER TABLE [dbo].[JugadoresPorEquipos]  WITH CHECK ADD  CONSTRAINT [FK_JugadoresPorEquipo_Jugadores] FOREIGN KEY([JugadorId])
REFERENCES [dbo].[Jugadores] ([JugadorId])
GO
ALTER TABLE [dbo].[JugadoresPorEquipos] CHECK CONSTRAINT [FK_JugadoresPorEquipo_Jugadores]
GO
/****** Object:  ForeignKey [FK_PersonalPorEquipo_Equipos]    Script Date: 10/15/2014 18:20:29 ******/
ALTER TABLE [dbo].[PersonalPorEquipo]  WITH CHECK ADD  CONSTRAINT [FK_PersonalPorEquipo_Equipos] FOREIGN KEY([EquipoId])
REFERENCES [dbo].[Equipos] ([EquipoId])
GO
ALTER TABLE [dbo].[PersonalPorEquipo] CHECK CONSTRAINT [FK_PersonalPorEquipo_Equipos]
GO
