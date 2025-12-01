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

-- Times da Espanha
INSERT INTO TIMES VALUES('Real Madrid', 'RMA', 1902, 'Branco', 25, 'Xabi Alonso', 'Florentino Pérez', 'Emirates', 'Adidas', 132, 'Cachorro', 'Santiago Bernabéu', 'Espanha', 'Madrid', 'La Liga');
INSERT INTO TIMES VALUES('Barcelona', 'BAR', 1899, 'Blaugrana', 25, 'Hansi Flick', 'Joan Laporta', 'Spotify', 'Nike', 99, 'El Avi', 'Camp Nou', 'Espanha', 'Barcelona', 'La Liga');
INSERT INTO TIMES VALUES('Villarreal', 'VIL', 1923, 'Amarelo', 28, 'Marcelino García', 'Fernando Roig', 'Pamesa Cerámica', 'Joma', 4, 'Submarino Amarelo', 'La Cerámica', 'Espanha', 'Villarreal', 'La Liga');

-- Times da Inglaterra

INSERT INTO TIMES VALUES('Liverpool'      , 'LIV', 1892, 'Vermelho', 29, 'Arne Slot', 'Tom Werner', 'Standard Chartered', 'Adidas', 75, 'Mighty Red', 'Anfield', 'Inglaterra', 'Liverpool', 'Premier League');
INSERT INTO TIMES VALUES('Manchester City'   , 'MCI', 1880, 'Azul', 28, 'Pep Guardiola', 'Khaldoon Al Mubarak', 'Etihad Airways', 'Puma', 38, 'Moonchester e Moonbeam', 'Etihad Stadium', 'Inglaterra', 'Manchester', 'Premier League');
INSERT INTO TIMES VALUES('Manchester United' , 'MUN', 1878, 'Vermelho', 28, 'Erik ten Hag', 'Joel Glazer (Co-proprietário)', 'Snapdragon', 'Adidas', 68, 'Fred The Red', 'Old Trafford', 'Inglaterra', 'Manchester', 'Premier League');
INSERT INTO TIMES VALUES('Arsenal', 'ARS', 1886, 'Vermelho', 28, 'Mikel Arteta', 'Sir Chips Keswick', 'Emirates', 'Adidas', 48, 'Gunnersaurus Rex (Dinossauro)', 'Emirates Stadium', 'Inglaterra', 'Londres', 'Premier League');

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
INSERT INTO TIMES VALUES('PSV Eindhoven', 'PSV', 1913, 'Vermelho e Branco', 28, 'Peter Bosz', 'Marcel Brands', 'Philips', 'Puma', 45, 'Boeli de Beer', 'Philips Stadion', 'Holanda', 'Eindhoven', 'Eredivisie');
INSERT INTO TIMES VALUES('Ajax', 'AJX', 1900, 'Branco e Vermelho', 28, 'Francesco Farioli', 'Alex Kroes', 'Ziggo', 'Adidas', 70, 'Ajax', 'Johan Cruijff Arena', 'Holanda', 'Amsterdã', 'Eredivisie');
INSERT INTO TIMES VALUES('América Mineiro', 'AME', 1915, 'Verde e Preto', 35, 'Cauan de Almeida', 'Alencar da Silveira Jr', 'Pixbet', 'Volt', 30, 'Coelho', 'Independência', 'Brasil', 'Belo Horizonte', 'Série A');
INSERT INTO TIMES VALUES('Internacional', 'INT', 1909, 'Vermelho e Branco', 35, 'Eduardo Coudet', 'Alessandro Barcellos', 'Banrisul', 'Adidas', 55, 'Saci', 'Beira-Rio', 'Brasil', 'Porto Alegre', 'Série A');
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
INSERT INTO TIMES VALUES('Valencia', 'VAL', 1919, 'Branco e Preto', 28, 'Rubén Baraja', 'Lay Hoon Chan', 'Puma', 'Puma', 30, 'Morcego', 'Mestalla', 'Espanha', 'Valência', 'La Liga');
INSERT INTO TIMES VALUES('Rayo Vallecano', 'RAY', 1924, 'Branco com faixa vermelha', 25, 'Íñigo Pérez', 'Raúl Martín Presa', 'Digital Padel', 'Umbro', 2, 'Abelha', 'Vallecas', 'Espanha', 'Madrid', 'La Liga');
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


INSERT INTO TIMES VALUES('Nice', 'NICE', 1904, 'Vermelho e Preto', 28, 'Franck Haise', 'Jim Ratcliffe (INEOS)', 'Ineos', 'Le Coq Sportif', 12, 'Aiglon', 'Allianz Riviera', 'França', 'Nice', 'Ligue 1');
