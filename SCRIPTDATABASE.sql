USE [projCrud]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 01/05/2022 01:20:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[nome_Cliente] [nchar](50) NOT NULL,
	[cpf] [nchar](15) NOT NULL,
	[cep] [nchar](20) NOT NULL,
	[endereço] [nchar](50) NOT NULL,
	[numero] [nchar](10) NOT NULL,
	[idade] [nchar](3) NOT NULL,
	[cidade] [nchar](30) NOT NULL,
	[estado] [nchar](20) NOT NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 01/05/2022 01:20:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[usuario] [varchar](20) NULL,
	[senha] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produtos]    Script Date: 01/05/2022 01:20:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produtos](
	[id_Prod] [int] IDENTITY(1,1) NOT NULL,
	[nome_Prod] [nchar](20) NOT NULL,
	[unidade] [nchar](4) NOT NULL,
	[quantidade] [int] NOT NULL,
	[preco] [float] NOT NULL,
	[descricao] [nchar](255) NOT NULL,
 CONSTRAINT [PK_produtos] PRIMARY KEY CLUSTERED 
(
	[id_Prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
