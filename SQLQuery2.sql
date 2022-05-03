CREATE DATABASE Aula01 --Cria um novo Banco de Dados dentro de um SGBD
use Aula01 --Após a criação do BD, é necessário colocá-lo em uso. Isso pode ser feito pelo comando USE

/*Use master --isto muda o foco do SGBD, permitindo apagar obanco de dados Aula01
Drop Database Aula01 --Apaga um Banco de Dados dentro de um SGBD*/

--Criação de uma tabela --por padrão os campos vem como null (não é obrigatório ser preenchido)
Create Table Tipo(
Codigo int not null primary key, --neste caso o not null não é necessário pois ao colocar primary key o campo já se torna obrigatório de se preencher
Nome varchar(30) not null
)

--Criação de umatabela com chave primária composta de 2 campos
create table totalfaturado(
mes int not null, --not null é preenchimento obrigátorio
ano integer,
valor decimal(12,2),
primary key(mes,ano)
)

--criação de uma tabela com chave estrangeira
create table secao(
codigo int not null primary key,
descricao varchar(20) not null,
coddepto int foreign key references
		departamento (codigo)
) --deu erro pois ele está tentando se relacionar com uma tabela que não existe

--criação de uma tabela com restrição de preenchimento de campos
create table animal(
codigo int not null primary key,
nome varchar(40) not null,
sexo char(1) check(upper (sexo) = 'm' or upper(sexo) = 'f')
)

--constraint é uma regra/restrição
/*algumas constraints:
not null - especifica que uma coluna não pode aceitar um valor nulo.
default - atribui um valor padrão para uma coluna da tabela.
	-Quantidade int default 1

unique - força a coluna a ter valores únicos, ou seja, não pode haver 2 registros com um mesmo valor.
	-CPF numeric (11)unique

check - limita os valores que serão recebidos por uma coluna, através do teste de uma condição.
	-Salario dec(7,2) check(salario <= 20000.00)

Identity - indica que um campo terá valor único incremental automaticamente gerado pelo sistema toda vez que um novo registro for incluído.
	id_num int IDENTITY(1,1) primary key

tbl - prefixo de uma tabela
*/
--func aqui é funcionario
--criação de uma tabela com algumas regras de integridade
CREATE TABLE tblfuncionario(
codfunc int identity,
nomefunc varchar(50),
rgfunc char(15),
sexofunc char default 'f',
salfunc dec(10,2) default 240.00,
constraint pk_func primary key(codfunc),
constraint uq_func unique(rgfunc),
constraint ck_func1 check(sexofunc in ('f','m')),
constraint ck_func2 check(salfunc > 0)
)