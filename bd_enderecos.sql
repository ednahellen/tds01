CREATE DATABASE BD_ENDERECOS

USE BD_ENDERECOS

CREATE TABLE TB_SOLICITANTE(
	ID_SOLICITANTE INT,
	ID_ENDERECO INT
	)

CREATE TABLE TB_ENDERECO(
	ID_ENDERECO INT,
	BAIRRO_ID INT,
	TIPO_LOCAL VARCHAR(15),
	LOGRADOURO VARCHAR(128),
	NUMERO INT,
	COMPLEMENTO VARCHAR(255)
	)

CREATE TABLE TB_BAIRRO(
	ID_BAIRRO INT, 
	NOME_BAIRRO VARCHAR(100),
	CIDADE INT
)

CREATE TABLE TB_CIDADE(
	ID_CIDADE INT,
	NOME VARCHAR(38),
	ESTADO_ID INT
)

CREATE TABLE TB_ESTADO(
	ID_ESTADO INT,
	SIGLA CHAR(2)
)

CREATE TABLE TB_PONTO(
	ID_PONTO INT,
	ID_ENDERECO INT

)

CREATE TABLE TB_SERVICO(
	ID_SERVICO INT,
	ID_ENDERECO INT,
	ID_SOLICITANTE INT

)

SELECT * FROM TB_SOLICITANTE
SELECT * FROM TB_ENDERECO
SELECT * FROM TB_BAIRRO
SELECT * FROM TB_CIDADE
SELECT * FROM TB_ESTADO
SELECT * FROM TB_PONTO
SELECT * FROM TB_SERVICO
