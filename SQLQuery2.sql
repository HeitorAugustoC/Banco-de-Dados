CREATE DATABASE Aula01 --Cria um novo Banco de Dados dentro de um SGBD
use Aula01 --Ap�s a cria��o do BD, � necess�rio coloc�-lo em uso. Isso pode ser feito pelo comando USE

/*Use master --isto muda o foco do SGBD, permitindo apagar obanco de dados Aula01
Drop Database Aula01 --Apaga um Banco de Dados dentro de um SGBD*/

--Cria��o de uma tabela --por padr�o os campos vem como null (n�o � obrigat�rio ser preenchido)
Create Table Tipo(
Codigo int not null primary key, --neste caso o not null n�o � necess�rio pois ao colocar primary key o campo j� se torna obrigat�rio de se preencher
Nome varchar(30) not null
)

--Cria��o de umatabela com chave prim�ria composta de 2 campos
create table totalfaturado(
mes int not null, --not null � preenchimento obrig�torio
ano integer,
valor decimal(12,2),
primary key(mes,ano)
)

--cria��o de uma tabela com chave estrangeira
create table secao(
codigo int not null primary key,
descricao varchar(20) not null,
coddepto int foreign key references
		departamento (codigo)
) --deu erro pois ele est� tentando se relacionar com uma tabela que n�o existe

--cria��o de uma tabela com restri��o de preenchimento de campos
create table animal(
codigo int not null primary key,
nome varchar(40) not null,
sexo char(1) check(upper (sexo) = 'm' or upper(sexo) = 'f')
)

--constraint � uma regra/restri��o
/*algumas constraints:
not null - especifica que uma coluna n�o pode aceitar um valor nulo.
default - atribui um valor padr�o para uma coluna da tabela.
	-Quantidade int default 1

unique - for�a a coluna a ter valores �nicos, ou seja, n�o pode haver 2 registros com um mesmo valor.
	-CPF numeric (11)unique

check - limita os valores que ser�o recebidos por uma coluna, atrav�s do teste de uma condi��o.
	-Salario dec(7,2) check(salario <= 20000.00)

Identity - indica que um campo ter� valor �nico incremental automaticamente gerado pelo sistema toda vez que um novo registro for inclu�do.
	id_num int IDENTITY(1,1) primary key

tbl - prefixo de uma tabela
*/
--func aqui � funcionario
--cria��o de uma tabela com algumas regras de integridade
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