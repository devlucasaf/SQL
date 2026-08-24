-- Curso da Udemy: Modelagem de Dados em Banco de Dados Relacional
-- Professor: Marcio Victorino
-- Aula 34: Criação do Banco de Dados no MYSQL

-- Criação das tabelas

CREATE TABLE Pessoa(CPF	VARCHAR(11)		NOT NULL,
				Nome	VARCHAR(30)		NOT NULL	UNIQUE,
				Sexo	CHAR(1)		CHECK(Sexo IN('M','F')),
				PRIMARY KEY(CPF)
);

CREATE TABLE Piloto(P_CPF		VARCHAR(11)	NOT NULL,
				Licenca		VARCHAR(5)	NOT NULL UNIQUE,
				PRIMARY KEY(P_CPF),
				FOREIGN KEY(P_CPF)
				REFERENCES Pessoa(CPF)
);

CREATE TABLE Passageiro(P_CPF	VARCHAR(11)		NOT NULL,
				Categoria VARCHAR(10),
				PRIMARY KEY(P_CPF),
				FOREIGN KEY(P_CPF)
				REFERENCES Pessoa(CPF)
);

CREATE TABLE Telefone(Numero		VARCHAR(10) NOT NULL,
				Pas_P_CPF			VARCHAR(11) NOT NULL,
				PRIMARY KEY(Numero, Pas_P_CPF),
				FOREIGN KEY(Pas_P_CPF)
				REFERENCES Passageiro(P_CPF)
);

CREATE TABLE Voo(Numero		Integer		NOT NULL,
					Data_Voo DATE			NOT NULL,
					PRIMARY KEY(Numero)
);

CREATE TABLE Reserva(PAS_P_CPF	VARCHAR(11)		NOT NULL,
						V_Numero	Integer	   	NOT NULL,
						PRIMARY KEY(Pas_P_CPF, V_Numero),
						FOREIGN KEY(Pas_P_CPF)
						REFERENCES Passageiro(P_CPF),
						FOREIGN KEY(V_Numero)
						REFERENCES Voo(Numero)
);

ALTER TABLE Voo
ADD COLUMN Pi_P_CPF	VARCHAR(11) NOT NULL;

ALTER TABLE Voo
ADD CONSTRAINT FK_Piloto_Voo FOREIGN KEY(Pi_P_CPF) REFERENCES Piloto(P_CPF);

-- Inserindo dados nas tabelas:

-- Tabela Pessoa:

Insert Into Pessoa(CPF, Nome, Sexo)
Values('111','Ana','F');

Insert Into Pessoa(CPF, Nome, Sexo)
Values('222','Beto','F');

Insert Into Pessoa(CPF, Nome, Sexo)
Values('333','Caio','F');

Insert Into Pessoa(CPF, Nome, Sexo)
Values('444','Igor','F');

Insert Into Pessoa(CPF, Nome, Sexo)
Values('555','Edu','F');
commit;

-- Tabela Piloto:

Insert Into Piloto(P_CPF, Licenca)
Values('222','LC01')

Insert Into Piloto(P_CPF, Licenca)
Values('555','LC02')
commit;

-- Tabela Passageiro:

Insert Into Passageiro(P_CPF, Categoria)
Values('333','Ouro');

Insert Into Passageiro(P_CPF, Categoria)
Values('444','Normal');
commit;

-- Tabela Telefone:

Insert Into Telefone(Numero, Pas_P_CPF)
Values(999555, '333');

Insert Into Telefone(Numero, Pas_P_CPF)
Values(222444, '444');

Insert Into Telefone(Numero, Pas_P_CPF)
Values(888555, '333');
commit;

-- Tabela Voo:

Insert Into Voo(Numero, Data_Voo, Pi_P_CPF)
Values(101, '2010-10-10','222');

Insert Into Voo(Numero, Data_Voo, Pi_P_CPF)
Values(202, '2011-11-11','555');

Insert Into Voo(Numero, Data_Voo, Pi_P_CPF)
Values(303, '2012-12-12','555');

Insert Into Voo(Numero, Data_Voo, Pi_P_CPF)
Values(404, '2013-01-13','555');
commit;

-- Tabela Reserva:

Insert Into Reserva(Pas_P_CPF, V_Numero)
Values('333', 101);

Insert Into Reserva(Pas_P_CPF, V_Numero)
Values('444', 101);

Insert Into Reserva(Pas_P_CPF, V_Numero)
Values('333', 202);

Insert Into Reserva(Pas_P_CPF, V_Numero)
Values('333', 404);
commit;

-- Consultas:

-- Listar todas as pessoas cadastradas
SELECT * FROM Pessoa;

-- Listar apenas nomes e sexo das pessoas
SELECT Nome, Sexo FROM Pessoa;

-- Ver todos os pilotos
SELECT * FROM Piloto;

-- Ver todos os passageiros
SELECT * FROM Passageiro;

-- Ver todos os telefones registrados
SELECT * FROM Telefone;

-- Ver todos os voos
SELECT * FROM Voo;

-- Ver todas as reservas
SELECT * FROM Reserva;

-- Ver todas as tabelas do banco:

SHOW TABLES;
