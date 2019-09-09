Create Database M_OpFlix

Use M_OpFlix

CREATE TABLE Formatos (
	IdFormato		TINYINT PRIMARY KEY IDENTITY NOT NULL
	,NomeFormato	VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Categorias (
	IdCategoria		INT PRIMARY KEY IDENTITY NOT NULL
	,NomeCategoria	VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Lancamentos (
	IdLancamento	INT PRIMARY KEY IDENTITY NOT NULL
	,Titulo			VARCHAR (255) UNIQUE NOT NULL
	,IdCategoria	INT	FOREIGN KEY REFERENCES Categorias (IdCategoria)
	,IdFormato		TINYINT	FOREIGN KEY REFERENCES Formatos (IdFormato)
	,Sinopse		TEXT NOT NULL
	,Duracao		INT	NOT NULL
	,DataLancamento	DATE NOT NULL
);

CREATE TABLE Usuarios (
	IdUsuario		INT PRIMARY KEY IDENTITY NOT NULL
	,NomeUsuario	VARCHAR (255) NOT NULL
	,Email			VARCHAR (255) UNIQUE NOT NULL
	,Senha			VARCHAR (255) NOT NULL
	,CPF			BIGINT	UNIQUE NOT NULL
	,DataDeCadastro	DATETIME NOT NULL default GETDATE()
	,Permissao		VARCHAR(255) not null
);

CREATE TABLE Favoritos(
	IdUsuario		INT FOREIGN KEY REFERENCES Usuarios(IdUsuario)
	,IdLancamento	INT FOREIGN KEY REFERENCES Lancamentos(IdLancamento)
)

CREATE TABLE Veiculos(
	IdVeiculo		INT identity primary key not null
	,NomeVeiculo	Varchar(255) not null

)

CREATE TABLE Transmissao(
	IdLancamento	INT FOREIGN KEY REFERENCES Lancamentos(IdLancamento)
	,IdVeiculo		INT FOREIGN KEY REFERENCES Veiculos(IdVeiculo)
)

Create Table Imagens
(
	IdImagem		INT IDENTITY PRIMARY KEY NOT NULL
	,Vb_Imagem		VARBINARY (MAX) NOT NULL
 )

CREATE VIEW vwTransmissao AS
SELECT Lancamentos.IdCategoria , Transmissao.*, Veiculos.NomeVeiculo
FROM Transmissao , Lancamentos , Veiculos



