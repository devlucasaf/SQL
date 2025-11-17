/*
Aula 23 e 24 - Tabela Verdade
Operadores Lógicos AND e OR
Curso Udemy: O curso completo de Banco de Dados e SQL, sem mistérios!
Professor: Felipe Mafra
*/

-- Operadores Lógicos

-- OR == OU
-- OR --> Para que a saída da query seja verdadeira, basta que apenas uma confição seja verdadeira

SHOW DATABASES;

USE PROJETO;

SELECT * FROM CLIENTE;

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE
SEXO = 'M' OR ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE
SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';

-- AND == E
-- AND --> Para que a saída seja verdadeira todaa as condições precisam ser verdadeiras

SELECT NOME, SEXO ENDERECO FROM CLIENTE
WHERE
SEXO = 'M' AND ENDERECO LIKE '%RJ'

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE
SEXO = 'F' AND ENDERECO LIKE '%ESTACIO'

-- COUNT(*), GROUP BY, performance com operadores Lógicos

-- Contando os registros de uma Tabela

SELECT COUNT(*) AS "Quantidade de Registros da Tabela Cliente" 
FROM CLIENTE;

-- Operador GROUP BY

SELECT SEXO, COUNT(*)
FROM CLIENTE;

SELECT * FROM CLIENTE;

SELECT SEXO, COUNT(*)
FROM CLIENTE
GROUP BY SEXO;

-- Para contar:
SELECT COUNT(*) FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT CIDADE, COUNT(*) FROM CLIENTE
GROUP BY CIDADE;

-- Condição

SEXO = 'F'
CIDADE = 'RIO DE JANEIRO'

/* 
Situação - Tratando com OU / OR
70% Mulheres = SEXO 'F'
30% Mora no Rio de Janeiro
*/

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE SEXO = 'F'
OR CIDADE = 'RIO DE JANEIRO';

/*
Situação - Trantando com E / AND
70% Mulheres = SEXO 'F'
30% Mora no Rio de Janeiro
*/

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE CIDADE = 'RIO DE JANEIRO'
AND SEXO = 'F';
