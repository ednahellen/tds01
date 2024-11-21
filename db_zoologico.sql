--1.Crie uma database chamada ZOOLOGICO. 


create database db_zoologico;

use db_zoologico;

--2.Na database ZOOLOGICO, crei uma tabela chamada ANIMAIS com os seguintes 
create table tb_animais(
	codigo   int,
	tipo     char(15),
	nome     char(30),
	idade    int, 
	valor    decimal(10,2)

);

insert into tb_animais (codigo,tipo,nome,idade,valor) values(1,'cachorro','Djudi',3, 300.00);
insert into tb_animais (codigo,tipo,nome,idade,valor) values(2,'cachorro','Sula',5, 300.00);
insert into tb_animais (codigo,tipo,nome,idade,valor) values(3,'cachorro','Sarina', 7, 300.00);
insert into tb_animais (codigo,tipo,nome,idade, valor) values(4, 'gato', 'Pipa', 2, 500.00); 
insert into tb_animais (codigo,tipo,nome,idade, valor) values(5, 'gato', 'Sarangue', 2, 500.00);
insert into tb_animais (codigo,tipo,nome,idade, valor) values(6, 'gato', 'Clarences', 1, 500.00);
insert into tb_animais (codigo,tipo,nome,idade, valor) values(7, 'coruja', 'Agnes', 0, 700.00); 
insert into tb_animais (codigo,tipo,nome,idade, valor) values(8,'coruja', 'Arabela',1, 700.00);
insert into tb_animais (codigo,tipo,nome,idade, valor) values(9,'sapo', 'Quash', 1, 100.00);
insert into tb_animais (codigo,tipo,nome,idade, valor) values(10,'peixe', 'Fish', 0, 100.00);



--3.comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS
select* from tb_animais;

--4.comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS,apresentando todos os registros da tabela
select  tipo, nome from tb_animais;

--5.comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela ANIMAIS, apresentado todos os registros.
select tipo, nome, idade from tb_animais;

--6.comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias [Tipo de Animal] e a coluna nome com o alias [Nome do Animal]. 
select  tipo as 'Tipo de Animal', nome from tb_animais;

--7.comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias [Tipo de Animal], da coluna nome com o alias [Nome do Animal] e da coluna IDADE com o alias [Tempo de Vida]. 
select	tipo as 'Tipo de Animal', nome as 'Nome do Animal', idade as 'Tempo de Vida' from tb_animais;

--8.comando que apresente os dados da tabela ANIMAIS da seguinte forma
select  'Animal Doméstico' as 'Procedência', tipo as 'Tipo', nome  as 'Nome',idade as 'Tempo de Vida' from tb_animais;

--9.comando que apresente os dados da tabela ANIMAIS da seguinte forma:
select tipo as 'Tipo', nome as 'Nome',idade as 'Idade', valor as 'Valor Original',valor * 1.10 as 'Valor de Venda' from tb_animais;

--10. Escreva um comando que apresente os dados da tabela ANIMAIS como vemos a seguir, apresentando uma vez os dados repetidos
select distinct tipo as 'Tipo', valor as 'Valor original', valor as 'Valor de Venda' from tb_animais;
