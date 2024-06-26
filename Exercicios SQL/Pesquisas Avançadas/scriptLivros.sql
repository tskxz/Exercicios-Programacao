USE [livrospt]
GO
/****** Object:  Table [dbo].[livro]    Script Date: 03/12/2022 09:37:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[livro]') AND type in (N'U'))
DROP TABLE [dbo].[livro]
GO
/****** Object:  Table [dbo].[autoria]    Script Date: 03/12/2022 09:37:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autoria]') AND type in (N'U'))
DROP TABLE [dbo].[autoria]
GO
/****** Object:  Table [dbo].[autor]    Script Date: 03/12/2022 09:37:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autor]') AND type in (N'U'))
DROP TABLE [dbo].[autor]
GO
/****** Object:  Table [dbo].[autor]    Script Date: 03/12/2022 09:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autor](
	[idautor] [varchar](100) NOT NULL,
	[nome] [varchar](100) NULL,
	[nacionalidade] [varchar](100) NULL,
 CONSTRAINT [PK_autor] PRIMARY KEY CLUSTERED 
(
	[idautor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[autoria]    Script Date: 03/12/2022 09:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autoria](
	[idlivro] [int] NOT NULL,
	[idautor] [varchar](100) NOT NULL,
 CONSTRAINT [PK_autoria] PRIMARY KEY CLUSTERED 
(
	[idlivro] ASC,
	[idautor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[livro]    Script Date: 03/12/2022 09:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[livro](
	[idlivro] [int] NOT NULL,
	[titulo] [varchar](100) NULL,
	[editora] [varchar](100) NULL,
	[edicao] [int] NULL,
 CONSTRAINT [PK_livro] PRIMARY KEY CLUSTERED 
(
	[idlivro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[autor] ([idautor], [nome], [nacionalidade]) VALUES (N'Carvalho', N'Mário de Carvalho', N'Português')
INSERT [dbo].[autor] ([idautor], [nome], [nacionalidade]) VALUES (N'Correia', N'Clara Pinto Corrêia', N'Português')
INSERT [dbo].[autor] ([idautor], [nome], [nacionalidade]) VALUES (N'Fonseca', N'Ruben Fonseca', N'Brasileiro')
INSERT [dbo].[autor] ([idautor], [nome], [nacionalidade]) VALUES (N'Llosa', N'Mario Vargas Llosa', N'Peruano')
INSERT [dbo].[autor] ([idautor], [nome], [nacionalidade]) VALUES (N'Maalouf', N'Amin Maalouf', N'Libanês')
INSERT [dbo].[autor] ([idautor], [nome], [nacionalidade]) VALUES (N'Marquez', N'Gabriel Garcia Marques', N'Colombiano')
INSERT [dbo].[autor] ([idautor], [nome], [nacionalidade]) VALUES (N'Mishima', N'Yukio Mishima', N'Japonês')
INSERT [dbo].[autor] ([idautor], [nome], [nacionalidade]) VALUES (N'Nerruda', N'Pablo Nerruda', N'Chileno')
INSERT [dbo].[autor] ([idautor], [nome], [nacionalidade]) VALUES (N'Pepetela', N'Pepetela', N'Angolano')
INSERT [dbo].[autor] ([idautor], [nome], [nacionalidade]) VALUES (N'Saramago', N'José Saramago', N'Português')
INSERT [dbo].[autor] ([idautor], [nome], [nacionalidade]) VALUES (N'Tournier', N'Michael Tournier', N'Françês')
GO
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (1, N'Maalouf')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (2, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (3, N'Pepetela')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (4, N'Maalouf')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (5, N'Carvalho')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (5, N'Correia')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (6, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (7, N'Pepetela')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (8, N'Mishima')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (9, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (10, N'Maalouf')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (11, N'Mishima')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (12, N'Saramago')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (13, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (14, N'Mishima')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (15, N'Maalouf')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (16, N'Saramago')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (17, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (18, N'Tournier')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (19, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (20, N'Maalouf')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (21, N'Pepetela')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (22, N'Saramago')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (23, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (24, N'Marquez')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (25, N'Maalouf')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (26, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (27, N'Tournier')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (28, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (29, N'Saramago')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (30, N'Maalouf')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (31, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (32, N'Tournier')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (33, N'Carvalho')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (34, N'Pepetela')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (35, N'Tournier')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (36, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (37, N'Correia')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (38, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (39, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (40, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (41, N'Pepetela')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (42, N'Fonseca')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (43, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (44, N'Correia')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (45, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (46, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (47, N'Carvalho')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (48, N'Marquez')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (49, N'Correia')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (50, N'Carvalho')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (51, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (52, N'Marquez')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (53, N'Correia')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (54, N'Carvalho')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (55, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (56, N'Marquez')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (57, N'Correia')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (58, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (59, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (60, N'Marquez')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (61, N'Marquez')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (62, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (63, N'Marquez')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (64, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (65, N'Marquez')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (66, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (67, N'Llosa')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (68, N'Marquez')
INSERT [dbo].[autoria] ([idlivro], [idautor]) VALUES (69, N'Marquez')
GO
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (1, N'As Cruzadas Vistas Pelos Árabes', N'Difel', 7)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (2, N'O Buraco Na Parede', N'Campo das Letras', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (3, N'O Desejo De Kianda', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (4, N'O Rochedo De Tanios', N'Difel', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (5, N'E Se Tivesse A Bondade De Me Dizer Porquê ?', N'Edições Rolim', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (6, N'Os Prisioneiros', N'Companhia das Letras', 4)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (7, N'Yaka', N'Dom Quixote', 2)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (8, N'Cavalos Em Fuga', N'Editorial Presença', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (9, N'A Coleira Do Cão', N'Companhia das Letras', 4)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (10, N'Samarcanda', N'Difel', 4)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (11, N'Morte Em Pleno Verão', N'Relógio Dágua', NULL)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (12, N'A Jangada De Pedra', N'Caminho', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (13, N'Agosto', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (14, N'Sede De Amar', N'Editorial Presença', 2)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (15, N'Escalas Do Levante', N'Difel', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (16, N'Deste Mundo E Do Outro', N'Arcádia', NULL)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (17, N'Lúcia McCartney', N'Companhia das Letras', 6)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (18, N'Os Meteoros', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (19, N'Lituma Nos Andes', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (20, N'Leão, O Africano', N'Bertrand', 4)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (21, N'A Geração Da Utopia', N'Dom Quixote', 2)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (22, N'História Do Cerco De Lisboa', N'Caminho', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (23, N'O Selvagem Da Ópera', N'Companhia das Letras', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (24, N'Horas Más', N'Queztal', 3)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (25, N'Os Jardins De Luz', N'Difel', 3)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (26, N'Romance Negro E Outras Histórias', N'Campo das Letras', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (27, N'Uma Ceia De Amor', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (28, N'O Caso Morel', N'Bertrand', NULL)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (29, N'Ensaio Sobre A Cegueira', N'Caminho', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (30, N'O Século Primeiro Depois De Beatriz', N'Difel', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (31, N'Feliz Ano Novo', N'Contexto', NULL)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (32, N'Gaspar, Belchior & Baltasar', N'Dom Quixote', 3)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (33, N'Um Deus Passeando Pela Brisa Da Tarde', N'Caminho', 4)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (34, N'Parábola Do Cágado Velho', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (35, N'Giles & Jeanne', N'Dom Quixote', 20)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (36, N'O Cobrador', N'Companhia das Letras', 3)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (37, N'Adeus Princesa', N'Dom Quixote', NULL)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (38, N'A Grande Arte', N'Edições 70', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (39, N'A Casa Verde', N'Livros do Brasil', NULL)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (40, N'Bufo & Spallanzani', N'Companhia das Letras', 24)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (41, N'Lueji', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (42, N'Vastas Emoções E Pensamentos Imperfeitos', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (43, N'Conversa Na Catedral', N'Circulo de Leitores', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (44, N'Agrião', N'Relógio Dágua', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (45, N'Como Peixe Na Água', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (46, N'A Cidade E Os Cães', N'Europa América', NULL)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (47, N'A Paixão Do Conde De Fróis', N'Edições Rolim', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (48, N'Olhos E Cão Azul', N'Queztal', NULL)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (49, N'Domingo De Ramos', N'Circulo de Leitores', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (50, N'A Inaudita Guerra Da Avenida Gago Coutinho', N'Caminho', 3)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (51, N'A Guerra Do Fim Do Mundo', N'Bertrand', NULL)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (52, N'A Incrível E Triste História Da Cândida Eréndira E Da Sua Avó Desalmada', N'Europa América', 2)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (53, N'Um Esquema', N'Edições Rolim', 2)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (54, N'Casos Do Beco Das Sardinheiras', N'Caminho', 2)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (55, N'Quem Matou Palomito Molero ?', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (56, N'O General No Seu Labirinto', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (57, N'Ponto Pé De Flor', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (58, N'História De Mayta', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (59, N'O Falador', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (60, N'A Revoada', N'Queztal', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (61, N'Do Amor E Outros Demónios', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (62, N'Pantaleão E As Visitadoras', N'Europa América', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (63, N'O Outono Do Patriarca', N'Europa América', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (64, N'Os Cachoros Os Chefes', N'Bertrand', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (65, N'Cem Anos De Solidão', N'Europa América', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (66, N'A Tia Julia E O Escrevedor', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (67, N'Elogio Da Madrasta', N'Dom Quixote', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (68, N'As Aventuras De Miguel Littín Clandestino No Chile', N'O Jornal', 1)
INSERT [dbo].[livro] ([idlivro], [titulo], [editora], [edicao]) VALUES (69, N'Ninguém Escreve Ao Coronel', N'Europa América', 1)
GO
