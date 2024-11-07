create database bd_escola;

use bd_escola;

create table tb_aluno(
	id_aluno int,
	nome_aluno varchar(45),
	email_aluno varchar(45),
	cpf_aluno int,
	endereco varchar(45),
	numero int,
	complemento varchar(45),
	cidade varchar(45),
	estado varchar(45),
	
);

create table tb_curso_aluno(
	id_curso int,
	id_aluno int
);

create table tb_curso(
	id_curso int,
	nome varchar(45),
	id_professor int
);

create table tb_professor(
	id_professor int,
	nome_prof varchar(45),
	email_prof varchar(45),
	cpf int,
	endereco_prof varchar(45),
	cpf_prof int,
	numero_prof varchar(45),
	complemento_prof varchar(45),
	cidade_prof varchar(45),
	estado_prof varchar(45)
);


select*from tb_aluno;
select*from tb_curso_aluno;
select*from tb_curso;
select*from tb_professor;

