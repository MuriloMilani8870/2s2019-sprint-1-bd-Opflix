Create Database M_OpFlix

Use M_OpFlix

CREATE TABLE Formatos (
	IdFormato		TINYINT PRIMARY KEY IDENTITY NOT NULL
	,NomeFormato	VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Categorias (
	IdCategoria		INT PRIMARY KEY IDENTITY NOT NULL
	,NomeCategoria		VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Lancamentos (
	IdLancamento	INT PRIMARY KEY IDENTITY NOT NULL
	,Titulo			VARCHAR (255) UNIQUE NOT NULL
	,IdCategoria	TINYINT	FOREIGN KEY REFERENCES Categorias (IdCategoria)
	,IdFormato		TINYINT	FOREIGN KEY REFERENCES Formatos (IdFormato)
	,Sinopse		TEXT NOT NULL
	,Duracao	INT	NOT NULL
	,DataLancamento	DATE NOT NULL
);

CREATE TABLE Permissoes (
	IdPermissao		TINYINT PRIMARY KEY IDENTITY NOT NULL
	,NomePermissao		VARCHAR (255)
);

CREATE TABLE Usuarios (
	IdUsuario		INT PRIMARY KEY IDENTITY NOT NULL
	,NomeUsuario	VARCHAR (255) NOT NULL
	,Email			VARCHAR (255) UNIQUE NOT NULL
	,Senha			VARCHAR (255) NOT NULL
	,CPF			BIGINT	UNIQUE NOT NULL
	,IdPermissao	TINYINT	FOREIGN KEY REFERENCES Permissoes (IdPermissao)
	,DataDeCadastro	DATETIME NOT NULL default GETDATE()
);

CREATE TABLE Favoritos(
	IdUsuario INT FOREIGN KEY REFERENCES Usuarios(IdUsuario)
	,IdLancamento INT FOREIGN KEY REFERENCES Lancamentos(IdLancamento)

)

CREATE TABLE Veiculos(
	IdVeiculo INT identity primary key not null
	,NomeVeiculo Varchar(255) not null

)

CREATE TABLE Transmissao(
	IdLancamento INT FOREIGN KEY REFERENCES Lancamentos(IdLancamento)
	,IdVeiculo INT FOREIGN KEY REFERENCES Veiculos(IdVeiculo)

)

Create View vwTransmissão as
Select 

