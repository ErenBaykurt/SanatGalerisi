USE [SanalSanatGalerisiDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16.06.2024 04:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 16.06.2024 04:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](max) NOT NULL,
	[Sifre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Anasayfas]    Script Date: 16.06.2024 04:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anasayfas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Anasayfas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galeris]    Script Date: 16.06.2024 04:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galeris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama] [nvarchar](max) NOT NULL,
	[Fotourl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Galeris] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nedirs]    Script Date: 16.06.2024 04:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nedirs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Nedirs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240608150729_InitDb', N'7.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240609085209_Admin', N'7.0.20')
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([Id], [KullaniciAdi], [Sifre]) VALUES (1, N'Eren', N'fa4ddf29f41b575377ce14a7900d1e26b669163ca53b80ea3168c6801cf7e114')
INSERT [dbo].[Admins] ([Id], [KullaniciAdi], [Sifre]) VALUES (2, N'Mirac', N'5344c4110f483793dc352c388e67776724c36b4bea3ffda6cab7c75b9c65aceb')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Galeris] ON 

INSERT [dbo].[Galeris] ([Id], [Aciklama], [Fotourl]) VALUES (1, N'HuzurunAğacı     -YapayZeka', N'https://i.hizliresim.com/8vakcq1.jpg')
INSERT [dbo].[Galeris] ([Id], [Aciklama], [Fotourl]) VALUES (2, N'ModernYalnız -YapayZeka', N'https://i.hizliresim.com/p3m04c9.jpg')
INSERT [dbo].[Galeris] ([Id], [Aciklama], [Fotourl]) VALUES (3, N'UzaktakiDağlar -YapayZeka', N'https://i.hizliresim.com/rd36u04.jpg')
INSERT [dbo].[Galeris] ([Id], [Aciklama], [Fotourl]) VALUES (4, N'EvrendekiDağlar -YapayZeka', N'https://i.hizliresim.com/csifnj1.jpg')
SET IDENTITY_INSERT [dbo].[Galeris] OFF
GO
SET IDENTITY_INSERT [dbo].[Nedirs] ON 

INSERT [dbo].[Nedirs] ([Id], [Aciklama]) VALUES (1, N'Burası sanal bir platformda gerçek sanatın gücünü keşfetmeniz için tasarlandı. Kendinizi evinizde hissedin ve sanat eserlerinin büyüleyici dünyasına adım atın.')
SET IDENTITY_INSERT [dbo].[Nedirs] OFF
GO
ALTER TABLE [dbo].[Galeris] ADD  DEFAULT (N'') FOR [Fotourl]
GO
