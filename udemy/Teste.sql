CREATE DATABASE teste;

CREATE TABLE jogos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    categoria VARCHAR(30),
    preco NUMERIC(10,2)
);

INSERT INTO jogos (nome, categoria, preco)
VALUES
('EA FC 26', 'Esportes', 249.00),
('GTA V', 'Ação', 89.99),
('The Witcher 3', 'RPG', 99.90);

SELECT * FROM jogos;
