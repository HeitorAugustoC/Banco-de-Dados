create database Aula02Imovel

use Aula02Imovel

create table Vendedor(
Id_vendedor int primary key,
Nome varchar(30) not null,
Endereco varchar(50) not null
)

create table Faixa_imovel(
Id_faixa int primary key,
descricao varchar(30)
)

create table Comprador(
Id_comprador int primary key,
Nome varchar(50) not null,
Endereco varchar(50) not null
)

create table Estado(
Sigla char(2) primary key,
descricao varchar(30)
)

create table Cidade(
Id_cidade int primary key,
descricao varchar(30),
siglaEstado char(2) foreign key references Estado(Sigla)
)

create table Bairro(
Id_bairro int primary key,
descricao varchar(30),
idCidade int foreign key references Cidade(Id_cidade)
)

create table Imovel(
Id_imovel int primary key,
Endereco varchar(50),
idVendedor int foreign key references Vendedor(Id_vendedor),
idBairro int foreign key references Bairro(Id_Bairro)
)

create table Oferta(
idComprador int foreign key references Comprador(Id_comprador),
idImovel int foreign key references Imovel(Id_imovel),
Data date,
)
