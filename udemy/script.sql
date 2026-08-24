CREATE TABLE BANDAS (
	ID_BANDA INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	NOME VARCHAR(100),
	GENERO VARCHAR(100),
	ANO INTEGER,
	QNTD_ALBUNS INTEGER,
	QNTD_MEMBROS INTEGER,
	ATIVIDADE BOOLEAN,
	QNTD_EX_MEMBROS INTEGER,
	PAIS VARCHAR(100)
);

CREATE TABLE MEMBROS (
	ID_MEMBRO INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	NOME VARCHAR(100),
	DATA_NASCIMENTO DATE,
	IDADE INTEGER,
	SEXO CHAR(1),
	NACIONALIDADE VARCHAR(50),
	ESTADO_VITAL CHAR(1),
	DATA_FALECIMENTO DATE
);


CREATE TABLE FUNCAO (
	ID_FUNCAO INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	FUNCAO VARCHAR(50)
);

CREATE TABLE INSTRUMENTO(
	ID_INSTRUMENTO INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	INSTRUMENTO VARCHAR(50)
);

CREATE TABLE BANDA_MEMBROS(
	ID_BANDA INTEGER,
	ID_MEMBRO INTEGER,
	ATIVO BOOLEAN DEFAULT TRUE,
	PRIMARY KEY (ID_MEMBRO, ID_BANDA),
	FOREIGN KEY (ID_MEMBRO) REFERENCES MEMBROS(ID_MEMBRO),
	FOREIGN KEY (ID_BANDA) REFERENCES BANDAS(ID_BANDA)
);

CREATE TABLE MEMBRO_FUNCAO(
	ID_FUNCAO INTEGER,
	ID_MEMBRO INTEGER,
	PRIMARY KEY (ID_MEMBRO, ID_FUNCAO),
	FOREIGN KEY (ID_MEMBRO) REFERENCES MEMBROS(ID_MEMBRO),
	FOREIGN KEY (ID_FUNCAO) REFERENCES FUNCAO(ID_FUNCAO)
);

CREATE TABLE MEMBRO_INSTRUMENTO(
	ID_INSTRUMENTO INTEGER,
	ID_MEMBRO INTEGER,
	PRIMARY KEY (ID_MEMBRO, ID_INSTRUMENTO),
	FOREIGN KEY (ID_MEMBRO) REFERENCES MEMBROS(ID_MEMBRO),
	FOREIGN KEY (ID_INSTRUMENTO) REFERENCES INSTRUMENTO(ID_INSTRUMENTO)
);

-- #############################################
-- # INSERÇÕES DA BANDA BAD RELIGION (Sem EX_MEMBROS)
-- #############################################

-- 1. Complementos nas Tabelas INSTRUMENTO e FUNCAO
-- A banda Bad Religion usa instrumentos/funções comuns, então não requer novas entradas além das já feitas.

-- 2. Inserção na Tabela BANDAS (Bad Religion) - ID_BANDA = 3
INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Bad Religion', 'Punk Rock', 1979, 17, 6, TRUE, 7, 'Estados Unidos');

-- 3. Inserção na Tabela MEMBROS
-- Listando membros atuais e proeminentes ex-membros.
-- ID_MEMBRO: 20-Greg Graffin, 21-Brett Gurewitz, 22-Jay Bentley, 23-Brian Baker, 24-Mike Dimkich, 25-Jamie Miller, 26-Brooks Wackerman, 27-Greg Hetson
INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Greg Graffin', '1964-11-06', 61, 'M', 'Americana', 'V', NULL),  -- Vocal Principal (Atual)
('Brett Gurewitz', '1962-05-12', 63, 'M', 'Americana', 'V', NULL), -- Guitarra (Atual)
('Jay Bentley', '1954-06-06', 71, 'M', 'Americana', 'V', NULL),    -- Baixo (Atual)
('Brian Baker', '1965-02-25', 60, 'M', 'Americana', 'V', NULL),   -- Guitarra (Atual)
('Mike Dimkich', '1968-02-15', 57, 'M', 'Americana', 'V', NULL),   -- Guitarra (Atual)
('Jamie Miller', '1975-04-20', 50, 'M', 'Americana', 'V', NULL),   -- Bateria (Atual)
('Brooks Wackerman', '1972-02-15', 53, 'M', 'Americana', 'V', NULL), -- Bateria (Ex-membro)
('Greg Hetson', '1961-06-29', 64, 'M', 'Americana', 'V', NULL);    -- Guitarra (Ex-membro)

-- 4. Inserção na Tabela BANDA_MEMBROS (Relaciona membros à banda, indicando se são ATIVOS)
-- ID_BANDA = 3 (Bad Religion)
INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(4, 20, TRUE),  -- Greg Graffin (Atual)
(4, 21, TRUE),  -- Brett Gurewitz (Atual)
(4, 22, TRUE),  -- Jay Bentley (Atual)
(4, 23, TRUE),  -- Brian Baker (Atual)
(4, 24, TRUE),  -- Mike Dimkich (Atual)
(4, 25, TRUE),  -- Jamie Miller (Atual)
(4, 26, FALSE), -- Brooks Wackerman (Ex-membro)
(4, 27, FALSE); -- Greg Hetson (Ex-membro)

-- 5. Inserção na Tabela MEMBRO_INSTRUMENTO 
INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(20, 1), -- Greg Graffin - Guitarra Rítmica (e Vocal)
(21, 4), -- Brett Gurewitz - Guitarra Solo
(22, 2), -- Jay Bentley - Baixo
(23, 4), -- Brian Baker - Guitarra Solo
(24, 4), -- Mike Dimkich - Guitarra Solo
(25, 3), -- Jamie Miller - Bateria
(26, 3), -- Brooks Wackerman - Bateria
(27, 4); -- Greg Hetson - Guitarra Solo

DELETE FROM MEMBRO_INSTRUMENTO
WHERE ID_MEMBRO IN (20,21,22,23,24,25,26,27);


-- 6. Inserção na Tabela MEMBRO_FUNCAO 
INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(20, 1), -- Greg Graffin - Vocalista Principal
(20, 5), -- Greg Graffin - Guitarrista
(21, 5), -- Brett Gurewitz - Guitarrista
(22, 3), -- Jay Bentley - Baixista
(22, 2), -- Jay Bentley - Vocalista de Apoio
(23, 5), -- Brian Baker - Guitarrista
(24, 5), -- Mike Dimkich - Guitarrista
(25, 4), -- Jamie Miller - Baterista
(26, 4), -- Brooks Wackerman - Baterista
(27, 5); -- Greg Hetson - Guitarrista

DELETE FROM MEMBRO_FUNCAO
WHERE ID_MEMBRO IN (20,21,22,23,24,25,26,27);

-- # INSERÇÕES DA BANDA LINKIN PARK 

INSERT INTO INSTRUMENTO (INSTRUMENTO) VALUES
('Teclado'),
('DJ/Sampler');

INSERT INTO FUNCAO (FUNCAO) VALUES
('DJ/Sampler');

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Linkin Park', 'Nu Metal', 1996, 7, 5, TRUE, 3, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Mike Shinoda', '1977-02-11', 48, 'M', 'Americana', 'V', NULL),
('Brad Delson', '1977-12-01', 48, 'M', 'Americana', 'V', NULL),
('Joe Hahn', '1977-03-15', 48, 'M', 'Americana', 'V', NULL),
('Rob Bourdon', '1979-01-20', 46, 'M', 'Americana', 'V', NULL),
('Dave Farrell (Phoenix)', '1977-02-08', 48, 'M', 'Americana', 'V', NULL),
('Chester Bennington', '1976-03-20', 41, 'M', 'Americana', 'F', '2017-07-20'),
('Mark Wakefield', '1974-05-31', 51, 'M', 'Americana', 'V', NULL),
('Kyle Christner', '1978-05-01', 47, 'M', 'Americana', 'V', NULL),
('Emily Armstrong', '1986-05-06', 39, 'F', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(2, 11, TRUE),  
(2, 12, TRUE),  
(2, 13, TRUE),  
(2, 14, FALSE), 
(2, 15, TRUE),  
(2, 16, FALSE), 
(2, 17, FALSE), 
(2, 18, FALSE), 
(2, 19, TRUE);  

DELETE FROM BANDA_MEMBROS
WHERE ID_MEMBRO IN (11, 12, 13, 14, 15, 16, 17, 18, 19);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(11, 1), 
(11, 6), 
(11, 7), 
(12, 4), 
(13, 7), 
(14, 3), 
(15, 2), 
(16, 1), 
(19, 1); 

DELETE FROM MEMBRO_INSTRUMENTO
WHERE ID_MEMBRO IN (11, 12, 13, 14, 15, 16, 17, 18, 19);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(11, 1),
(11, 5),
(12, 5),
(13, 6),
(14, 4),
(15, 3),
(16, 1),
(19, 1);

DELETE FROM MEMBRO_FUNCAO
WHERE ID_MEMBRO IN (11, 12, 13, 14, 15, 16, 17, 18, 19);

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Gojira', 'Progressive Death Metal', 1996, 7, 4, TRUE, 2, 'França');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Joe Duplantier', '1976-10-19', 49, 'M', 'Francesa', 'V', NULL),
('Mario Duplantier', '1981-06-19', 44, 'M', 'Francesa', 'V', NULL),
('Christian Andreu', '1976-11-15', 49, 'M', 'Francesa', 'V', NULL),
('Jean-Michel Labadie', '1976-12-14', 49, 'M', 'Francesa', 'V', NULL),
('Alexandre Cornillon', '1975-01-01', 50, 'M', 'Francesa', 'V', NULL),
('Laurent Fimbel', '1975-01-01', 50, 'M', 'Francesa', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(4, 28, TRUE),
(4, 29, TRUE),
(4, 30, TRUE),
(4, 31, TRUE),
(4, 32, FALSE),
(4, 33, FALSE);

SELECT * FROM BANDAS;

DELETE FROM BANDA_MEMBROS
WHERE ID_MEMBRO IN (28, 29, 30, 31, 32, 33);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(28, 1),
(28, 4),
(29, 3),
(30, 4),
(31, 2);

DELETE FROM MEMBRO_INSTRUMENTO
WHERE ID_MEMBRO IN (11, 12, 13, 14, 15, 16, 17, 18, 19);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(28, 1),
(28, 5),
(29, 4),
(30, 5),
(31, 3);

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Green Day', 'Punk Rock', 1987, 14, 3, TRUE, 1, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Billie Joe Armstrong', '1972-02-17', 53, 'M', 'Americana', 'V', NULL),
('Mike Dirnt', '1972-05-04', 53, 'M', 'Americana', 'V', NULL),
('Tré Cool', '1962-12-09', 63, 'M', 'Americana', 'V', NULL),
('Al Sobrante (John Kiffmeyer)', '1969-07-11', 56, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(5, 34, TRUE),
(5, 35, TRUE),
(5, 36, TRUE),
(5, 37, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(34, 1),
(34, 4),
(35, 2),
(36, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(34, 1),
(34, 5),
(35, 3),
(36, 4);

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Foo Fighters', 'Rock Alternativo', 1994, 11, 6, TRUE, 7, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Dave Grohl', '1969-01-14', 56, 'M', 'Americana', 'V', NULL),
('Chris Shiflett', '1971-05-06', 54, 'M', 'Americana', 'V', NULL),
('Pat Smear', '1959-08-05', 66, 'M', 'Americana', 'V', NULL),
('Nate Mendel', '1968-12-04', 57, 'M', 'Americana', 'V', NULL),
('Rami Jaffee', '1969-03-11', 56, 'M', 'Americana', 'V', NULL),
('Josh Freese', '1972-12-25', 53, 'M', 'Americana', 'V', NULL),
('Taylor Hawkins', '1972-02-17', 50, 'M', 'Americana', 'F', '2022-03-25'),
('William Goldsmith', '1972-07-04', 53, 'M', 'Americana', 'V', NULL),
('Franz Stahl', '1962-10-30', 63, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(6, 38, TRUE),
(6, 39, TRUE),
(6, 40, TRUE),
(6, 41, TRUE),
(6, 42, TRUE),
(6, 43, TRUE),
(6, 44, FALSE),
(6, 45, FALSE),
(6, 46, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(38, 1),
(38, 4),
(39, 4),
(40, 1),
(41, 2),
(42, 6),
(43, 3),
(44, 3),
(45, 3),
(46, 4);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(38, 1),
(38, 5),
(39, 5),
(40, 5),
(41, 3),
(42, 2),
(44, 4),
(45, 4),
(46, 5);

-- #############################################
-- # INSERÇÕES NIRVANA
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Nirvana', 'Grunge', 1987, 3, 2, FALSE, 4, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Kurt Cobain', '1967-02-20', 27, 'M', 'Americana', 'F', '1994-04-05'),
('Krist Novoselic', '1965-05-16', 60, 'M', 'Americana', 'V', NULL),
('Dave Grohl', '1969-01-14', 56, 'M', 'Americana', 'V', NULL),
('Chad Channing', '1967-01-31', 58, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(7, 47, FALSE),
(7, 48, FALSE),
(7, 38, FALSE), -- Dave Grohl já existe (ID 38 do Foo Fighters)
(7, 50, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(47, 1),
(47, 4),
(48, 2),
(38, 3),
(50, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(47, 1),
(47, 5),
(48, 3),
(38, 4),
(50, 4);

-- #############################################
-- # INSERÇÕES AC/DC
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('AC/DC', 'Hard Rock', 1973, 17, 4, TRUE, 15, 'Austrália');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Angus Young', '1955-03-31', 70, 'M', 'Escocesa/Australiana', 'V', NULL),
('Brian Johnson', '1947-10-05', 78, 'M', 'Britânica', 'V', NULL),
('Stevie Young', '1956-12-11', 69, 'M', 'Escocesa', 'V', NULL),
('Chris Slade', '1946-10-30', 79, 'M', 'Britânica', 'V', NULL),
('Cliff Williams', '1949-12-14', 76, 'M', 'Britânica', 'V', NULL),
('Malcolm Young', '1953-01-06', 64, 'M', 'Escocesa/Australiana', 'F', '2017-11-18'),
('Bon Scott', '1946-07-09', 33, 'M', 'Escocesa/Australiana', 'F', '1980-02-19');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(8, 51, TRUE),
(8, 52, TRUE),
(8, 53, TRUE),
(8, 54, TRUE),
(8, 55, FALSE),
(8, 56, FALSE),
(8, 57, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(51, 4),
(52, 1),
(53, 1),
(54, 3),
(55, 2),
(56, 1),
(57, 1);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(51, 5),
(52, 1),
(53, 5),
(54, 4),
(55, 3),
(56, 5),
(57, 1);

-- #############################################
-- # INSERÇÕES AVENGED SEVENFOLD
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Avenged Sevenfold', 'Metal Alternativo', 1999, 8, 5, TRUE, 5, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('M. Shadows', '1981-07-31', 44, 'M', 'Americana', 'V', NULL),
('Zacky Vengeance', '1981-12-11', 44, 'M', 'Americana', 'V', NULL),
('Synyster Gates', '1981-07-07', 44, 'M', 'Americana', 'V', NULL),
('Johnny Christ', '1984-11-18', 41, 'M', 'Americana', 'V', NULL),
('Brooks Wackerman', '1972-02-15', 53, 'M', 'Americana', 'V', NULL),
('The Rev (James Sullivan)', '1981-02-09', 28, 'M', 'Americana', 'F', '2009-12-28');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(9, 58, TRUE),
(9, 59, TRUE),
(9, 60, TRUE),
(9, 61, TRUE),
(9, 26, TRUE), -- Brooks Wackerman já existe (ID 26 do Bad Religion)
(9, 63, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(58, 1),
(59, 1),
(60, 4),
(61, 2),
(26, 3),
(63, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(58, 1),
(59, 5),
(60, 5),
(61, 3),
(26, 4),
(63, 4);

-- #############################################
-- # INSERÇÕES GUNS N' ROSES
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Guns N'' Roses', 'Hard Rock', 1985, 6, 6, TRUE, 18, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Axl Rose', '1962-02-06', 63, 'M', 'Americana', 'V', NULL),
('Slash', '1965-07-23', 60, 'M', 'Britânica/Americana', 'V', NULL),
('Duff McKagan', '1964-02-05', 61, 'M', 'Americana', 'V', NULL),
('Richard Fortus', '1966-11-17', 59, 'M', 'Americana', 'V', NULL),
('Frank Ferrer', '1966-03-25', 59, 'M', 'Americana', 'V', NULL),
('Dizzy Reed', '1963-06-19', 62, 'M', 'Americana', 'V', NULL),
('Izzy Stradlin', '1962-04-08', 63, 'M', 'Americana', 'V', NULL),
('Steven Adler', '1965-04-15', 60, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(10, 64, TRUE),
(10, 65, TRUE),
(10, 66, TRUE),
(10, 67, TRUE),
(10, 68, TRUE),
(10, 69, TRUE),
(10, 70, FALSE),
(10, 71, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(64, 1),
(65, 4),
(66, 2),
(67, 1),
(68, 3),
(69, 6),
(70, 1),
(71, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(64, 1),
(65, 5),
(66, 3),
(67, 5),
(68, 4),
(69, 2),
(70, 5),
(71, 4);

-- #############################################
-- # INSERÇÕES KORN
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Korn', 'Nu Metal', 1993, 14, 5, TRUE, 4, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Jonathan Davis', '1971-03-18', 54, 'M', 'Americana', 'V', NULL),
('Fieldy', '1969-11-20', 56, 'M', 'Americana', 'V', NULL),
('Munky', '1970-07-30', 55, 'M', 'Americana', 'V', NULL),
('Head', '1970-06-06', 55, 'M', 'Americana', 'V', NULL),
('Ray Luzier', '1966-08-31', 59, 'M', 'Americana', 'V', NULL),
('David Silveria', '1972-09-21', 53, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(11, 72, TRUE),
(11, 73, FALSE), -- Fieldy (hiato)
(11, 74, TRUE),
(11, 75, TRUE),
(11, 76, TRUE),
(11, 77, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(72, 1),
(73, 2),
(74, 4),
(75, 4),
(76, 3),
(77, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(72, 1),
(73, 3),
(74, 5),
(75, 5),
(76, 4),
(77, 4);

-- KISS

-- 1. Inserção na Tabela INSTRUMENTO
INSERT INTO INSTRUMENTO (INSTRUMENTO) VALUES
('Guitarra Rítmica'),
('Baixo'),
('Bateria'),
('Guitarra Solo'),
('Percussão');

-- 2. Inserção na Tabela FUNCAO
INSERT INTO FUNCAO (FUNCAO) VALUES
('Vocalista Principal'),
('Vocalista de Apoio'),
('Baixista'),
('Baterista'),
('Guitarrista');

-- 3. Inserção na Tabela BANDAS (Kiss) - ID_BANDA = 1 (se for a primeira inserção)
INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Kiss', 'Hard Rock', 1973, 20, 4, TRUE, 6, 'Estados Unidos');

-- 4. Inserção na Tabela MEMBROS (Todos os membros relevantes)
-- ID_MEMBRO segue a ordem: 1-Paul Stanley, 2-Gene Simmons, 3-Eric Singer, 4-Tommy Thayer, 5-Ace Frehley, 6-Peter Criss, 7-Eric Carr, 8-Vinnie Vincent, 9-Mark St. John, 10-Bruce Kulick
INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Paul Stanley', '1952-01-20', 73, 'M', 'Americana', 'V', NULL),
('Gene Simmons', '1949-08-25', 76, 'M', 'Americana', 'V', NULL),
('Eric Singer', '1958-05-12', 67, 'M', 'Americana', 'V', NULL),
('Tommy Thayer', '1960-11-07', 65, 'M', 'Americana', 'V', NULL),
('Ace Frehley', '1951-04-27', 74, 'M', 'Americana', 'V', NULL),
('Peter Criss', '1945-12-20', 80, 'M', 'Americana', 'V', NULL),
('Eric Carr', '1950-07-12', 41, 'M', 'Americana', 'F', '1991-11-24'),
('Vinnie Vincent', '1952-08-10', 73, 'M', 'Americana', 'V', NULL),
('Mark St. John', '1956-02-07', 51, 'M', 'Americana', 'F', '2007-04-05'),
('Bruce Kulick', '1953-04-30', 72, 'M', 'Americana', 'V', NULL);

-- 5. Inserção na Tabela BANDA_MEMBROS (Relaciona membros à banda, indicando se são ATIVOS)
-- ID_BANDA = 1 (Kiss)
INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(2, 1, TRUE),  -- Paul Stanley
(2, 2, TRUE),  -- Gene Simmons
(2, 3, TRUE),  -- Eric Singer
(2, 4, TRUE),  -- Tommy Thayer
(2, 5, FALSE), -- Ace Frehley
(2, 6, FALSE), -- Peter Criss
(2, 7, FALSE), -- Eric Carr
(2, 8, FALSE), -- Vinnie Vincent
(2, 9, FALSE), -- Mark St. John
(2, 10, FALSE); -- Bruce Kulick

DELETE FROM BANDA_MEMBROS
WHERE ID_MEMBRO IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

-- 8. Inserção na Tabela MEMBRO_INSTRUMENTO (Relaciona membros a seus instrumentos)
-- IDs dos Instrumentos: 1-Guitarra Rítmica, 2-Baixo, 3-Bateria, 4-Guitarra Solo, 5-Percussão
INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(1, 1), -- Paul Stanley - Guitarra Rítmica
(1, 4), -- Paul Stanley - Guitarra Solo
(2, 2), -- Gene Simmons - Baixo
(4, 4), -- Tommy Thayer - Guitarra Solo
(3, 3), -- Eric Singer - Bateria
(3, 5), -- Eric Singer - Percussão
(5, 4), -- Ace Frehley - Guitarra Solo
(6, 3), -- Peter Criss - Bateria
(6, 5), -- Peter Criss - Percussão
(7, 3), -- Eric Carr - Bateria
(7, 5), -- Eric Carr - Percussão
(8, 4), -- Vinnie Vincent - Guitarra Solo
(9, 4), -- Mark St. John - Guitarra Solo
(10, 4); -- Bruce Kulick - Guitarra Solo

-- 9. Inserção na Tabela MEMBRO_FUNCAO (Relaciona membros às suas funções)
-- IDs das Funções: 1-Vocalista Principal, 2-Vocalista de Apoio, 3-Baixista, 4-Baterista, 5-Guitarrista
INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(1, 1), -- Paul Stanley - Vocalista Principal
(1, 5), -- Paul Stanley - Guitarrista
(2, 1), -- Gene Simmons - Vocalista Principal
(2, 3), -- Gene Simmons - Baixista
(4, 5), -- Tommy Thayer - Guitarrista
(4, 2), -- Tommy Thayer - Vocalista de Apoio
(3, 4), -- Eric Singer - Baterista
(3, 2), -- Eric Singer - Vocalista de Apoio
(5, 5), -- Ace Frehley - Guitarrista
(5, 1), -- Ace Frehley - Vocalista Principal
(6, 4), -- Peter Criss - Baterista
(6, 1), -- Peter Criss - Vocalista Principal
(7, 4), -- Eric Carr - Baterista
(7, 2), -- Eric Carr - Vocalista de Apoio
(8, 5), -- Vinnie Vincent - Guitarrista
(8, 2), -- Vinnie Vincent - Vocalista de Apoio
(9, 5), -- Mark St. John - Guitarrista
(10, 5), -- Bruce Kulick - Guitarrista
(10, 2); -- Bruce Kulick - Vocalista de Apoio

-- #############################################
-- # INSERÇÕES THE BEATLES
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('The Beatles', 'Rock Clássico', 1960, 13, 0, FALSE, 3, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('John Lennon', '1940-10-09', 40, 'M', 'Britânica', 'F', '1980-12-08'),
('Paul McCartney', '1942-06-18', 83, 'M', 'Britânica', 'V', NULL),
('George Harrison', '1943-02-25', 58, 'M', 'Britânica', 'F', '2001-11-29'),
('Ringo Starr', '1940-07-07', 85, 'M', 'Britânica', 'V', NULL),
('Pete Best', '1941-11-24', 84, 'M', 'Britânica', 'V', NULL),
('Stuart Sutcliffe', '1940-06-23', 21, 'M', 'Britânica', 'F', '1962-04-10');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(12, 78, FALSE),
(12, 79, FALSE),
(12, 80, FALSE),
(12, 81, FALSE),
(12, 82, FALSE),
(12, 83, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(78, 1),
(78, 4),
(79, 2),
(80, 4),
(81, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(78, 1),
(78, 5),
(79, 1),
(79, 3),
(80, 2),
(80, 5),
(81, 4);

-- #############################################
-- # INSERÇÕES THE WHO
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('The Who', 'Rock Clássico', 1964, 12, 2, TRUE, 2, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Roger Daltrey', '1944-03-01', 81, 'M', 'Britânica', 'V', NULL),
('Pete Townshend', '1945-05-19', 80, 'M', 'Britânica', 'V', NULL),
('John Entwistle', '1944-10-09', 57, 'M', 'Britânica', 'F', '2002-06-27'),
('Keith Moon', '1946-08-23', 32, 'M', 'Britânica', 'F', '1978-09-07');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(13, 84, TRUE),
(13, 85, TRUE),
(13, 86, FALSE),
(13, 87, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(84, 1),
(85, 4),
(86, 2),
(87, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(84, 1),
(85, 5),
(86, 3),
(87, 4);

-- #############################################
-- # INSERÇÕES LED ZEPPELIN
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Led Zeppelin', 'Rock N Roll', 1968, 9, 0, FALSE, 0, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Robert Plant', '1948-08-20', 77, 'M', 'Britânica', 'V', NULL),
('Jimmy Page', '1944-01-09', 81, 'M', 'Britânica', 'V', NULL),
('John Paul Jones', '1946-01-03', 79, 'M', 'Britânica', 'V', NULL),
('John Bonham', '1948-05-31', 32, 'M', 'Britânica', 'F', '1980-09-25');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(14, 88, FALSE),
(14, 89, FALSE),
(14, 90, FALSE),
(14, 91, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(88, 1),
(89, 4),
(90, 2),
(90, 6),
(91, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(88, 1),
(89, 5),
(90, 3),
(91, 4);

-- #############################################
-- # INSERÇÕES BLACK SABBATH
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Black Sabbath', 'Heavy Metal', 1968, 19, 0, FALSE, 21, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Ozzy Osbourne', '1948-12-03', 77, 'M', 'Britânica', 'V', NULL),
('Tony Iommi', '1948-02-19', 77, 'M', 'Britânica', 'V', NULL),
('Geezer Butler', '1949-07-19', 76, 'M', 'Britânica', 'V', NULL),
('Bill Ward', '1948-05-05', 77, 'M', 'Britânica', 'V', NULL),
('Ronnie James Dio', '1942-07-10', 67, 'M', 'Americana', 'F', '2010-05-16');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(15, 92, FALSE),
(15, 93, FALSE),
(15, 94, FALSE),
(15, 95, FALSE),
(15, 96, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(92, 1),
(93, 4),
(94, 2),
(95, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(92, 1),
(93, 5),
(94, 3),
(95, 4),
(96, 1);

-- #############################################
-- # INSERÇÕES SEPULTURA
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Sepultura', 'Thrash Metal', 1984, 15, 4, TRUE, 5, 'Brasil');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Andreas Kisser', '1968-08-24', 57, 'M', 'Brasileira', 'V', NULL),
('Paulo Jr.', '1969-04-30', 56, 'M', 'Brasileira', 'V', NULL),
('Derrick Green', '1971-06-20', 54, 'M', 'Americana', 'V', NULL),
('Eloy Casagrande', '1991-01-29', 34, 'M', 'Brasileira', 'V', NULL),
('Max Cavalera', '1969-08-04', 56, 'M', 'Brasileira', 'V', NULL),
('Igor Cavalera', '1970-09-04', 55, 'M', 'Brasileira', 'V', NULL),
('Greyson Nekrutman','2003-07-13', 23, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(16, 97, TRUE),
(16, 98, TRUE),
(16, 99, TRUE),
(16, 100, FALSE),
(16, 101, FALSE),
(16, 102, FALSE),
(16, 103, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(97, 4),
(98, 2),
(99, 1),
(100, 3),
(101, 1),
(102, 3),
(103, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(97, 5),
(97, 2),
(98, 3),
(99, 1),
(100, 4),
(101, 1),
(102, 4),
(103, 4);

-- #############################################
-- # INSERÇÕES ANGRA
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Angra', 'Power Metal', 1991, 10, 4, TRUE, 7, 'Brasil');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Rafael Bittencourt', '1971-10-21', 54, 'M', 'Brasileira', 'V', NULL),
('Felipe Andreoli', '1980-08-07', 45, 'M', 'Brasileira', 'V', NULL),
('Fabio Lione', '1973-10-09', 52, 'M', 'Italiana', 'V', NULL),
('Bruno Valverde', '1990-05-18', 35, 'M', 'Brasileira', 'V', NULL),
('Andre Matos', '1961-09-14', 47, 'M', 'Brasileira', 'F', '2019-06-08'),
('Kiko Loureiro', '1972-06-24', 53, 'M', 'Brasileira', 'V', NULL),
('Ricardo Confessori', '1969-05-09', 56, 'M', 'Brasileira', 'V', NULL),
('Luís Mariutti', '1968-03-22', 57, 'M', 'Brasileira', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(17, 103, TRUE),
(17, 104, TRUE),
(17, 105, TRUE),
(17, 106, TRUE),
(17, 107, FALSE),
(17, 108, FALSE),
(17, 109, FALSE),
(17, 110, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(103, 1),
(103, 4),
(104, 2),
(105, 1),
(106, 3),
(107, 6),
(108, 4),
(109, 3),
(110, 2);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(103, 5),
(104, 3),
(105, 1),
(106, 4),
(107, 1),
(108, 5),
(109, 4),
(110, 3);

-- #############################################
-- # INSERÇÕES HELLOWEEN
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Helloween', 'Power Metal', 1984, 17, 7, TRUE, 5, 'Alemanha');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Michael Kiske', '1968-01-24', 57, 'M', 'Alemã', 'V', NULL),
('Andi Deris', '1964-09-03', 61, 'M', 'Alemã', 'V', NULL),
('Kai Hansen', '1963-01-17', 62, 'M', 'Alemã', 'V', NULL),
('Michael Weikath', '1962-08-07', 63, 'M', 'Alemã', 'V', NULL),
('Sascha Gerstner', '1977-04-02', 48, 'M', 'Alemã', 'V', NULL),
('Markus Grosskopf', '1965-09-29', 60, 'M', 'Alemã', 'V', NULL),
('Daniel Löble', '1973-02-19', 52, 'M', 'Alemã', 'V', NULL),
('Roland Grapow', '1959-08-30', 66, 'M', 'Alemã', 'V', NULL),
('Uli Kusch', '1967-03-11', 58, 'M', 'Alemã', 'V', NULL),
('Ingo Schwichtenberg', '1965-05-27', 30, 'M', 'Alemã', 'F', '1995-03-08');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(18, 111, TRUE),
(18, 112, TRUE),
(18, 113, TRUE),
(18, 114, TRUE),
(18, 115, TRUE),
(18, 116, TRUE),
(18, 117, TRUE),
(18, 118, FALSE),
(18, 119, FALSE),
(18, 120, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(111, 1),
(112, 1),
(113, 1),
(113, 4),
(114, 4),
(115, 4),
(116, 2),
(117, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(111, 1),
(112, 1),
(113, 1),
(113, 5),
(114, 5),
(115, 5),
(116, 3),
(117, 4);

-- #############################################
-- # INSERÇÕES JUDAS PRIEST
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Judas Priest', 'Heavy Metal', 1969, 19, 5, TRUE, 12, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Rob Halford', '1951-08-25', 74, 'M', 'Britânica', 'V', NULL),
('Ian Hill', '1951-01-04', 74, 'M', 'Britânica', 'V', NULL),
('Glenn Tipton', '1947-10-25', 78, 'M', 'Britânica', 'V', NULL),
('Richie Faulkner', '1980-01-01', 45, 'M', 'Britânica', 'V', NULL),
('Scott Travis', '1961-09-06', 64, 'M', 'Americana', 'V', NULL),
('K.K. Downing', '1951-10-27', 74, 'M', 'Britânica', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(19, 121, TRUE),
(19, 122, TRUE),
(19, 123, TRUE),
(19, 124, TRUE),
(19, 125, TRUE),
(19, 126, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(121, 1),
(122, 2),
(123, 4),
(124, 4),
(125, 3),
(126, 4);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(121, 1),
(122, 3),
(123, 5),
(124, 5),
(125, 4),
(126, 5);

-- #############################################
-- # INSERÇÕES METALLICA
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Metallica', 'Trash Metal', 1981, 11, 4, TRUE, 5, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('James Hetfield', '1963-08-03', 62, 'M', 'Americana', 'V', NULL),
('Lars Ulrich', '1963-12-26', 62, 'M', 'Dinamarquesa', 'V', NULL),
('Kirk Hammett', '1962-11-18', 63, 'M', 'Americana', 'V', NULL),
('Robert Trujillo', '1964-10-23', 61, 'M', 'Americana', 'V', NULL),
('Cliff Burton', '1962-02-10', 24, 'M', 'Americana', 'F', '1986-09-27'),
('Dave Mustaine', '1961-09-13', 64, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(20, 127, TRUE),
(20, 128, TRUE),
(20, 129, TRUE),
(20, 130, TRUE),
(20, 131, FALSE),
(20, 132, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(127, 1),
(128, 3),
(129, 4),
(130, 2),
(131, 2),
(132, 4);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(127, 1),
(127, 5),
(128, 4),
(129, 5),
(130, 3),
(131, 3),
(132, 5);

-- #############################################
-- # INSERÇÕES MEGADETH
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Megadeth', 'Thrash Metal', 1983, 16, 4, TRUE, 22, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('James LoMenzo', '1959-01-13', 66, 'M', 'Americana', 'V', NULL),
('Dirk Verbeuren', '1975-01-08', 50, 'M', 'Belga', 'V', NULL),
('David Ellefson', '1964-11-12', 61, 'M', 'Americana', 'V', NULL),
('Marty Friedman', '1962-12-08', 63, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(21, 132, TRUE),  -- Dave Mustaine
(21, 133, TRUE),
(21, 134, TRUE),
(21, 108, TRUE),  -- Kiko Loureiro
(21, 135, FALSE),
(21, 136, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(132, 1),
(133, 2),
(134, 3),
(108, 4),
(135, 2),
(136, 4);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(132, 1),
(132, 5),
(133, 3),
(134, 4),
(108, 5),
(135, 3),
(136, 5);

-- #############################################
-- # INSERÇÕES SLAYER
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Slayer', 'Thrash Metal', 1981, 12, 0, FALSE, 4, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Tom Araya', '1961-06-06', 64, 'M', 'Chilena/Americana', 'V', NULL),
('Kerry King', '1964-02-03', 61, 'M', 'Americana', 'V', NULL),
('Gary Holt', '1964-05-04', 61, 'M', 'Americana', 'V', NULL),
('Paul Bostaph', '1964-03-04', 61, 'M', 'Americana', 'V', NULL),
('Jeff Hanneman', '1964-01-31', 49, 'M', 'Americana', 'F', '2013-05-02'),
('Dave Lombardo', '1965-02-16', 60, 'M', 'Cubana/Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(22, 137, FALSE),
(22, 138, FALSE),
(22, 139, FALSE),
(22, 140, FALSE),
(22, 141, FALSE),
(22, 142, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(137, 2),
(138, 4),
(139, 4),
(140, 3),
(141, 4),
(142, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(137, 1),
(137, 3),
(138, 5),
(139, 5),
(140, 4),
(141, 5),
(142, 4);

-- #############################################
-- # INSERÇÕES LIMP BIZKIT
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Limp Bizkit', 'Nu Metal', 1994, 6, 5, TRUE, 1, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Fred Durst', '1970-08-20', 55, 'M', 'Americana', 'V', NULL),
('Wes Borland', '1975-02-07', 50, 'M', 'Americana', 'V', NULL),
('Sam Rivers', '1977-09-02', 48, 'M', 'Americana', 'V', NULL),
('John Otto', '1977-03-22', 48, 'M', 'Americana', 'V', NULL),
('DJ Lethal', '1968-12-18', 57, 'M', 'Letã/Americana', 'V', NULL),
('Mike Smith', '1975-01-01', 50, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(23, 143, TRUE),
(23, 144, TRUE),
(23, 145, TRUE),
(23, 146, TRUE),
(23, 147, TRUE),
(23, 148, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(143, 1),
(144, 4),
(145, 2),
(146, 3),
(147, 7); -- 7 é DJ/Sampler

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(143, 1),
(144, 5),
(145, 3),
(146, 4),
(147, 6); -- 6 é DJ/Sampler

-- #############################################
-- # INSERÇÕES POPPY
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Poppy', 'Pop Alternativo / Nu Metal', 2014, 5, 1, TRUE, 0, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Moriah Pereira (Poppy)', '1995-01-01', 30, 'F', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(24, 149, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(149, 1); -- Guitarra Rítmica (Representa Vocal/Músico principal)

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(149, 1);

-- #############################################
-- # INSERÇÕES MOTÖRHEAD
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Motörhead', 'Heavy Metal', 1975, 22, 0, FALSE, 10, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Lemmy Kilmister', '1945-12-24', 70, 'M', 'Britânica', 'F', '2015-12-28'),
('Phil Campbell', '1961-05-07', 64, 'M', 'Britânica', 'V', NULL),
('Mikkey Dee', '1963-10-31', 62, 'M', 'Sueca', 'V', NULL),
('Eddie Clarke', '1950-10-05', 67, 'M', 'Britânica', 'F', '2018-01-10');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(25, 150, FALSE),
(25, 151, FALSE),
(25, 152, FALSE),
(25, 153, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(150, 2),
(151, 4),
(152, 3),
(153, 4);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(150, 1),
(150, 3),
(151, 5),
(152, 4),
(153, 5);

-- #############################################
-- # INSERÇÕES OZZY OSBOURNE (BANDA)
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Ozzy Osbourne', 'Heavy Metal', 1980, 13, 1, TRUE, 20, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Randy Rhoads', '1956-12-06', 25, 'M', 'Americana', 'F', '1982-03-19'),
('Zakk Wylde', '1967-01-14', 58, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(26, 92, TRUE),  -- Ozzy Osbourne já existe (ID 92 do Black Sabbath)
(26, 154, FALSE),
(26, 155, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(92, 1),
(154, 4),
(155, 4);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(92, 1),
(154, 5),
(155, 5);

-- #############################################
-- # INSERÇÕES RAGE AGAINST THE MACHINE
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Rage Against the Machine', 'Rap Metal', 1991, 4, 4, TRUE, 0, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Zack de la Rocha', '1970-01-12', 55, 'M', 'Americana', 'V', NULL),
('Tom Morello', '1964-05-30', 61, 'M', 'Americana', 'V', NULL),
('Tim Commerford', '1968-02-26', 57, 'M', 'Americana', 'V', NULL),
('Brad Wilk', '1968-09-05', 57, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(27, 156, TRUE),
(27, 157, TRUE),
(27, 158, TRUE),
(27, 159, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(156, 1),
(157, 4),
(158, 2),
(159, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(156, 1),
(157, 5),
(158, 3),
(159, 4);

-- #############################################
-- # INSERÇÕES RED HOT CHILI PEPPERS
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Red Hot Chili Peppers', 'Rock Alternativo', 1983, 13, 4, TRUE, 12, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Anthony Kiedis', '1962-11-01', 63, 'M', 'Americana', 'V', NULL),
('Flea (Michael Balzary)', '1962-10-16', 63, 'M', 'Australiana/Americana', 'V', NULL),
('Chad Smith', '1961-10-25', 64, 'M', 'Americana', 'V', NULL),
('John Frusciante', '1970-03-05', 55, 'M', 'Americana', 'V', NULL),
('Hillel Slovak', '1962-04-13', 26, 'M', 'Israelense/Americana', 'F', '1988-06-25');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(28, 160, TRUE),
(28, 161, TRUE),
(28, 162, TRUE),
(28, 163, TRUE),
(28, 164, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(160, 1),
(161, 2),
(162, 3),
(163, 4),
(164, 4);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(160, 1),
(161, 3),
(162, 4),
(163, 5),
(164, 5);

-- #############################################
-- # INSERÇÕES THE OFFSPRING
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('The Offspring', 'Punk Rock', 1984, 10, 3, TRUE, 4, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Dexter Holland', '1966-12-29', 59, 'M', 'Americana', 'V', NULL),
('Noodles', '1963-08-21', 62, 'M', 'Americana', 'V', NULL),
('Pete Parada', '1973-07-09', 52, 'M', 'Americana', 'V', NULL),
('Greg K.', '1964-01-20', 61, 'M', 'Americana', 'V', NULL),
('Ron Welty', '1971-02-10', 54, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(29, 165, TRUE),
(29, 166, TRUE),
(29, 167, FALSE),
(29, 168, FALSE),
(29, 169, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(165, 1),
(165, 4),
(166, 4),
(167, 3),
(168, 2),
(169, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(165, 1),
(165, 5),
(166, 5),
(167, 4),
(168, 3),
(169, 4);

-- #############################################
-- # INSERÇÕES R.E.M.
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('R.E.M.', 'Rock Alternativo', 1980, 15, 0, FALSE, 1, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Michael Stipe', '1960-01-04', 65, 'M', 'Americana', 'V', NULL),
('Mike Mills', '1958-12-17', 67, 'M', 'Americana', 'V', NULL),
('Peter Buck', '1956-12-06', 69, 'M', 'Americana', 'V', NULL),
('Bill Berry', '1958-07-31', 67, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(30, 170, FALSE),
(30, 171, FALSE),
(30, 172, FALSE),
(30, 173, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(170, 1),
(171, 2),
(172, 4),
(173, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(170, 1),
(171, 3),
(172, 5),
(173, 4);

-- #############################################
-- # INSERÇÕES EUROPE
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Europe', 'Hard Rock', 1979, 11, 5, TRUE, 4, 'Suécia');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Joey Tempest', '1963-08-19', 62, 'M', 'Sueca', 'V', NULL),
('John Norum', '1964-02-23', 61, 'M', 'Sueca', 'V', NULL),
('John Levén', '1963-04-02', 62, 'M', 'Sueca', 'V', NULL),
('Mic Michaeli', '1962-11-19', 63, 'M', 'Sueca', 'V', NULL),
('Ian Haugland', '1961-08-13', 64, 'M', 'Sueca', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(31, 174, TRUE),
(31, 175, TRUE),
(31, 176, TRUE),
(31, 177, TRUE),
(31, 178, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(174, 1),
(175, 4),
(176, 2),
(177, 6),
(178, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(174, 1),
(175, 5),
(176, 3),
(177, 2),
(178, 4);

-- #############################################
-- # INSERÇÕES RAMMSTEIN
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Rammstein', 'Metal Industrial', 1994, 8, 6, TRUE, 0, 'Alemanha');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Till Lindemann', '1963-01-04', 62, 'M', 'Alemã', 'V', NULL),
('Richard Kruspe', '1967-06-24', 58, 'M', 'Alemã', 'V', NULL),
('Paul Landers', '1964-12-09', 61, 'M', 'Alemã', 'V', NULL),
('Oliver Riedel', '1971-04-11', 54, 'M', 'Alemã', 'V', NULL),
('Doom (Christoph Schneider)', '1966-05-11', 59, 'M', 'Alemã', 'V', NULL),
('Flake (Christian Lorenz)', '1966-11-16', 59, 'M', 'Alemã', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(32, 179, TRUE),
(32, 180, TRUE),
(32, 181, TRUE),
(32, 182, TRUE),
(32, 183, TRUE),
(32, 184, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(179, 1),
(180, 4),
(181, 1),
(182, 2),
(183, 3),
(184, 6);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(179, 1),
(180, 5),
(181, 5),
(182, 3),
(183, 4),
(184, 2);

-- #############################################
-- # INSERÇÕES ACCEPT
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Accept', 'Heavy Metal', 1976, 17, 5, TRUE, 12, 'Alemanha');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Mark Tornillo', '1954-05-29', 71, 'M', 'Americana', 'V', NULL),
('Wolf Hoffmann', '1959-12-10', 66, 'M', 'Alemã', 'V', NULL),
('Uwe Lulis', '1965-12-28', 60, 'M', 'Alemã', 'V', NULL),
('Christopher Williams', '1973-11-26', 52, 'M', 'Britânica', 'V', NULL),
('Martin Motnik', '1972-03-10', 53, 'M', 'Alemã', 'V', NULL),
('Udo Dirkschneider', '1952-04-06', 73, 'M', 'Alemã', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(33, 185, TRUE),
(33, 186, TRUE),
(33, 187, TRUE),
(33, 188, TRUE),
(33, 189, TRUE),
(33, 190, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(185, 1),
(186, 4),
(187, 4),
(188, 3),
(189, 2);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(185, 1),
(186, 5),
(187, 5),
(188, 4),
(189, 3),
(190, 1);

-- #############################################
-- # INSERÇÕES SCORPIONS
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Scorpions', 'Hard Rock', 1965, 19, 5, TRUE, 13, 'Alemanha');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Klaus Meine', '1948-05-25', 77, 'M', 'Alemã', 'V', NULL),
('Rudolf Schenker', '1948-08-31', 77, 'M', 'Alemã', 'V', NULL),
('Matthias Jabs', '1955-10-25', 70, 'M', 'Alemã', 'V', NULL),
('Paweł Mąciwoda', '1967-01-20', 58, 'M', 'Polonesa', 'V', NULL),
('Mikkey Dee', '1963-10-31', 62, 'M', 'Sueca', 'V', NULL),
('Herman Rarebell', '1949-11-08', 76, 'M', 'Alemã', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(34, 191, TRUE),
(34, 192, TRUE),
(34, 193, TRUE),
(34, 194, TRUE),
(34, 152, TRUE),  -- Mikkey Dee já existe (ID 152 do Motörhead)
(34, 196, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(191, 1),
(192, 1),
(193, 4),
(194, 2),
(152, 3),
(196, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(191, 1),
(192, 5),
(193, 5),
(194, 3),
(152, 4),
(196, 4);

-- #############################################
-- # INSERÇÕES SEX PISTOLS
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Sex Pistols', 'Punk Rock', 1975, 1, 0, FALSE, 3, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Johnny Rotten (Lydon)', '1956-01-31', 69, 'M', 'Britânica', 'V', NULL),
('Steve Jones', '1955-09-03', 70, 'M', 'Britânica', 'V', NULL),
('Paul Cook', '1956-07-20', 69, 'M', 'Britânica', 'V', NULL),
('Glen Matlock', '1956-08-27', 69, 'M', 'Britânica', 'V', NULL),
('Sid Vicious', '1957-05-10', 21, 'M', 'Britânica', 'F', '1979-02-02');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(35, 197, FALSE),
(35, 198, FALSE),
(35, 199, FALSE),
(35, 200, FALSE),
(35, 201, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(197, 1),
(198, 4),
(199, 3),
(200, 2),
(201, 2);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(197, 1),
(198, 5),
(199, 4),
(200, 3),
(201, 3);

-- #############################################
-- # INSERÇÕES SHAMAN
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Shaman', 'Power Metal', 2000, 5, 4, TRUE, 6, 'Brasil');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Alírio Netto', '1981-06-03', 44, 'M', 'Brasileira', 'V', NULL),
('Hugo Mariutti', '1978-01-01', 47, 'M', 'Brasileira', 'V', NULL),
('Luis Mariutti', '1968-03-22', 57, 'M', 'Brasileira', 'V', NULL),
('Ricardo Confessori', '1969-05-09', 56, 'M', 'Brasileira', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(36, 202, TRUE),
(36, 203, TRUE),
(36, 110, TRUE),  -- Luis Mariutti já existe (ID 110 do Angra)
(36, 109, TRUE);  -- Ricardo Confessori já existe (ID 109 do Angra)

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(202, 1),
(203, 4),
(110, 2),
(109, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(202, 1),
(203, 5),
(110, 3),
(109, 4);

-- #############################################
-- # INSERÇÕES ALTER BRIDGE
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Alter Bridge', 'Hard Rock', 2004, 7, 4, TRUE, 0, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Myles Kennedy', '1969-11-27', 56, 'M', 'Americana', 'V', NULL),
('Mark Tremonti', '1974-04-18', 51, 'M', 'Americana', 'V', NULL),
('Brian Marshall', '1969-04-24', 56, 'M', 'Americana', 'V', NULL),
('Scott Phillips', '1973-02-22', 52, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(37, 204, TRUE),
(37, 205, TRUE),
(37, 206, TRUE),
(37, 207, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(204, 1),
(204, 4),
(205, 4),
(206, 2),
(207, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(204, 1),
(204, 5),
(205, 5),
(206, 3),
(207, 4);

-- #############################################
-- # INSERÇÕES CREED
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Creed', 'Rock Alternativo', 1994, 4, 4, TRUE, 1, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Scott Stapp', '1973-08-08', 52, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(38, 208, TRUE),
(38, 205, TRUE),  -- Mark Tremonti (ID 205 do Alter Bridge)
(38, 206, TRUE),  -- Brian Marshall (ID 206 do Alter Bridge)
(38, 207, TRUE);  -- Scott Phillips (ID 207 do Alter Bridge)

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(208, 1);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(208, 1);

-- #############################################
-- # INSERÇÕES CREEDENCE CLEARWATER REVIVAL
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Creedence Clearwater Revival', 'Southern Rock / Roots Rock', 1967, 7, 0, FALSE, 0, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('John Fogerty', '1945-05-28', 80, 'M', 'Americana', 'V', NULL),
('Tom Fogerty', '1941-11-09', 48, 'M', 'Americana', 'F', '1990-09-06'),
('Stu Cook', '1945-04-25', 80, 'M', 'Americana', 'V', NULL),
('Doug Clifford', '1945-04-24', 80, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(39, 209, FALSE),
(39, 210, FALSE),
(39, 211, FALSE),
(39, 212, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(209, 1),
(209, 4),
(210, 4),
(211, 2),
(212, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(209, 1),
(209, 5),
(210, 5),
(211, 3),
(212, 4);

-- #############################################
-- # INSERÇÕES SUM 41
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Sum 41', 'Punk Rock', 1996, 8, 4, FALSE, 3, 'Canadá');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Deryck Whibley', '1980-03-21', 45, 'M', 'Canadense', 'V', NULL),
('Dave Baksh', '1980-06-26', 45, 'M', 'Canadense', 'V', NULL),
('Jason McCaslin (Cone)', '1980-09-03', 45, 'M', 'Canadense', 'V', NULL),
('Frank Zummo', '1979-07-02', 46, 'M', 'Americana', 'V', NULL),
('Steve Jocz', '1981-07-23', 44, 'M', 'Canadense', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(40, 213, TRUE),
(40, 214, TRUE),
(40, 215, TRUE),
(40, 216, TRUE),
(40, 217, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(213, 1),
(213, 4),
(214, 4),
(215, 2),
(216, 3),
(217, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(213, 1),
(213, 5),
(214, 5),
(215, 3),
(216, 4),
(217, 4);

-- #############################################
-- # INSERÇÕES BLINK-182
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Blink-182', 'Punk Rock', 1992, 9, 3, TRUE, 1, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Tom DeLonge', '1975-12-13', 50, 'M', 'Americana', 'V', NULL),
('Mark Hoppus', '1972-03-15', 53, 'M', 'Americana', 'V', NULL),
('Travis Barker', '1975-11-14', 50, 'M', 'Americana', 'V', NULL),
('Scott Raynor', '1978-05-23', 47, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(41, 218, TRUE),
(41, 219, TRUE),
(41, 220, TRUE),
(41, 221, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(218, 1),
(218, 4),
(219, 2),
(220, 3),
(221, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(218, 1),
(218, 5),
(219, 1),
(219, 3),
(220, 4),
(221, 4);

-- #############################################
-- # INSERÇÕES STONE TEMPLE PILOTS
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Stone Temple Pilots', 'Grunge', 1989, 8, 4, TRUE, 2, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Jeff Gutt', '1976-05-02', 49, 'M', 'Americana', 'V', NULL),
('Dean DeLeo', '1961-08-20', 64, 'M', 'Americana', 'V', NULL),
('Robert DeLeo', '1966-02-23', 59, 'M', 'Americana', 'V', NULL),
('Eric Kretz', '1966-06-07', 59, 'M', 'Americana', 'V', NULL),
('Scott Weiland', '1967-10-27', 48, 'M', 'Americana', 'F', '2015-12-03');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(42, 222, TRUE),
(42, 223, TRUE),
(42, 224, TRUE),
(42, 225, TRUE),
(42, 226, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(222, 1),
(223, 4),
(224, 2),
(225, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(222, 1),
(223, 5),
(224, 3),
(225, 4);

-- #############################################
-- # INSERÇÕES SYSTEM OF A DOWN
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('System of a Down', 'Nu Metal', 1994, 5, 4, TRUE, 0, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Serj Tankian', '1967-08-21', 58, 'M', 'Armênia/Americana', 'V', NULL),
('Daron Malakian', '1975-07-18', 50, 'M', 'Armênia/Americana', 'V', NULL),
('Shavo Odadjian', '1974-04-22', 51, 'M', 'Armênia/Americana', 'V', NULL),
('John Dolmayan', '1973-07-15', 52, 'M', 'Armênia/Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(43, 227, TRUE),
(43, 228, TRUE),
(43, 229, TRUE),
(43, 230, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(227, 1),
(228, 4),
(229, 2),
(230, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(227, 1),
(228, 5),
(229, 3),
(230, 4);

-- #############################################
-- # INSERÇÕES TESTAMENT
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Testament', 'Thrash Metal', 1983, 13, 5, TRUE, 16, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Chuck Billy', '1962-06-23', 63, 'M', 'Americana', 'V', NULL),
('Eric Peterson', '1964-05-14', 61, 'M', 'Americana', 'V', NULL),
('Alex Skolnick', '1968-09-29', 57, 'M', 'Americana', 'V', NULL),
('Steve Di Giorgio', '1967-10-07', 58, 'M', 'Americana', 'V', NULL),
('Chris Dovas', '1995-03-24', 30, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(44, 231, TRUE),
(44, 232, TRUE),
(44, 233, TRUE),
(44, 234, TRUE),
(44, 235, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(231, 1),
(232, 1),
(233, 4),
(234, 2),
(235, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(231, 1),
(232, 5),
(233, 5),
(234, 3),
(235, 4);

-- #############################################
-- # INSERÇÕES ALICE COOPER (WILD BOYS)
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Alice Cooper', 'Hard Rock', 1964, 29, 1, TRUE, 20, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Alice Cooper (Vincent Furnier)', '1948-02-04', 77, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(45, 236, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(236, 1);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(236, 1);

-- #############################################
-- # INSERÇÕES SOUNDGARDEN
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Soundgarden', 'Grunge', 1984, 6, 3, FALSE, 2, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Chris Cornell', '1964-07-20', 52, 'M', 'Americana', 'F', '2017-05-18'),
('Kim Thayil', '1960-09-04', 65, 'M', 'Americana', 'V', NULL),
('Ben Shepherd', '1968-09-20', 57, 'M', 'Americana', 'V', NULL),
('Matt Cameron', '1962-11-28', 63, 'M', 'Americana', 'V', NULL),
('Hiro Yamamoto', '1961-04-13', 64, 'M', 'Japonesa/Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(46, 237, FALSE),
(46, 238, FALSE),
(46, 239, FALSE),
(46, 240, FALSE),
(46, 241, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(237, 1),
(237, 4),
(238, 4),
(239, 2),
(240, 3),
(241, 2);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(237, 1),
(237, 5),
(238, 5),
(239, 3),
(240, 4);

-- #############################################
-- # INSERÇÕES AUDIOSLAVE
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Audioslave', 'Rock Alternativo', 2001, 3, 0, FALSE, 0, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Chris Cornell', '1964-07-20', 52, 'M', 'Americana', 'F', '2017-05-18'),
('Tom Morello', '1964-05-30', 61, 'M', 'Americana', 'V', NULL),
('Tim Commerford', '1968-02-26', 57, 'M', 'Americana', 'V', NULL),
('Brad Wilk', '1968-09-05', 57, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(47, 237, FALSE), -- Chris Cornell já existe (ID 237 do Soundgarden)
(47, 157, FALSE), -- Tom Morello já existe (ID 157 do RATM)
(47, 158, FALSE), -- Tim Commerford já existe (ID 158 do RATM)
(47, 159, FALSE); -- Brad Wilk já existe (ID 159 do RATM)

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(237, 1),
(157, 4),
(158, 2),
(159, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(237, 1),
(157, 5),
(158, 3),
(159, 4);

-- #############################################
-- # INSERÇÕES SLIPKNOT
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Slipknot', 'Nu Metal', 1995, 7, 8, TRUE, 10, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Corey Taylor', '1973-12-08', 52, 'M', 'Americana', 'V', NULL),
('Sid Wilson', '1977-01-20', 48, 'M', 'Americana', 'V', NULL),
('Jim Root', '1971-10-02', 54, 'M', 'Americana', 'V', NULL),
('Mick Thomson', '1973-11-03', 52, 'M', 'Americana', 'V', NULL),
('Alessandro Venturella', '1984-03-23', 41, 'M', 'Britânica', 'V', NULL),
('Michael Pfaff', '1980-05-17', 45, 'M', 'Americana', 'V', NULL),
('Shawn Crahan (Clown)', '1969-09-24', 56, 'M', 'Americana', 'V', NULL),
('Jay Weinberg', '1990-09-08', 35, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(48, 242, TRUE),
(48, 243, TRUE),
(48, 244, TRUE),
(48, 245, TRUE),
(48, 246, TRUE),
(48, 247, TRUE),
(48, 248, TRUE),
(48, 249, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(242, 1),
(243, 7), -- DJ/Sampler
(244, 4),
(245, 4),
(246, 2),
(247, 5), -- Percussão
(248, 5), -- Percussão
(249, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(242, 1),
(243, 6), -- DJ/Sampler
(244, 5),
(245, 5),
(246, 3),
(247, 2),
(248, 2),
(249, 4);

-- #############################################
-- # INSERÇÕES PARAMORE
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Paramore', 'Rock Alternativo', 2004, 6, 3, TRUE, 5, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Hayley Williams', '1988-12-27', 37, 'F', 'Americana', 'V', NULL),
('Taylor York', '1989-12-17', 36, 'M', 'Americana', 'V', NULL),
('Zac Farro', '1990-06-04', 35, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(49, 250, TRUE),
(49, 251, TRUE),
(49, 252, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(250, 1),
(251, 4),
(252, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(250, 1),
(251, 5),
(252, 4);

-- #############################################
-- # INSERÇÕES THE ROLLING STONES
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('The Rolling Stones', 'Rock Clássico', 1962, 30, 3, TRUE, 6, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Mick Jagger', '1943-07-26', 82, 'M', 'Britânica', 'V', NULL),
('Keith Richards', '1943-12-18', 82, 'M', 'Britânica', 'V', NULL),
('Ronnie Wood', '1947-06-01', 78, 'M', 'Britânica', 'V', NULL),
('Charlie Watts', '1941-06-02', 80, 'M', 'Britânica', 'F', '2021-08-24'),
('Bill Wyman', '1936-10-24', 89, 'M', 'Britânica', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(50, 253, TRUE),
(50, 254, TRUE),
(50, 255, TRUE),
(50, 256, FALSE),
(50, 257, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(253, 1),
(254, 4),
(255, 4),
(256, 3),
(257, 2);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(253, 1),
(254, 5),
(255, 5),
(256, 4),
(257, 3);

-- #############################################
-- # INSERÇÕES IRON MAIDEN
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Iron Maiden', 'Heavy Metal', 1975, 17, 6, TRUE, 22, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Bruce Dickinson', '1958-08-07', 67, 'M', 'Britânica', 'V', NULL),
('Steve Harris', '1956-03-12', 69, 'M', 'Britânica', 'V', NULL),
('Dave Murray', '1956-12-23', 69, 'M', 'Britânica', 'V', NULL),
('Adrian Smith', '1957-02-27', 68, 'M', 'Britânica', 'V', NULL),
('Janick Gers', '1956-01-27', 69, 'M', 'Britânica', 'V', NULL),
('Nicko McBrain', '1952-06-05', 73, 'M', 'Britânica', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(51, 258, TRUE),
(51, 259, TRUE),
(51, 260, TRUE),
(51, 261, TRUE),
(51, 262, TRUE),
(51, 263, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(258, 1),
(259, 2),
(260, 4),
(261, 4),
(262, 4),
(263, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(258, 1),
(259, 3),
(260, 5),
(261, 5),
(262, 5),
(263, 4);



-- #############################################
-- # INSERÇÕES DEFTONES
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Deftones', 'Metal Alternativo', 1988, 9, 5, TRUE, 2, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Chino Moreno', '1973-06-20', 52, 'M', 'Americana', 'V', NULL),
('Stephen Carpenter', '1970-07-25', 55, 'M', 'Americana', 'V', NULL),
('Sergio Vega', '1970-05-27', 55, 'M', 'Americana', 'V', NULL),
('Abe Cunningham', '1973-07-27', 52, 'M', 'Americana', 'V', NULL),
('Frank Delgado', '1970-11-29', 55, 'M', 'Americana', 'V', NULL),
('Chi Cheng', '1970-07-15', 43, 'M', 'Americana', 'F', '2013-04-13');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(52, 264, TRUE),
(52, 265, TRUE),
(52, 266, FALSE),
(52, 267, TRUE),
(52, 268, TRUE),
(52, 269, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(264, 1),
(265, 4),
(266, 2),
(267, 3),
(268, 7); -- DJ/Sampler

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(264, 1),
(265, 5),
(266, 3),
(267, 4),
(268, 6); -- DJ/Sampler

-- #############################################
-- # INSERÇÕES GODSMACK
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Godsmack', 'Metal Alternativo', 1995, 8, 4, TRUE, 1, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Sully Erna', '1968-02-07', 57, 'M', 'Americana', 'V', NULL),
('Tony Rombola', '1964-11-30', 61, 'M', 'Americana', 'V', NULL),
('Robbie Merrill', '1964-12-13', 61, 'M', 'Americana', 'V', NULL),
('Shannon Larkin', '1967-04-24', 58, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(53, 270, TRUE),
(53, 271, TRUE),
(53, 272, TRUE),
(53, 273, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(270, 1),
(271, 4),
(272, 2),
(273, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(270, 1),
(270, 5),
(271, 5),
(272, 3),
(273, 4);

-- #############################################
-- # INSERÇÕES DEEP PURPLE
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Deep Purple', 'Rock Progressivo', 1968, 22, 5, TRUE, 14, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Ian Gillan', '1945-08-19', 80, 'M', 'Britânica', 'V', NULL),
('Roger Glover', '1945-11-30', 80, 'M', 'Britânica', 'V', NULL),
('Ian Paice', '1948-06-29', 77, 'M', 'Britânica', 'V', NULL),
('Simon McBride', '1979-04-09', 46, 'M', 'Britânica', 'V', NULL),
('Don Airey', '1948-06-21', 77, 'M', 'Britânica', 'V', NULL),
('Ritchie Blackmore', '1945-04-14', 80, 'M', 'Britânica', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(54, 274, TRUE),
(54, 275, TRUE),
(54, 276, TRUE),
(54, 277, TRUE),
(54, 278, TRUE),
(54, 279, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(274, 1),
(275, 2),
(276, 3),
(277, 4),
(278, 6),
(279, 4);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(274, 1),
(275, 3),
(276, 4),
(277, 5),
(278, 2),
(279, 5);

-- #############################################
-- # INSERÇÕES THE CLASH
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('The Clash', 'Punk Rock', 1976, 6, 0, FALSE, 4, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Joe Strummer', '1952-08-21', 50, 'M', 'Britânica', 'F', '2002-12-22'),
('Mick Jones', '1955-06-26', 70, 'M', 'Britânica', 'V', NULL),
('Paul Simonon', '1955-12-15', 70, 'M', 'Britânica', 'V', NULL),
('Topper Headon', '1955-05-30', 70, 'M', 'Britânica', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(55, 280, FALSE),
(55, 281, FALSE),
(55, 282, FALSE),
(55, 283, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(280, 1),
(281, 4),
(282, 2),
(283, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(280, 1),
(281, 5),
(282, 3),
(283, 4);

-- #############################################
-- # INSERÇÕES PANTERA
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Pantera', 'Groove Metal', 1981, 9, 4, TRUE, 3, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Phil Anselmo', '1968-06-30', 57, 'M', 'Americana', 'V', NULL),
('Dimebag Darrell', '1966-08-20', 38, 'M', 'Americana', 'F', '2004-12-08'),
('Rex Brown', '1963-07-27', 62, 'M', 'Americana', 'V', NULL),
('Vinnie Paul', '1964-03-11', 54, 'M', 'Americana', 'F', '2018-06-22');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(56, 284, TRUE),
(56, 285, FALSE),
(56, 286, TRUE),
(56, 287, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(284, 1),
(285, 4),
(286, 2),
(287, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(284, 1),
(285, 5),
(286, 3),
(287, 4);

-- #############################################
-- # INSERÇÕES LYNYRD SKYNYRD
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Lynyrd Skynyrd', 'Southern Rock', 1964, 14, 6, TRUE, 20, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Johnny Van Zant', '1959-02-27', 66, 'M', 'Americana', 'V', NULL),
('Rickey Medlocke', '1950-12-17', 75, 'M', 'Americana', 'V', NULL),
('Gary Rossington', '1951-12-04', 71, 'M', 'Americana', 'F', '2023-03-05'),
('Michael Cartellone', '1961-06-07', 64, 'M', 'Americana', 'V', NULL),
('Artimus Pyle', '1948-07-15', 77, 'M', 'Americana', 'V', NULL),
('Ronnie Van Zant', '1948-01-15', 29, 'M', 'Americana', 'F', '1977-10-20');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(57, 288, TRUE),
(57, 289, TRUE),
(57, 290, FALSE),
(57, 291, TRUE),
(57, 292, FALSE),
(57, 293, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(288, 1),
(289, 4),
(290, 4),
(291, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(288, 1),
(289, 5),
(290, 5),
(291, 4);

-- #############################################
-- # INSERÇÕES MY CHEMICAL ROMANCE
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('My Chemical Romance', 'Rock Alternativo', 2001, 4, 4, TRUE, 2, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Gerard Way', '1977-04-09', 48, 'M', 'Americana', 'V', NULL),
('Ray Toro', '1977-07-15', 48, 'M', 'Americana', 'V', NULL),
('Frank Iero', '1981-10-31', 44, 'M', 'Americana', 'V', NULL),
('Mikey Way', '1980-09-10', 45, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(58, 294, TRUE),
(58, 295, TRUE),
(58, 296, TRUE),
(58, 297, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(294, 1),
(295, 4),
(296, 1),
(297, 2);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(294, 1),
(295, 5),
(296, 5),
(297, 3);

-- #############################################
-- # INSERÇÕES DIO
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Dio', 'Heavy Metal', 1982, 10, 0, FALSE, 15, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Vivian Campbell', '1962-08-25', 63, 'M', 'Britânica', 'V', NULL),
('Vinny Appice', '1957-09-13', 68, 'M', 'Americana', 'V', NULL),
('Jimmy Bain', '1947-12-19', 68, 'M', 'Britânica', 'F', '2016-01-23');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(59, 96, FALSE), -- Ronnie James Dio já existe (ID 96 do Black Sabbath)
(59, 298, FALSE),
(59, 299, FALSE),
(59, 300, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(96, 1),
(298, 4),
(299, 3),
(300, 2);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(96, 1),
(298, 5),
(299, 4),
(300, 3);

-- #############################################
-- # INSERÇÕES RAINBOW
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Rainbow', 'Heavy Metal', 1975, 9, 1, TRUE, 17, 'Reino Unido');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(60, 279, TRUE), -- Ritchie Blackmore já existe (ID 279 do Deep Purple)
(60, 96, FALSE); -- Ronnie James Dio já existe (ID 96 do Black Sabbath)

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(279, 4),
(96, 1);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(279, 5),
(96, 1);

-- #############################################
-- # INSERÇÕES BAD OMENS
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Bad Omens', 'Metal Alternativo', 2015, 3, 4, TRUE, 1, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Noah Sebastian', '1995-10-31', 30, 'M', 'Americana', 'V', NULL),
('Joakim Karlsson', '1993-01-13', 32, 'M', 'Sueca', 'V', NULL),
('Nicholas Ruffilo', '1990-09-07', 35, 'M', 'Americana', 'V', NULL),
('Nick Folio', '1993-06-25', 32, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(61, 301, TRUE),
(61, 302, TRUE),
(61, 303, TRUE),
(61, 304, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(301, 1),
(302, 4),
(303, 2),
(304, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(301, 1),
(302, 5),
(303, 3),
(304, 4);

-- #############################################
-- # INSERÇÕES PINK FLOYD
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Pink Floyd', 'Rock Psicodélico', 1965, 15, 0, FALSE, 3, 'Reino Unido');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('David Gilmour', '1946-03-06', 79, 'M', 'Britânica', 'V', NULL),
('Roger Waters', '1943-09-06', 82, 'M', 'Britânica', 'V', NULL),
('Nick Mason', '1944-01-27', 81, 'M', 'Britânica', 'V', NULL),
('Richard Wright', '1943-07-28', 65, 'M', 'Britânica', 'F', '2008-09-15'),
('Syd Barrett', '1946-01-06', 60, 'M', 'Britânica', 'F', '2006-07-07');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(62, 305, FALSE),
(62, 306, FALSE),
(62, 307, FALSE),
(62, 308, FALSE),
(62, 309, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(305, 4),
(306, 2),
(307, 3),
(308, 6),
(309, 1);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(305, 5),
(306, 3),
(307, 4),
(308, 2),
(309, 1);

-- #############################################
-- # INSERÇÕES EVANESCENCE
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Evanescence', 'Rock Alternativo', 1995, 5, 5, TRUE, 12, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Amy Lee', '1981-12-13', 44, 'F', 'Americana', 'V', NULL),
('Troy McLawhorn', '1968-11-04', 57, 'M', 'Americana', 'V', NULL),
('Jen Majura', '1983-06-04', 42, 'F', 'Alemã', 'V', NULL),
('Tim McCord', '1979-06-28', 46, 'M', 'Americana', 'V', NULL),
('Will Hunt', '1971-09-05', 54, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(63, 310, TRUE),
(63, 311, TRUE),
(63, 312, TRUE),
(63, 313, TRUE),
(63, 314, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(310, 6),
(311, 4),
(312, 4),
(313, 2),
(314, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(310, 1),
(311, 5),
(312, 5),
(313, 3),
(314, 4);

-- #############################################
-- # INSERÇÕES RUSH
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Rush', 'Rock Progressivo', 1968, 19, 0, FALSE, 2, 'Canadá');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Geddy Lee', '1953-07-29', 72, 'M', 'Canadense', 'V', NULL),
('Alex Lifeson', '1953-08-27', 72, 'M', 'Canadense', 'V', NULL),
('Neil Peart', '1952-09-12', 67, 'M', 'Canadense', 'F', '2020-01-07');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(64, 315, FALSE),
(64, 316, FALSE),
(64, 317, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(315, 2),
(316, 4),
(317, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(315, 1),
(315, 3),
(316, 5),
(317, 4);

-- #############################################
-- # INSERÇÕES EAGLES
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Eagles', 'Soft Rock', 1971, 7, 5, TRUE, 7, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Don Henley', '1947-07-22', 78, 'M', 'Americana', 'V', NULL),
('Joe Walsh', '1947-11-20', 78, 'M', 'Americana', 'V', NULL),
('Timothy B. Schmit', '1947-10-30', 78, 'M', 'Americana', 'V', NULL),
('Glenn Frey', '1948-11-06', 67, 'M', 'Americana', 'F', '2016-01-18');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(65, 318, TRUE),
(65, 319, TRUE),
(65, 320, TRUE),
(65, 321, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(318, 3),
(319, 4),
(320, 2),
(321, 1);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(318, 1),
(318, 4),
(319, 5),
(320, 3),
(321, 1);

-- #############################################
-- # INSERÇÕES DREAM THEATER
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Dream Theater', 'Metal Progressivo', 1985, 15, 5, TRUE, 5, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('James LaBrie', '1963-05-22', 62, 'M', 'Canadense', 'V', NULL),
('John Petrucci', '1967-07-12', 58, 'M', 'Americana', 'V', NULL),
('John Myung', '1967-01-24', 58, 'M', 'Americana', 'V', NULL),
('Jordan Rudess', '1956-11-14', 69, 'M', 'Americana', 'V', NULL),
('Mike Portnoy', '1967-04-20', 58, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(66, 322, TRUE),
(66, 323, TRUE),
(66, 324, TRUE),
(66, 325, TRUE),
(66, 326, TRUE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(322, 1),
(323, 4),
(324, 2),
(325, 6),
(326, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(322, 1),
(323, 5),
(324, 3),
(325, 2),
(326, 4);

-- #############################################
-- # INSERÇÕES THE DOORS
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('The Doors', 'Blues Rock', 1965, 9, 0, FALSE, 0, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Jim Morrison', '1943-12-08', 27, 'M', 'Americana', 'F', '1971-07-03'),
('Ray Manzarek', '1939-02-12', 74, 'M', 'Americana', 'F', '2013-05-20'),
('Robby Krieger', '1946-01-08', 79, 'M', 'Americana', 'V', NULL),
('John Densmore', '1944-12-01', 81, 'M', 'Americana', 'V', NULL);

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(67, 327, FALSE),
(67, 328, FALSE),
(67, 329, FALSE),
(67, 330, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(327, 1),
(328, 6),
(329, 4),
(330, 3);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(327, 1),
(328, 2),
(329, 5),
(330, 4);

-- #############################################
-- # INSERÇÕES ALICE IN CHAINS
-- #############################################

INSERT INTO BANDAS (NOME, GENERO, ANO, QNTD_ALBUNS, QNTD_MEMBROS, ATIVIDADE, QNTD_EX_MEMBROS, PAIS) VALUES
('Alice in Chains', 'Grunge / Alternative Metal', 1987, 6, 4, TRUE, 2, 'Estados Unidos');

INSERT INTO MEMBROS (NOME, DATA_NASCIMENTO, IDADE, SEXO, NACIONALIDADE, ESTADO_VITAL, DATA_FALECIMENTO) VALUES
('Jerry Cantrell', '1966-03-18', 59, 'M', 'Americana', 'V', NULL),
('Sean Kinney', '1966-05-27', 59, 'M', 'Americana', 'V', NULL),
('Mike Inez', '1966-07-14', 59, 'M', 'Americana', 'V', NULL),
('William DuVall', '1967-09-06', 58, 'M', 'Americana', 'V', NULL),
('Layne Staley', '1967-08-22', 34, 'M', 'Americana', 'F', '2002-04-05'),
('Mike Starr', '1966-04-04', 44, 'M', 'Americana', 'F', '2011-03-08');

INSERT INTO BANDA_MEMBROS (ID_BANDA, ID_MEMBRO, ATIVO) VALUES
(68, 331, TRUE),
(68, 332, TRUE),
(68, 333, TRUE),
(68, 334, TRUE),
(68, 335, FALSE),
(68, 336, FALSE);

INSERT INTO MEMBRO_INSTRUMENTO (ID_MEMBRO, ID_INSTRUMENTO) VALUES
(331, 4),
(332, 3),
(333, 2),
(334, 1),
(335, 1),
(336, 2);

INSERT INTO MEMBRO_FUNCAO (ID_MEMBRO, ID_FUNCAO) VALUES
(331, 1),
(331, 5),
(332, 4),
(333, 3),
(334, 1),
(335, 1),
(336, 3);

SELECT * FROM BANDAS;

SELECT
    NOME AS "Nome da Banda",
    GENERO,
    ANO AS "Ano de Formação",
    PAIS
FROM
    BANDAS
ORDER BY
    ANO;
	
	SELECT
    B.NOME AS "Banda",
    M.NOME AS "Membro Ativo",
    M.DATA_NASCIMENTO,
    M.IDADE
FROM
    BANDA_MEMBROS BM
JOIN
    BANDAS B ON BM.ID_BANDA = B.ID_BANDA
JOIN
    MEMBROS M ON BM.ID_MEMBRO = M.ID_MEMBRO
WHERE
    B.NOME = 'Kiss' AND BM.ATIVO = TRUE
ORDER BY
    M.NOME;
	
SELECT
    M.NOME AS "Membro",
    F.FUNCAO AS "Função Desempenhada",
    I.INSTRUMENTO AS "Instrumento Tocado"
FROM
    MEMBROS M
LEFT JOIN
    MEMBRO_FUNCAO MF ON M.ID_MEMBRO = MF.ID_MEMBRO
LEFT JOIN
    FUNCAO F ON MF.ID_FUNCAO = F.ID_FUNCAO
LEFT JOIN
    MEMBRO_INSTRUMENTO MI ON M.ID_MEMBRO = MI.ID_MEMBRO
LEFT JOIN
    INSTRUMENTO I ON MI.ID_INSTRUMENTO = I.ID_INSTRUMENTO
WHERE
    M.NOME = 'Dave Grohl';	
	
SELECT
    NOME,
    PAIS,
    ANO
FROM
    BANDAS
WHERE
    GENERO LIKE '%Thrash Metal%'
ORDER BY
    NOME;

SELECT
    NOME,
    DATA_FALECIMENTO,
    IDADE
FROM
    MEMBROS
WHERE
    ESTADO_VITAL = 'F'
ORDER BY
    DATA_FALECIMENTO DESC;

SELECT * FROM MEMBRO_INSTRUMENTO;