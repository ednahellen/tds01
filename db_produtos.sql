CREATE DATABASE db_produtos;

USE db_produtos;



CREATE TABLE TB_PRODUTOS(
	CODIGO INT,
	NOME VARCHAR(50),
	TIPO VARCHAR(25),
	QUANTIDADE INT,
	VALOR DECIMAL(10,2));

INSERT INTO TB_PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 );
INSERT INTO TB_PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 );
INSERT INTO TB_PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3, 'DVD PLAYER', 'ELETRONICOS', 250, 500.00 );
INSERT INTO TB_PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 );
INSERT INTO TB_PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 );
INSERT INTO TB_PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );
INSERT INTO TB_PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 );
INSERT INTO TB_PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 );
INSERT INTO TB_PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 );
INSERT INTO TB_PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 )

SELECT*FROM TB_PRODUTOS 
WHERE TIPO = 'INFORMATICA';

--FILTRO DE QUATIDADE
SELECT*FROM TB_PRODUTOS
WHERE QUANTIDADE > 200;

--FILTRO DE VALOR E TIPO POR ORDEM DECRESCENTE
SELECT*FROM TB_PRODUTOS
WHERE VALOR >= '600.00' 
AND  TIPO = 'INFORMATICA'
ORDER BY CODIGO DESC;

--EXIBIR FILTRO QUE MOSTRE SOMENTE O NOME DOS PRODUTOS: AND AS DUAS PERGUNTAS DEVEM SER VERDADEIRAS
SELECT NOME
FROM TB_PRODUTOS
WHERE QUANTIDADE >= 250
AND VALOR <= 300;

--EXIBIR FILTRO DE VALOR OU QUANTIDADE: OR UMA DAS DUAS PERGUNTAS DEVEM SER VERDADEIRAS

SELECT NOME, TIPO
FROM   TB_PRODUTOS
WHERE  VALOR <= 250
OR    QUANTIDADE = 100;

--ALTERAR A TABELA ACRESCENTANDO 10% NO VALOR DO PRODUTO

UPDATE  TB_PRODUTOS
SET VALOR = VALOR + (VALOR*1.10)
WHERE TIPO = 'INFORMATICA';

---EXIBIR A ALTERA��O
SELECT*FROM TB_PRODUTOS
WHERE TIPO = 'INFORMATICA';

UPDATE TB_PRODUTOS
SET QUANTIDADE = QUANTIDADE + 10
WHERE TIPO = 'ELETRONICOS'
AND VALOR <= 400;

SELECT*FROM TB_PRODUTOS
WHERE TIPO = 'ELETRONICOS'
AND VALOR <= 400;

--FILTRO COM IN: USADO COM PARENTESES PARA IDENTIFICAR O QUE SE DESEJA FILTRAR
SELECT * FROM TB_PRODUTOS
WHERE TIPO 
IN('INFORMATICA', 'ELETRONICOS');

--FILTRAR COM EXCE��O DE..: NOT IN
SELECT * FROM TB_PRODUTOS
WHERE TIPO 
NOT IN('INFORMATICA', 'ELETRONICOS');

--FILTRAR O QUE EST� ENTRE DOIS VALORES
SELECT*FROM TB_PRODUTOS
WHERE VALOR 
BETWEEN 300 
AND 600;

--FILTRAR O QUE EST� FORA DO FILTRO
SELECT*FROM TB_PRODUTOS
WHERE VALOR 
NOT BETWEEN 300 
AND 600;

--BUSCAR POR PROXIMIDADE DO NOME: QUE CONT�M A LETRA NO IN�CIO %A, NO MEIO %A% OU NO FINAL A%

SELECT		* 
FROM		TB_PRODUTOS
WHERE		NOME LIKE 'T%%%'

--
SELECT* FROM TB_PRODUTOS
WHERE NOME LIKE 'M%'

SELECT* FROM TB_PRODUTOS
WHERE NOME NOT LIKE '%A%'

---EXERC�CIOS


--1. Aumente em 12% o valor dos produtos cujos nomes iniciem com a letra 'F'


UPDATE TB_PRODUTOS      
SET    VALOR = VALOR * 1.12 
WHERE  NOME LIKE 'F%'

SELECT*FROM TB_PRODUTOS WHERE NOME LIKE 'F%'

--2. Aumentar em 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 600

UPDATE TB_PRODUTOS
SET QUANTIDADE = QUANTIDADE + 50
WHERE VALOR > 400 AND VALOR < 600


SELECT * FROM TB_PRODUTOS WHERE QUANTIDADE BETWEEN 400 AND 600;

--3. Aplicar um desconto de 50% (*0.5) em todos os produtos que as unidades de estoque sejam maiores que 300 

UPDATE TB_PRODUTOS
SET  VALOR = VALOR * 0.50
WHERE QUANTIDADE >= 300;

SELECT*FROM TB_PRODUTOS WHERE QUANTIDADE >= 300;

--4. Exiba o produto de CODIGO = 4
SELECT*
FROM TB_PRODUTOS
WHERE CODIGO = 4;

--5. Exibir todos os produtos que n�o tenham a letra 'Y'
SELECT*
FROM TB_PRODUTOS
WHERE NOME NOT LIKE %y%;

--6. Exibir todos os produtos que se iniciem com nome 'MO' e tenham como tipo as letras 'MA'
SELECT * FROM TB_PRODUTOS
WHERE NOME LIKE 'MO%'
AND TIPO LIKE '%MA%';