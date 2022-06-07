--create database Escola
--go
--use Escola
go
/*create table ALUNO(
cod_aluno numeric(6) primary key,
nome_aluno varchar(30),

endereco varchar(50),
bairro varchar(20),
cidade varchar(20),
cep numeric(8),
telefone char(20),
e_mail_aluno varchar(50),
)
go
create index XAluno on ALUNO(cod_aluno)
go
create table CONTRATO(
cod_contrato numeric(6) primary key,
nome_firma varchar(50),
contato varchar(30),
telefone_firma char(20),
fax_firma varchar(20),
)
go
create index XContrato on CONTRATO(cod_contrato)
go
create table CURSO(
cod_curso numeric(6) primary key,
nome_curso varchar (50),
carga_horaria numeric(3),
maximo_alunos numeric(2),
minimo_alunos numeric(2),
preco_turma dec(17,2),
preco_aluno dec(17,2),
equip_necessario varchar(80)
)
go
create index XCurso on CURSO(cod_curso)
go
create table LABORATORIO(
nome_sala char(10) primary key,
capacidade numeric(3),
equip_disponivel varchar(80)
)
go
create index XLaboratorio on LABORATORIO(nome_sala)
go
create table PROFESSOR(
cod_professor numeric(6) primary key,
nome_professor varchar(30),
area char(4),
ramal numeric(4),
e_mail_professor varchar(50)
)
go
create index XProfessor on PROFESSOR(cod_professor)
go
create table TURMA(
cod_turma numeric(6) primary key,
cod_curso numeric(6) foreign key references
							CURSO(cod_curso),
cod_professor numeric(6) foreign key references
							PROFESSOR(cod_professor),
termino_inscricoes date,
inicio_aulas date,
fim_aulas date,
inscritos numeric(3),
tipo_turma char(1),
valor_farturado dec(17,2),
valor_turma_fechada dec(17,2),
carga_horaria_ministrada numeric(3)
)
go
create index XTurma on TURMA(cod_turma)
go
create table INSCRICAO(
cod_turma numeric(6) foreign key references
						TURMA(cod_turma),
cod_aluno numeric(6) foreign key references
						ALUNO(cod_aluno),
cod_contrato numeric(6) foreign key references
						CONTRATO(cod_contrato),
valor_cobrado dec(17,2),
conceito char(4)
)
go
create index XInscricao on INSCRICAO(cod_turma, cod_aluno, cod_contrato)
go
create table ALOCACAO(
cod_turma numeric(6) foreign key references
						TURMA(cod_turma),
nome_sala char(10),
dia date,
inicio char(5), --poderia usar date também
fim char(5)
)
go
create index XAlocacao on ALOCACAO(cod_turma)
go
create table MINISTRA(
cod_professor numeric(6) foreign key references
							PROFESSOR(cod_professor),
cod_curso numeric(6) foreign key references
							CURSO(cod_curso),
)
go
create index XMinistra on MINISTRA(cod_professor, cod_curso)
go
insert ALUNO(cod_aluno, nome_aluno, endereco, bairro, cidade, cep, telefone, e_mail_aluno) VALUES(123456, 'rogerio sena', 'barba rosa', 'guarulhos', 'são paulo', '12345678', '40028922', 'rogeriosena@oi.com')
go
insert ALUNO(cod_aluno, nome_aluno, endereco, bairro, cidade, cep, telefone, e_mail_aluno) VALUES(2, 'rogeria sena', 'barba preta', 'guralhos', 'sao caetano', '15473648', '40023544', 'rogeriasena@tchau.com')

go 
insert ALUNO values
(3, 'rodrigo bocarte', 'barba branca', 'ai mia voida', 'sao brasil', '46327458', '40035877', 'ola@fafafs.com'),
(45,'radriga bartida', 'barba feita', 'nao faica aiso', 'sao sao paulo', '45458621', '1545445', 'teste4@gmjafadf.ocm'),
(5, 'aluno 5', 'sem barba', 'bairro5', 'cidade5', '78985456', '78945612', 'email5@gmail.cls')
go*/
select * from ALUNO
go
/*insert CURSO values
(1,'curso1', 15, 80, 20, 5000, 50, 'mesa'),
(2,'curso2', 10, 40, 10, 4000, 40, 'cesta'),
(3,'curso3', 8, 20, 5, 3000, 30, 'carro'),
(4,'curso4', 6, 10, 3, 2000, 20, 'jato militar'),
(5,'curso5', 4, 5, 1, 8000, 80, 'bomba atomica')
go*/
select * from CURSO
go
/*insert CONTRATO values
(12, 'firma1', 'contato1', 'telefone1', 'fax1'),
(23, 'firma2', 'contato2', 'telefone2', 'fax2'),
(34, 'firma3', 'contato3', 'telefone3', 'fax3'),
(45, 'firma4', 'contato4', 'telefone4', 'fax4'),
(56, 'firma5', 'contato5', 'telefone5', 'fax5')*/
select * from CONTRATO
go
/*insert PROFESSOR values
(1, 'bombs1', 'MA', 1, 'email1@gmail.com'),
(2, 'bombs2', 'DS', 2, 'email2@gmail.com'),
(3, 'bombs3', 'EDI', 3, 'email3@gmail.com'),
(4, 'bombs4', 'ELO', 4,  'email4@gmail.com'),
(5, 'bombs5', 'ADM', 5,  'email5@gmail.com')*/
select * from PROFESSOR
/*insert TURMA values
(1, 1, 1, '29-05-2022', '01-06-2022', '02-06-2022', 10, 'A', 100, 154 ,140),
(2, 2, 2, '29-05-2022', '01-06-2022', '02-06-2022', 20, 'B', 200, 2456,200),
(3, 3, 3, '29-05-2022', '01-06-2022', '02-06-2022', 30, 'C', 350 , 354,300),
(4, 4, 4, '29-05-2022', '01-06-2022', '02-06-2022', 40, 'D', 4000, 448,445),
(5, 5, 5, '29-05-2022', '01-06-2022', '02-06-2022', 50, 'E', 5, 578,589)
*/select * from TURMA
/*insert INSCRICAO values
(1, 123456, 12, 1324.45, '1'),
(2, 2, 23, 75822.00, '2'),
(3, 3, 34, 7786.25,  '3'),
(4, 45, 45, 7845215, '4'),
(5, 5, 56, 80000, '5')*/
go
select valor_cobrado from INSCRICAO