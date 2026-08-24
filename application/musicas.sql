CREATE DATABASE MUSICA;

USE MUSICA;

CREATE TABLE BANDA(
	NOME VARCHAR(100),
    QNTD_MEMBROS VARCHAR(100),
    ANO INTEGER,
    PAIS VARCHAR(100),
    ALBUNS INTEGER,
    MUSICAS INTEGER,
    GENERO VARCHAR(100)
);

INSERT INTO BANDA VALUES('Linkin Park', 6, 1996, 'Estados Unidos', 8, 97, 'Nu Metal');
INSERT INTO BANDA VALUES('Green Day', 3, 1987, 'Estados Unidos', 14, 181, 'Punk Rock');
INSERT INTO BANDA VALUES('Nirvana', 3, 1987, 'Estados Unidos', 3, 37, 'Grunge');
INSERT INTO BANDA VALUES('The Beatles', 4, 1960, 'Inglaterra', 13, 213, 'Rock Classico');
INSERT INTO BANDA VALUES('Black Sabbath', 4, 1968, 'Inglaterra', 19, 190, 'Heavy Metal');
INSERT INTO BANDA VALUES('Led Zeppelin', 4, 1968, 'Inglaterra', 9, 83, 'Rock Classico');
INSERT INTO BANDA VALUES('Korn', 5, 1993, 'Estados Unidos', 14, 163, 'Nu Metal');
INSERT INTO BANDA VALUES('Avenged Sevenfold', 5, 1999, 'Estados Unidos', 8, 89, 'Metal Alternativo');
INSERT INTO BANDA VALUES('Judas Priest', 5, 1969, 'Inglaterra', 19, 220, 'Heavy Metal');
INSERT INTO BANDA VALUES('Van Halen', 4, 1972, 'Estados Unidos', 12, 130, 'Hard Rock');
INSERT INTO BANDA VALUES('Capital Inicial', 4, 1982, 'Brasil', 14, 160, 'Rock Brasileiro');
INSERT INTO BANDA VALUES('Ghost', 5, 2008, 'Suécia', 5, 57, 'Metal Gótico');
INSERT INTO BANDA VALUES('Evanescence', 5, 1995, 'Estados Unidos', 5, 50, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Accept', 5, 1976, 'Alemanha', 17, 1995, 'Heavy Metal');
INSERT INTO BANDA VALUES('Rammstein', 6, 1994, 'Alemanha', 8, 74, 'Metal Industrial');
INSERT INTO BANDA VALUES('Mayhem', 5, 1984, 'Noruega', 7, 59, 'Black Metal');
INSERT INTO BANDA VALUES('Audioslave', 4, 2001, 'Estados Unidos', 3, 44, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Angra', 5, 1991, 'Brasiç', 10, 105, 'Power Metal');
INSERT INTO BANDA VALUES('Sepultura', 4, 1984, 'Brasil', 15, 165, 'Trash Metal');
INSERT INTO BANDA VALUES('Alice In Chains', 4, 1987, 'Estados Unidos', 6, 68, 'Grunge');
INSERT INTO BANDA VALUES('AC/DC', 5, 1973, 'Austrália', 17, 170, 'Hard Rock');
INSERT INTO BANDA VALUES('Arctic Monkey', 4, 2002, 'Inglaterra', 7, 94, 'Indie Rock');
INSERT INTO BANDA VALUES('The Rolling Stones', 4, 1962, 'Inglaterra', 30, 370, 'Rock Clássico');
INSERT INTO BANDA VALUES('Motörhead', 3, 1975, 'Inglaterra', 22, 250, 'Heavy Metal');
INSERT INTO BANDA VALUES('Bad Religion', 6, 1979, 'Estados Unidos', 17, 230, 'Punk Rock');
INSERT INTO BANDA VALUES('Sum 41', 4, 1996, 'Canadá', 8, 105, 'Punk Rock');
INSERT INTO BANDA VALUES('Legião Urbana', 3, 1982, 'Brasil', 8, 100, 'Rock Brasilero');
INSERT INTO BANDA VALUES('Deep Purple', 5, 1968, 'Inglaterra', 22, 280, 'Rock Progressivo');
INSERT INTO BANDA VALUES('Titãs', 3, 1982, 'Brasil', 14, 180, 'Rock Brasilero');
INSERT INTO BANDA VALUES('Rush', 3, 1968, 'Canadá', 19, 166, 'Rock Progressivo');
INSERT INTO BANDA VALUES('DIO', 4, 1982, 'Estados Unidos', 10, 105, 'Heavy Metal');
INSERT INTO BANDA VALUES('Disturbed', 4, 1994, 'Estados Unidos', 8, 100, 'Nu Metal');
INSERT INTO BANDA VALUES('Iron Maiden', 6, 1975, 'Inglaterra', 17, 195, 'Heavy Metal');
INSERT INTO BANDA VALUES('Helloween', 7, 1984, 'Alemanha', 17, 180, 'Power Metal');
INSERT INTO BANDA VALUES('Barão Vermelho', 4, 1981, 'Brasil', 14, 145, 'Rock Brasileiro');
INSERT INTO BANDA VALUES('Scorpions', 5, 1965, 'Alemanha', 19, 200, 'Hard Rock');
INSERT INTO BANDA VALUES('Blitz', 6, 1980, 'Brasil', 5, 55, 'Rock Brasileiro');
INSERT INTO BANDA VALUES('Megadeth', 4, 1983, 'Estados Unidos', 16, 170, 'Thrash Metal');
INSERT INTO BANDA VALUES('Oasis', 5, 1991, 'Reino Unido', 7, 78, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Slayer', 4, 1981, 'Estados Unidos', 12, 126, 'Thrash Metal');
INSERT INTO BANDA VALUES('Metallica', 4, 1981, 'Estados Unidos', 11, 120, 'Thrash Metal');
INSERT INTO BANDA VALUES('Pantera', 4, 1981, 'Estados Unidos', 9, 87, 'Groove Metal');
INSERT INTO BANDA VALUES('Blur', 4, 1988, 'Reino Unido', 9, 105, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Blink-182', 3, 1992, 'Estados Unidos', 9, 120, 'Punk Rock');
INSERT INTO BANDA VALUES('Limp Bizkit', 5, 1994, 'Estados Unidos', 6, 70, 'Nu Metal');
INSERT INTO BANDA VALUES('Nightwish', 6, 1996, 'Finlândia', 10, 105, 'Metal Sinfonico');
INSERT INTO BANDA VALUES('Babymetal', 2, 2010, 'Japão', 4, 45, 'Kawaii Metal');
INSERT INTO BANDA VALUES('The Who', 4, 1964, 'Reino Unido', 12, 175, 'Rock Classico');
INSERT INTO BANDA VALUES('Immortal', 3, 1991, 'Noruega', 10, 85, 'Black Metal');
INSERT INTO BANDA VALUES('Slipknot', 9, 1995, 'Estados Unidos', 7, 78, 'Nu Metal');
INSERT INTO BANDA VALUES('System of a Down', 4, 1994, 'Estados Unidos', 5, 57, 'Nu Metal');
INSERT INTO BANDA VALUES('Mötley Crüe', 4, 1981, 'Estados Unidos', 9, 100, 'Hard Rock');
INSERT INTO BANDA VALUES('Cannibal Corpse', 5, 1988, 'Estados Unidos', 16, 175, 'Death Metal');
INSERT INTO BANDA VALUES('CPM 22', 4, 1995, 'Brasil', 7, 80, 'Punk Rock');
INSERT INTO BANDA VALUES('Los Hermanos', 4, 1997, 'Brasil', 4, 55, 'Rock Brasileiro');
INSERT INTO BANDA VALUES('Mamonas Assassinas', 5, 1990, 'Brasil', 1, 14, 'Rock Cômico');
INSERT INTO BANDA VALUES('Death', 4, 1983, 'Estados Unidos', 7, 60, 'Death Metal');
INSERT INTO BANDA VALUES('Raimundos', 4, 1987, 'Brasil', 9, 100, 'Punk Rock');
INSERT INTO BANDA VALUES('Venom', 3, 1978, 'Reino Unido', 15, 160, 'Black Metal');
INSERT INTO BANDA VALUES('Bathory', 1, 1983, 'Suécia', 12, 100, 'Black Metal');
INSERT INTO BANDA VALUES('Behemoth', 4, 1991, 'Polônia', 12, 120, 'Death Metal');
INSERT INTO BANDA VALUES('Sarcófago', 3, 1985, 'Brasil', 3, 33, 'Black Metal');
INSERT INTO BANDA VALUES('Detonautas Roque Clube', 5, 1997, 'Brasil', 8, 90, 'Rock Alternativo');
INSERT INTO BANDA VALUES('The Offspring', 4, 1984, 'Estados Unidos', 10, 125, 'Punk Rock');
INSERT INTO BANDA VALUES('Dark Funeral', 5, 1993, 'Suécia', 7, 70, 'Black Metal');
INSERT INTO BANDA VALUES('Sex Pistols', 4, 1975, 'Reino Unido', 1, 12, 'Punk Rock');
INSERT INTO BANDA VALUES('Within Temptation', 6, 1996, 'Holanda', 8, 85, 'Metal Sinfonico');
INSERT INTO BANDA VALUES('Bring Me the Horizon', 5, 2004, 'Reino Unido', 7, 80, 'Metalcore');
INSERT INTO BANDA VALUES('Europe', 5, 1979, 'Suécia', 11, 110, 'Hard Rock');
INSERT INTO BANDA VALUES('Guns N'' Roses', 6, 1985, 'Estados Unidos', 6, 68, 'Hard Rock');
INSERT INTO BANDA VALUES('Skank', 4, 1991, 'Brasil', 9, 105, 'Rock Brasileiro');
INSERT INTO BANDA VALUES('Engenheiros do Hawaii', 3, 1985, 'Brasil', 10, 110, 'Rock Brasileiro');
INSERT INTO BANDA VALUES('Os Paralamas do Sucesso', 3, 1982, 'Brasil', 13, 150, 'Rock Brasileiro');
INSERT INTO BANDA VALUES('Anthrax', 5, 1981, 'Estados Unidos', 11, 125, 'Thrash Metal');
INSERT INTO BANDA VALUES('Arch Enemy', 5, 1995, 'Suécia', 11, 120, 'Death Metal');
INSERT INTO BANDA VALUES('Ratos de Porão', 4, 1981, 'Brasil', 13, 150, 'Hardcore Punk');
INSERT INTO BANDA VALUES('Asking Alexandria', 5, 2008, 'Reino Unido', 8, 85, 'Metalcore');
INSERT INTO BANDA VALUES('Testament', 5, 1983, 'Estados Unidos', 13, 140, 'Thrash Metal');
INSERT INTO BANDA VALUES('Gamma Ray', 5, 1989, 'Alemanha', 11, 115, 'Power Metal');
INSERT INTO BANDA VALUES('Avantasia', 1, 1999, 'Alemanha', 9, 100, 'Power Metal');
INSERT INTO BANDA VALUES('Bad Omens', 4, 2015, 'Estados Unidos', 3, 40, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Poppy', 1, 2014, 'Estados Unidos', 5, 50, 'Nu Metal');
INSERT INTO BANDA VALUES('The Smiths', 4, 1982, 'Reino Unido', 4, 60, 'Indie Rock');
INSERT INTO BANDA VALUES('The Cure', 4, 1978, 'Reino Unido', 13, 160, 'Rock Gótico');
INSERT INTO BANDA VALUES('The Band', 5, 1967, 'Canadá', 10, 110, 'Folk Rock');
INSERT INTO BANDA VALUES('The Beach Boys', 5, 1961, 'Estados Unidos', 29, 320, 'Rock Classico');
INSERT INTO BANDA VALUES('Creed', 4, 1994, 'Estados Unidos', 4, 45, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Creedence Clearwater Revival', 4, 1967, 'Estados Unidos', 7, 75, 'Rock Classico');
INSERT INTO BANDA VALUES('Yes', 5, 1968, 'Reino Unido', 22, 120, 'Rock Progressivo');
INSERT INTO BANDA VALUES('ZZ Top', 3, 1969, 'Estados Unidos', 15, 155, 'Blues Rock');
INSERT INTO BANDA VALUES('The Doors', 4, 1965, 'Estados Unidos', 9, 85, 'Rock Psicodélico');
INSERT INTO BANDA VALUES('Def Leppard', 5, 1977, 'Reino Unido', 12, 125, 'Hard Rock');
INSERT INTO BANDA VALUES('Deftones', 5, 1988, 'Estados Unidos', 9, 100, 'Nu Metal');
INSERT INTO BANDA VALUES('Dire Straits', 4, 1977, 'Reino Unido', 6, 45, 'Rock Progressivo');
INSERT INTO BANDA VALUES('Alter Bridge', 4, 2004, 'Estados Unidos', 7, 78, 'Hard Rock');
INSERT INTO BANDA VALUES('Dissection', 2, 1989, 'Suécia', 3, 30, 'Black Metal');
INSERT INTO BANDA VALUES('Dream Theater', 5, 1985, 'Estados Unidos', 15, 120, 'Metal Progressivo');
INSERT INTO BANDA VALUES('Eagles', 4, 1971, 'Estados Unidos', 7, 75, 'Soft Rock');
INSERT INTO BANDA VALUES('Drowning Pool', 4, 1996, 'Estados Unidos', 7, 75, 'Nu Metal');
INSERT INTO BANDA VALUES('Eisbrecher', 5, 2003, 'Alemanha', 8, 90, 'Metal Industrial');
INSERT INTO BANDA VALUES('Epica', 6, 2002, 'Holanda', 8, 95, 'Metal Sinfonico');
INSERT INTO BANDA VALUES('Cream', 3, 1966, 'Reino Unido', 4, 35, 'Blues Rock');
INSERT INTO BANDA VALUES('Soundgarden', 4, 1984, 'Estados Unidos', 6, 70, 'Grunge');
INSERT INTO BANDA VALUES('Stone Temple Pilots', 4, 1989, 'Estados Unidos', 8, 85, 'Grunge');
INSERT INTO BANDA VALUES('Pearl Jam', 5, 1990, 'Estados Unidos', 12, 130, 'Grunge');
INSERT INTO BANDA VALUES('Escape the Fate', 4, 2004, 'Estados Unidos', 7, 80, 'Rock Emo');
INSERT INTO BANDA VALUES('Evile', 4, 2004, 'Reino Unido', 6, 60, 'Thrash Metal');
INSERT INTO BANDA VALUES('Exodus', 5, 1979, 'Estados Unidos', 11, 115, 'Thrash Metal');
INSERT INTO BANDA VALUES('Kiss', 4, 1973, 'Estados Unidos', 20, 210, 'Hard Rock');
INSERT INTO BANDA VALUES('Papa Roach', 4, 1993, 'Estados Unidos', 11, 120, 'Nu Metal');
INSERT INTO BANDA VALUES('Paramore', 3, 2004, 'Estados Unidos', 6, 70, 'Pop Punk');
INSERT INTO BANDA VALUES('Rage Against the Machine', 4, 1991, 'Estados Unidos', 4, 40, 'Rap Rock');
INSERT INTO BANDA VALUES('Pink Floyd', 4, 1965, 'Reino Unido', 15, 100, 'Rock Psicodélico');
INSERT INTO BANDA VALUES('The Police', 3, 1977, 'Reino Unido', 5, 55, 'Reggae Rock');
INSERT INTO BANDA VALUES('The Pretty Reckless', 4, 2009, 'Estados Unidos', 4, 45, 'Hard Rock');
INSERT INTO BANDA VALUES('Queen', 4, 1970, 'Reino Unido', 15, 175, 'Hard Rock');
INSERT INTO BANDA VALUES('Queens of the Stone Age', 5, 1996, 'Estados Unidos', 8, 90, 'Hard Rock');
INSERT INTO BANDA VALUES('Ramones', 4, 1974, 'Estados Unidos', 14, 175, 'Punk Rock');
INSERT INTO BANDA VALUES('The Clash', 4, 1976, 'Reino Unido', 6, 80, 'Punk Rock');
INSERT INTO BANDA VALUES('Red Hot Chili Peppers', 4, 1983, 'Estados Unidos', 13, 160, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Skillet', 4, 1996, 'Estados Unidos', 11, 120, 'Hard Rock');
INSERT INTO BANDA VALUES('Shaman', 4, 2000, 'Brasil', 5, 55, 'Power Metal');
INSERT INTO BANDA VALUES('Alice Cooper', 5, 1968, 'Estados Unidos', 22, 250, 'Hard Rock');
INSERT INTO BANDA VALUES('Aerosmith', 5, 1970, 'Estados Unidos', 15, 160, 'Hard Rock');
INSERT INTO BANDA VALUES('Bon Jovi', 4, 1983, 'Estados Unidos', 16, 170, 'Hard Rock');
INSERT INTO BANDA VALUES('Cinderella', 4, 1983, 'Estados Unidos', 4, 45, 'Hard Rock');
INSERT INTO BANDA VALUES('Mudvayne', 4, 1996, 'Estados Unidos', 5, 60, 'Nu Metal');
INSERT INTO BANDA VALUES('P.O.D.', 4, 1992, 'Estados Unidos', 11, 125, 'Nu Metal');
INSERT INTO BANDA VALUES('R.E.M.', 4, 1980, 'Estados Unidos', 15, 180, 'Rock Alternativo');
INSERT INTO BANDA VALUES('U.D.O.', 5, 1987, 'Alemanha', 18, 200, 'Heavy Metal');
INSERT INTO BANDA VALUES('King Crimson', 3, 1968, 'Reino Unido', 13, 85, 'Rock Progressivo');
INSERT INTO BANDA VALUES('Tool', 4, 1990, 'Estados Unidos', 5, 45, 'Metal Progressivo');
INSERT INTO BANDA VALUES('The Jimi Hendrix Experience', 3, 1966, 'Reino Unido/Estados Unidos', 3, 35, 'Blues Rock');
INSERT INTO BANDA VALUES('Velvet Revolver', 4, 2002, 'Estados Unidos', 2, 25, 'Hard Rock');
INSERT INTO BANDA VALUES('The Velvet Underground', 4, 1964, 'Estados Unidos', 5, 50, 'Soft Rock');
INSERT INTO BANDA VALUES('The Byrds', 5, 1964, 'Estados Unidos', 11, 140, 'Folk Rock');
INSERT INTO BANDA VALUES('W.A.S.P.', 4, 1982, 'Estados Unidos', 15, 160, 'Heavy Metal');
INSERT INTO BANDA VALUES('Rainbow', 5, 1975, 'Reino Unido', 8, 75, 'Heavy Metal');
INSERT INTO BANDA VALUES('Mercyful Fate', 5, 1981, 'Dinamarca', 7, 70, 'Heavy Metal');
INSERT INTO BANDA VALUES('Bad Nerves', 5, 2017, 'Reino Unido', 2, 25, 'Garage Rock');
INSERT INTO BANDA VALUES('Falling in Reverse', 5, 2008, 'Estados Unidos', 4, 45, 'Rock Emo');
INSERT INTO BANDA VALUES('Motionless in White', 5, 2005, 'Estados Unidos', 6, 70, 'Metalcore');
INSERT INTO BANDA VALUES('Architects', 5, 2004, 'Reino Unido', 10, 110, 'Metalcore');
INSERT INTO BANDA VALUES('Bullet for My Valentine', 4, 1998, 'Reino Unido', 7, 85, 'Metalcore');
INSERT INTO BANDA VALUES('A Day to Remember', 5, 2003, 'Estados Unidos', 7, 80, 'Metalcore');
INSERT INTO BANDA VALUES('Three Days Grace', 4, 1997, 'Canadá', 7, 80, 'Rock Alternativo');
INSERT INTO BANDA VALUES('My Chemical Romance', 4, 2001, 'Estados Unidos', 4, 55, 'Rock Emo');
INSERT INTO BANDA VALUES('Thirty Seconds to Mars', 2, 1998, 'Estados Unidos', 6, 65, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Jimmy Eat World', 4, 1993, 'Estados Unidos', 10, 120, 'Rock Alternativo');
INSERT INTO BANDA VALUES('3 Doors Down', 4, 1996, 'Estados Unidos', 7, 80, 'Rock Alternativo');
INSERT INTO BANDA VALUES('The Killers', 4, 2001, 'Estados Unidos', 7, 85, 'Indie Rock');
INSERT INTO BANDA VALUES('Fall Out Boy', 4, 2001, 'Estados Unidos', 8, 110, 'Pop Punk');
INSERT INTO BANDA VALUES('Hoobastank', 4, 1994, 'Estados Unidos', 6, 65, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Killswitch Engage', 5, 1999, 'Estados Unidos', 8, 90, 'Metalcore');
INSERT INTO BANDA VALUES('Rob Zombie', 4, 1997, 'Estados Unidos', 7, 75, 'Metal Industrial');
INSERT INTO BANDA VALUES('Machine Head', 4, 1991, 'Estados Unidos', 10, 110, 'Groove Metal');
INSERT INTO BANDA VALUES('Black Label Society', 4, 1998, 'Estados Unidos', 11, 120, 'Heavy Metal');
INSERT INTO BANDA VALUES('Ozzy Osbourne', 5, 1979, 'Reino Unido', 13, 135, 'Heavy Metal');
INSERT INTO BANDA VALUES('Down', 5, 1991, 'Estados Unidos', 3, 35, 'Groove Metal');
INSERT INTO BANDA VALUES('The Misfits', 4, 1977, 'Estados Unidos', 7, 70, 'Punk Rock');
INSERT INTO BANDA VALUES('Staind', 4, 1995, 'Estados Unidos', 8, 90, 'Nu Metal');
INSERT INTO BANDA VALUES('Godsmack', 4, 1995, 'Estados Unidos', 8, 95, 'Metal Alternativo');
INSERT INTO BANDA VALUES('Blue Öyster Cult', 5, 1967, 'Estados Unidos', 15, 155, 'Hard Rock');
INSERT INTO BANDA VALUES('White Zombie', 4, 1985, 'Estados Unidos', 4, 40, 'Metal Industrial');
INSERT INTO BANDA VALUES('Dead Kennedys', 4, 1978, 'Estados Unidos', 4, 45, 'Punk Rock');
INSERT INTO BANDA VALUES('Rhapsody of Fire', 5, 1993, 'Itália', 14, 150, 'Power Metal');
INSERT INTO BANDA VALUES('Lynyrd Skynyrd', 6, 1964, 'Estados Unidos', 14, 155, 'Blues Rock');
INSERT INTO BANDA VALUES('Måneskin', 4, 2016, 'Itália', 3, 35, 'Pop Rock');
INSERT INTO BANDA VALUES('Manowar', 4, 1980, 'Estados Unidos', 11, 105, 'Heavy Metal');
INSERT INTO BANDA VALUES('Masterplan', 5, 2002, 'Alemanha', 7, 75, 'Power Metal');
INSERT INTO BANDA VALUES('Mr. Big', 4, 1988, 'Estados Unidos', 9, 100, 'Hard Rock');
INSERT INTO BANDA VALUES('Muse', 3, 1994, 'Reino Unido', 9, 110, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Mushroomhead', 8, 1993, 'Estados Unidos', 9, 95, 'Metal Industrial');
INSERT INTO BANDA VALUES('Nazareth', 4, 1968, 'Reino Unido', 25, 270, 'Hard Rock');
INSERT INTO BANDA VALUES('Kansas', 5, 1973, 'Estados Unidos', 16, 150, 'Rock Progressivo');
INSERT INTO BANDA VALUES('Nickelback', 4, 1995, 'Canadá', 10, 115, 'Hard Rock');
INSERT INTO BANDA VALUES('Nuclear Assault', 4, 1984, 'Estados Unidos', 6, 60, 'Thrash Metal');
INSERT INTO BANDA VALUES('Overkill', 4, 1980, 'Estados Unidos', 20, 220, 'Thrash Metal');
INSERT INTO BANDA VALUES('Survivor', 4, 1978, 'Estados Unidos', 7, 70, 'Hard Rock');
INSERT INTO BANDA VALUES('Charlie Brown Jr.', 4, 1992, 'Brasil', 9, 105, 'Rock Alternativo');
INSERT INTO BANDA VALUES('The White Stripes', 2, 1997, 'Estados Unidos', 6, 65, 'Garage Rock');
INSERT INTO BANDA VALUES('Whitesnake', 6, 1978, 'Reino Unido', 13, 150, 'Hard Rock');

SELECT * FROM BANDA;

SELECT nome, genero FROM BANDA;

SELECT nome, pais
FROM BANDA
WHERE genero = 'Heavy Metal';

SELECT nome, pais
FROM BANDA
WHERE genero = 'Heavy Metal';

SELECT nome, ano_formacao
FROM BANDA
WHERE ano_formacao > 2000;

SELECT nome
FROM BANDA
WHERE pais = 'Estados Unidos'
AND genero = 'Nu Metal';

SELECT nome, ano_formacao
FROM BANDA
WHERE ano_formacao BETWEEN 1980 AND 1990;

SELECT nome, pais
FROM BANDA
WHERE pais IN ('Brasil', 'Estados Unidos', 'Inglaterra');

SELECT nome
FROM BANDA
WHERE nome LIKE 'The%';

SELECT nome, genero
FROM BANDA
WHERE genero LIKE '%Metal%';

SELECT nome, ano_formacao
FROM BANDA
ORDER BY ano_formacao ASC;

SELECT nome, albuns
FROM BANDA
ORDER BY albuns DESC;

SELECT nome, albuns
FROM BANDA
ORDER BY albuns DESC
LIMIT 10;

SELECT COUNT(*) AS total_bandas
FROM BANDA;

SELECT AVG(integrantes) AS media_integrantes
FROM BANDA;

SELECT MAX(musicas) AS maior_numero_musicas
FROM BANDA;

SELECT pais, COUNT(*) AS total
FROM BANDA
GROUP BY pais;

SELECT genero, COUNT(*) AS total
FROM BANDA
GROUP BY genero
ORDER BY total DESC;

SELECT genero, AVG(albuns) AS media_albuns
FROM BANDA
GROUP BY genero;

SELECT genero, COUNT(*) AS total
FROM BANDA
GROUP BY genero
HAVING COUNT(*) > 5;

SELECT pais, AVG(albuns) AS media_albuns
FROM BANDA
GROUP BY pais
HAVING AVG(albuns) > 10;

SELECT pais, MIN(ano_formacao) AS ano_mais_antigo
FROM BANDA
GROUP BY pais;

SELECT nome, musicas
FROM BANDA
WHERE ano_formacao > 1990
ORDER BY musicas DESC
LIMIT 5;
