USE [TPM]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 08/05/2015 19:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[EspecialidadId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Especialidades] ON
INSERT [dbo].[Especialidades] ([EspecialidadId], [Nombre]) VALUES (1, N'Tecnico                                           ')
INSERT [dbo].[Especialidades] ([EspecialidadId], [Nombre]) VALUES (2, N'Preparador Fisico                                 ')
INSERT [dbo].[Especialidades] ([EspecialidadId], [Nombre]) VALUES (3, N'Fisioterapeuta                                    ')
INSERT [dbo].[Especialidades] ([EspecialidadId], [Nombre]) VALUES (4, N'Medico                                            ')
INSERT [dbo].[Especialidades] ([EspecialidadId], [Nombre]) VALUES (5, N'Ayudante de campo                                 ')
SET IDENTITY_INSERT [dbo].[Especialidades] OFF
/****** Object:  Table [dbo].[CategoriasPorEquipo]    Script Date: 08/05/2015 19:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriasPorEquipo](
	[EquipoId] [int] NOT NULL,
	[CategoriaId] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (18, 30)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (18, 31)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (18, 32)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (19, 33)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (20, 34)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (21, 35)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (22, 36)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (23, 37)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (24, 33)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (24, 34)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (25, 35)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (26, 36)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (27, 37)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (28, 38)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (29, 39)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (30, 40)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (31, 41)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (32, 42)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (33, 33)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (33, 34)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (34, 35)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (35, 36)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (36, 37)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (37, 38)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (38, 39)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (39, 40)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (40, 41)
INSERT [dbo].[CategoriasPorEquipo] ([EquipoId], [CategoriaId]) VALUES (41, 42)
/****** Object:  Table [dbo].[Categorias]    Script Date: 08/05/2015 19:38:17 ******/
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
SET IDENTITY_INSERT [dbo].[Categorias] ON
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (1, N'1964')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (2, N'1965')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (3, N'1966')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (4, N'1967')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (5, N'1968')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (6, N'1969')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (7, N'1970')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (8, N'1971')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (9, N'1972')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (10, N'1973')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (11, N'1974')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (12, N'1975')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (13, N'1976')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (14, N'1977')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (15, N'1978')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (16, N'1979')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (17, N'1980')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (18, N'1981')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (19, N'1982')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (20, N'1983')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (21, N'1984')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (22, N'1985')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (23, N'1986')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (24, N'1987')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (25, N'1988')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (26, N'1989')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (27, N'1990')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (28, N'1991')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (29, N'1992')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (30, N'1993')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (31, N'1994')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (32, N'1995')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (33, N'1996')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (34, N'1997')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (35, N'1998')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (36, N'1999')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (37, N'2000')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (38, N'2001')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (39, N'2002')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (40, N'2003')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (41, N'2004')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (42, N'2005')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (43, N'2006')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (44, N'2007')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (45, N'2008')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (46, N'2009')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (47, N'2010')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (48, N'2011')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (49, N'2012')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (50, N'2013')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (51, N'2014')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (52, N'2015')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (53, N'2016')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (54, N'2017')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (55, N'2018')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (56, N'2019')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (57, N'2020')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (58, N'2021')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (59, N'2022')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (60, N'2023')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (61, N'2024')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (62, N'2025')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (63, N'2026')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (64, N'2027')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (65, N'2028')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (66, N'2029')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (67, N'2030')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (68, N'2031')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (69, N'2032')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (70, N'2033')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (71, N'2034')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (72, N'2035')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (73, N'2036')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (74, N'2037')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (75, N'2038')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (76, N'2039')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (77, N'2040')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (78, N'2041')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (79, N'2042')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (80, N'2043')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (81, N'2044')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (82, N'2045')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (83, N'2046')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (84, N'2047')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (85, N'2048')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (86, N'2049')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria]) VALUES (87, N'2050')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
/****** Object:  Table [dbo].[GolesPorJugadorPorPartido]    Script Date: 08/05/2015 19:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GolesPorJugadorPorPartido](
	[GolesPorJugadorId] [int] IDENTITY(1,1) NOT NULL,
	[PartidoId] [int] NULL,
	[JugadorId] [int] NULL,
	[MinutosGol] [int] NULL,
	[Descripcion] [nvarchar](255) NULL,
	[UrlVideo] [nvarchar](255) NULL,
 CONSTRAINT [PK_GolesPorJugadorPorPartido] PRIMARY KEY CLUSTERED 
(
	[GolesPorJugadorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GolesPorJugadorPorPartido] ON
INSERT [dbo].[GolesPorJugadorPorPartido] ([GolesPorJugadorId], [PartidoId], [JugadorId], [MinutosGol], [Descripcion], [UrlVideo]) VALUES (1, 7, 50, 15, N'Gol de chilena', N'')
INSERT [dbo].[GolesPorJugadorPorPartido] ([GolesPorJugadorId], [PartidoId], [JugadorId], [MinutosGol], [Descripcion], [UrlVideo]) VALUES (2, 7, 56, 34, N'Centro gol de cabeza', N'')
INSERT [dbo].[GolesPorJugadorPorPartido] ([GolesPorJugadorId], [PartidoId], [JugadorId], [MinutosGol], [Descripcion], [UrlVideo]) VALUES (3, 8, 67, 15, N'golaso', N'')
INSERT [dbo].[GolesPorJugadorPorPartido] ([GolesPorJugadorId], [PartidoId], [JugadorId], [MinutosGol], [Descripcion], [UrlVideo]) VALUES (4, 8, 67, 48, N'Centro gol', N'')
INSERT [dbo].[GolesPorJugadorPorPartido] ([GolesPorJugadorId], [PartidoId], [JugadorId], [MinutosGol], [Descripcion], [UrlVideo]) VALUES (9, 10, 46, 34, N'', N'')
INSERT [dbo].[GolesPorJugadorPorPartido] ([GolesPorJugadorId], [PartidoId], [JugadorId], [MinutosGol], [Descripcion], [UrlVideo]) VALUES (10, 10, 50, 56, N'', N'')
INSERT [dbo].[GolesPorJugadorPorPartido] ([GolesPorJugadorId], [PartidoId], [JugadorId], [MinutosGol], [Descripcion], [UrlVideo]) VALUES (11, 10, 63, 78, N'', N'')
SET IDENTITY_INSERT [dbo].[GolesPorJugadorPorPartido] OFF
/****** Object:  Table [dbo].[Divisiones]    Script Date: 08/05/2015 19:38:17 ******/
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
SET IDENTITY_INSERT [dbo].[Divisiones] ON
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (1, N'Primera Local')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (2, N'Reserva')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (3, N'4ta')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (4, N'5ta')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (5, N'6ta')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (6, N'7ma')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (7, N'8va')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (8, N'9na')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (9, N'10ma')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (10, N'11ma')
INSERT [dbo].[Divisiones] ([DivisionId], [NombreDivision]) VALUES (11, N'12ma')
SET IDENTITY_INSERT [dbo].[Divisiones] OFF
/****** Object:  Table [dbo].[JugadoresPorPartido]    Script Date: 08/05/2015 19:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JugadoresPorPartido](
	[PartidoId] [int] NULL,
	[JugadorId] [int] NULL,
	[NumeroCamiseta] [int] NULL,
	[Titular] [nvarchar](2) NULL,
	[MinutosJugados] [int] NULL,
	[MinPrimeraAmarilla] [int] NULL,
	[MinSegundaAmarilla] [int] NULL,
	[MinRoja] [int] NULL,
	[Observaciones] [nvarchar](50) NULL,
	[Calificacion] [int] NULL,
	[Cambio] [int] NULL,
	[Goles] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 46, 0, N'T', 90, 0, 0, 0, N'', 7, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 57, 0, N'S', 90, 0, 0, 0, N'', 6, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 47, 0, N'T', 90, 0, 0, 0, N'', 6, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 51, 0, N'T', 70, 25, 0, 0, N'', 4, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 48, 0, N'T', 90, 0, 0, 0, N'', 6, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 49, 0, N'T', 90, 0, 0, 0, N'', 7, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 62, 0, N'S', 90, 0, 0, 0, N'', 7, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 55, 0, N'T', 82, 36, 0, 0, N'', 8, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 53, 0, N'T', 90, 0, 0, 0, N'', 6, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 50, 0, N'T', 90, 0, 0, 0, N'', 9, 0, 1)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 56, 0, N'T', 75, 0, 0, 0, N'', 8, 0, 1)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 67, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 63, 0, N'S', 20, 0, 0, 0, N'', 6, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 66, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 52, 0, N'T', 8, 0, 0, 0, N'', 7, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (7, 54, 0, N'T', 15, 0, 0, 0, N'', 6, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 46, 0, N'T', 90, 0, 0, 0, N'', 6, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 47, 0, N'T', 90, 0, 0, 0, N'', 6, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 51, 0, N'T', 90, 0, 0, 0, N'', 4, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 48, 0, N'T', 90, 0, 0, 0, N'', 6, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 49, 0, N'T', 90, 0, 0, 0, N'', 7, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 55, 0, N'T', 90, 0, 0, 0, N'', 6, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 53, 0, N'T', 87, 0, 0, 0, N'', 5, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 50, 0, N'T', 90, 0, 0, 0, N'', 8, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 67, 0, N'T', 90, 0, 0, 0, N'', 9, 0, 2)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 52, 0, N'T', 78, 19, 0, 0, N'', 7, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 46, 0, N'T', 90, 0, 0, 0, N'', 5, 0, 1)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 57, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 62, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 66, 0, N'S', 3, 0, 0, 0, N'', 5, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 63, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 56, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 60, 0, N'S', 12, 0, 0, 0, N'', 6, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (8, 65, 0, N'S', 0, 0, 0, 0, N'', 1, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 47, 0, N'T', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 49, 0, N'T', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 48, 0, N'T', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 62, 0, N'T', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 50, 0, N'T', 0, 0, 0, 0, N'', 0, 0, 1)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 56, 0, N'T', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 53, 0, N'T', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 67, 0, N'T', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 52, 0, N'T', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 57, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 64, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 63, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 1)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 65, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 54, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 66, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
INSERT [dbo].[JugadoresPorPartido] ([PartidoId], [JugadorId], [NumeroCamiseta], [Titular], [MinutosJugados], [MinPrimeraAmarilla], [MinSegundaAmarilla], [MinRoja], [Observaciones], [Calificacion], [Cambio], [Goles]) VALUES (10, 60, 0, N'S', 0, 0, 0, 0, N'', 0, 0, 0)
/****** Object:  Table [dbo].[AsistenciasPorJugadorPorPartido]    Script Date: 08/05/2015 19:38:17 ******/
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
/****** Object:  Table [dbo].[Localidades]    Script Date: 08/05/2015 19:38:17 ******/
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
SET IDENTITY_INSERT [dbo].[Localidades] ON
INSERT [dbo].[Localidades] ([LocalidadId], [Nombre]) VALUES (1, N'Cordoba')
INSERT [dbo].[Localidades] ([LocalidadId], [Nombre]) VALUES (2, N'Rosario')
INSERT [dbo].[Localidades] ([LocalidadId], [Nombre]) VALUES (3, N'Marcos Juarez')
INSERT [dbo].[Localidades] ([LocalidadId], [Nombre]) VALUES (4, N'Buenos Aires')
INSERT [dbo].[Localidades] ([LocalidadId], [Nombre]) VALUES (5, N'La Pampa')
SET IDENTITY_INSERT [dbo].[Localidades] OFF
/****** Object:  Table [dbo].[Ligas]    Script Date: 08/05/2015 19:38:17 ******/
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
SET IDENTITY_INSERT [dbo].[Ligas] ON
INSERT [dbo].[Ligas] ([LigaId], [NombreLiga]) VALUES (1, N'AFA')
INSERT [dbo].[Ligas] ([LigaId], [NombreLiga]) VALUES (2, N'Cordobesa A')
INSERT [dbo].[Ligas] ([LigaId], [NombreLiga]) VALUES (3, N'Cordobesa B')
INSERT [dbo].[Ligas] ([LigaId], [NombreLiga]) VALUES (4, N'Seleccionado')
INSERT [dbo].[Ligas] ([LigaId], [NombreLiga]) VALUES (5, N'Cordobesa')
SET IDENTITY_INSERT [dbo].[Ligas] OFF
/****** Object:  Table [dbo].[Partidos]    Script Date: 08/05/2015 19:38:17 ******/
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
	[GolesPropios] [int] NULL,
	[GolesRival] [int] NULL,
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
SET IDENTITY_INSERT [dbo].[Partidos] ON
INSERT [dbo].[Partidos] ([PartidoId], [TemporadaId], [TipoPartido], [EquipoId], [Rival], [FechaHoraInicio], [Lugar], [Condicion], [Duracion], [GolesPropios], [GolesRival], [JugadorDestacadoRival], [EstadoPartido], [HoraCitacion], [NumeroFecha], [Cancha]) VALUES (7, 1, N'Campeonato', 18, N'Peñarol', CAST(0x0000A3D50128A180 AS DateTime), N'Cordoba', N'Local', 0, 2, 1, NULL, N'Creado', CAST(0x0000A3D0011826C0 AS DateTime), 1, N'La Agustina')
INSERT [dbo].[Partidos] ([PartidoId], [TemporadaId], [TipoPartido], [EquipoId], [Rival], [FechaHoraInicio], [Lugar], [Condicion], [Duracion], [GolesPropios], [GolesRival], [JugadorDestacadoRival], [EstadoPartido], [HoraCitacion], [NumeroFecha], [Cancha]) VALUES (8, 1, N'Campeonato', 18, N'Talleres', CAST(0x0000A3D801499700 AS DateTime), N'Jardin de espinoza', N'Visitante', 0, 2, 0, NULL, N'Creado', CAST(0x0000A3D101391C40 AS DateTime), 2, N'La boutique')
INSERT [dbo].[Partidos] ([PartidoId], [TemporadaId], [TipoPartido], [EquipoId], [Rival], [FechaHoraInicio], [Lugar], [Condicion], [Duracion], [GolesPropios], [GolesRival], [JugadorDestacadoRival], [EstadoPartido], [HoraCitacion], [NumeroFecha], [Cancha]) VALUES (10, 1, N'Campeonato', 18, N'Las palmas', CAST(0x0000A3DF011826C0 AS DateTime), N'Cordoba', N'Local', 0, 3, 2, NULL, N'Creado', CAST(0x0000A3D20107AC00 AS DateTime), 3, N'La agustina')
SET IDENTITY_INSERT [dbo].[Partidos] OFF
/****** Object:  Table [dbo].[Temporadas]    Script Date: 08/05/2015 19:38:17 ******/
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
SET IDENTITY_INSERT [dbo].[Temporadas] ON
INSERT [dbo].[Temporadas] ([TemporadaId], [TemporadaNombre], [FechaInicio], [FechaFin]) VALUES (1, N'2014-2015', CAST(0x98380B00 AS Date), CAST(0x053A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Temporadas] OFF
/****** Object:  Table [dbo].[TiposDeDoc]    Script Date: 08/05/2015 19:38:17 ******/
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
SET IDENTITY_INSERT [dbo].[TiposDeDoc] ON
INSERT [dbo].[TiposDeDoc] ([TipoDocId], [Nombre]) VALUES (1, N'DNI')
INSERT [dbo].[TiposDeDoc] ([TipoDocId], [Nombre]) VALUES (2, N'LI')
INSERT [dbo].[TiposDeDoc] ([TipoDocId], [Nombre]) VALUES (3, N'Pasaporte')
SET IDENTITY_INSERT [dbo].[TiposDeDoc] OFF
/****** Object:  Table [dbo].[PersonalEspPorPartido]    Script Date: 08/05/2015 19:38:17 ******/
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
/****** Object:  StoredProcedure [dbo].[LocalidadGetAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LocalidadGetAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Localidades
END
GO
/****** Object:  StoredProcedure [dbo].[TipoDocGetAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TipoDocGetAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From TiposDeDoc
END
GO
/****** Object:  StoredProcedure [dbo].[TemporadasGetAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TemporadasGetAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Temporadas
END
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 08/05/2015 19:38:17 ******/
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
/****** Object:  StoredProcedure [dbo].[JugadorPorPartidoUpdate]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorPorPartidoUpdate]
	@PartidoId [int],
	@JugadorId [int],
	@NumeroCamiseta [int],
	@MinutosJugados [int],
	@MinPrimeraAmarilla [int],
	@MinSegundaAmarilla [int],
	@MinRoja [int],
	@Observaciones nvarchar(50),
	@Calificacion [int],
	@Cambio [int], 
	@Goles [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update JugadoresPorPartido
	SET NumeroCamiseta = @NumeroCamiseta, MinutosJugados = @MinutosJugados, MinPrimeraAmarilla = @MinPrimeraAmarilla,
	MinSegundaAmarilla = @MinSegundaAmarilla, MinRoja = @MinRoja, Observaciones = @Observaciones, Calificacion = @Calificacion,
	Cambio = @Cambio, Goles = @Goles
	
	WHERE PartidoId = @PartidoId and JugadorId = @JugadorId

	SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorPorPartidoInsert]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorPorPartidoInsert]
	@JugadorId [int],
	@PartidoId [int],
	@NumeroCamiseta [int],
	@Titular [nvarchar](2)
	
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO JugadoresPorPartido
	VALUES (@PartidoId, @JugadorId, 0 ,@Titular,0,0,0,0,'',0,0,0)

	SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorPorPartidoDelete]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorPorPartidoDelete]
	@JugadorId [int],
	@PartidoId [int]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[PartidoUpdate]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PartidoUpdate]
	@PartidoId [int],
	@TemporadaId [int],
	@NumeroFecha [int],
	@TipoPartido [nvarchar](50),
	@EquipoId [int],
	@Rival [nvarchar](50),
	@FechaHoraInicio [datetime],
	@HoraCitacion [datetime],
	@Lugar [nvarchar](50),
	@Cancha [nvarchar](50),
	@Condicion [nvarchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Partidos
	SET TemporadaId = @TemporadaId, TipoPartido = @TipoPartido, EquipoId = @EquipoId, rival = @Rival, FechaHoraInicio = @FechaHoraInicio ,
	Lugar = @Lugar ,condicion = @Condicion,HoraCitacion = @HoraCitacion,NumeroFecha = @NumeroFecha , Cancha = @Cancha
	WHERE PartidoId = @PartidoId
END
GO
/****** Object:  Table [dbo].[PersonalEspecializado]    Script Date: 08/05/2015 19:38:17 ******/
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
	[Telefono] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Eliminado] [nchar](10) NULL,
 CONSTRAINT [PK_PersonalEspecializado] PRIMARY KEY CLUSTERED 
(
	[PersonalEspId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PersonalEspecializado] ON
INSERT [dbo].[PersonalEspecializado] ([PersonalEspId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [EspecialidadId], [Telefono], [Email], [Eliminado]) VALUES (7, N'Daniel                                            ', N'Gimenez                                           ', 1, N'3596352                                           ', N'Brasil 567                                        ', 2, 2, NULL, NULL, N'0         ')
INSERT [dbo].[PersonalEspecializado] ([PersonalEspId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [EspecialidadId], [Telefono], [Email], [Eliminado]) VALUES (8, N'Pablo                                             ', N'Garis                                             ', 1, N'3596452                                           ', N'Colon 345                                         ', 4, 1, NULL, NULL, N'0         ')
INSERT [dbo].[PersonalEspecializado] ([PersonalEspId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [EspecialidadId], [Telefono], [Email], [Eliminado]) VALUES (9, N'Martin                                            ', N'Bodello                                           ', 1, N'35734073                                          ', N'Estrada 67                                        ', 3, 5, NULL, NULL, N'0         ')
INSERT [dbo].[PersonalEspecializado] ([PersonalEspId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [EspecialidadId], [Telefono], [Email], [Eliminado]) VALUES (10, N'Alfonzo                                           ', N'Garcia                                            ', 1, N'14569852                                          ', N'Independencia 56                                  ', 1, 2, NULL, NULL, N'0         ')
SET IDENTITY_INSERT [dbo].[PersonalEspecializado] OFF
/****** Object:  StoredProcedure [dbo].[PartidoInsert]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PartidoInsert]
	@TemporadaId [int],
	@NumeroFecha [int],
	@TipoPartido [nvarchar](50),
	@EquipoId [int],
	@Rival [nvarchar](50),
	@FechaHoraInicio [datetime],
	@HoraCitacion [datetime],
	@Lugar [nvarchar](50),
	@Cancha [nvarchar](50),
	@Condicion [nvarchar](10)
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[PartidoDatosInsert]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PartidoDatosInsert]
	@PartidoId [int],
	@Duracion [int],
	@GolesPropios [int],
	@GolesRival [int]

WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update Partidos
	SET Duracion = @Duracion, GolesPropios = @GolesPropios, GolesRival = @GolesRival
	WHERE PartidoId = @PartidoId
END
GO
/****** Object:  StoredProcedure [dbo].[LigaGetAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LigaGetAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Ligas	
END
GO
/****** Object:  StoredProcedure [dbo].[LigaById]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LigaById]
	@Id [int]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[GolesPorJugadorPorPartidoInsert]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GolesPorJugadorPorPartidoInsert]
	@PartidoId [int],
	@JugadorId [int]
	

WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO GolesPorJugadorPorPartido
	VALUES (@PartidoId,@JugadorId, 0, null, null)

END
GO
/****** Object:  StoredProcedure [dbo].[GolesPorJugadorPorPartidoDelete]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GolesPorJugadorPorPartidoDelete]
	@JugadorId [int],
	@PartidoId [int]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from GolesPorJugadorPorPartido where PartidoId = @PartidoId and JugadorId = @JugadorId
END
GO
/****** Object:  StoredProcedure [dbo].[GolesPorJugadorPorPartidoCount]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GolesPorJugadorPorPartidoCount]
	@JugadorId [int],
	@PartidoId [int]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(*) from GolesPorJugadorPorPartido where PartidoId = @PartidoId and JugadorId = @JugadorId
END
GO
/****** Object:  StoredProcedure [dbo].[DivisionGetAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DivisionGetAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Divisiones	
END
GO
/****** Object:  StoredProcedure [dbo].[EspecialidadGetAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EspecialidadGetAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Especialidades
END
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 08/05/2015 19:38:17 ******/
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
	[Eliminado] [nchar](10) NULL,
 CONSTRAINT [PK_Jugadores] PRIMARY KEY CLUSTERED 
(
	[JugadorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Jugadores] ON
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (46, N'Brian Leandro', N'Oliviera', 1, N'38752235', N'Fragueiro 285', 1, CAST(0x0000864400000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 65, CAST(0x0000A3CE0118D077 AS DateTime), 176, N'Inmaculada', N'156899632', N'Brian@gmail.com', N'N         ', N'S         ', N'Araña', N'Arquero', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (47, N'Cristian Emiliano', N'Castro', 1, N'37854123', N'alem 256', 1, CAST(0x0000866700000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 70, CAST(0x0000A3CE011A5CF9 AS DateTime), 165, N'', N'4785220', N'castrito@hotmail.com', N'          ', N'N         ', N'', N'Defensor', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (48, N'Franco Axel', N'Gonzalez', 1, N'37456789', N'Pedro aznar', 1, CAST(0x000086D600000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 70, CAST(0x0000A3CE011B0B29 AS DateTime), 169, N'', N'4788888', N'francAx@gmail.com', N'          ', N'          ', N'', N'Defensor', N'Derecha', N'1         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (49, N'Nahuel Emanuel', N'Albarracin', 1, N'38745652', N'Av fuerza aerea 487', 1, CAST(0x0000875B00000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 75, CAST(0x0000A3CE011B64CC AS DateTime), 175, N'', N'4788899', N'koala@gmail.com', N'          ', N'          ', N'', N'Defensor', N'Izquierda', N'1         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (50, N'Ignacio', N'Antonio', 1, N'37441236', N'tova 4567', 1, CAST(0x0000869D00000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 68, CAST(0x0000A3CE011BF457 AS DateTime), 168, N'', N'155325852', N'pedroA@gmail.com', N'          ', N'          ', N'', N'Volante', N'Derecha', N'1         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (51, N'Diego', N'Di pietro', 1, N'38745521', N'Juan b justo 800', 1, CAST(0x0000877800000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 80, CAST(0x0000A3CE011F577B AS DateTime), 180, N'', N'154478852', N'diegote@gmail.com', N'          ', N'          ', N'', N'Defensor', N'Izquierda', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (52, N'Facundo', N'Castelli', 1, N'38541123', N'lima 358', 1, CAST(0x000086FA00000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 72, CAST(0x0000A3CE011F9F07 AS DateTime), 177, N'', N'4252145', N'facu@gmail.com', N'          ', N'          ', N'', N'Delantero', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (53, N'Fabrizio', N'Gilardi', 1, N'37456789', N'sarmiento 4789', 1, CAST(0x0000876300000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 74, CAST(0x0000A3CE0126E577 AS DateTime), 174, N'', N'152302025', N'fabri@hotmail.com', N'          ', N'          ', N'', N'Volante', N'Izquierda', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (54, N'Facundo Agustin', N'Ponzio', 1, N'37452125', N'alem 256', 1, CAST(0x0000871C00000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 80, CAST(0x0000A3CE01274399 AS DateTime), 179, N'', N'4785220', N'pedroA@gmail.com', N'          ', N'          ', N'', N'Delantero', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (55, N'Axel Gabriel', N'Jara', 1, N'38741852', N'Fragueiro 3625', 1, CAST(0x000086DE00000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 78, CAST(0x0000A3CE0127BD15 AS DateTime), 182, N'', N'155325852', N'axel@gmail.com', N'          ', N'          ', N'', N'Volante', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (56, N'Hector Iván', N'Matorras', 1, N'38963852', N'Fragueiro 3625', 2, CAST(0x0000878700000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 75, CAST(0x0000A3CE0128114A AS DateTime), 196, N'', N'4785220', N'hector@gmail.com', N'          ', N'          ', N'', N'Volante', N'Izquierda', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (57, N'Santiago', N'Dominguez', 1, N'38852963', N'Isabela catolica 266', 1, CAST(0x0000873F00000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 77, CAST(0x0000A3CE01285854 AS DateTime), 189, N'', N'1523368', N'san@gmail.com', N'          ', N'          ', N'', N'Arquero', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (58, N'Juan', N'Frencia', 1, N'36785412', N'Niceto Vega 456', 1, CAST(0x0000886600000000 AS DateTime), 32, N'DefaultImage.jpg                                                                                                                                                                                        ', 65, CAST(0x0000A3D0009C576C AS DateTime), 167, N'', N'153698874', N'juan@gmail.com', N'          ', N'          ', N'Pillo', N'Defensor', N'Izquierda', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (59, N'Juan Martin', N'Capodaqua', 1, N'39215325', N'Juan b justo 8001', 1, CAST(0x00008A1700000000 AS DateTime), 33, N'DefaultImage.jpg                                                                                                                                                                                        ', 78, CAST(0x0000A3D0009D7030 AS DateTime), 175, N'', N'4788856', N'juanma@gmail.com', N'          ', N'          ', N'', N'Volante', N'Derecha', N'1         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (60, N'Luciano', N'Escaramuza', 1, N'37458789', N'Alarcon 4587', 1, CAST(0x0000872900000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 179, CAST(0x0000A3D000B7BBD1 AS DateTime), 79, N'', N'154788963', N'luchoA@gmail.com', N'          ', N'          ', N'Lucho', N'Delantero', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (61, N'Juan Pablo', N'Mensura', 1, N'41123654', N'Patricio 2145', 1, CAST(0x00008AFE00000000 AS DateTime), 34, N'DefaultImage.jpg                                                                                                                                                                                        ', 62, CAST(0x0000A3D000B8AB47 AS DateTime), 170, N'', N'152302028', N'juanPa@gmail.com', N'          ', N'          ', N'', N'Defensor', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (62, N'Federico ', N'Insberg', 1, N'36987456', N'Fragueiro 3625', 1, CAST(0x0000881100000000 AS DateTime), 32, N'DefaultImage.jpg                                                                                                                                                                                        ', 90, CAST(0x0000A3D000E60DB0 AS DateTime), 190, N'', N'155325852', N'negro@gmail.com', N'          ', N'          ', N'', N'Defensor', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (63, N'Lucas', N'Pereyra', 1, N'37852236', N'Juan b justo 800', 1, CAST(0x0000860B00000000 AS DateTime), 30, N'DefaultImage.jpg                                                                                                                                                                                        ', 78, CAST(0x0000A3D000E654FD AS DateTime), 175, N'', N'4582233', N'Lucas@gmail.com', N'          ', N'          ', N'', N'Volante', N'Izquierda', N'1         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (64, N'Jorge Luis', N'Dominguez', 1, N'35154545', N'Fragueiro 3625', 1, CAST(0x000086E500000000 AS DateTime), 31, N'DefaultImage.jpg                                                                                                                                                                                        ', 80, CAST(0x0000A3D000E69310 AS DateTime), 175, N'', N'4582233', N'juam@a.com', N'          ', N'          ', N'', N'Defensor', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (65, N'Joaquin Manuel', N'Pignataro', 1, N'38963693', N'Hualfin 2588', 1, CAST(0x000087BD00000000 AS DateTime), 32, N'DefaultImage.jpg                                                                                                                                                                                        ', 74, CAST(0x0000A3D000E6E329 AS DateTime), 169, N'', N'4788899', N'axel@gmail.com', N'          ', N'          ', N'', N'Delantero', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (66, N'Segio', N'Alfredo', 1, N'37741458', N'sarmiento 4789', 1, CAST(0x000087E800000000 AS DateTime), 32, N'DefaultImage.jpg                                                                                                                                                                                        ', 74, CAST(0x0000A3D000E72618 AS DateTime), 174, N'', N'4562358', N'juanPa@gmail.com', N'          ', N'          ', N'', N'Volante', N'Derecha', N'0         ')
INSERT [dbo].[Jugadores] ([JugadorId], [Nombre], [Apellido], [TipoDocId], [NumeroDoc], [Domicilio], [LocalidadId], [FechaNac], [Categoria], [ImagenPath], [Peso], [FechaAlta], [Estatura], [Colegio], [Telefono], [Email], [CiudadaniaEuropea], [Representante], [Apodo], [Posicion], [PiernaHabil], [Eliminado]) VALUES (67, N'Leonardo', N'Aquino', 1, N'25225852', N'calle 8', 1, CAST(0x000085A800000000 AS DateTime), 30, N'DefaultImage.jpg                                                                                                                                                                                        ', 78, CAST(0x0000A3D000E754D2 AS DateTime), 175, N'', N'4582233', N'javi@hotmail.com', N'          ', N'          ', N'', N'Volante', N'Derecha', N'0         ')
SET IDENTITY_INSERT [dbo].[Jugadores] OFF
/****** Object:  StoredProcedure [dbo].[DivisionById]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DivisionById]
	@Id [int]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[GolesJugadorPorPartidoUpdate]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GolesJugadorPorPartidoUpdate]
	@GolesPorJugadorId [int],
	@MinutosGol [int],
	@Descripcion  nvarchar(255),
	@UrlVideo nvarchar(255)
	
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update GolesPorJugadorPorPartido
	SET MinutosGol = @MinutosGol, Descripcion = @Descripcion, UrlVideo = @UrlVideo
	WHERE GolesPorJugadorId = @GolesPorJugadorId

	SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[CategoriaIdByAño]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[CategoriaIdByAño]
	@Año [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT CategoriaId
    FROM Categorias
    WHERe  NombreCategoria = @año
	
END
GO
/****** Object:  StoredProcedure [dbo].[CategoriaGetAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategoriaGetAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT *
	From Categorias
END
GO
/****** Object:  StoredProcedure [dbo].[CategoriaById]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategoriaById]
	@Id [int]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[CategoriaByEquipo]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategoriaByEquipo]
	@IdEquipo [int]
WITH EXECUTE AS CALLER
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
/****** Object:  Table [dbo].[Equipos]    Script Date: 08/05/2015 19:38:17 ******/
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
SET IDENTITY_INSERT [dbo].[Equipos] ON
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (16, 5, 1, N'Primera Local Cordobesa')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (17, 5, 2, N'Reserva Cordobesa')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (18, 1, 3, N'4ta AFA')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (19, 1, 4, N'5ta AFA')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (20, 1, 5, N'6ta AFA')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (21, 1, 6, N'7ma AFA')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (22, 1, 7, N'8va AFA')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (23, 1, 8, N'9na AFA')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (24, 2, 3, N'4ta Cordobesa A')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (25, 2, 4, N'5ta Cordobesa A')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (26, 2, 5, N'6ta Cordobesa A')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (27, 2, 6, N'7ma Cordobesa A')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (28, 2, 7, N'8va Cordobesa A')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (29, 2, 8, N'9na Cordobesa A')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (30, 2, 9, N'10ma Cordobesa A')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (31, 2, 10, N'11ma Cordobesa A')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (32, 2, 11, N'12ma Cordobesa A')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (33, 3, 3, N'4ta Cordobesa B')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (34, 3, 4, N'5ta Cordobesa B')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (35, 3, 5, N'6ta Cordobesa B')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (36, 3, 6, N'7ma Cordobesa B')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (37, 3, 7, N'8va Cordobesa B')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (38, 3, 8, N'9na Cordobesa B')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (39, 3, 9, N'10ma Cordobesa B')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (40, 3, 10, N'11ma Cordobesa B')
INSERT [dbo].[Equipos] ([EquipoId], [LigaId], [DivisionId], [NombreEquipo]) VALUES (41, 3, 11, N'12ma Cordobesa B')
SET IDENTITY_INSERT [dbo].[Equipos] OFF
/****** Object:  StoredProcedure [dbo].[EquipoInsert]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EquipoInsert]
	@LigaId [nvarchar](50),
	@DivisionId [int],
	@NombreEquipo [nvarchar](250)
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[EquipoGetAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EquipoGetAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT e.EquipoId, d.NombreDivision, l.NombreLiga, e.NombreEquipo
	From Equipos e 
	join Divisiones d on e.DivisionId = d.DivisionId 
	join Ligas l on e.LigaId = l.LigaId
END
GO
/****** Object:  StoredProcedure [dbo].[EquipoById]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EquipoById]
	@Id [int]
WITH EXECUTE AS CALLER
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
/****** Object:  Table [dbo].[CoberturaMedica]    Script Date: 08/05/2015 19:38:17 ******/
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
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (46, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (47, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (48, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (58, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (59, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (60, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (61, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (49, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (50, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (51, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (52, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (53, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (54, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (55, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (56, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (57, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (62, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (63, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (64, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (65, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (66, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[CoberturaMedica] ([JugadorId], [ObraSocial], [NroObraSocial], [ServicioEmergencia], [NroServicioEmergencia], [Telefono], [Hospital], [Direccion], [Medicamento], [Alergico], [Observaciones]) VALUES (67, N'', 0, N'', 0, N'', N'', N'', N'', N'', N'')
/****** Object:  Table [dbo].[DatosGeneralesJugador]    Script Date: 08/05/2015 19:38:17 ******/
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
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (46, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (47, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (48, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (58, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (59, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (60, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (61, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (49, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (50, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (51, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (52, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (53, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (54, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (55, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (56, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (57, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (62, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (63, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (64, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (65, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (66, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
INSERT [dbo].[DatosGeneralesJugador] ([JugadorId], [JuegaOtroLugar], [QuienLoTrajo], [NombreMadre], [TelMadre], [OcupacionMadre], [TrabajoMadre], [DireccionTrabajoMadre], [TelefonoTrabajoMadre], [NombrePadre], [TelPadre], [OcupacionPadre], [TrabajoPadre], [DireccionTrabajoPadre], [TelefonoTrabajoPadre], [PadresConviven], [Hermanos], [NombreResponsable], [OcupacionResponsable], [ParentescoResponsable], [Lesiones]) VALUES (67, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'')
/****** Object:  StoredProcedure [dbo].[GolesJugadoresByPartido]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GolesJugadoresByPartido]
	@IdPartido [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select gp.*, j.* 
	from GolesPorJugadorPorPartido gp join Jugadores j on  gp.JugadorId = j.JugadorId
	where gp.PartidoId = @IdPartido
END
GO
/****** Object:  StoredProcedure [dbo].[GetJugadoresByNameAndCategory]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetJugadoresByNameAndCategory]
	@Name [nvarchar](250),
	@CategoryId [int]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[EstadisticasPartidoByJugadorId]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[EstadisticasPartidoByJugadorId]
	@Id [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select distinct * from Jugadores j 
	join JugadoresPorPartido jp on jp.JugadorId = j.JugadorId
	where j.JugadorId = @Id
	
END
GO
/****** Object:  StoredProcedure [dbo].[EstadisticasGolesByJugadorId]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[EstadisticasGolesByJugadorId]
	@Id [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select COUNT(*) from Jugadores j join GolesPorJugadorPorPartido gp on j.JugadorId = gp.JugadorId
	where j.JugadorId = @Id
	
END
GO
/****** Object:  Table [dbo].[JugadoresPorEquipos]    Script Date: 08/05/2015 19:38:17 ******/
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
SET IDENTITY_INSERT [dbo].[JugadoresPorEquipos] ON
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (20, 55, 18, CAST(0x0000A3CE0129F10E AS DateTime), CAST(0x0000A3D200D17813 AS DateTime))
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (21, 46, 18, CAST(0x0000A3CE0129F403 AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (22, 47, 18, CAST(0x0000A3CE0129F6BD AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (23, 51, 18, CAST(0x0000A3CE0129F8C4 AS DateTime), CAST(0x0000A3D200D18071 AS DateTime))
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (24, 53, 18, CAST(0x0000A3CE0129FB8A AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (25, 52, 18, CAST(0x0000A3CE0129FEA2 AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (26, 48, 18, CAST(0x0000A3CE012A00E7 AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (27, 54, 18, CAST(0x0000A3CE012A02DD AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (28, 49, 18, CAST(0x0000A3CE012A059D AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (29, 50, 18, CAST(0x0000A3CE012A077D AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (30, 56, 18, CAST(0x0000A3CE012A095E AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (31, 57, 18, CAST(0x0000A3CE012A0BE0 AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (32, 61, 20, CAST(0x0000A3D000BDB21D AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (33, 62, 18, CAST(0x0000A3D0010182F1 AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (34, 65, 18, CAST(0x0000A3D0010186FF AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (35, 64, 18, CAST(0x0000A3D0010189EB AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (36, 58, 18, CAST(0x0000A3D001018CF0 AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (37, 67, 18, CAST(0x0000A3D00101901B AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (38, 63, 18, CAST(0x0000A3D00101934B AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (39, 60, 18, CAST(0x0000A3D0010196A0 AS DateTime), NULL)
INSERT [dbo].[JugadoresPorEquipos] ([JugadorPorEquipos], [JugadorId], [EquipoId], [FechaDesde], [FechaHasta]) VALUES (40, 66, 18, CAST(0x0000A3D001019995 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[JugadoresPorEquipos] OFF
/****** Object:  StoredProcedure [dbo].[JugadorAltaNuevamente]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[JugadorAltaNuevamente]
	@Id [int]
	
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE Jugadores
	SET Eliminado = '0'
	WHERE JugadorId = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorDelete]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[JugadorDelete]
	@Id [int]
	
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE Jugadores
	SET Eliminado = '1'
	WHERE JugadorId = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresGetAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresGetAll]
	@parametroBuscar [nvarchar](250)
WITH EXECUTE AS CALLER
AS
BEGIN
	SELECT *, j.Nombre as jNombre, l.Nombre as LocalidadNombre, tp.Nombre as tdNombre
	FROM Jugadores j join Localidades l on j.LocalidadId = l.LocalidadId join TiposDeDoc tp on j.TipoDocId = tp.TipoDocId
	where (j.Nombre like '%'+@parametroBuscar+'%' or j.Apellido like '%'+@parametroBuscar+'%') and j.Eliminado = '0'
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresEliminadosGetAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[JugadoresEliminadosGetAll]
	@parametroBuscar [nvarchar](250)
WITH EXECUTE AS CALLER
AS
BEGIN
	SELECT *, j.Nombre as jNombre, l.Nombre as LocalidadNombre, tp.Nombre as tdNombre
	FROM Jugadores j join Localidades l on j.LocalidadId = l.LocalidadId join TiposDeDoc tp on j.TipoDocId = tp.TipoDocId
	where (j.Nombre like '%'+@parametroBuscar+'%' or j.Apellido like '%'+@parametroBuscar+'%') and j.Eliminado = '1'
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresByPartidoAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresByPartidoAll]
	@IdPartido [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select j.*, td.Nombre as tdNombre, jp.*
	from Partidos p join JugadoresPorPartido jp on  p.PartidoId = jp.PartidoId
	join Jugadores j on j.JugadorId = jp.JugadorId
	join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId
	
	where jp.PartidoId = @IdPartido
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresByPartido]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresByPartido]
	@IdPartido [int],
	@Titular [nvarchar](2)
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select j.*, td.Nombre as tdNombre, jp.*
	from Partidos p join JugadoresPorPartido jp on  p.PartidoId = jp.PartidoId
	join Jugadores j on j.JugadorId = jp.JugadorId
	join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId 
	where jp.PartidoId = @IdPartido and jp.Titular = @Titular
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorInsert]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorInsert]
	@Nombre [nvarchar](50),
	@Apellido [nvarchar](50),
	@TipoDocId [int],
	@NumeroDoc [nvarchar](50),
	@FechaNac [datetime],
	@CategoriaId [int],
	@Domicilio [nvarchar](50),
	@LocalidadId [int],
	@ImagenPath [nvarchar](200),
	@Apodo [nvarchar](50),
	@Peso [int],
	@Estatura [int],
	@Colegio [nvarchar](50),
	@Telefono [nvarchar](50),
	@Email [nvarchar](50),
	@Ciudadania [nchar](10),
	@Representante [nchar](10),
	@Posicion [nvarchar](50),
	@PiernaHabil [nvarchar](20)
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Jugadores
	VALUES (@Nombre, @Apellido, @TipoDocId, @NumeroDoc, @Domicilio, @LocalidadId, @FechaNac, @CategoriaId, @ImagenPath, @Peso,
	 GETDATE(), @Estatura, @Colegio, @Telefono, @Email, @Ciudadania,@Representante, @Apodo, @Posicion, @PiernaHabil, '0')

	select SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorUpdateFoto]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorUpdateFoto]
	@Id [int],
	@Nombre [nvarchar](50),
	@Apellido [nvarchar](50),
	@TipoDocId [int],
	@NumeroDoc [nvarchar](50),
	@Domicilio [nvarchar](50),
	@LocalidadId [int],
	@FechaNac [datetime],
	@ImagenPath [nvarchar](200),
	@Apodo [nvarchar](50),
	@Telefono [nvarchar](50),
	@Email [nvarchar](50),
	@Peso [int],
	@Estatura [int],
	@Posicion [nvarchar](50),
	@PiernaHabil [nvarchar](50),
	@Colegio [nvarchar](50),
	@Ciudadania [nchar](10),
	@Reperesentante [nchar](10)
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[JugadorUpdate]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorUpdate]
	@Id [int],
	@Nombre [nvarchar](50),
	@Apellido [nvarchar](50),
	@TipoDocId [int],
	@NumeroDoc [nvarchar](50),
	@Domicilio [nvarchar](50),
	@LocalidadId [int],
	@FechaNac [datetime],
	@CategoriaId [int],
	@Apodo [nvarchar](50),
	@Telefono [nvarchar](50),
	@Email [nvarchar](50),
	@Peso [int],
	@Estatura [int],
	@Posicion [nvarchar](50),
	@PiernaHabil [nvarchar](50),
	@Colegio [nvarchar](50),
	@Ciudadania [nchar](10),
	@Reperesentante [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE Jugadores
	SET nombre = @Nombre, apellido = @Apellido, tipoDocId = @TipoDocId, NumeroDoc = @NumeroDoc, Domicilio = @Domicilio, 
	LocalidadId = @LocalidadId, FechaNac = @FechaNac, Categoria = @CategoriaId, Apodo = @Apodo, Telefono = @Telefono,
	Email = @Email, Peso = @Peso, Estatura = @Estatura, Posicion = @Posicion, PiernaHabil = @PiernaHabil, Colegio = @Colegio,
	CiudadaniaEuropea = @Ciudadania, Representante = @Reperesentante
	WHERE JugadorId = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[PartidoById]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PartidoById]
	@Id [int]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[PersonalEspDelete]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[PersonalEspDelete]
	@Id [int]
	
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE PersonalEspecializado
	SET Eliminado = '1'
	WHERE PersonalEspId = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[PersonalEspById]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PersonalEspById]
	@Id [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT pe.*, l.Nombre NombreLocalidad, td.Nombre TipoDocNombre, e.Nombre EspecialidadNombre
    FROM PersonalEspecializado pe
    JOIN Localidades l ON pe.LocalidadId = l.LocalidadId
    JOIN TiposDeDoc td ON td.TipoDocId = pe.TipoDocId
    JOIN Especialidades e ON e.EspecialidadId = pe.EspecialidadId
    WHERE pe.PersonalEspId = @Id
	
END
GO
/****** Object:  StoredProcedure [dbo].[PersonalEspInsert]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PersonalEspInsert]
	@Nombre [nvarchar](50),
	@Apellido [nvarchar](50),
	@TipoDocId [int],
	@NumeroDoc [nvarchar](50),
	@Domicilio [nvarchar](50),
	@LocalidadId [int],
	@EspecialidadId [int],
	@Telefono [nvarchar](50),
	@Email [nvarchar](50)
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PersonalEspecializado
	VALUES (@Nombre, @Apellido, @TipoDocId, @NumeroDoc, @Domicilio, @LocalidadId, @EspecialidadId, @Telefono, @Email, '0')

	select SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[PersonalEspGetAll]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PersonalEspGetAll]
	@parametroBuscar [nvarchar](250)
WITH EXECUTE AS CALLER
AS
BEGIN
	SELECT *, l.Nombre  LocalidadNombre, tp.Nombre  TipoDocNombre, e.Nombre EspecialidadNombre
	FROM PersonalEspecializado pe 
	join Localidades l on pe.LocalidadId = l.LocalidadId 
	join TiposDeDoc tp on pe.TipoDocId = tp.TipoDocId
	join Especialidades e on e.EspecialidadId = pe.EspecialidadId
	where (pe.Nombre like '%'+@parametroBuscar+'%' or pe.Apellido like '%'+@parametroBuscar+'%') and pe.Eliminado = '0'
END
GO
/****** Object:  StoredProcedure [dbo].[PartidosSinDatos]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PartidosSinDatos]
WITH EXECUTE AS CALLER
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
/****** Object:  Table [dbo].[PersonalPorEquipo]    Script Date: 08/05/2015 19:38:17 ******/
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
SET IDENTITY_INSERT [dbo].[PersonalPorEquipo] ON
INSERT [dbo].[PersonalPorEquipo] ([PersonalPorEquipoId], [PersonalEspId], [EquipoId]) VALUES (1, 8, 18)
INSERT [dbo].[PersonalPorEquipo] ([PersonalPorEquipoId], [PersonalEspId], [EquipoId]) VALUES (2, 9, 18)
INSERT [dbo].[PersonalPorEquipo] ([PersonalPorEquipoId], [PersonalEspId], [EquipoId]) VALUES (3, 10, 18)
SET IDENTITY_INSERT [dbo].[PersonalPorEquipo] OFF
/****** Object:  StoredProcedure [dbo].[PersonalEspUpdate]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[PersonalEspUpdate]
	@Id [int],
	@Nombre [nvarchar](50),
	@Apellido [nvarchar](50),
	@TipoDocId [int],
	@NumeroDoc [nvarchar](50),
	@Domicilio [nvarchar](50),
	@LocalidadId [int],	
	@EspecialidadId [int],
	@Telefono [nvarchar](50),
	@Email [nvarchar](50)
	
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE PersonalEspecializado
	SET nombre = @Nombre, apellido = @Apellido, tipoDocId = @TipoDocId, NumeroDoc = @NumeroDoc, Domicilio = @Domicilio, 
	LocalidadId = @LocalidadId, Telefono = @Telefono, Email = @Email, EspecialidadId = @EspecialidadId
	WHERE PersonalEspId = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[PersonalEspPorEquipoInsert]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PersonalEspPorEquipoInsert]
	@PersonalEspId [int],
	@EquipoId [int]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[PersonalEspPorEquipoDelete]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PersonalEspPorEquipoDelete]
	@personalId [int],
	@EquipoId [int]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[PersonalSearch]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PersonalSearch]
	@IdEquipo [int],
	@nombre [nvarchar](250),
	@apellido [nvarchar](250)
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[JugadorPorEquipoInsert]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorPorEquipoInsert]
	@JugadorId [int],
	@EquipoId [int],
	@FechaDesde [datetime]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[JugadorPorEquipoDelete]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorPorEquipoDelete]
	@JugadorId [int],
	@EquipoId [int],
	@FechaHasta [datetime]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[PersonalByEquipo]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PersonalByEquipo]
	@IdEquipo [int]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[JugadoresSearchPartidoTodosEquipos]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresSearchPartidoTodosEquipos]
	@IdPartido [int],
	@nombre [nvarchar](250),
	@apellido [nvarchar](250),
	@categoria [nvarchar](250),
	@posicion [nvarchar](250)
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    select j.*, td.Nombre as tdNombre
	from Jugadores j join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId
	join JugadoresPorEquipos je on je.JugadorId = j.JugadorId
	where j.Eliminado = '0' and j.Nombre like '%'+@nombre+'%' and j.apellido like '%'+@apellido+'%' and j.Categoria like '%'+@categoria+'%'  and j.Posicion like '%'+@posicion+'%'
	and  j.JugadorId not in (
								select pe.JugadorId
								from JugadoresPorPartido pe
								where pe.PartidoId = @IdPartido)
	
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresSearchPartido]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresSearchPartido]
	@IdPartido [int],
	@IdEquipo [int],
	@nombre [nvarchar](250),
	@apellido [nvarchar](250),
	@categoria [nvarchar](250),
	@posicion [nvarchar](250)
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    select j.*, td.Nombre as tdNombre
	from Jugadores j join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId
	join JugadoresPorEquipos je on je.JugadorId = j.JugadorId
	where j.Eliminado = '0' and j.Nombre like '%'+@nombre+'%' and j.apellido like '%'+@apellido+'%' and j.Categoria like '%'+@categoria+'%' and j.Posicion like '%'+@posicion+'%'
	 and  j.JugadorId not in (
								select pe.JugadorId
								from JugadoresPorPartido pe
								where pe.PartidoId = @IdPartido)  
	and j.JugadorId in (
								select pe.JugadorId
								from JugadoresPorEquipos pe
								where pe.EquipoId = @IdEquipo
								and pe.FechaHasta is null)
	
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresSearch]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresSearch]
	@IdEquipo [int],
	@nombre [nvarchar](250),
	@apellido [nvarchar](250)
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON; 
	select j.*, j.Nombre, td.Nombre as tdNombre
	from Jugadores j 
	join TiposDeDoc td on td.TipoDocId = j.TipoDocId 
	join Localidades l on l.LocalidadId = j.LocalidadId	
	where j.Eliminado = '0' and j.Nombre like '%'+@nombre+'%' and j.apellido like '%'+@apellido+'%' and  j.JugadorId not in (
								select je.JugadorId
								from JugadoresPorEquipos je
								where je.EquipoId = @IdEquipo
								AND je.FechaHasta IS NULL )  
	and j.Categoria in (select ce.CategoriaId
								from CategoriasPorEquipo ce
								where ce.EquipoId = @IdEquipo)
	order by j.Nombre
	
END
GO
/****** Object:  StoredProcedure [dbo].[JugadoresByEquipo]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresByEquipo]
	@IdEquipo [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select j.*, td.Nombre as tdNombre
	from Equipos e join JugadoresPorEquipos je on  e.EquipoId = je.EquipoId  join Jugadores j on j.JugadorId = je.JugadorId
	join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId 
	where e.EquipoId = @IdEquipo
	AND je.FechaHasta IS NULL	
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorById]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorById]
	@Id [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT j.*, l.Nombre NombreLocalidad, TD.Nombre TipoDocNombre, cm.*,dg.*, cm.telefono as telefonoCM
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
/****** Object:  StoredProcedure [dbo].[JugadoresNoEquipo]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadoresNoEquipo]
	@IdEquipo [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select j.JugadorId, j.Nombre, j.Apellido, j.TipoDocId, td.Nombre as tdNombre, j.NumeroDoc, j.FechaNac, j.Domicilio, j.LocalidadId
	from Jugadores j join TiposDeDoc td on td.TipoDocId = j.TipoDocId join Localidades l on l.LocalidadId = j.LocalidadId
	where j.Eliminado = '0' and j.JugadorId not in (
								select je.JugadorId
								from JugadoresPorEquipos je
								where je.EquipoId = @IdEquipo)  
	
END
GO
/****** Object:  StoredProcedure [dbo].[JugadorEquiposListHistorico]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorEquiposListHistorico]
	@IdJugador [int]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[JugadorEquiposList]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JugadorEquiposList]
	@IdJugador [int]
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[DatosGeneralesJugadorUpdate]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DatosGeneralesJugadorUpdate]
	@Id [int],
	@NombreMadre [nvarchar](50),
	@TelMadre [nvarchar](50),
	@OcupacionMadre [nvarchar](50),
	@TrabajoMadre [nvarchar](50),
	@DireccionTrabajoMadre [nvarchar](50),
	@TelefonoTrabajoMadre [nvarchar](50),
	@NombrePadre [nvarchar](50),
	@TelPadre [nvarchar](50),
	@OcupacionPadre [nvarchar](50),
	@TrabajoPadre [nvarchar](50),
	@DireccionTrabajoPadre [nvarchar](50),
	@TelefonoTrabajoPadre [nvarchar](50),
	@PadresConviven [nvarchar](50),
	@Hermanos [int],
	@NombreResponsable [nvarchar](50),
	@OcupacionResponsable [nvarchar](50),
	@ParentescoResponsable [nvarchar](50),
	@JuegaOtroLugar [nvarchar](50),
	@QuienLoTrajo [nvarchar](50),
	@Lesiones [nvarchar](50)
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[DatosGeneralesJugadorInsert]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DatosGeneralesJugadorInsert]
	@IdJugador [int],
	@JuegaOtroLugar [nvarchar](50),
	@QuienLoTrajo [nvarchar](50),
	@NombreMadre [nvarchar](50),
	@TelMadre [nvarchar](50),
	@OcupacionMadre [nvarchar](50),
	@TrabajoMadre [nvarchar](50),
	@DireccionTrabajoMadre [nvarchar](50),
	@TelefonoTrabajoMadre [nvarchar](50),
	@NombrePadre [nvarchar](50),
	@TelPadre [nvarchar](50),
	@OcupacionPadre [nvarchar](50),
	@TrabajoPadre [nvarchar](50),
	@DireccionTrabajoPadre [nvarchar](50),
	@TelefonoTrabajoPadre [nvarchar](50),
	@PadresConviven [nvarchar](10),
	@Hermanos [int],
	@NombreResponsable [nvarchar](50),
	@OcupacionResponsable [nvarchar](50),
	@ParentescoResponsable [nvarchar](50),
	@Lesiones [nvarchar](50)
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[CoberturaMedicaUpdate]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CoberturaMedicaUpdate]
	@Id [int],
	@ObraSocial [nvarchar](50),
	@NroObraSocial [int],
	@ServicioEmergencia [nvarchar](50),
	@NumeroServicio [int],
	@Hospital [nvarchar](50),
	@Direccion [nvarchar](50),
	@Telefono [nvarchar](50),
	@Medicamento [nvarchar](50),
	@Alergico [nvarchar](50),
	@Observaciones [nvarchar](50)
WITH EXECUTE AS CALLER
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
/****** Object:  StoredProcedure [dbo].[CoberturaMedicaInsert]    Script Date: 08/05/2015 19:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CoberturaMedicaInsert]
	@IdJugador [int],
	@ObraSocial [nvarchar](50),
	@NroObraSocial [int],
	@ServicioEmergencia [nvarchar](50),
	@NroServicioEmergencia [int],
	@Telefono [nvarchar](50),
	@Hospital [nvarchar](50),
	@Direccion [nvarchar](200),
	@Medicamento [nvarchar](50),
	@Alergico [nvarchar](50),
	@Observaciones [nvarchar](50)
WITH EXECUTE AS CALLER
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
/****** Object:  Default [DF_Partidos_EstadoPartido]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[Partidos] ADD  CONSTRAINT [DF_Partidos_EstadoPartido]  DEFAULT (N'C') FOR [EstadoPartido]
GO
/****** Object:  ForeignKey [FK_CoberturaMedica_Jugadores]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[CoberturaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CoberturaMedica_Jugadores] FOREIGN KEY([JugadorId])
REFERENCES [dbo].[Jugadores] ([JugadorId])
GO
ALTER TABLE [dbo].[CoberturaMedica] CHECK CONSTRAINT [FK_CoberturaMedica_Jugadores]
GO
/****** Object:  ForeignKey [FK_DatosGeneralesJugador_Jugadores]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[DatosGeneralesJugador]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesJugador_Jugadores] FOREIGN KEY([JugadorId])
REFERENCES [dbo].[Jugadores] ([JugadorId])
GO
ALTER TABLE [dbo].[DatosGeneralesJugador] CHECK CONSTRAINT [FK_DatosGeneralesJugador_Jugadores]
GO
/****** Object:  ForeignKey [FK_Equipos_Divisiones]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD  CONSTRAINT [FK_Equipos_Divisiones] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisiones] ([DivisionId])
GO
ALTER TABLE [dbo].[Equipos] CHECK CONSTRAINT [FK_Equipos_Divisiones]
GO
/****** Object:  ForeignKey [FK_Equipos_Ligas]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD  CONSTRAINT [FK_Equipos_Ligas] FOREIGN KEY([LigaId])
REFERENCES [dbo].[Ligas] ([LigaId])
GO
ALTER TABLE [dbo].[Equipos] CHECK CONSTRAINT [FK_Equipos_Ligas]
GO
/****** Object:  ForeignKey [FK_Jugadores_Localidades]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_Localidades]
GO
/****** Object:  ForeignKey [FK_Jugadores_TiposDeDoc]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_TiposDeDoc] FOREIGN KEY([TipoDocId])
REFERENCES [dbo].[TiposDeDoc] ([TipoDocId])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_TiposDeDoc]
GO
/****** Object:  ForeignKey [FK_JugadoresPorEquipo_Equipos]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[JugadoresPorEquipos]  WITH CHECK ADD  CONSTRAINT [FK_JugadoresPorEquipo_Equipos] FOREIGN KEY([EquipoId])
REFERENCES [dbo].[Equipos] ([EquipoId])
GO
ALTER TABLE [dbo].[JugadoresPorEquipos] CHECK CONSTRAINT [FK_JugadoresPorEquipo_Equipos]
GO
/****** Object:  ForeignKey [FK_JugadoresPorEquipo_Jugadores]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[JugadoresPorEquipos]  WITH CHECK ADD  CONSTRAINT [FK_JugadoresPorEquipo_Jugadores] FOREIGN KEY([JugadorId])
REFERENCES [dbo].[Jugadores] ([JugadorId])
GO
ALTER TABLE [dbo].[JugadoresPorEquipos] CHECK CONSTRAINT [FK_JugadoresPorEquipo_Jugadores]
GO
/****** Object:  ForeignKey [FK_LocalidadID]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[PersonalEspecializado]  WITH CHECK ADD  CONSTRAINT [FK_LocalidadID] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[PersonalEspecializado] CHECK CONSTRAINT [FK_LocalidadID]
GO
/****** Object:  ForeignKey [FK_TipoDocId]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[PersonalEspecializado]  WITH CHECK ADD  CONSTRAINT [FK_TipoDocId] FOREIGN KEY([TipoDocId])
REFERENCES [dbo].[TiposDeDoc] ([TipoDocId])
GO
ALTER TABLE [dbo].[PersonalEspecializado] CHECK CONSTRAINT [FK_TipoDocId]
GO
/****** Object:  ForeignKey [FK_PersonalPorEquipo_Equipos]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[PersonalPorEquipo]  WITH CHECK ADD  CONSTRAINT [FK_PersonalPorEquipo_Equipos] FOREIGN KEY([EquipoId])
REFERENCES [dbo].[Equipos] ([EquipoId])
GO
ALTER TABLE [dbo].[PersonalPorEquipo] CHECK CONSTRAINT [FK_PersonalPorEquipo_Equipos]
GO
/****** Object:  ForeignKey [FK_Provincias_Localidades]    Script Date: 08/05/2015 19:38:17 ******/
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD  CONSTRAINT [FK_Provincias_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[Provincias] CHECK CONSTRAINT [FK_Provincias_Localidades]
GO
