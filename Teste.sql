CREATE DATABASE Teste;
GO
USE Teste;
GO
CREATE TABLE Jogos (
    id INT PRIMARY KEY IDENTITY(1,1),
    nome NVARCHAR(50),
    categoria NVARCHAR(30),
    preco DECIMAL(10,2)
);
GO
INSERT INTO Jogos (nome, categoria, preco)
VALUES
('FIFA 25', 'Esportes', 249.00),
('GTA V', 'Ação', 89.99),
('The Witcher 3', 'RPG', 99.90);
GO
SELECT * FROM Jogos;
