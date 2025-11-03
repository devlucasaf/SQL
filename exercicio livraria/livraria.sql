/*
Exercício LIVRARIA
Curso Udemy: O curso completo de Banco de Dados e SQL, sem mistérios!
Data: 03-11-25
Aula: 26 módulo 4
*/

CREATE DATABASE Livraria;

USE Livraria;

CREATE TABLE LIVROS(
    LIVRO VARCHAR(30),
    AUTOR VARCHAR(30),
    SEXO CHAR(1),
    PAGINAS INT(5),
    EDITORA VARCHAR(30),
    VALOR FLOAT(10,2),
    UF CHAR(2),
    ANO INT(4)
);

-- Inserindo Dados na Tabela Livraria

INSERT INTO LIVROS Values('Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.9, 'RJ', 2009);

INSERT INTO LIVROS Values('SQL para leigos', 'João Nunes', 'M', 450, 'Addison', 98, 'SP', 2018);

INSERT INTO LIVROS Values('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45, 'RJ', 2008);

INSERT INTO LIVROS Values('Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018);

INSERT INTO LIVROS Values('Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019);

INSERT INTO LIVROS Values('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60, 'MG', 2016);

INSERT INTO LIVROS Values('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'ES', 2015);

INSERT INTO LIVROS Values('Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', 2011);

INSERT INTO LIVROS Values('Copas Inesquecíveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', 2018);

INSERT INTO LIVROS Values('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'SP', 2017);

-- Verificando os Bancos
SHOW DATABASES;

-- Selecionando os Dados

-- 1. Mostrando todos os Dados
SELECT * FROM LIVROS;

-- 2.Mostrar o nome do livro e da editora
SELECT LIVRO, EDITORA FROM LIVROS;

-- 3. Mostrando o nome do livro e a UF dos livros publicados por autores do sexo masculino
SELECT LIVRO, UF FROM LIVROS
WHERE SEXO = 'M';

-- 4. Mostrar o nome do livro e o número de páginas quando o sexo for feminino
SELECT LIVRO, PAGINAS FROM LIVROS
WHERE SEXO = 'F';

-- OU Código do professor

SELECT AUTOR, LIVRO, PAGINAS FROM LIVROS
WHERE SEXO = 'F';

-- 5. Mostrando os valores dos livros das editoras de São Paulo
SELECT LIVRO, VALOR FROM LIVROS
WHERE UF = 'SP';

-- OU Código do professor

SELECT UF, LIVRO, VALOR
FROM LIVROS
WHERE UF = 'SP';

-- 6. Mostrar os dados dos autores do sexo masculino que tiveram livros publicados por SP ou RJ
SELECT * FROM LIVROS
WHERE UF LIKE '%SP' OR '%RJ' AND SEXO = 'M';

-- OU Código do professor

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE SEXO = 'M'
AND UF = 'SP'
OR UF = 'RJ';

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE 
SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE SEXO = 'M'
AND UF = 'SP'
AND paginas > 100;
