create database db_livraria;

use db_livraria;

create table tb_aluno(
	ra_aluno int,
	nome varchar(45),
	tel varchar(45)
);


create table tb_livro(
	isbn int,
	nome_livro varchar(45),
	autor varchar(45),
	pag_livro varchar(45),
	ra_aluno_livro int,
	id_colaborador_livro int	

);

create table tb_colaborador(
	id_colaborador int,
	cpf varchar(45),
	nome varchar(45),
	email varchar(45),
	cargo varchar(45)

);

create table tb_emprestimo(
	id_emprestimo int,
	data_emprestimo date,
	data_devol date,
	livro_isbn varchar(45),
	cpf_colaborador varchar(45),
	id_colaborador_emprestimo int
);

select * from tb_aluno
select * from tb_livro
select * from tb_colaborador
select * from tb_emprestimo


