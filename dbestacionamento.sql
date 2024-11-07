-- apagar o db
---DROP DATABASE DB_ESTACIONAMENTO
-- criar o db
CREATE DATABASE DB_ESTACIONAMENTO
-- acessar o db
USE DB_ESTACIONAMENTO
-- criar as tabelas
CREATE TABLE TB_USUARIOS(
	COD_USU INT,
	NOME VARCHAR(50),
	SENHA VARCHAR(12)
)

CREATE TABLE TB_FUNCIONARIOS(
	CODFUNC INT,
	NOME VARCHAR(100),
	EMAIL VARCHAR(100),
	TELEFONE CHAR(10)
)

CREATE TABLE TB_CARROS(
	COD_CAR INT,
	NOME VARCHAR(100),
	PLACA CHAR(7),
	COR VARCHAR(20)
)

CREATE TABLE TB_DIARIAS(
	COD_DIA INT,
	DATA_ENTRADA DATE,
	HORA_ENTRADA TIME,
	DATA_SAIDA DATE,
	HORA_SAIDA TIME

)
 
-- visualizando a estrutura das tabelas
SELECT*FROM TB_USUARIOS;
SELECT*FROM TB_FUNCIONARIOS;
SELECT*FROM TB_CARROS;
SELECT*FROM TB_DIARIAS

--ALTERAR TABELA
ALTER TABLE TB_FUNCIONARIOS
ADD CPF_FUNC CHAR(14)

--VISUALIZAR A DESCRI��O DA TABELA
sp_help TB_FUNCIONARIOS
