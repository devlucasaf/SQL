/*
Exercício LIVRARIA
Curso Udemy: O curso completo de Banco de Dados e SQL, sem mistérios!
Data: 03-11-25
Aula: 26 módulo 4
Banco: PostgreSQL (pgAdmin 4)
*/

-- Criando a tabela
CREATE TABLE livros (
    livro    VARCHAR(30),
    autor    VARCHAR(30),
    sexo     CHAR(1),
    paginas  INTEGER,
    editora  VARCHAR(30),
    valor    NUMERIC(10,2),
    uf       CHAR(2),
    ano      INTEGER
);

-- Inserindo dados na tabela livros
INSERT INTO livros VALUES
('Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.90, 'RJ', 2009),
('SQL para leigos', 'João Nunes', 'M', 450, 'Addison', 98.00, 'SP', 2018),
('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45.00, 'RJ', 2008),
('Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018),
('Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019),
('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60.00, 'MG', 2016),
('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100.00, 'ES', 2015),
('Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', 2011),
('Copas Inesquecíveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', 2018),
('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'SP', 2017);

-- Verificando os bancos de dados (equivalente ao SHOW DATABASES)
SELECT datname FROM pg_database;

-- 1. Mostrando todos os dados
SELECT * FROM livros;

-- 2. Mostrar o nome do livro e da editora
SELECT livro, editora FROM livros;

-- 3. Livro e UF dos autores do sexo masculino
SELECT livro, uf
FROM livros
WHERE sexo = 'M';

-- 4. Livro e número de páginas quando o sexo for feminino
SELECT livro, paginas
FROM livros
WHERE sexo = 'F';

-- 5. Valores dos livros publicados em São Paulo (SP)
SELECT livro, valor
FROM livros
WHERE uf = 'SP';

-- 6. Autores do sexo masculino com livros publicados em SP ou RJ
SELECT autor, sexo, uf
FROM livros
WHERE sexo = 'M'
AND uf IN ('SP', 'RJ');

-- 7. Autores do sexo masculino publicados em SP com mais de 100 páginas
SELECT autor, sexo, uf
FROM livros
WHERE sexo = 'M'
AND uf = 'SP'
AND paginas > 100;
