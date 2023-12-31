USE [master]
GO
/****** Object:  Database [Portal do Aluno]    Script Date: 26/10/2023 11:43:14 ******/
CREATE DATABASE [Portal do Aluno]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Portal do Aluno', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Portal do Aluno.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Portal do Aluno_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Portal do Aluno_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Portal do Aluno] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Portal do Aluno].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Portal do Aluno] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Portal do Aluno] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Portal do Aluno] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Portal do Aluno] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Portal do Aluno] SET ARITHABORT OFF 
GO
ALTER DATABASE [Portal do Aluno] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Portal do Aluno] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Portal do Aluno] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Portal do Aluno] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Portal do Aluno] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Portal do Aluno] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Portal do Aluno] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Portal do Aluno] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Portal do Aluno] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Portal do Aluno] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Portal do Aluno] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Portal do Aluno] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Portal do Aluno] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Portal do Aluno] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Portal do Aluno] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Portal do Aluno] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Portal do Aluno] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Portal do Aluno] SET RECOVERY FULL 
GO
ALTER DATABASE [Portal do Aluno] SET  MULTI_USER 
GO
ALTER DATABASE [Portal do Aluno] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Portal do Aluno] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Portal do Aluno] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Portal do Aluno] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Portal do Aluno] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Portal do Aluno] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Portal do Aluno', N'ON'
GO
ALTER DATABASE [Portal do Aluno] SET QUERY_STORE = ON
GO
ALTER DATABASE [Portal do Aluno] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Portal do Aluno]
GO
/****** Object:  User [sql]    Script Date: 26/10/2023 11:43:14 ******/
CREATE USER [sql] FOR LOGIN [sql] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Acadêmico]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acadêmico](
	[idAcadêmico] [nchar](10) NULL,
	[Consultas] [nchar](10) NULL,
	[GradeHorária] [nchar](10) NULL,
	[Notas] [nchar](10) NULL,
	[Faltas] [nchar](10) NULL,
	[Provas] [nchar](10) NULL,
	[Professores] [nchar](10) NULL,
	[Estágio] [nchar](10) NULL,
	[HistóricoEscolar] [nchar](10) NULL,
	[DocumentosPendentes] [nchar](10) NULL,
	[AtividadesComplementares] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Biblioteca]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Biblioteca](
	[idbiblioteca] [int] NOT NULL,
	[Livro] [nvarchar](50) NOT NULL,
	[NomeAutor] [nvarchar](50) NOT NULL,
	[NomeEditora] [nvarchar](50) NOT NULL,
	[DataLancamento] [date] NOT NULL,
	[Locatario] [nvarchar](50) NOT NULL,
	[IDLivro] [int] NOT NULL,
 CONSTRAINT [PK_Biblioteca] PRIMARY KEY CLUSTERED 
(
	[idbiblioteca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calendario]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendario](
	[idCalendario] [nchar](10) NOT NULL,
	[DataEventos] [date] NULL,
	[Feriados] [date] NULL,
	[Ferias] [date] NULL,
	[Provas] [date] NULL,
	[PrazoEntrega] [date] NULL,
 CONSTRAINT [PK_Calendario] PRIMARY KEY CLUSTERED 
(
	[idCalendario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carteirinha]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carteirinha](
	[idCarteirinha] [int] NOT NULL,
	[Nome] [text] NOT NULL,
	[CPF] [varchar](50) NOT NULL,
	[RA] [varchar](50) NOT NULL,
	[NomeFaculdade] [nvarchar](50) NOT NULL,
	[Curso] [nvarchar](50) NOT NULL,
	[Horario] [text] NOT NULL,
 CONSTRAINT [PK_Carteirinha] PRIMARY KEY CLUSTERED 
(
	[idCarteirinha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentosPendentes]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentosPendentes](
	[idDocumentosPendentes] [nchar](10) NOT NULL,
	[HistoricoEscolar] [nchar](50) NULL,
	[CertidaoDeNascimento] [nchar](50) NULL,
	[RG] [varchar](9) NOT NULL,
	[CPF] [varchar](11) NULL,
	[CEP] [varchar](8) NOT NULL,
 CONSTRAINT [PK_DocumentosPendentes] PRIMARY KEY CLUSTERED 
(
	[idDocumentosPendentes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[faltas]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faltas](
	[idFaltas] [int] NOT NULL,
	[Frequencia] [nvarchar](10) NOT NULL,
	[nFaltas] [nvarchar](10) NOT NULL,
	[Justificativas] [nvarchar](10) NOT NULL,
	[MaximosDeFalta] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_faltas] PRIMARY KEY CLUSTERED 
(
	[idFaltas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Financeiro]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Financeiro](
	[idFinanceiro] [nchar](10) NOT NULL,
	[Consultas] [nchar](10) NULL,
	[HistoricoFinanceiro] [nchar](10) NULL,
	[Mensalidade] [nchar](10) NULL,
	[Bolsas] [nchar](10) NULL,
 CONSTRAINT [PK_Financeiro] PRIMARY KEY CLUSTERED 
(
	[idFinanceiro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoricoEscolar]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoricoEscolar](
	[idHistoricoEscolar] [nchar](10) NOT NULL,
	[Registros] [nchar](10) NULL,
	[DataInicial] [nchar](10) NULL,
	[Termino] [nchar](10) NULL,
	[MediaNotas] [nchar](10) NULL,
	[Faltas] [nchar](10) NULL,
	[Observacoes] [nchar](10) NULL,
 CONSTRAINT [PK_HistoricoEscolar] PRIMARY KEY CLUSTERED 
(
	[idHistoricoEscolar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformacaoAluno]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformacaoAluno](
	[idAluno] [nchar](10) NOT NULL,
	[Nome] [nchar](10) NULL,
	[Cpf] [nchar](10) NULL,
	[RG] [nchar](10) NULL,
	[DatNascimento] [nchar](10) NULL,
	[Email] [nchar](10) NULL,
	[Contato] [nchar](10) NULL,
	[Endereco] [nchar](10) NULL,
 CONSTRAINT [PK_InformacaoAluno] PRIMARY KEY CLUSTERED 
(
	[idAluno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Minha Área]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Minha Área](
	[idMinhaArea] [nchar](10) NOT NULL,
	[Noticias] [nchar](10) NULL,
	[Avisos] [nchar](10) NULL,
	[Calendarios] [nchar](10) NULL,
	[AcessoRapido] [nchar](10) NULL,
	[AmbienteAcademico] [nchar](10) NULL,
	[PagamentoOnline] [nchar](10) NULL,
	[ConsultadeDP] [nchar](10) NULL,
	[ImprimirBoletos] [nchar](10) NULL,
	[Contratos] [nchar](10) NULL,
	[AtendimentoCAA] [nchar](10) NULL,
 CONSTRAINT [PK_Minha Área] PRIMARY KEY CLUSTERED 
(
	[idMinhaArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NOTAS]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NOTAS](
	[idNotas] [int] NOT NULL,
	[A1] [numeric](10, 0) NOT NULL,
	[A2] [numeric](10, 0) NOT NULL,
	[A3] [numeric](10, 0) NOT NULL,
	[A4] [numeric](10, 0) NOT NULL,
	[N1] [numeric](4, 0) NOT NULL,
	[N2] [numeric](6, 0) NOT NULL,
	[Sub] [numeric](10, 0) NOT NULL,
	[Notamedia] [numeric](10, 0) NOT NULL,
	[MediaFinal] [numeric](10, 0) NOT NULL,
 CONSTRAINT [PK_NOTAS] PRIMARY KEY CLUSTERED 
(
	[idNotas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[noticias]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[noticias](
	[idNoticias] [nchar](10) NULL,
	[Eventos] [nchar](10) NULL,
	[DataDeEventos] [date] NULL,
	[Informacao] [nchar](10) NULL,
	[Anuncios] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagamentos]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagamentos](
	[idPagamentos] [int] NOT NULL,
	[Mensalidade] [int] NOT NULL,
	[Inadimplentes] [nchar](150) NOT NULL,
	[DP] [nchar](150) NOT NULL,
	[Boletos] [nchar](150) NOT NULL,
	[SubProvas] [nchar](150) NOT NULL,
	[CartaoDeCredito] [nchar](150) NOT NULL,
	[Pix] [nchar](150) NOT NULL,
 CONSTRAINT [PK_Pagamentos] PRIMARY KEY CLUSTERED 
(
	[idPagamentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Portal do Aluno]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portal do Aluno](
	[idPortaldoAluno] [int] NOT NULL,
	[SenhaAluno] [varchar](50) NOT NULL,
	[RaAluno] [varchar](11) NOT NULL,
	[TelefoneAluno] [nchar](11) NOT NULL,
	[EmailAluno] [varchar](255) NOT NULL,
	[CursodoAluno] [varchar](255) NULL,
	[SituacaodoAluno] [text] NULL,
 CONSTRAINT [PK_Portal do Aluno] PRIMARY KEY CLUSTERED 
(
	[idPortaldoAluno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professores]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professores](
	[idProfessores] [int] NOT NULL,
	[NomeProfessor] [varchar](50) NULL,
	[Materia] [varchar](50) NULL,
	[GradeHorario] [text] NULL,
	[Email] [varchar](50) NULL,
	[Contato] [varchar](11) NULL,
 CONSTRAINT [PK_Professores] PRIMARY KEY CLUSTERED 
(
	[idProfessores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroAluno]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroAluno](
	[RegistroAluno] [nchar](10) NULL,
	[NomeCompleto] [nchar](10) NULL,
	[RG] [nchar](10) NULL,
	[CPF] [nchar](10) NULL,
	[DATANASC] [nchar](10) NULL,
	[endereco] [nchar](10) NULL,
	[bairro] [nchar](10) NULL,
	[cep] [nchar](10) NULL,
	[complemento] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Serviços]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Serviços](
	[idServicos] [nchar](10) NULL,
	[BibliotecaVirtual] [nchar](10) NULL,
	[Carteirinha] [nchar](10) NULL,
	[PasseEscolar] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitacoes]    Script Date: 26/10/2023 11:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitacoes](
	[idSolicitacoes] [nchar](10) NOT NULL,
	[Estágio] [nchar](10) NULL,
	[Declaracaofinanceira] [nchar](10) NULL,
	[SolicitacaoAcademica] [nchar](10) NULL,
	[AtividadeComplementar] [nchar](10) NULL,
	[BeneficioseServicos] [nchar](10) NULL,
 CONSTRAINT [PK_solicitacoes] PRIMARY KEY CLUSTERED 
(
	[idSolicitacoes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Biblioteca Vitual ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Biblioteca', @level2type=N'COLUMN',@level2name=N'idbiblioteca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Livro armazenado na biblioteca' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Biblioteca', @level2type=N'COLUMN',@level2name=N'Livro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Autor do Livro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Biblioteca', @level2type=N'COLUMN',@level2name=N'NomeAutor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Editora do Livro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Biblioteca', @level2type=N'COLUMN',@level2name=N'NomeEditora'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de lançamento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Biblioteca', @level2type=N'COLUMN',@level2name=N'DataLancamento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome de quem alugou o livro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Biblioteca', @level2type=N'COLUMN',@level2name=N'Locatario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificação para localizar o livro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Biblioteca', @level2type=N'COLUMN',@level2name=N'IDLivro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificação do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carteirinha', @level2type=N'COLUMN',@level2name=N'idCarteirinha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carteirinha', @level2type=N'COLUMN',@level2name=N'Nome'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cadastro de pessoa fisica do alunpo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carteirinha', @level2type=N'COLUMN',@level2name=N'CPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero do registro do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carteirinha', @level2type=N'COLUMN',@level2name=N'RA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Instituição do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carteirinha', @level2type=N'COLUMN',@level2name=N'NomeFaculdade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Curso do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carteirinha', @level2type=N'COLUMN',@level2name=N'Curso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Periodo do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carteirinha', @level2type=N'COLUMN',@level2name=N'Horario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de documentos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentosPendentes', @level2type=N'COLUMN',@level2name=N'idDocumentosPendentes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'historico escolar do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentosPendentes', @level2type=N'COLUMN',@level2name=N'HistoricoEscolar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Certidao de nascimento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentosPendentes', @level2type=N'COLUMN',@level2name=N'CertidaoDeNascimento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registro geral do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentosPendentes', @level2type=N'COLUMN',@level2name=N'RG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cadastro de pessoa fisica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentosPendentes', @level2type=N'COLUMN',@level2name=N'CPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Comprovante da residencia do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentosPendentes', @level2type=N'COLUMN',@level2name=N'CEP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador das faltas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'faltas', @level2type=N'COLUMN',@level2name=N'idFaltas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'frequencia do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'faltas', @level2type=N'COLUMN',@level2name=N'Frequencia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'numero de faltas do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'faltas', @level2type=N'COLUMN',@level2name=N'nFaltas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Motivos das faltas do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'faltas', @level2type=N'COLUMN',@level2name=N'Justificativas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'limite de faltas para o aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'faltas', @level2type=N'COLUMN',@level2name=N'MaximosDeFalta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificação do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InformacaoAluno', @level2type=N'COLUMN',@level2name=N'idAluno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InformacaoAluno', @level2type=N'COLUMN',@level2name=N'Nome'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cadastro de Pessoa Fisica do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InformacaoAluno', @level2type=N'COLUMN',@level2name=N'Cpf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registro Geral do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InformacaoAluno', @level2type=N'COLUMN',@level2name=N'RG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de Nascimento Do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InformacaoAluno', @level2type=N'COLUMN',@level2name=N'DatNascimento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InformacaoAluno', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Meio Comunicação do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InformacaoAluno', @level2type=N'COLUMN',@level2name=N'Contato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endereço aonde reside o aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InformacaoAluno', @level2type=N'COLUMN',@level2name=N'Endereco'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da atividade 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NOTAS', @level2type=N'COLUMN',@level2name=N'A1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da atividade 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NOTAS', @level2type=N'COLUMN',@level2name=N'A2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da atividade 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NOTAS', @level2type=N'COLUMN',@level2name=N'A3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da atividade 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NOTAS', @level2type=N'COLUMN',@level2name=N'A4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Média de notas da A1 até a A4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NOTAS', @level2type=N'COLUMN',@level2name=N'N1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota maior que compõem 60% da media final' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NOTAS', @level2type=N'COLUMN',@level2name=N'N2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prova para complementar nota' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NOTAS', @level2type=N'COLUMN',@level2name=N'Sub'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Média das notas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NOTAS', @level2type=N'COLUMN',@level2name=N'Notamedia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Média Final das notas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NOTAS', @level2type=N'COLUMN',@level2name=N'MediaFinal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de pagamentos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pagamentos', @level2type=N'COLUMN',@level2name=N'idPagamentos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor da mensalidade' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pagamentos', @level2type=N'COLUMN',@level2name=N'Mensalidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pessoas em debito' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pagamentos', @level2type=N'COLUMN',@level2name=N'Inadimplentes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notas em dependencia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pagamentos', @level2type=N'COLUMN',@level2name=N'DP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Forma de pagamento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pagamentos', @level2type=N'COLUMN',@level2name=N'Boletos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prova para contruibuir na nota' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pagamentos', @level2type=N'COLUMN',@level2name=N'SubProvas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Forma de pagamento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pagamentos', @level2type=N'COLUMN',@level2name=N'CartaoDeCredito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Forma de pagamento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pagamentos', @level2type=N'COLUMN',@level2name=N'Pix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Página de acesso a plataforma acadêmica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Portal do Aluno', @level2type=N'COLUMN',@level2name=N'idPortaldoAluno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Palavra-chave do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Portal do Aluno', @level2type=N'COLUMN',@level2name=N'SenhaAluno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registro Acadêmico do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Portal do Aluno', @level2type=N'COLUMN',@level2name=N'RaAluno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefone do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Portal do Aluno', @level2type=N'COLUMN',@level2name=N'TelefoneAluno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E-mail do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Portal do Aluno', @level2type=N'COLUMN',@level2name=N'EmailAluno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Curso em qual o aluno está matriculado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Portal do Aluno', @level2type=N'COLUMN',@level2name=N'CursodoAluno'
GO
USE [master]
GO
ALTER DATABASE [Portal do Aluno] SET  READ_WRITE 
GO
