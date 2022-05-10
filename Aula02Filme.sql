--create database Aula02Filme

use Aula02Carro

create table Genero(
Id_genero int primary key,
desc_genero varchar(20)
)

create table Categoria(
Id_categoria int primary key,
desc_categoria varchar(20)
)

create table Filme(
Id_filme int primary key,
nome_filme varchar(20),
sinopse varchar(100),
Id_categoria int foreign key references Categoria(Id_categoria),
Id_genero int foreign key references Genero(Id_genero)
)

create table Cliente(
Id_Cliente int primary key,
Nome varchar(30),
Endereco varchar(100)
)

create table locacao(
Id_filme int foreign key references Filme(Id_filme),
Id_Cliente int foreign key references Cliente(Id_Cliente),
data_locacao date not null,
data_devolucao date not null
)