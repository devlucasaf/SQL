-- Data: 24-10-25
-- Aula SQL Udemy - Modelagem de Dados em Banco de Dados Relacional (Aula 34)
-- Curso aprendido em desenvolvimento do meu estágio da CAESB

-- ============================================================
-- LIMPEZA DAS TABELAS (para poder recriar sem erro)
-- ============================================================
IF OBJECT_ID('Reserva', 'U') IS NOT NULL DROP TABLE Reserva;
IF OBJECT_ID('Voo', 'U') IS NOT NULL DROP TABLE Voo;
IF OBJECT_ID('Telefone', 'U') IS NOT NULL DROP TABLE Telefone;
IF OBJECT_ID('Passageiro', 'U') IS NOT NULL DROP TABLE Passageiro;
IF OBJECT_ID('Piloto', 'U') IS NOT NULL DROP TABLE Piloto;
IF OBJECT_ID('Pessoa', 'U') IS NOT NULL DROP TABLE Pessoa;
GO

-- ============================================================
-- CRIAÇÃO DAS TABELAS
-- ============================================================

-- Tabela Pessoa
CREATE TABLE Pessoa (
    CPF VARCHAR(11) NOT NULL PRIMARY KEY,
    Nome VARCHAR(30) NOT NULL UNIQUE,
    Sexo CHAR(1) CHECK (Sexo IN ('M', 'F'))
);
GO

-- Tabela Piloto
CREATE TABLE Piloto (
    P_CPF VARCHAR(11) NOT NULL PRIMARY KEY,
    Licenca VARCHAR(5) NOT NULL UNIQUE,
    FOREIGN KEY (P_CPF) REFERENCES Pessoa(CPF)
);
GO

-- Tabela Passageiro
CREATE TABLE Passageiro (
    P_CPF VARCHAR(11) NOT NULL PRIMARY KEY,
    Categoria VARCHAR(10),
    FOREIGN KEY (P_CPF) REFERENCES Pessoa(CPF)
);
GO

-- Tabela Telefone
CREATE TABLE Telefone (
    Numero VARCHAR(10) NOT NULL,
    Pas_P_CPF VARCHAR(11) NOT NULL,
    PRIMARY KEY (Numero, Pas_P_CPF),
    FOREIGN KEY (Pas_P_CPF) REFERENCES Passageiro(P_CPF)
);
GO

-- Tabela Voo (já com a foreign key para Piloto)
CREATE TABLE Voo (
    Numero INT NOT NULL PRIMARY KEY,
    Data_Voo DATE NOT NULL,
    Pi_P_CPF VARCHAR(11) NOT NULL,
    FOREIGN KEY (Pi_P_CPF) REFERENCES Piloto(P_CPF)
);
GO

-- Tabela Reserva
CREATE TABLE Reserva (
    Pas_P_CPF VARCHAR(11) NOT NULL,
    V_Numero INT NOT NULL,
    PRIMARY KEY (Pas_P_CPF, V_Numero),
    FOREIGN KEY (Pas_P_CPF) REFERENCES Passageiro(P_CPF),
    FOREIGN KEY (V_Numero) REFERENCES Voo(Numero)
);
GO

-- ============================================================
-- INSERÇÃO DE DADOS
-- ============================================================

-- Tabela Pessoa
INSERT INTO Pessoa (CPF, Nome, Sexo) VALUES ('111', 'Ana', 'F');
INSERT INTO Pessoa (CPF, Nome, Sexo) VALUES ('222', 'Beto', 'M');
INSERT INTO Pessoa (CPF, Nome, Sexo) VALUES ('333', 'Caio', 'M');
INSERT INTO Pessoa (CPF, Nome, Sexo) VALUES ('444', 'Igor', 'M');
INSERT INTO Pessoa (CPF, Nome, Sexo) VALUES ('555', 'Edu', 'M');
GO

-- Tabela Piloto
INSERT INTO Piloto (P_CPF, Licenca) VALUES ('222', 'LC01');
INSERT INTO Piloto (P_CPF, Licenca) VALUES ('555', 'LC02');
GO

-- Tabela Passageiro
INSERT INTO Passageiro (P_CPF, Categoria) VALUES ('111', 'Ouro');
INSERT INTO Passageiro (P_CPF, Categoria) VALUES ('333', 'Prata');
INSERT INTO Passageiro (P_CPF, Categoria) VALUES ('444', 'Bronze');
GO

-- Tabela Telefone
INSERT INTO Telefone (Numero, Pas_P_CPF) VALUES ('999999999', '111');
INSERT INTO Telefone (Numero, Pas_P_CPF) VALUES ('888888888', '333');
INSERT INTO Telefone (Numero, Pas_P_CPF) VALUES ('777777777', '444');
GO

-- Tabela Voo
INSERT INTO Voo (Numero, Data_Voo, Pi_P_CPF) VALUES (1, '2025-10-24', '222');
INSERT INTO Voo (Numero, Data_Voo, Pi_P_CPF) VALUES (2, '2025-10-25', '555');
GO

-- Tabela Reserva
INSERT INTO Reserva (Pas_P_CPF, V_Numero) VALUES ('111', 1);
INSERT INTO Reserva (Pas_P_CPF, V_Numero) VALUES ('333', 1);
INSERT INTO Reserva (Pas_P_CPF, V_Numero) VALUES ('444', 2);
GO

-- ============================================================
-- CONSULTAS DE TESTE
-- ============================================================

-- Mostrar todas as pessoas
SELECT * FROM Pessoa;

-- Mostrar pilotos e suas licenças
SELECT * FROM Piloto;

-- Mostrar passageiros e categorias
SELECT * FROM Passageiro;

-- Mostrar telefones dos passageiros
SELECT * FROM Telefone;

-- Mostrar voos e seus pilotos
SELECT V.Numero, V.Data_Voo, P.Nome AS NomePiloto
FROM Voo V
JOIN Piloto PI ON V.Pi_P_CPF = PI.P_CPF
JOIN Pessoa P ON PI.P_CPF = P.CPF;

-- Mostrar reservas (passageiro + voo)
SELECT R.V_Numero, P.Nome AS Passageiro
FROM Reserva R
JOIN Passageiro PA ON R.Pas_P_CPF = PA.P_CPF
JOIN Pessoa P ON PA.P_CPF = P.CPF;
GO
