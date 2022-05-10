--create database Aula02Carro

use Aula02Carro

create table Cliente(
Id_cliente int primary key,
Nome varchar(30)
)

create table Produto(
Id_produto int primary key,
descricao varchar(20),
QTDE int
)

create table Veiculo(
Id_veiculo int primary key,
Id_cliente int foreign key references Cliente(Id_cliente)
)

create table Pedido(
Id_pedido int primary key,
Id_cliente int foreign key references Cliente(Id_cliente),
Data date
)

create table Detalhe(
Id_pedido int foreign key references Pedido(Id_pedido),
Id_produto int foreign key references Produto(Id_produto),
QTDE int
)