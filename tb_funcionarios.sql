
-- criar o banco de dados
create database dbLoterica;
-- acessar o banco de dados
use dbLoterica;

drop table tbFuncionarios
-- criar as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(9),
cpf char(14),
idade int,
salario decimal (9,2))
 
-- inserindo registros nas tabelas
insert into tbFuncionarios(codFunc,nome                      ,email                     ,telefone            ,cpf        , idade,   salario)
	values                 (1,     'Paulo Antunes da Silva', 'paulo.asilva@hotmail.com','945217852',		'25325425877', 52    ,      2500);
-- visualizando os registros das tabelas
select*from tbFuncionarios


insert  tbFuncionarios
(codFunc,nome           , email,                    telefone    , cpf, idade, salario)
values                   
(2,      'Regina Mirada', 'regina.miranda@gmail.com', '97824175','12345678956', 45, 3520), 
(3      ,'Mario Andrade', 'mario.andrade@gmail.com', '96558223', '4564844555', 25, 1600)

---drop table tbFuncionarios
---SELECIONAR SOMENTE ALGUNS CAMPOS PARA VISUALIZAÇÃO

select cpf, telefone, nome from tbFuncionarios;

select codFunc as 'Código', nome as 'Nome', email as 'E-mail', telefone as 'Celular', cpf as 'CPF' from tbFuncionarios;


insert tbFuncionarios (nome                , email)
values
                      ('Ronaldo Rodrigues', 'ronaldo.rodrigues@hotmail.com')

insert tbFuncionarios( codFunc             , nome             , email, cpf)
values               (5                    , 'Fernando Cunha'  ,'fernando.ccunha','55566888866')


---ATUALIZAR OS DADOS DA TABELA
update  tbFuncionarios
set     nome = 'Fernando Cunha', email = 'fernando.cunha@htomail.com', telefone = '985466566'
where   codFunc = 5 

update tbFuncionarios
set   codFunc = 4, telefone = '955555654', cpf = '33344466688')
where nome = 'Ronaldo Rodrigues'

--VISUALIZAR A TABELA
select*from tbFuncionarios

---ATUALIZAR DADOS NA TABELA
update tbFuncionarios 
set idade = '51', salario = '3000'
where nome = 'Ronaldo Rodrigues'


update tbFuncionarios
set  idade = '48', salario = '2500'
where nome = 'Fernando Cunha'

--DELETAR DADO ESPECÍFICO NA TABELA

delete from tbFuncionarios
where codFunc = 5

select nome, idade, 'Legais' as 'Observação' from tbFuncionarios

select nome, 'Ok' as 'Observação' from tbFuncionarios

---DESCONTO: acrescenta-se 0, a frente da porcentagem = 10*0,75 ou seja 75 - 100 = 25%
---AUMENTO: acrescenta 1, a frente da porcentagem = 10*1.75

select nome, salario * 1.10 as 'Aumento_salario' from   tbFuncionarios

select nome, salario * 0.75 as 'Desconto_salario' from tbFuncionarios

select nome, codFunc * 3.14161825 as 'Pi', salario * 1.85 as 'Aumento'from tbFuncionarios

select nome, codFunc * 3.14161825 as 'Pi', salario * 1.88 as 'Aumento', idade + 10 as 'Idade_maior'from tbFuncionarios

-- TRAZ OS RESULTADOS DISTINTOS, OU SEJA, TRAZ OS VALORES EXCLUSIVOS
select distinct nome,email from tbFuncionarios