--create database Escola
--go
--use Escola
go
create table ALUNO(
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
select * from ALUNO