-- CRIAR UM BANCO DE DADOS: NEW FILE, NOME.SQL
--drop database db_lanchonete;

-- CRIAR BANCO DE DADOS
--create database db_lanchonete;

-- VISUALIZAR AS TABELAS
--show databases;

-- ACESSAR O BANCO DE DADOS
use db_lanchonete;

-- MOSTRAR A TABELA
show table;

-- CRIANDO AS TABELAS PARA O BANCO DE DADOS
create table tb_Usuarios(
    id_Usuario int,
    nome varchar(30),
    senha varchar(12)
);

select * from tb_Usuarios
-- desc tb_Usuarios;

create table tb_Funcionarios(
    cod_func int,
    nome varchar (100),
    email varchar (100),
    telefone char(10),
    logradouro char (10),
    numero char (10),
    complemento varchar (50),
    bairro varchar (100),
    cep char(9),
    cidade varchar(100),
    estado char(2)
);

-- show tb_Usuarios;
-- show tb_Funcionarios;

-- VISUALIZAR AS TABELAS 
select * from tb_Usuarios;
select * from tb_Funcionarios;

CREATE DATABASE DB_LOJAABC

use DB_LOJAABC

create table tb_produtos(
	cod_produto int,
	descricao varchar (100),
	valor decimal (9,2),
	data_entrada date,
	hora_entrada time,
	quantidade int,
	validade datetime

)

select * from  tb_produtos

create table tb_fornecedores(
	cod_forn int,
	nome varchar (100),
	email varchar (100),
	telefone char (20)

)


select * from tb_fornecedores
DESCRIPTION tb_produtos