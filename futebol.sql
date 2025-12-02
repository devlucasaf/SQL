CREATE DATABASE FUTEBOL;

USE FUTEBOL;

CREATE TABLE TIMES(
	NOME VARCHAR(50),
	SIGLA VARCHAR(10),
	ANO INTEGER,
	CORES VARCHAR(50),
	QNTD_JOGADORES INTEGER,
	TECNICO VARCHAR(50),
	PRESIDENTE VARCHAR(50),
	PATROCINADOR VARCHAR(50),
	FORNECEDOR VARCHAR(50),
	TITULOS INTEGER,
	MASCOTE VARCHAR(50),
	ESTADIO VARCHAR(50),
	PAIS VARCHAR(50),
	CIDADE VARCHAR(50),
	LIGA VARCHAR(50)
);


-- ORDEM DAS COLUNAS: NOME, SIGLA, ANO, CORES, QNTD_JOGADORES, TECNICO, PRESIDENTE, PATROCINADOR, FORNECEDOR, TITULOS, MASCOTE, ESTADIO, PAIS, CIDADE, LIGA

-- Times do Brasil
INSERT INTO TIMES VALUES('Fluminense', 'FLU', 1902, 'Tricolor', 32, 'Luis Zubeldía', 'Mário Bittencourt', 'Superbet', 'Umbro', 63, 'Cartola', 'Laranjeiras', 'Brasil', 'Rio de Janeiro', 'Brasileirão');
INSERT INTO TIMES VALUES('Grêmio', 'GRE', 1903, 'Tricolor', 37, 'Mano Menezes', 'Alberto Guerra', 'Alfa', 'Umbro', 94, 'Mosqueteiro', 'Arena do Grêmio', 'Brasil', 'Porto Alegre', 'Brasileirão');
INSERT INTO TIMES VALUES('Atlético Mineiro', 'CAM', 1908, 'Alvinegro', 35, 'Jorge Sampaoli', 'Sérgio Coelho', 'H2bet', 'Adidas', 50, 'Galo Doido', 'Arena MRV', 'Brasil', 'Belo Horizonte', 'Brasileirão');
INSERT INTO TIMES VALUES('Coritiba', 'CFC', 1909, 'Alviverde', 35, 'Fábio Matias', 'Glenn Stenger', 'Betano', 'Diadora', 45, 'Vovô Coxa', 'Couto Pereira', 'Brasil', 'Curitiba', 'Série B');
INSERT INTO TIMES VALUES('Paraná', 'PAR', 1989, 'Tricolor', 30, 'José Roberto Lucini', 'Ailton Barboza de Souza', 'Neodent', 'Próprio', 9, 'Gralha Azul', 'Vila Capanema', 'Brasil', 'Curitiba', 'Estadual');
INSERT INTO TIMES VALUES('Brasiliense', 'BRC', 2000, 'Amarelo', 30, 'Lúcio Flávio', 'Luiz Estevão', 'Metrópoles', 'Lider Sport', 15, 'Jacaré', 'Boca do Jacaré', 'Brasil', 'Brasília', 'Série D');
INSERT INTO TIMES VALUES('Gama', 'GAMA', 1975, 'Alviverde', 30, 'Luiz Carlos Souza', 'Wendel Lopes', 'Atacadão Dia a Dia', 'Kappa', 16, 'Periquito', 'Bezerrão', 'Brasil', 'Brasília', 'Estadual');
INSERT INTO TIMES VALUES('Bangu', 'BAN', 1904, 'Alvirrubro', 30, 'Alfredo Sampaio', 'Angelo Marques Ferreira', 'FutFanatics', 'Kappa', 15, 'Castor', 'Moça Bonita', 'Brasil', 'Rio de Janeiro', 'Estadual');
INSERT INTO TIMES VALUES('Volta Redonda', 'VRE', 1976, 'Aurinegro', 30, 'Rogério Corrêa', 'Flávio Horta', 'BetSpeed', 'Pratic Sport', 8, 'Jaguatirica', 'Raulino de Oliveira', 'Brasil', 'Rio de Janeiro', 'Série B');
INSERT INTO TIMES VALUES('Luverdense', 'LUC', 2004, 'Alviverde', 30, 'Wagner Lopes', 'Aluízio Bassani', 'Sicredi', 'Junpe Sports', 8, 'Espiga de Milho', 'Passo das Emas', 'Brasil', 'Mato Grosso', 'Série D');
INSERT INTO TIMES VALUES('Chapecoense', 'CHA', 1973, 'Alviverde', 35, 'Gilmar Dal Pozzo', 'Alex Passos', 'Aurora Alimentos', 'Kappa', 12, 'Índio Condá', 'Arena Condá', 'Brasil', 'Santa Catarina', 'Série B');
INSERT INTO TIMES VALUES('Flamengo','FLA', 1895, 'Rubro Negro', 30, 'Filipe Luís', 'Luiz Eduardo Baptista', 'Betano', 'Adidas', 79, 'Urubu', 'Gávea', 'Brasil', 'Rio de Janeiro', 'Brasileirão');
INSERT INTO TIMES VALUES('Botafogo-PB', 'BFP', 1931, 'Alvinegro', 30, 'Bernardo Franco', 'Roberto Burity', 'Loccel', 'Kappa', 36, 'Belo', 'Almeidão', 'Brasil', 'João Pessoa', 'Série C');
INSERT INTO TIMES VALUES('Botafogo-SP', 'BFS', 1918, 'Tricolor', 30, 'Allan Aal', 'Eduardo Esteves', 'EstrelaBet', 'Volt Sport', 12, 'Pantera', 'Santa Cruz', 'Brasil', 'São Paulo', 'Série B');
INSERT INTO TIMES VALUES('Botafogo', 'BFR', 1894, 'Alvinegro', 35, 'Davide Ancelotti', 'João Paulo Magalhães', 'VBET', 'Reebok', 40, 'Cachorro', 'Engenhão', 'Brasil', 'Rio de Janeiro', 'Brasileirão');
INSERT INTO TIMES VALUES('Vasco da Gama', 'VAS', 1898, 'Alvinegro', 35, 'Fernando Diniz', 'Pedrinho', 'Pixbet', 'Kappa', 50, 'Almirante', 'São Januário', 'Brasil', 'Rio de Janeiro', 'Brasileirão');
INSERT INTO TIMES VALUES('Santos', 'SAN', 1912, 'Alvinegro', 35, 'Juan Vojvoda', 'Marcelo Teixeira', '7K Bet', 'Umbro', 60, 'Baleia', 'Vila Belmiro', 'Brasil', 'São Paulo', 'Brasileirão');
INSERT INTO TIMES VALUES('São Paulo', 'SAO', 1930, 'Tricolor', 35, 'Hernán Crespo', 'Julio Casares', 'Superbet', 'New Balance', 45, 'Santo Paulo', 'Morumbi', 'Brasil', 'São Paulo', 'Brasileirão');
INSERT INTO TIMES VALUES('Ceilândia', 'CEC', 1979, 'Alvinegro', 30, 'Adelson de Almeida', 'Ari de Almeida', 'Atacadão Dia a Dia', 'Próprio', 10, 'Gato Preto', 'Abadião', 'Brasil', 'Brasília', 'Série D');
INSERT INTO TIMES VALUES('Sobradinho', 'SOB', 1975, 'Alvinegro', 30, 'Antonio Carlos Bona', 'Washington Borges', 'BRB', 'Lider Sport', 5, 'Leão da Serra', 'Augustinho Lima', 'Brasil', 'Brasília', 'Estadual');
INSERT INTO TIMES VALUES('Capital', 'CAP', 2012, 'Azul e Laranja', 30, 'Ricardo Silva', 'Godofredo Gonçalves', 'BRB', 'Próprio', 2, 'Coruja', 'Serra do Lago', 'Brasil', 'Brasília', 'Estadual');
INSERT INTO TIMES VALUES('Real Brasília.', 'RBE', 1996, 'Amarelo e Preto', 30, 'Gerson Ramos', 'Luís Felipe Belmonte', 'BRB', 'Próprio', 3, 'Leão do Planalto', 'Defelê', 'Brasil', 'Brasília', 'Série D');
INSERT INTO TIMES VALUES('Palmeiras', 'PAL', 1914, 'Alviverde', 35, 'Abel Ferreira', 'Leila Pereira', 'Sportingbet', 'Puma', 50, 'Porco', 'Allianz Parque', 'Brasil', 'São Paulo', 'Brasileirão');
INSERT INTO TIMES VALUES('Cruzeiro', 'CRU', 1921, 'Azul e Branco', 35, 'Leonardo Jardim', 'Pedro Lourenço', 'Betfair', 'Adidas', 50, 'Raposa', 'Mineirão', 'Brasil', 'Belo Horizonte', 'Série A');
INSERT INTO TIMES VALUES('Boa Esporte', 'BOE', 1947, 'Verde e Branco', 30, 'Nedo Xavier', 'Rone Moraes', 'Gasmig', 'Icone', 5, 'Touro', 'Melão', 'Brasil', 'Varginha', 'Mineiro Mod.');
INSERT INTO TIMES VALUES('Tombense', 'TOM', 1914, 'Vermelho e Branco', 30, 'Raul Cabral', 'Lane Gaviolle', 'Cemil', 'Kanxa', 3, 'Gavião Carcará', 'Almeidão', 'Brasil', 'Tombos', 'Série C');
INSERT INTO TIMES VALUES('Bahia', 'BAH', 1931, 'Tricolor', 30, 'Rogério Ceni', 'Emerson Ferretti', 'Viva Sorte.Bet', 'Puma', 58, 'Super-Homen', 'Arena Fonte Nova', 'Brasil', 'Bahia', 'Brasileirão');
INSERT INTO TIMES VALUES('Vitória', 'VIT', 1899, 'Rubro Negro', 35, 'Jair Ventura', 'Fabio Mota', '7K Bet', 'Volt Sport', 36, 'Leão', 'Barradão', 'Brasil', 'Bahia', 'Brasileirão');


-- Times da Espanha
INSERT INTO TIMES VALUES('Real Madrid', 'RMA', 1902, 'Branco', 25, 'Xabi Alonso', 'Florentino Pérez', 'Emirates', 'Adidas', 132, 'Cachorro', 'Santiago Bernabéu', 'Espanha', 'Madrid', 'La Liga');
INSERT INTO TIMES VALUES('Barcelona', 'BAR', 1899, 'Blaugrana', 25, 'Hansi Flick', 'Joan Laporta', 'Spotify', 'Nike', 99, 'Gato', 'Camp Nou', 'Espanha', 'Barcelona', 'La Liga');
INSERT INTO TIMES VALUES('Villarreal', 'VIL', 1923, 'Amarelo', 28, 'Marcelino García', 'Fernando Roig', 'Pamesa Cerámica', 'Joma', 4, 'Submarino Amarelo', 'La Cerámica', 'Espanha', 'Villarreal', 'La Liga');
INSERT INTO TIMES VALUES('Valencia', 'VAL', 1919, 'Branco e Preto', 28, 'Rubén Baraja', 'Lay Hoon Chan', 'Puma', 'Puma', 30, 'Morcego', 'Mestalla', 'Espanha', 'Valência', 'La Liga');
INSERT INTO TIMES VALUES('Rayo Vallecano', 'RAY', 1924, 'Branco com faixa vermelha', 25, 'Íñigo Pérez', 'Raúl Martín Presa', 'Digital Padel', 'Umbro', 2, 'Abelha', 'Vallecas', 'Espanha', 'Madrid', 'La Liga');
INSERT INTO TIMES VALUES('Atletico de Madrid', 'ATM', 1903, 'Alvirrubro', 24, 'Diego Simeone', 'Enrique Cerezo', 'Riyadh Air', 'Nike', 34, 'Guaxinim', 'Riyadh Air Metropolitano', 'Espanha', 'Madrid', 'La Liga');
INSERT INTO TIMES VALUES('Espanyol', 'ESP', 1900, 'Branco e Azul', 23, 'Manolo González', 'Alan Pace', 'Dani', 'Kelme', 22, 'RCDE Stadium', 'Espanha', 'Barcelona', 'La Liga');


-- Times da Inglaterra

INSERT INTO TIMES VALUES('Liverpool'      , 'LIV', 1892, 'Vermelho', 29, 'Arne Slot', 'Tom Werner', 'Standard Chartered', 'Adidas', 75, 'Mighty Red', 'Anfield', 'Inglaterra', 'Liverpool', 'Premier League');
INSERT INTO TIMES VALUES('Manchester City'   , 'MCI', 1880, 'Azul', 28, 'Pep Guardiola', 'Khaldoon Al Mubarak', 'Etihad Airways', 'Puma', 38, 'Moonchester e Moonbeam', 'Etihad Stadium', 'Inglaterra', 'Manchester', 'Premier League');
INSERT INTO TIMES VALUES('Manchester United' , 'MUN', 1878, 'Vermelho', 28, 'Erik ten Hag', 'Joel Glazer (Co-proprietário)', 'Snapdragon', 'Adidas', 68, 'Fred The Red', 'Old Trafford', 'Inglaterra', 'Manchester', 'Premier League');
INSERT INTO TIMES VALUES('Arsenal', 'ARS', 1886, 'Alvirrubro', 28, 'Mikel Arteta', 'Sir Chips Keswick', 'Emirates', 'Adidas', 48, 'Gunnersaurus Rex (Dinossauro)', 'Emirates Stadium', 'Inglaterra', 'Londres', 'Premier League');

-- Times da Alemanha
INSERT INTO TIMES VALUES('Bayern de Munique', 'BAY', 1900, 'Vermelho e Branco', 28, 'Vincent Kompany', 'Herbert Hainer', 'Deutsche Telekom', 'Adidas', 85, 'Urso', 'Allianz Arena', 'Alemanha', 'Munique', 'Bundesliga');
INSERT INTO TIMES VALUES('Borussia Dortmund', 'BVB', 1909, 'Amarelo e Preto', 28, 'Nuri Şahin', 'Hans-Joachim Watzke', 'Evonik', 'Puma', 25, 'Abelha', 'Signal Iduna Park', 'Alemanha', 'Dortmund', 'Bundesliga');

-- Times da Argentina
INSERT INTO TIMES VALUES('Boca Juniors', 'BOC', 1905, 'Azul e Ouro', 30, 'Diego Martínez', 'Juan Román Riquelme', 'Binance', 'Adidas', 74, 'Xeneize', 'La Bombonera', 'Argentina', 'Buenos Aires', 'Liga Profissional');
INSERT INTO TIMES VALUES('River Plate', 'RIV', 1901, 'Branco c/ faixa vermelha', 30, 'Martín Demichelis', 'Jorge Brito', 'Codere', 'Adidas', 75, 'Galinha', 'Monumental', 'Argentina', 'Buenos Aires', 'Liga Profissional');
INSERT INTO TIMES VALUES('Racing', 'RAC', 1903, 'Branco e Azul Celeste', 30, 'Gustavo Costas', 'Víctor Blanco', 'Banco Ciudad', 'Puma', 38, 'Academia', 'El Cilindro', 'Argentina', 'Avellaneda', 'Liga Profissional');

INSERT INTO TIMES VALUES('Zenit'	      , 'ZEN', 1925, 'Azul', 28, 'Sergey Semak', 'Alexander Medvedev', 'Gazprom', 'Kelme', 30, 'Gato', 'Estádio Krestovsky', 'Rússia', 'São Petersburgo', 'Liga Premier Russa');

INSERT INTO TIMES VALUES('Galatasaray', 'GAL', 1905, 'Vermelho e Amarelo', 30, 'Okan Buruk', 'Dursun Özbek', 'Sixt', 'Puma', 65, 'Leão', 'Rams Park', 'Turquia', 'Istambul', 'Süper Lig');


INSERT INTO TIMES VALUES('Lanús', 'LAN', 1915, 'Grená e Branco', 30, 'Ricardo Zielinski', 'Luis María Chebel', 'BBVA', 'Umbro', 8, 'Granate', 'La Fortaleza', 'Argentina', 'Lanús', 'Liga Profissional');



INSERT INTO TIMES VALUES('Paris Saint German', 'PSG', 1970, 'Azul, Branco e Vermelho', 28, 'Luis Enrique', 'Nasser Al-Khelaifi', 'Qatar Airways', 'Nike/Jordan', 50, 'Ousmane', 'Parc des Princes', 'França', 'Paris', 'Ligue 1');
INSERT INTO TIMES VALUES('PSV Eindhoven', 'PSV', 1913, 'Alvirrubro', 28, 'Peter Bosz', 'Marcel Brands', 'Philips', 'Puma', 45, 'Boeli de Beer', 'Philips Stadion', 'Holanda', 'Eindhoven', 'Eredivisie');
INSERT INTO TIMES VALUES('Ajax', 'AJX', 1900, 'Alvirrubro', 28, 'Francesco Farioli', 'Alex Kroes', 'Ziggo', 'Adidas', 70, 'Ajax', 'Johan Cruijff Arena', 'Holanda', 'Amsterdã', 'Eredivisie');
INSERT INTO TIMES VALUES('América Mineiro', 'AME', 1915, 'Verde e Preto', 35, 'Cauan de Almeida', 'Alencar da Silveira Jr', 'Pixbet', 'Volt', 30, 'Coelho', 'Independência', 'Brasil', 'Belo Horizonte', 'Série A');
INSERT INTO TIMES VALUES('Internacional', 'INT', 1909, 'Vermelho', 35, 'Abel Braga', 'Alessandro Barcellos', 'Banrisul', 'Adidas', 55, 'Saci', 'Beira-Rio', 'Brasil', 'Porto Alegre', 'Série A');
INSERT INTO TIMES VALUES('Caxias', 'CAX', 1935, 'Grená e Branco', 30, 'Argel Fuchs', 'Paulo César Mandes', 'Serra FC', 'Duda', 15, 'Falcão', 'Centenário', 'Brasil', 'Caxias do Sul', 'Série C');
INSERT INTO TIMES VALUES('Corinthians', 'COR', 1910, 'Preto e Branco', 35, 'António Oliveira', 'Augusto Melo', 'VaideBet', 'Nike', 45, 'Mosqueteiro', 'Neo Química Arena', 'Brasil', 'São Paulo', 'Série A');
INSERT INTO TIMES VALUES('Chelsea', 'CHE', 1905, 'Azul Real', 28, 'Enzo Maresca', 'Todd Boehly (Consórcio)', 'Infinite Athlete', 'Nike', 34, 'Leão', 'Stamford Bridge', 'Inglaterra', 'Londres', 'Premier League');
INSERT INTO TIMES VALUES('Bayer Leverkusen', 'B04', 1904, 'Preto e Vermelho', 28, 'Xabi Alonso', 'Fernando Carro', 'Barmenia', 'Castore', 5, 'Leão', 'BayArena', 'Alemanha', 'Leverkusen', 'Bundesliga');
INSERT INTO TIMES VALUES('Mirassol', 'MIR', 1925, 'Amarelo e Verde', 30, 'Eduardo Baptista', 'Edson Antonio Ermenegildo', 'Sicredi', 'Volt', 10, 'Leão', 'Maião', 'Brasil', 'Mirassol', 'Série B');
INSERT INTO TIMES VALUES('Portuguesa', 'POR', 1920, 'Verde e Vermelho', 30, 'Alan Dotti', 'Antonio Carlos Castanheira', 'Buser', '10F', 15, 'Leão', 'Canindé', 'Brasil', 'São Paulo', 'Paulistão');
INSERT INTO TIMES VALUES('Porto', 'POR', 1893, 'Azul e Branco', 28, 'Vítor Bruno', 'André Villas-Boas', 'Betano', 'New Balance', 84, 'Dragão', 'Estádio do Dragão', 'Portugal', 'Porto', 'Primeira Liga');
INSERT INTO TIMES VALUES('Benfica', 'SLB', 1904, 'Vermelho e Branco', 28, 'Roger Schmidt', 'Rui Costa', 'Emirates', 'Adidas', 86, 'Águia', 'Estádio da Luz', 'Portugal', 'Lisboa', 'Primeira Liga');
INSERT INTO TIMES VALUES('Sport Recife', 'SPT', 1905, 'Preto e Vermelho', 35, 'Mariano Soso', 'Yuri Romão', 'Betnacional', 'Umbro', 45, 'Leão', 'Ilha do Retiro', 'Brasil', 'Recife', 'Série B');
INSERT INTO TIMES VALUES('Santa Cruz', 'SFC', 1914, 'Tricolor', 30, 'Itamar Schülle', 'Jairo Rocha', 'Betnacional', 'Volt', 45, 'Cobra Coral', 'Arruda', 'Brasil', 'Recife', 'Série D');
INSERT INTO TIMES VALUES('Náutico', 'NAU', 1901, 'Vermelho e Branco', 30, 'Mazola Júnior', 'Bruno Becker', 'Bet Nacional', 'Diadora', 40, 'Timbu', 'Aflitos', 'Brasil', 'Recife', 'Série C');
INSERT INTO TIMES VALUES('Sporting', 'SCP', 1906, 'Verde e Branco', 28, 'Rúben Amorim', 'Frederico Varandas', 'Betano', 'Nike', 50, 'Leão', 'Estádio de Alvalade', 'Portugal', 'Lisboa', 'Primeira Liga');
INSERT INTO TIMES VALUES('Joinville', 'JEC', 1976, 'Tricolor', 30, 'Jersinho Testa', 'Vilfred Schapitz', 'Univille', 'Embratex', 20, 'Coelho', 'Arena Joinville', 'Brasil', 'Joinville', 'Catarinense');
INSERT INTO TIMES VALUES('Al-Hilal', 'HIL', 1957, 'Azul e Branco', 30, 'Jorge Jesus', 'Fahad bin Nafel', 'Kingdom Holding Co.', 'Puma', 67, 'Líder', 'Kingdom Arena', 'Arábia Saudita', 'Riade', 'Saudi Pro League');
INSERT INTO TIMES VALUES('Bologna F.C.', 'BOL', 1909, 'Vermelho e Azul', 28, 'Vincenzo Italiano', 'Joey Saputo', 'MarathonBet', 'Macron', 25, 'Grifone', 'Renato DallAra', 'Itália', 'Bolonha', 'Serie A');
INSERT INTO TIMES VALUES('Cremonese', 'CRE', 1903, 'Cinza e Vermelho', 28, 'Giovanni Stroppa', 'Paolo Rossi', 'Arvedi', 'Acerbis', 5, 'Tigre', 'Giovanni Zini', 'Itália', 'Cremona', 'Serie B');

INSERT INTO TIMES VALUES('Braga', 'S.C.B', 1921, 'Vermelho e Branco', 30, 'Rui Duarte', 'António Salvador', 'Betano', 'New Balance', 16, 'Arcebispo', 'Municipal de Braga', 'Portugal', 'Braga', 'Primeira Liga');
INSERT INTO TIMES VALUES('Alanyaspor', 'ALA', 1948, 'Laranja e Verde', 30, 'Fatih Tekke', 'Hasan Çavuşoğlu', 'Corendon Airlines', 'Erima', 1, 'Aytemiz', 'Bahçeşehir Okulları', 'Turquia', 'Alanya', 'Süper Lig');
INSERT INTO TIMES VALUES('Fenerbahçe', 'FEN', 1907, 'Amarelo e Azul Marinho', 30, 'José Mourinho', 'Ali Koç', 'AVIS', 'Puma', 45, 'Canário', 'Şükrü Saracoğlu', 'Turquia', 'Istambul', 'Süper Lig');
INSERT INTO TIMES VALUES('Watford', 'WAT', 1881, 'Amarelo e Vermelho', 30, 'Tom Cleverley', 'Scott Duxbury', 'Stake', 'Kelme', 5, 'Hornet', 'Vicarage Road', 'Inglaterra', 'Watford', 'Championship');
INSERT INTO TIMES VALUES('Everton', 'EVE', 1878, 'Azul e Branco', 28, 'Sean Dyche', 'Bill Kenwright', 'Stake', 'Hummel', 24, 'Toffee Lady', 'Goodison Park', 'Inglaterra', 'Liverpool', 'Premier League');
INSERT INTO TIMES VALUES('Tottenham', 'TOT', 1882, 'Branco e Azul Marinho', 28, 'Ange Postecoglou', 'Daniel Levy', 'AIA', 'Nike', 24, 'Cockerel', 'Tottenham Hotspur Stadium', 'Inglaterra', 'Londres', 'Premier League');
INSERT INTO TIMES VALUES('Newcastle', 'NEW', 1892, 'Preto e Branco', 28, 'Eddie Howe', 'Yasir Al-Rumayyan', 'Sela', 'Adidas', 19, 'Magpies', 'St James Park', 'Inglaterra', 'Newcastle', 'Premier League');
INSERT INTO TIMES VALUES('Juventus', 'JUV', 1897, 'Preto e Branco', 28, 'Thiago Motta', 'Gianluca Ferrero', 'Jeep', 'Adidas', 70, 'Zebra', 'Allianz Stadium', 'Itália', 'Turim', 'Serie A');
INSERT INTO TIMES VALUES('Roma', 'ROM', 1927, 'Amarelo Ouro e Vermelho Púrpura', 28, 'Daniele De Rossi', 'Dan Friedkin', 'Riyadh Air', 'Adidas', 20, 'Lupa Capitolina', 'Olímpico de Roma', 'Itália', 'Roma', 'Serie A');
INSERT INTO TIMES VALUES('Napoli', 'NAP', 1926, 'Azul Celeste', 28, 'Antonio Conte', 'Aurelio De Laurentiis', 'MSC Crociere', 'EA7', 18, 'Burro', 'Diego Armando Maradona', 'Itália', 'Nápoles', 'Serie A');
INSERT INTO TIMES VALUES('Inter Miami', 'MIA', 2018, 'Rosa, Preto e Branco', 30, 'Gerardo Martino', 'Jorge Mas', 'Royal Caribbean', 'Adidas', 2, 'Garça', 'Chase Stadium', 'EUA', 'Fort Lauderdale', 'MLS');
INSERT INTO TIMES VALUES('Girona', 'GIR', 1930, 'Vermelho e Branco', 28, 'Míchel', 'Pere Guardiola', 'Gosbi', 'Puma', 2, 'Leão', 'Montilivi', 'Espanha', 'Girona', 'La Liga');
INSERT INTO TIMES VALUES('Monaco', 'MON', 1924, 'Vermelho e Branco', 28, 'Adi Hütter', 'Dmitry Rybolovlev', 'Fedcom', 'Kappa', 22, 'Príncipe', 'Louis II', 'Mônaco', 'Mônaco', 'Ligue 1');
INSERT INTO TIMES VALUES('Atalanta B.C.', 'ATA', 1907, 'Preto e Azul', 28, 'Gian Piero Gasperini', 'Antonio Percassi', 'Plus500', 'Joma', 11, 'Deusa', 'Gewiss Stadium', 'Itália', 'Bérgamo', 'Serie A');
INSERT INTO TIMES VALUES('Athletic Bilbao', 'BIL', 1898, 'Vermelho e Branco', 28, 'Ernesto Valverde', 'Jon Uriarte', 'Kutxabank', 'New Balance', 35, 'Leão', 'San Mamés', 'Espanha', 'Bilbau', 'La Liga');
INSERT INTO TIMES VALUES('Basel', 'BAS', 1893, 'Vermelho e Azul', 28, 'Fabio Celestini', 'Bernhard Burgener', 'Sunrise', 'Adidas', 30, 'Basilisco', 'St. Jakob-Park', 'Suíça', 'Basileia', 'Super League');
INSERT INTO TIMES VALUES('Malmö FF', 'MFF', 1910, 'Azul Celeste', 30, 'Henrik Rydström', 'Anders Pålsson', 'Volkswagen', 'Puma', 35, 'Gyllene', 'Eleda Stadion', 'Suécia', 'Malmö', 'Allsvenskan');
INSERT INTO TIMES VALUES('Olympique de Marseille', 'MAR', 1899, 'Branco e Azul Celeste', 28, 'Jean-Louis Gasset', 'Pablo Longoria', 'CMA CGM', 'Puma', 30, 'Dogue', 'Vélodrome', 'França', 'Marselha', 'Ligue 1');
INSERT INTO TIMES VALUES('Lyon', 'LYO', 1950, 'Branco, Azul e Vermelho', 28, 'Pierre Sage', 'John Textor', 'Emirates', 'Adidas', 25, 'Gones', 'Groupama Stadium', 'França', 'Lyon', 'Ligue 1');
INSERT INTO TIMES VALUES('Olympiacos', 'OLY', 1925, 'Vermelho e Branco', 30, 'José Mendilibar', 'Evangelos Marinakis', 'Stoiximan', 'Adidas', 78, 'Lenda', 'Georgios Karaiskakis', 'Grécia', 'Pireu', 'Super League Grega');
INSERT INTO TIMES VALUES('Celtic', 'CEL', 1887, 'Verde e Branco (Listrado)', 28, 'Brendan Rodgers', 'Michael Nicholson', 'Dafabet', 'Adidas', 115, 'Menino', 'Celtic Park', 'Escócia', 'Glasgow', 'Premiership Escocesa');
INSERT INTO TIMES VALUES('Rangers.', 'RAN', 1872, 'Azul Real', 28, 'Philippe Clement', 'John Bennett', 'Unibet', 'Castore', 116, 'Urso Teddy', 'Ibrox Stadium', 'Escócia', 'Glasgow', 'Premiership Escocesa');

INSERT INTO TIMES VALUES('Legia Warszawa', 'LEG', 1916, 'Tricolor', 28, 'Iñaki Astiz', 'Dariusz Mioduski', 'Plus500', 'Adidas', 43, 'Urso', 'Wojska Polskiego', 'Polônia', 'Varsóvia', 'Ekstraklasa');
INSERT INTO TIMES VALUES('Nice', 'NICE', 1904, 'Vermelho e Preto', 28, 'Franck Haise', 'Jim Ratcliffe (INEOS)', 'Ineos', 'Le Coq Sportif', 12, 'Aiglon', 'Allianz Riviera', 'França', 'Nice', 'Ligue 1');
INSERT INTO TIMES VALUES('Hercílio Luz', 'FLN', 1918, 'Alvirubro', 20, 'Paulo Baier', 'Vinícius Gaidzinski', 'Strawplast', 'Weefe', 2, 'Leão', 'Aníbal Torres Costa', 'Brasil', 'Santa Catarina', 'Estadual');
INSERT INTO TIMES VALUES('Wydad', 'WAC', 1937, 'Alvirrubro', 26, 'Mohamed Amine Benhachem', 'Hicham Ait Menna', 'Ingelec', 'Kappa', 39, 'Kurapika', 'Estádio Mohammed V', 'Marrocos', 'Casablanca', 'Banga Pro');
INSERT INTO TIMES VALUES('Shakhtar Donetsk', 'SHK', 1936, 'Laranja e Preto', 28, 'Marino Pušić', 'Rinat Akhmetov', 'Parimatch', 'Puma', 51, 'Toptyzhka (Urso)', 'Arena Lviv', 'Ucrânia', 'Donetsk', 'Premier League Ucraniana');
INSERT INTO TIMES VALUES('Leeds United', 'LEE', 1919, 'Branco, Azul e Amarelo', 28, 'Daniel Farke', 'Paraag Marathe', 'BOXT', 'Adidas', 9, 'Lucas The Kookaburra', 'Elland Road', 'Inglaterra', 'Leeds', 'EFL Championship');
INSERT INTO TIMES VALUES('Dynamo de Kiev', 'DYK', 1927, 'Azul e Branco', 28, 'Oleksandr Shovkovskyi', 'Ihor Surkis', 'Adidas', 'New Balance', 67, 'Um Castor', 'Estádio Olímpico de Kiev', 'Ucrânia', 'Kiev', 'Premier League Ucraniana');
INSERT INTO TIMES VALUES('Peñarol', 'CAP', 1891, 'Amarelo e Preto', 35, 'Diego Aguirre', 'Ignacio Ruglio', 'Antel', 'Puma', 62, 'Carbonero', 'Campeón del Siglo', 'Uruguai', 'Montevidéu', 'Primera División');
INSERT INTO TIMES VALUES('Independiente', 'CAI', 1905, 'Vermelho e Branco', 35, 'Julio Vaccari', 'Néstor Grindetti', 'Banco Provincia', 'Puma', 45, 'Diablo', 'Libertadores de América', 'Argentina', 'Avellaneda', 'Primera División');
INSERT INTO TIMES VALUES('Brentford', 'BRE', 1889, 'Vermelho e Branco', 28, 'Thomas Frank', 'Matthew Benham', 'Hollywoodbets', 'Umbro', 5, 'Buzz Bee', 'Brentford Community Stadium', 'Inglaterra', 'Londres', 'Premier League');
INSERT INTO TIMES VALUES('Aston Villa', 'AVL', 1874, 'Bordô e Azul Claro', 28, 'Unai Emery', 'Nassef Sawiris', 'BK8', 'Adidas', 25, 'Hercules The Lion', 'Villa Park', 'Inglaterra', 'Birmingham', 'Premier League');
INSERT INTO TIMES VALUES('Sunderland', 'SUN', 1879, 'Vermelho e Branco', 28, 'Mike Dodds', 'Kyril Louis-Dreyfus', 'Hummel', 'Nike', 15, 'Samson the Cat', 'Stadium of Light', 'Inglaterra', 'Sunderland', 'EFL Championship');
INSERT INTO TIMES VALUES('Ferencváros', 'FTC', 1899, 'Verde e Branco', 30, 'Pascal Jansen', 'Gábor Kubatov', 'MBH Bank', 'Nike', 48, 'Feri, o Águia', 'Groupama Arena', 'Hungria', 'Budapeste', 'Nemzeti Bajnokság I');
INSERT INTO TIMES VALUES('MTK FC', 'MTK', 1888, 'Azul e Branco', 30, 'Tamás Feczkó', 'Tamás Deutsch', 'Valton Security', 'Nike', 36, 'Leão', 'Hidegkuti Nándor Stadion', 'Hungria', 'Budapeste', 'Nemzeti Bajnokság I');
INSERT INTO TIMES VALUES('Budapest Honvéd', 'HON', 1909, 'Vermelho e Preto', 30, 'Attila Simon', 'George Hemingway', 'Szerencsejáték Zrt', 'Macron', 21, 'Soldado', 'Bozsik Aréna', 'Hungria', 'Budapeste', 'Nemzeti Bajnokság II');
INSERT INTO TIMES VALUES('Fulham', 'FUL', 1879, 'Branco e Preto', 28, 'Marco Silva', 'Shahid Khan', 'SBOTOP', 'Adidas', 1, 'Billy The Badger', 'Craven Cottage', 'Inglaterra', 'Londres', 'Premier League');
INSERT INTO TIMES VALUES('West Ham', 'WHU', 1895, 'Bordô e Azul Claro', 28, 'Julen Lopetegui', 'David Sullivan', 'Betway', 'Umbro', 10, 'Hammerhead', 'London Stadium', 'Inglaterra', 'Londres', 'Premier League');
INSERT INTO TIMES VALUES('Wolverhampton Wanderers', 'WOL', 1877, 'Ouro e Preto', 28, 'Gary ONeil', 'Jeff Shi', 'AstroPay', 'Castore', 31, 'Wolfie', 'Molineux Stadium', 'Inglaterra', 'Wolverhampton', 'Premier League');
INSERT INTO TIMES VALUES('Feyenoord', 'FEY', 1908, 'Vermelho e Branco', 28, 'Brian Priske', 'Dennis te Kloese', 'MediaMarkt', 'Adidas', 35, 'Coentje', 'De Kuip', 'Holanda', 'Roterdã', 'Eredivisie');
INSERT INTO TIMES VALUES('Borussia Mönchengladbach', 'BMG', 1900, 'Preto, Branco e Verde', 28, 'Gerardo Seoane', 'Rolf Königs', 'flatex', 'Puma', 14, 'Jünter', 'Borussia-Park', 'Alemanha', 'Mönchengladbach', 'Bundesliga');
INSERT INTO TIMES VALUES('Club Brugge', 'CLB', 1891, 'Azul e Preto', 28, 'Nicky Hayen', 'Bart Verhaeghe', 'Unibet', 'Macron', 33, 'Berna de Beer', 'Jan Breydel Stadium', 'Bélgica', 'Brugge', 'Jupiler Pro League');
INSERT INTO TIMES VALUES('Sporting Club Bastiais', 'SCB', 1905, 'Azul e Branco', 28, 'Benoît Tavenot', 'Claude Ferrandi', 'Air Corsica', 'Adidas', 2, 'Grizzly', 'Stade Armand Cesari', 'França', 'Bastia', 'Ligue 2');
INSERT INTO TIMES VALUES('Estrela Vermelha', 'CRV', 1945, 'Vermelho e Branco', 30, 'Vladan Milojević', 'Svetozar Mijailović', 'Gazprom', 'Puma', 65, 'Um Leão', 'Marakana', 'Sérvia', 'Belgrado', 'Superliga Sérvia');
INSERT INTO TIMES VALUES('Eintracht Frankfurt', 'SGE', 1899, 'Preto, Vermelho e Branco', 28, 'Dino Toppmöller', 'Axel Hellmann', 'Indeed', 'Nike', 10, 'Attila (Águia)', 'Deutsche Bank Park', 'Alemanha', 'Frankfurt', 'Bundesliga');
INSERT INTO TIMES VALUES('Hamburgo SV', 'HSV', 1887, 'Azul, Branco e Preto', 28, 'Steffen Baumgart', 'Marcell Jansen', 'Orthomol', 'Adidas', 22, 'Dino Hermann', 'Volksparkstadion', 'Alemanha', 'Hamburgo', '2. Bundesliga');
INSERT INTO TIMES VALUES('IFK Göteborg', 'IFK', 1904, 'Azul e Branco', 28, 'Stefan Jacobsson', 'Richard Berkling', 'Prioritet Finans', 'Adidas', 25, 'Vitinho (Vitinho)', 'Gamla Ullevi', 'Suécia', 'Gotemburgo', 'Allsvenskan');
INSERT INTO TIMES VALUES('AEK Atenas', 'AEK', 1924, 'Amarelo e Preto', 30, 'Matías Almeyda', 'Evangelos Aslanidis', 'Stoiximan', 'Nike', 31, 'Dikefalos Aetos (Águia de Duas Cabeças)', 'Agia Sophia Stadium', 'Grécia', 'Atenas', 'Superliga Grega');
INSERT INTO TIMES VALUES('FC Köln', 'COL', 1948, 'Branco e Vermelho', 28, 'Gerhard Struber', 'Werner Wolf', 'Rewe', 'Hummel', 7, 'Hennes VIII (Bode)', 'RheinEnergieStadion', 'Alemanha', 'Colônia', '2. Bundesliga');
INSERT INTO TIMES VALUES('RB Leipzig', 'RBL', 2009, 'Branco e Vermelho', 28, 'Marco Rose', 'Oliver Mintzlaff', 'Red Bull', 'Nike', 5, 'Buli (Touro)', 'Red Bull Arena', 'Alemanha', 'Leipzig', 'Bundesliga');
INSERT INTO TIMES VALUES('VfB Stuttgart', 'VFB', 1893, 'Branco e Vermelho', 28, 'Sebastian Hoeneß', 'Claus Vogt', 'Porsche', 'Puma', 13, 'Fritzle', 'MHPArena', 'Alemanha', 'Stuttgart', 'Bundesliga');
INSERT INTO TIMES VALUES('RSC Anderlecht', 'AND', 1908, 'Roxo e Branco', 28, 'Brian Riemer', 'Wouter Vandenhaute', 'Dewaele', 'Joma', 44, 'Mauves', 'Lotto Park', 'Bélgica', 'Anderlecht', 'Jupiler Pro League');
INSERT INTO TIMES VALUES('Werder Bremen', 'SVW', 1899, 'Verde e Branco', 28, 'Ole Werner', 'Hubertus Hess-Grunewald', 'Wiesenhof', 'Hummel', 14, 'Werderino', 'Weserstadion', 'Alemanha', 'Bremen', 'Bundesliga');
INSERT INTO TIMES VALUES('Torino FC', 'TOR', 1906, 'Bordô', 28, 'Paolo Vanoli', 'Urbano Cairo', 'Suzuki', 'Joma', 12, 'Toro', 'Stadio Olimpico Grande Torino', 'Itália', 'Turim', 'Serie A');
INSERT INTO TIMES VALUES('Red Bull Salzburg', 'RBS', 1933, 'Vermelho e Branco', 28, 'Pepijn Lijnders', 'Stephan Reiter', 'Red Bull', 'Nike', 28, 'Superbulle', 'Red Bull Arena', 'Áustria', 'Salzburgo', 'Austrian Bundesliga');
INSERT INTO TIMES VALUES('Schalke 04', 'S04', 1904, 'Azul e Branco', 28, 'Karel Geraerts', 'Matthias Tillmann', 'Veltins', 'Adidas', 17, 'Erwin', 'Veltins-Arena', 'Alemanha', 'Gelsenkirchen', '2. Bundesliga');
INSERT INTO TIMES VALUES('Slavia Praga', 'SLA', 1892, 'Vermelho e Branco', 28, 'Jindřich Trpišovský', 'Jaroslav Tvrdík', 'Generali Česká', 'Puma', 27, 'Um Leão', 'Fortuna Arena', 'República Tcheca', 'Praga', 'Primeira Liga Tcheca');
INSERT INTO TIMES VALUES('Cagliari Calcio', 'CAG', 1920, 'Azul e Vermelho', 28, 'Davide Nicola', 'Tommaso Giulini', 'Moby', 'Adidas', 2, 'Gigi Riva', 'Stadio SantElia', 'Itália', 'Cagliari', 'Serie A');
INSERT INTO TIMES VALUES('Spartak Moscou', 'SPM', 1922, 'Vermelho e Branco', 30, 'Dejan Stanković', 'Shamil Gazizov', 'Lukoil', 'Nike', 40, 'Gladiador', 'Otkrytie Arena', 'Rússia', 'Moscou', 'Premier League Russa');
INSERT INTO TIMES VALUES('Lazio', 'LAZ', 1900, 'Branco e Azul Celeste', 28, 'Marco Baroni', 'Claudio Lotito', 'Mizuno', 'Mizuno', 16, 'Olympia (Águia)', 'Stadio Olimpico', 'Itália', 'Roma', 'Serie A');
INSERT INTO TIMES VALUES('Fiorentina', 'FIO', 1926, 'Roxo e Branco', 28, 'Raffaele Palladino', 'Rocco Commisso', 'Mediacom', 'Kappa', 14, 'Giglio', 'Stadio Artemio Franchi', 'Itália', 'Florença', 'Serie A');
INSERT INTO TIMES VALUES('Bodø/Glimt', 'BOD', 1916, 'Amarelo', 28, 'Kjetil Knutsen', 'Wenche Skjæggestad', 'SpareBank 1 Nord-Norge', 'Nike', 7, 'Um Urso', 'Aspmyra Stadion', 'Noruega', 'Bodø', 'Eliteserien');
INSERT INTO TIMES VALUES('Atalanta', 'ATA', 1907, 'Azul e Preto', 28, 'Gian Piero Gasperini', 'Antonio Percassi', 'Plus500', 'Joma', 3, 'La Dea', 'Gewiss Stadium', 'Itália', 'Bérgamo', 'Serie A');
INSERT INTO TIMES VALUES('Hibernian FC', 'HIB', 1875, 'Verde e Branco', 28, 'David Gray', 'Ronald Gordon', 'Carrick Packaging', 'Puma', 10, 'Sunshine The Leith Lynx', 'Easter Road', 'Escócia', 'Edimburgo', 'Scottish Premiership');
INSERT INTO TIMES VALUES('CSKA Sofia', 'CSK', 1948, 'Vermelho e Branco', 30, 'Stamen Belchev', 'Dimitar Penev', 'Mtel', 'Adidas', 48, 'Exército', 'Estádio Balgarska Armia', 'Bulgária', 'Sófia', 'Primeira Liga Búlgara');
INSERT INTO TIMES VALUES('Panathinaikos', 'PAO', 1908, 'Verde e Branco', 30, 'Diego Alonso', 'Giannis Alafouzos', 'Pame Stoixima', 'Adidas', 40, 'O Trevo', 'Apostolos Nikolaidis Stadium', 'Grécia', 'Atenas', 'Superliga Grega');
INSERT INTO TIMES VALUES('Saint-Étienne', 'STE', 1919, 'Verde e Branco', 28, 'Olivier DallOglio', 'Bernard Caïazzo', 'Aésio Mutuelle', 'Hummel', 18, 'O Leão', 'Stade Geoffroy-Guichard', 'França', 'Saint-Étienne', 'Ligue 1');
INSERT INTO TIMES VALUES('FC Zürich', 'FCZ', 1896, 'Azul e Branco', 28, 'Ricardo Moniz', 'Ancillo Canepa', 'Swiss Life', 'Nike', 20, 'O Leão', 'Letzigrund', 'Suíça', 'Zurique', 'Super Liga Suíça');
INSERT INTO TIMES VALUES('Malmö FF', 'MFF', 1910, 'Azul Claro', 28, 'Henrik Rydström', 'Anders Pålsson', 'PUMA', 'Puma', 36, 'Himmelriket', 'Eleda Stadion', 'Suécia', 'Malmö', 'Allsvenskan');
INSERT INTO TIMES VALUES('Nottingham Forest', 'NFO', 1865, 'Vermelho e Branco', 28, 'Nuno Espírito Santo', 'Evangelos Marinakis', 'BetKing', 'Adidas', 11, 'Sherwood The Bear', 'The City Ground', 'Inglaterra', 'Nottingham', 'Premier League');
INSERT INTO TIMES VALUES('Steaua Bucareste', 'FCSB', 1947, 'Vermelho, Amarelo e Azul', 30, 'Elias Charalambous', 'George Becali', 'Betano', 'Nike', 58, 'Militari', 'Arena Nacional', 'Romênia', 'Bucareste', 'Liga I');
INSERT INTO TIMES VALUES('IFK Göteborg', 'IFK', 1904, 'Azul e Branco', 28, 'Stefan Jacobsson', 'Richard Berkling', 'Prioritet Finans', 'Adidas', 25, 'Vitinho (Vitinho)', 'Gamla Ullevi', 'Suécia', 'Gotemburgo', 'Allsvenskan');
INSERT INTO TIMES VALUES('Dundee United', 'DUN', 1909, 'Laranja e Preto', 28, 'Jim Goodwin', 'Mark Ogren', 'QuinnBet', 'Macron', 5, 'Arab The Tangerine', 'Tannadice Park', 'Escócia', 'Dundee', 'Scottish Championship');
INSERT INTO TIMES VALUES('Olimpia', 'OLI', 1902, 'Preto e Branco', 35, 'Martín Palermo', 'Miguel Cardona', 'Tigo', 'Nike', 46, 'El Decano', 'Estádio Manuel Ferreira', 'Paraguai', 'Assunção', 'Divisão Profissional');
INSERT INTO TIMES VALUES('Nacional', 'NAC', 1899, 'Azul, Branco e Vermelho', 35, 'Álvaro Recoba', 'José Decurnex', 'Antel', 'Umbro', 50, 'El Bolso', 'Gran Parque Central', 'Uruguai', 'Montevidéu', 'Primera División');
INSERT INTO TIMES VALUES('Estudiantes de la Plata', 'EDL', 1905, 'Vermelho e Branco', 35, 'Eduardo Domínguez', 'Martín Gorostegui', 'Banco Ciudad', 'Umbro', 16, 'El León', 'Estadio Jorge Luis Hirschi', 'Argentina', 'La Plata', 'Primera División');
INSERT INTO TIMES VALUES('Universitario de Deportes', 'UDA', 1924, 'Creme e Bordô', 35, 'Fabián Bustos', 'Jean Ferrari', 'Cerveza Cristal', 'Marathon', 28, 'Garra Crema', 'Estadio Monumental', 'Peru', 'Lima', 'Liga 1');
INSERT INTO TIMES VALUES('Colo-Colo', 'CC', 1925, 'Preto e Branco', 35, 'Jorge Almirón', 'Alfredo Stöhwing', 'Coolbet', 'Adidas', 35, 'Cacique', 'Estadio Monumental David Arellano', 'Chile', 'Santiago', 'Primera División Chilena');
INSERT INTO TIMES VALUES('Unión Española', 'UES', 1897, 'Vermelho e Amarelo', 35, 'Ronald Fuentes', 'Jorge Segovia', 'Claro', 'Kappa', 14, 'Hispanos', 'Estadio Santa Laura', 'Chile', 'Santiago', 'Primera División Chilena');
INSERT INTO TIMES VALUES('Deportivo Cali', 'DCA', 1912, 'Verde e Branco', 35, 'Hernán Torres', 'Guido Jaramillo', 'Coopserp', 'Umbro', 13, 'El Azucarero', 'Estadio Deportivo Cali', 'Colômbia', 'Cali', 'Categoria Primera A');
INSERT INTO TIMES VALUES('Cobreloa', 'COB', 1977, 'Laranja', 35, 'Dalcio Giovagnoli', 'Fernando Ramírez', 'SQM', 'KS7', 11, 'Zorro do Deserto', 'Estadio Zorros del Desierto', 'Chile', 'Calama', 'Primera División Chilena');
INSERT INTO TIMES VALUES('Argentinos Juniors', 'AJR', 1904, 'Vermelho e Branco', 35, 'Pablo Guede', 'Cristian Malaspina', 'Banco Ciudad', 'Adidas', 9, 'El Bicho', 'Estadio Diego Armando Maradona', 'Argentina', 'Buenos Aires', 'Primera División');
INSERT INTO TIMES VALUES('América de Cali', 'AME', 1927, 'Vermelho', 35, 'César Farías', 'Marcela Gómez', 'BetPlay', 'Umbro', 17, 'Diablos Rojos', 'Estadio Pascual Guerrero', 'Colômbia', 'Cali', 'Categoria Primera A');
INSERT INTO TIMES VALUES('Newell''s Old Boys', 'NOB', 1903, 'Preto e Vermelho', 35, 'Mauricio Larriera', 'Ignacio Astore', 'Banco Macro', 'Adidas', 9, 'Leprosos', 'Estadio Marcelo Bielsa', 'Argentina', 'Rosário', 'Primera División');
INSERT INTO TIMES VALUES('Barcelona SC', 'BSC', 1925, 'Amarelo e Preto', 35, 'Ariel Holan', 'Antonio Álvarez', 'Pilsener', 'Marathon', 18, 'Ídolo do Equador', 'Estadio Monumental Isidro Romero Carbo', 'Equador', 'Guayaquil', 'Serie A do Equador');
INSERT INTO TIMES VALUES('Universidad Católica', 'UC', 1937, 'Azul e Branco', 35, 'Tiago Nunes', 'Juan Tagle', 'Betsson', 'Puma', 21, 'Cruzados', 'Estadio San Carlos de Apoquindo', 'Chile', 'Santiago', 'Primera División Chilena');
INSERT INTO TIMES VALUES('Vélez Sarsfield', 'VEL', 1910, 'Branco e Azul', 35, 'Gustavo Quinteros', 'Fabián Berlanga', 'Hitachi', 'Kappa', 16, 'El Fortín', 'Estadio José Amalfitani', 'Argentina', 'Buenos Aires', 'Primera División');
INSERT INTO TIMES VALUES('Atlético Nacional', 'ATN', 1947, 'Verde e Branco', 35, 'Pablo Repetto', 'Benjamín Romero', 'BetPlay', 'Nike', 31, 'El Verdolaga', 'Estadio Atanasio Girardot', 'Colômbia', 'Medellín', 'Categoria Primera A');
INSERT INTO TIMES VALUES('Sporting Cristal', 'SCR', 1955, 'Azul Claro', 35, 'Enderson Moreira', 'Joel Raffo', 'Florida', 'Adidas', 25, 'Cerveceros', 'Estadio Alberto Gallardo', 'Peru', 'Lima', 'Liga 1');
INSERT INTO TIMES VALUES('Cruz Azul', 'CAZ', 1927, 'Azul', 35, 'Martín Anselmi', 'Víctor Velázquez', 'Cemento Cruz Azul', 'Pirma', 19, 'La Máquina', 'Estadio Ciudad de los Deportes', 'México', 'Cidade do México', 'Liga MX');
INSERT INTO TIMES VALUES('Tigres UANL', 'TIG', 1960, 'Amarelo e Azul', 35, 'Veljko Paunović', 'Mauricio Culebro', 'Cemex', 'Adidas', 15, 'El Tigre', 'Estadio Universitario', 'México', 'Monterrey', 'Liga MX');
INSERT INTO TIMES VALUES('LDU Quito', 'LDU', 1930, 'Branco', 35, 'Adrián Gabbarini', 'Patricio Torres', 'Banco de Guayaquil', 'Puma', 17, 'Albos', 'Estadio Rodrigo Paz Delgado', 'Equador', 'Quito', 'Serie A do Equador');
INSERT INTO TIMES VALUES('Chivas Guadalajara', 'CHI', 1906, 'Vermelho, Branco e Azul', 35, 'Fernando Gago', 'Amaury Vergara', 'Caliente', 'Puma', 16, 'Rebaño Sagrado', 'Estadio Akron', 'México', 'Guadalajara', 'Liga MX');
INSERT INTO TIMES VALUES('Independiente del Valle', 'IDV', 1958, 'Azul e Preto', 35, 'Javier Gandolfi', 'Franklin Tello', 'Banco Guayaquil', 'Marathon', 8, 'Los Rayados', 'Estadio Banco Guayaquil', 'Equador', 'Quito', 'Serie A do Equador');
INSERT INTO TIMES VALUES('Athletico Paranaense', 'CAP', 1924, 'Preto e Vermelho', 35, 'Odair Helmann', 'Mario Celso Petraglia', 'Pixbet', 'Umbro', 10, 'Furacão', 'Arena da Baixada', 'Brasil', 'Curitiba', 'Série B');
INSERT INTO TIMES VALUES('Levante UD', 'LEV', 1909, 'Vermelho e Azul', 28, 'Felipe Miñambres', 'Pablo Sánchez', 'GDES', 'Macron', 3, 'Granota', 'Estadio Ciutat de València', 'Espanha', 'Valência', 'La Liga 2');
INSERT INTO TIMES VALUES('Getafe CF', 'GET', 1946, 'Azul Escuro', 28, 'José Bordalás', 'Ángel Torres', 'Tecnocasa', 'Joma', 0, 'Azulones', 'Coliseum Alfonso Pérez', 'Espanha', 'Getafe', 'La Liga');
INSERT INTO TIMES VALUES('Celta de Vigo', 'CEL', 1923, 'Azul Celeste e Branco', 28, 'Claudio Giráldez', 'Marian Mouriño', 'Estrella Galicia', 'Adidas', 1, 'Celeste', 'Balaídos', 'Espanha', 'Vigo', 'La Liga');
INSERT INTO TIMES VALUES('Dinamo Zagreb', 'DZG', 1945, 'Azul Escuro', 28, 'Sergej Jakirović', 'Velimir Zajec', 'SuperSport', 'Adidas', 48, 'Modri', 'Maksimir', 'Croácia', 'Zagreb', 'HNL');
INSERT INTO TIMES VALUES('Hajduk Split', 'HSPL', 1911, 'Branco e Azul', 28, 'Gennaro Gattuso', 'Ivan Bilić', 'Tommy', 'Macron', 25, 'Bili', 'Poljud', 'Croácia', 'Split', 'HNL');
INSERT INTO TIMES VALUES('Mamelodi Sundowns', 'MSD', 1970, 'Amarelo e Verde', 30, 'Rhulani Mokwena', 'Tebogo Motlanthe', 'Toyota', 'Puma', 21, 'The Brazilians', 'Loftus Versfeld Stadium', 'África do Sul', 'Pretória', 'Premiership Sul-Africana');
INSERT INTO TIMES VALUES('AmaZulu FC', 'AMZ', 1932, 'Verde e Branco', 30, 'Pablo Franco', 'Sandile Zungu', 'Spar', 'Umbro', 2, 'Usuthu', 'Moses Mabhida Stadium', 'África do Sul', 'Durban', 'Premiership Sul-Africana');
INSERT INTO TIMES VALUES('Polokwane City', 'POL', 2012, 'Preto e Vermelho', 30, 'Phuti Ledwaba', 'Japhet Mohlala', 'Pola', 'Umbro', 1, 'Rise and Shine', 'Peter Mokaba Stadium', 'África do Sul', 'Polokwane', 'Premiership Sul-Africana');
INSERT INTO TIMES VALUES('TS Galaxy FC', 'TSG', 1982, 'Azul e Branco', 30, 'Sead Ramović', 'Zakhele Lepasa', 'RMB', 'Puma', 1, 'Rockets', 'Mbombela Stadium', 'África do Sul', 'Nelspruit', 'Premiership Sul-Africana');
INSERT INTO TIMES VALUES('Raja Club Athletic', 'RCA', 1949, 'Verde e Branco', 30, 'Josef Zinnbauer', 'Mohamed Boudrika', 'Inwi', 'Puma', 28, 'Os Águias', 'Estádio Mohamed V', 'Marrocos', 'Casablanca', 'Botola Pro');
INSERT INTO TIMES VALUES('Al Ahly', 'AHL', 1907, 'Vermelho e Branco', 30, 'Marcel Koller', 'Mahmoud El Khatib', 'WE', 'Adidas', 150, 'Red Devils', 'Cairo International Stadium', 'Egito', 'Cairo', 'Premier League Egípcia');
INSERT INTO TIMES VALUES('Zamalek SC', 'ZSC', 1911, 'Branco e Vermelho', 30, 'José Gomes', 'Hussein Labib', 'Puma', 'Puma', 90, 'White Knights', 'Cairo International Stadium', 'Egito', 'Cairo', 'Premier League Egípcia');
INSERT INTO TIMES VALUES('Pyramids FC', 'PYR', 2008, 'Vermelho e Branco', 30, 'Jaime Pacheco', 'Mamdouh Eid', 'Abu Dhabi Investment', 'Puma', 0, 'Pyramids', '30 June Stadium', 'Egito', 'Cairo', 'Premier League Egípcia');
INSERT INTO TIMES VALUES('Al Masry', 'MAS', 1920, 'Verde e Branco', 30, 'Ali Maher', 'Samir Halabiya', 'WE', 'Umbro', 4, 'Al Akhdar', 'Port Said Stadium', 'Egito', 'Port Said', 'Premier League Egípcia');
INSERT INTO TIMES VALUES('Al Ittihad (Egito)', 'ITTE', 1914, 'Verde e Branco', 30, 'Tarek El Ashry', 'Mohamed Meselhi', 'Vodafone', 'Puma', 6, 'Líder do Povo', 'Alexandria Stadium', 'Egito', 'Alexandria', 'Premier League Egípcia');
INSERT INTO TIMES VALUES('Al Nassr FC', 'NSR', 1955, 'Amarelo e Azul', 30, 'Luís Castro', 'Musaed Al-Sudairy', 'STC', 'Nike', 30, 'Cavaleiros de Najd', 'Al-Awwal Park', 'Arábia Saudita', 'Riade', 'Saudi Pro League');
INSERT INTO TIMES VALUES('Al Ahli SFC', 'AHLI', 1937, 'Verde e Branco', 30, 'Matthias Jaissle', 'Waleed Muath', 'SAB', 'Adidas', 35, 'Castelo de Taças', 'King Abdullah Sports City', 'Arábia Saudita', 'Jeddah', 'Saudi Pro League');
INSERT INTO TIMES VALUES('Al Ettifaq FC', 'ETT', 1947, 'Verde e Vermelho', 30, 'Steven Gerrard', 'Saeed Al-Ghamdi', 'Saudi Aramco', 'Nike', 13, 'Comandante', 'Prince Mohamed Bin Fahd Stadium', 'Arábia Saudita', 'Dammam', 'Saudi Pro League');
INSERT INTO TIMES VALUES('Al Shabab FC', 'SHB', 1947, 'Branco e Preto', 30, 'Vítor Pereira', 'Khalid Al Baltan', 'Bank AlJazira', 'New Balance', 24, 'Leões Brancos', 'Prince Faisal bin Fahd Stadium', 'Arábia Saudita', 'Riade', 'Saudi Pro League');
INSERT INTO TIMES VALUES('Damac FC', 'DAM', 1974, 'Vermelho e Branco', 30, 'Cosmin Contra', 'Khalid Al-Ghamdi', 'Saudi Telecom', 'Erima', 2, 'Cavaleiros de Damac', 'Prince Sultan bin Abdul Aziz Stadium', 'Arábia Saudita', 'Khamis Mushait', 'Saudi Pro League');
INSERT INTO TIMES VALUES('Al Fateh SC', 'FAT', 1958, 'Azul e Branco', 30, 'Slaven Bilić', 'Ahmed Al-Rashed', 'Almarai', 'Puma', 2, 'Al Namouthaji', 'Prince Abdullah bin Jalawi Stadium', 'Arábia Saudita', 'Al-Hasa', 'Saudi Pro League');
INSERT INTO TIMES VALUES('Al Rayyan SC', 'RAY', 1967, 'Vermelho e Preto', 30, 'Leonardo Jardim', 'Ali Bin Saeed Al-Nuaimi', 'Ooredoo', 'Nike', 17, 'Leões', 'Ahmad bin Ali Stadium', 'Catar', 'Al Rayyan', 'Qatar Stars League');
INSERT INTO TIMES VALUES('Al Sadd SC', 'SAD', 1969, 'Branco e Preto', 30, 'Wesam Rizik', 'Mohammad Bin Hammad', 'Qatar Airways', 'Puma', 75, 'Líder', 'Jassim Bin Hamad Stadium', 'Catar', 'Doha', 'Qatar Stars League');
INSERT INTO TIMES VALUES('Al Duhail SC', 'DUH', 2009, 'Vermelho e Branco', 30, 'Christophe Galtier', 'Khalifa Bin Hamad', 'Vodafone', 'Puma', 17, 'The Red Knights', 'Abdullah bin Khalifa Stadium', 'Catar', 'Doha', 'Qatar Stars League');
INSERT INTO TIMES VALUES('Al Arabi SC', 'ARA', 1952, 'Vermelho e Branco', 30, 'Younes Ali', 'Sheikh Tamim Bin Fahad', 'QNB', 'Adidas', 27, 'Sonhos', 'Grand Hamad Stadium', 'Catar', 'Doha', 'Qatar Stars League');
INSERT INTO TIMES VALUES('Qatar SC', 'QSC', 1961, 'Amarelo e Preto', 30, 'Helio Sousa', 'Sheikh Jassim bin Hamad', 'Qatar National Bank', 'Adidas', 14, 'Reis', 'Suheim Bin Hamad Stadium', 'Catar', 'Doha', 'Qatar Stars League');
INSERT INTO TIMES VALUES('Madureira EC', 'MAD', 1914, 'Tricolor Suburbano', 35, 'Daniel Nery', 'Elias Duba', 'Supermercados Guanabara', 'Numer', 2, 'Madura', 'Estádio Conselheiro Galvão', 'Brasil', 'Rio de Janeiro', 'Série D');
INSERT INTO TIMES VALUES('Bolívar', 'BOL', 1925, 'Azul Claro e Branco', 35, 'Flavio Robatto', 'Marcelo Claure', 'Multicenter', 'Puma', 50, 'Acadêmico', 'Estadio Hernando Siles', 'Bolívia', 'La Paz', 'División Profesional');
INSERT INTO TIMES VALUES('The Strongest', 'STR', 1908, 'Amarelo e Preto', 35, 'Ismael Rescalvo', 'Ronald Crespo', 'Tigo', 'Marathon', 33, 'El Tigre', 'Estadio Hernando Siles', 'Bolívia', 'La Paz', 'División Profesional');
INSERT INTO TIMES VALUES('Nacional Potosí', 'NPO', 1942, 'Vermelho, Branco e Azul', 35, 'Oscar Sanz', 'Wilfredo Condori', 'Coca-Cola', 'Walon', 0, 'La Banda Roja', 'Estadio Víctor Agustín Ugarte', 'Bolívia', 'Potosí', 'División Profesional');
INSERT INTO TIMES VALUES('Jorge Wilstermann', 'WIL', 1949, 'Vermelho e Azul', 35, 'Cristian Díaz', 'Omar Mustafá', 'VIVA', 'Joma', 15, 'Aviador', 'Estadio Félix Capriles', 'Bolívia', 'Cochabamba', 'División Profesional');
INSERT INTO TIMES VALUES('Independiente Petrolero', 'IPE', 1932, 'Vermelho e Branco', 35, 'Marcelo Ponce', 'Jenny Salinas', 'YPFB', 'Umbro', 3, 'Matador', 'Estadio Olímpico Patria', 'Bolívia', 'Sucre', 'División Profesional');
INSERT INTO TIMES VALUES('San Antonio Bulo Bulo', 'SAB', 2012, 'Verde e Amarelo', 35, 'Thiago Leitao', 'Hugo Eduardo', 'Cerveza Paceña', 'Marathon', 1, 'El Bulo Bulo', 'Estádio Carlos Villegas', 'Bolívia', 'Entre Ríos', 'División Profesional');
INSERT INTO TIMES VALUES('Atlanta United FC', 'ATL', 2014, 'Preto, Vermelho e Dourado', 28, 'Gonzalo Pineda', 'Garth Lagerwey', 'American Family Insurance', 'Adidas', 2, 'Freddie the Falcon', 'Mercedes-Benz Stadium', 'EUA', 'Atlanta', 'Major League Soccer');
INSERT INTO TIMES VALUES('Charlotte FC', 'CHA', 2019, 'Azul, Preto e Roxo', 28, 'Dean Smith', 'David Tepper', 'Ally', 'Adidas', 0, 'Sir Minty', 'Bank of America Stadium', 'EUA', 'Charlotte', 'Major League Soccer');
INSERT INTO TIMES VALUES('Portland Timbers', 'PTB', 1975, 'Verde e Ouro', 28, 'Phil Neville', 'Merritt Paulson', 'Alaska Airlines', 'Adidas', 2, 'Timber Joey', 'Providence Park', 'EUA', 'Portland', 'Major League Soccer');
INSERT INTO TIMES VALUES('New York City FC', 'NYC', 2013, 'Azul Marinho e Branco', 28, 'Nick Cushing', 'Brad Sims', 'Etihad Airways', 'Adidas', 1, 'Pigeon', 'Yankee Stadium', 'EUA', 'Nova York', 'Major League Soccer');
INSERT INTO TIMES VALUES('New York Red Bulls', 'NYR', 1994, 'Vermelho e Branco', 28, 'Sandro Schwarz', 'Marc de Grandpre', 'Red Bull', 'Adidas', 0, 'Red Bull', 'Red Bull Arena', 'EUA', 'Harrison', 'Major League Soccer');
INSERT INTO TIMES VALUES('Red Bull Bragantino', 'RBB', 1928, 'Branco e Vermelho', 35, 'Pedro Caixinha', 'Marcin Lesniewski', 'Red Bull', 'New Balance', 2, 'Massa Bruta', 'Nabi Abi Chedid', 'Brasil', 'Bragança Paulista', 'Série A');
INSERT INTO TIMES VALUES('Água Santa', 'AGS', 1981, 'Azul e Branco', 35, 'Fernando Marchiori', 'Paulinho Correia', 'P&G', 'Umbro', 0, 'Netuno', 'Arena Inamar', 'Brasil', 'Diadema', 'Paulista A1');
INSERT INTO TIMES VALUES('Mirassol FC', 'MIR', 1924, 'Amarelo e Verde', 35, 'Eduardo Baptista', 'Edson Ermenegildo', 'Eletro', 'Volt', 2, 'Leão', 'José Maria de Campos Maia', 'Brasil', 'Mirassol', 'Série B');
INSERT INTO TIMES VALUES('LA Galaxy', 'LAG', 1994, 'Branco, Azul e Ouro', 28, 'Greg Vanney', 'Chris Klein', 'Herbalife Nutrition', 'Adidas', 9, 'Cozmo', 'Dignity Health Sports Park', 'EUA', 'Carson', 'Major League Soccer');
INSERT INTO TIMES VALUES('Los Angeles FC', 'LAFC', 2014, 'Preto e Ouro', 28, 'Steve Cherundolo', 'Larry Freedman', 'Banc of California', 'Adidas', 3, 'Feliz', 'BMO Stadium', 'EUA', 'Los Angeles', 'Major League Soccer');
INSERT INTO TIMES VALUES('Seattle Sounders', 'SEA', 1974, 'Verde e Azul', 28, 'Brian Schmetzer', 'Adrian Hanauer', 'Zulu Alpha Kilo', 'Adidas', 6, 'Sam The Eagle', 'Lumen Field', 'EUA', 'Seattle', 'Major League Soccer');
INSERT INTO TIMES VALUES('Atlético Ottawa', 'AOT', 2020, 'Vermelho e Preto', 28, 'Carlos González', 'Fernando López', 'TD Bank', 'Macron', 1, 'Bucky', 'TD Place Stadium', 'Canadá', 'Ottawa', 'Canadian Premier League');
INSERT INTO TIMES VALUES('Valour FC', 'VFC', 2019, 'Bordô, Dourado e Preto', 28, 'Phillip Dos Santos', 'Wade Miller', 'Telus', 'Macron', 0, 'Valour', 'IG Field', 'Canadá', 'Winnipeg', 'Canadian Premier League');
INSERT INTO TIMES VALUES('Cerezo Osaka', 'CER', 1957, 'Rosa e Azul Marinho', 28, 'Akio Kogiku', 'Hiroshi Yozaki', 'Yanmar', 'Puma', 8, 'Lavi', 'Yodoko Sakura Stadium', 'Japão', 'Osaka', 'J-League');
INSERT INTO TIMES VALUES('Vissel Kobe', 'VIS', 1966, 'Vermelho e Preto', 28, 'Takayuki Yoshida', 'Hiroshi Mikitani', 'Rakuten', 'Asics', 4, 'Movi', 'Noevir Stadium Kobe', 'Japão', 'Kobe', 'J-League');
INSERT INTO TIMES VALUES('Urawa Red Diamonds', 'URA', 1950, 'Vermelho, Branco e Preto', 28, 'Per-Mathias Høgmo', 'Masanori Omi', 'Mitsubishi', 'Nike', 15, 'Reds', 'Saitama Stadium 2002', 'Japão', 'Saitama', 'J-League');
INSERT INTO TIMES VALUES('Kyoto Sanga FC', 'KYO', 1922, 'Roxo', 28, 'Kiyotaka Ishimaru', 'Masato Hachimine', 'Kyocera', 'Puma', 3, 'Kotosuke', 'Sanga Stadium by Kyocera', 'Japão', 'Quioto', 'J-League');
INSERT INTO TIMES VALUES('Kawasaki Frontale', 'KWF', 1955, 'Azul e Preto', 28, 'Toru Oniki', 'Yuji Fujino', 'Fujitsu', 'Puma', 11, 'Fron-ta', 'Todoroki Athletics Stadium', 'Japão', 'Kawasaki', 'J-League');
INSERT INTO TIMES VALUES('Real Sociedad', 'RSO', 1909, 'Azul e Branco', 28, 'Imanol Alguacil', 'Jokin Aperribay', 'Cazoo', 'Macron', 10, 'Txuri-urdin', 'Anoeta Stadium', 'Espanha', 'San Sebastián', 'La Liga');
