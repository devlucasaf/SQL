CREATE DATABASE MUSICA;

USE MUSICA;

-- Criação da tabela Banda
CREATE TABLE BANDA(
	NOME VARCHAR(100),
    QNTD_MEMBROS VARCHAR(100),
    ANO INTEGER,
    PAIS VARCHAR(100),
    ALBUNS INTEGER,
    MUSICAS INTEGER,
    GENERO VARCHAR(100)
);

-- Inserindo dados das Bandas
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
INSERT INTO BANDA VALUES('Accept', 5, 1976, 'Alemanha', 17, 199, 'Heavy Metal');
INSERT INTO BANDA VALUES('Rammstein', 6, 1994, 'Alemanha', 8, 74, 'Metal Industrial');
INSERT INTO BANDA VALUES('Mayhem', 5, 1984, 'Noruega', 7, 59, 'Black Metal');
INSERT INTO BANDA VALUES('Audioslave', 4, 2001, 'Estados Unidos', 3, 44, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Angra', 5, 1991, 'Brasil', 10, 105, 'Power Metal');
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
INSERT INTO BANDA VALUES('Oasis', 5, 1991, 'Inglaterra', 7, 78, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Slayer', 4, 1981, 'Estados Unidos', 12, 126, 'Thrash Metal');
INSERT INTO BANDA VALUES('Metallica', 4, 1981, 'Estados Unidos', 11, 120, 'Thrash Metal');
INSERT INTO BANDA VALUES('Pantera', 4, 1981, 'Estados Unidos', 9, 87, 'Groove Metal');
INSERT INTO BANDA VALUES('Blur', 4, 1988, 'Inglaterra', 9, 105, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Blink-182', 3, 1992, 'Estados Unidos', 9, 120, 'Punk Rock');
INSERT INTO BANDA VALUES('Limp Bizkit', 5, 1994, 'Estados Unidos', 6, 70, 'Nu Metal');
INSERT INTO BANDA VALUES('Nightwish', 6, 1996, 'Finlândia', 10, 105, 'Metal Sinfonico');
INSERT INTO BANDA VALUES('Babymetal', 2, 2010, 'Japão', 4, 45, 'Kawaii Metal');
INSERT INTO BANDA VALUES('The Who', 4, 1964, 'Inglaterra', 12, 175, 'Rock Classico');
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
INSERT INTO BANDA VALUES('Venom', 3, 1978, 'Inglaterra', 15, 160, 'Black Metal');
INSERT INTO BANDA VALUES('Bathory', 1, 1983, 'Suécia', 12, 100, 'Black Metal');
INSERT INTO BANDA VALUES('Behemoth', 4, 1991, 'Polônia', 12, 120, 'Death Metal');
INSERT INTO BANDA VALUES('Sarcófago', 3, 1985, 'Brasil', 3, 33, 'Black Metal');
INSERT INTO BANDA VALUES('Detonautas Roque Clube', 5, 1997, 'Brasil', 8, 90, 'Rock Alternativo');
INSERT INTO BANDA VALUES('The Offspring', 4, 1984, 'Estados Unidos', 10, 125, 'Punk Rock');
INSERT INTO BANDA VALUES('Dark Funeral', 5, 1993, 'Suécia', 7, 70, 'Black Metal');
INSERT INTO BANDA VALUES('Sex Pistols', 4, 1975, 'Inglaterra', 1, 12, 'Punk Rock');
INSERT INTO BANDA VALUES('Within Temptation', 6, 1996, 'Holanda', 8, 85, 'Metal Sinfonico');
INSERT INTO BANDA VALUES('Bring Me the Horizon', 5, 2004, 'Inglaterra', 7, 80, 'Metalcore');
INSERT INTO BANDA VALUES('Europe', 5, 1979, 'Suécia', 11, 110, 'Hard Rock');
INSERT INTO BANDA VALUES('Guns N'' Roses', 6, 1985, 'Estados Unidos', 6, 68, 'Hard Rock');
INSERT INTO BANDA VALUES('Skank', 4, 1991, 'Brasil', 9, 105, 'Rock Brasileiro');
INSERT INTO BANDA VALUES('Engenheiros do Hawaii', 3, 1985, 'Brasil', 10, 110, 'Rock Brasileiro');
INSERT INTO BANDA VALUES('Os Paralamas do Sucesso', 3, 1982, 'Brasil', 13, 150, 'Rock Brasileiro');
INSERT INTO BANDA VALUES('Anthrax', 5, 1981, 'Estados Unidos', 11, 125, 'Thrash Metal');
INSERT INTO BANDA VALUES('Arch Enemy', 5, 1995, 'Suécia', 11, 120, 'Death Metal');
INSERT INTO BANDA VALUES('Ratos de Porão', 4, 1981, 'Brasil', 13, 150, 'Hardcore Punk');
INSERT INTO BANDA VALUES('Asking Alexandria', 5, 2008, 'Inglaterra', 8, 85, 'Metalcore');
INSERT INTO BANDA VALUES('Testament', 5, 1983, 'Estados Unidos', 13, 140, 'Thrash Metal');
INSERT INTO BANDA VALUES('Gamma Ray', 5, 1989, 'Alemanha', 11, 115, 'Power Metal');
INSERT INTO BANDA VALUES('Avantasia', 1, 1999, 'Alemanha', 9, 100, 'Power Metal');
INSERT INTO BANDA VALUES('Bad Omens', 4, 2015, 'Estados Unidos', 3, 40, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Poppy', 1, 2014, 'Estados Unidos', 5, 50, 'Nu Metal');
INSERT INTO BANDA VALUES('The Smiths', 4, 1982, 'Inglaterra', 4, 60, 'Indie Rock');
INSERT INTO BANDA VALUES('The Cure', 4, 1978, 'Inglaterra', 13, 160, 'Rock Gótico');
INSERT INTO BANDA VALUES('The Band', 5, 1967, 'Canadá', 10, 110, 'Folk Rock');
INSERT INTO BANDA VALUES('The Beach Boys', 5, 1961, 'Estados Unidos', 29, 320, 'Rock Classico');
INSERT INTO BANDA VALUES('Creed', 4, 1994, 'Estados Unidos', 4, 45, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Creedence Clearwater Revival', 4, 1967, 'Estados Unidos', 7, 75, 'Rock Classico');
INSERT INTO BANDA VALUES('Yes', 5, 1968, 'Inglaterra', 22, 120, 'Rock Progressivo');
INSERT INTO BANDA VALUES('ZZ Top', 3, 1969, 'Estados Unidos', 15, 155, 'Blues Rock');
INSERT INTO BANDA VALUES('The Doors', 4, 1965, 'Estados Unidos', 9, 85, 'Rock Psicodélico');
INSERT INTO BANDA VALUES('Def Leppard', 5, 1977, 'Inglaterra', 12, 125, 'Hard Rock');
INSERT INTO BANDA VALUES('Deftones', 5, 1988, 'Estados Unidos', 9, 100, 'Nu Metal');
INSERT INTO BANDA VALUES('Dire Straits', 4, 1977, 'Inglaterra', 6, 45, 'Rock Progressivo');
INSERT INTO BANDA VALUES('Alter Bridge', 4, 2004, 'Estados Unidos', 7, 78, 'Hard Rock');
INSERT INTO BANDA VALUES('Dissection', 2, 1989, 'Suécia', 3, 30, 'Black Metal');
INSERT INTO BANDA VALUES('Dream Theater', 5, 1985, 'Estados Unidos', 15, 120, 'Metal Progressivo');
INSERT INTO BANDA VALUES('Eagles', 4, 1971, 'Estados Unidos', 7, 75, 'Soft Rock');
INSERT INTO BANDA VALUES('Drowning Pool', 4, 1996, 'Estados Unidos', 7, 75, 'Nu Metal');
INSERT INTO BANDA VALUES('Eisbrecher', 5, 2003, 'Alemanha', 8, 90, 'Metal Industrial');
INSERT INTO BANDA VALUES('Epica', 6, 2002, 'Holanda', 8, 95, 'Metal Sinfonico');
INSERT INTO BANDA VALUES('Cream', 3, 1966, 'Inglaterra', 4, 35, 'Blues Rock');
INSERT INTO BANDA VALUES('Soundgarden', 4, 1984, 'Estados Unidos', 6, 70, 'Grunge');
INSERT INTO BANDA VALUES('Stone Temple Pilots', 4, 1989, 'Estados Unidos', 8, 85, 'Grunge');
INSERT INTO BANDA VALUES('Pearl Jam', 5, 1990, 'Estados Unidos', 12, 130, 'Grunge');
INSERT INTO BANDA VALUES('Escape the Fate', 4, 2004, 'Estados Unidos', 7, 80, 'Rock Emo');
INSERT INTO BANDA VALUES('Evile', 4, 2004, 'Inglaterra', 6, 60, 'Thrash Metal');
INSERT INTO BANDA VALUES('Exodus', 5, 1979, 'Estados Unidos', 11, 115, 'Thrash Metal');
INSERT INTO BANDA VALUES('Kiss', 4, 1973, 'Estados Unidos', 20, 210, 'Hard Rock');
INSERT INTO BANDA VALUES('Papa Roach', 4, 1993, 'Estados Unidos', 11, 120, 'Nu Metal');
INSERT INTO BANDA VALUES('Paramore', 3, 2004, 'Estados Unidos', 6, 70, 'Pop Punk');
INSERT INTO BANDA VALUES('Rage Against the Machine', 4, 1991, 'Estados Unidos', 4, 40, 'Rap Rock');
INSERT INTO BANDA VALUES('Pink Floyd', 4, 1965, 'Inglaterra', 15, 100, 'Rock Psicodélico');
INSERT INTO BANDA VALUES('The Police', 3, 1977, 'Inglaterra', 5, 55, 'Reggae Rock');
INSERT INTO BANDA VALUES('The Pretty Reckless', 4, 2009, 'Estados Unidos', 4, 45, 'Hard Rock');
INSERT INTO BANDA VALUES('Queen', 4, 1970, 'Inglaterra', 15, 175, 'Hard Rock');
INSERT INTO BANDA VALUES('Queens of the Stone Age', 5, 1996, 'Estados Unidos', 8, 90, 'Hard Rock');
INSERT INTO BANDA VALUES('Ramones', 4, 1974, 'Estados Unidos', 14, 175, 'Punk Rock');
INSERT INTO BANDA VALUES('The Clash', 4, 1976, 'Inglaterra', 6, 80, 'Punk Rock');
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
INSERT INTO BANDA VALUES('King Crimson', 3, 1968, 'Inglaterra', 13, 85, 'Rock Progressivo');
INSERT INTO BANDA VALUES('Tool', 4, 1990, 'Estados Unidos', 5, 45, 'Metal Progressivo');
INSERT INTO BANDA VALUES('The Jimi Hendrix Experience', 3, 1966, 'Inglaterra/Estados Unidos', 3, 35, 'Blues Rock');
INSERT INTO BANDA VALUES('Velvet Revolver', 4, 2002, 'Estados Unidos', 2, 25, 'Hard Rock');
INSERT INTO BANDA VALUES('The Velvet Underground', 4, 1964, 'Estados Unidos', 5, 50, 'Soft Rock');
INSERT INTO BANDA VALUES('The Byrds', 5, 1964, 'Estados Unidos', 11, 140, 'Folk Rock');
INSERT INTO BANDA VALUES('W.A.S.P.', 4, 1982, 'Estados Unidos', 15, 160, 'Heavy Metal');
INSERT INTO BANDA VALUES('Rainbow', 5, 1975, 'Inglaterra', 8, 75, 'Heavy Metal');
INSERT INTO BANDA VALUES('Mercyful Fate', 5, 1981, 'Dinamarca', 7, 70, 'Heavy Metal');
INSERT INTO BANDA VALUES('Bad Nerves', 5, 2017, 'Inglaterra', 2, 25, 'Garage Rock');
INSERT INTO BANDA VALUES('Falling in Reverse', 5, 2008, 'Estados Unidos', 4, 45, 'Rock Emo');
INSERT INTO BANDA VALUES('Motionless in White', 5, 2005, 'Estados Unidos', 6, 70, 'Metalcore');
INSERT INTO BANDA VALUES('Architects', 5, 2004, 'Inglaterra', 10, 110, 'Metalcore');
INSERT INTO BANDA VALUES('Bullet for My Valentine', 4, 1998, 'País de Gales', 7, 85, 'Metalcore');
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
INSERT INTO BANDA VALUES('Ozzy Osbourne', 5, 1979, 'Inglaterra', 13, 135, 'Heavy Metal');
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
INSERT INTO BANDA VALUES('Muse', 3, 1994, 'Inglaterra', 9, 110, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Mushroomhead', 8, 1993, 'Estados Unidos', 9, 95, 'Metal Industrial');
INSERT INTO BANDA VALUES('Nazareth', 4, 1968, 'Inglaterra', 25, 270, 'Hard Rock');
INSERT INTO BANDA VALUES('Kansas', 5, 1973, 'Estados Unidos', 16, 150, 'Rock Progressivo');
INSERT INTO BANDA VALUES('Nickelback', 4, 1995, 'Canadá', 10, 115, 'Hard Rock');
INSERT INTO BANDA VALUES('Nuclear Assault', 4, 1984, 'Estados Unidos', 6, 60, 'Thrash Metal');
INSERT INTO BANDA VALUES('Overkill', 4, 1980, 'Estados Unidos', 20, 220, 'Thrash Metal');
INSERT INTO BANDA VALUES('Survivor', 4, 1978, 'Estados Unidos', 7, 70, 'Hard Rock');
INSERT INTO BANDA VALUES('Charlie Brown Jr.', 4, 1992, 'Brasil', 9, 105, 'Rock Alternativo');
INSERT INTO BANDA VALUES('The White Stripes', 2, 1997, 'Estados Unidos', 6, 65, 'Garage Rock');
INSERT INTO BANDA VALUES('Whitesnake', 6, 1978, 'Inglaterra', 13, 150, 'Hard Rock');
INSERT INTO BANDA VALUES('Imagine Dragons', 4, 2008, 'Estados Unidos', 6, 70, 'Pop Rock');
INSERT INTO BANDA VALUES('Maroon 5', 6, 1994, 'Estados Unidos', 7, 90, 'Pop Rock');
INSERT INTO BANDA VALUES('Coldplay', 4, 1996, 'Inglaterra', 9, 110, 'Rock Alternativo');
INSERT INTO BANDA VALUES('U2', 4, 1976, 'Irlanda', 14, 200, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Five Finger Death Punch', 5, 2005, 'Estados Unidos', 9, 90, 'Heavy Metal');
INSERT INTO BANDA VALUES('Tears for Fears', 2, 1981, 'Inglaterra', 7, 70, 'New Wave');
INSERT INTO BANDA VALUES('The Smashing Pumpkins', 4, 1988, 'Estados Unidos', 13, 140, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Faith No More', 5, 1979, 'Estados Unidos', 7, 70, 'Metal Alternativo');
INSERT INTO BANDA VALUES('Incubus', 5, 1991, 'Estados Unidos', 8, 80, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Simple Plan', 4, 1999, 'Canadá', 6, 70, 'Punk Rock');
INSERT INTO BANDA VALUES('Simple Minds', 2, 1977, 'Inglaterra', 18, 200, 'New Wave');
INSERT INTO BANDA VALUES('The Verve', 4, 1990, 'Inglaterra', 4, 45, 'Rock Alternativo');
INSERT INTO BANDA VALUES('INXS', 6, 1977, 'Austrália', 12, 140, 'Pop Rock');
INSERT INTO BANDA VALUES('NX Zero', 5, 2001, 'Brasil', 6, 65, 'Pop Punk');
INSERT INTO BANDA VALUES('Duran Duran', 5, 1978, 'Inglaterra', 15, 200, 'New Wave');
INSERT INTO BANDA VALUES('Counting Crows', 7, 1991, 'Estados Unidos', 8, 85, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Journey', 6, 1973, 'Estados Unidos', 14, 150, 'Hard Rock');
INSERT INTO BANDA VALUES('Foreigner', 7, 1976, 'Estados Unidos', 9, 95, 'Hard Rock');
INSERT INTO BANDA VALUES('Roxette', 2, 1986, 'Suécia', 10, 110, 'Pop Rock');
INSERT INTO BANDA VALUES('The Jackson 5', 5, 1964, 'Estados Unidos', 10, 100, 'Pop');
INSERT INTO BANDA VALUES('Harold Melvin and the Blue Notes', 5, 1960, 'Estados Unidos', 10, 90, 'Funk');
INSERT INTO BANDA VALUES('Radiohead', 5, 1985, 'Inglaterra', 9, 100, 'Rock Alternativo');
INSERT INTO BANDA VALUES('The Animals', 5, 1963, 'Inglaterra', 6, 60, 'Blues Rock');
INSERT INTO BANDA VALUES('The Orb', 2, 1988, 'Inglaterra', 17, 100, 'Eletrônica');
INSERT INTO BANDA VALUES('Black Eyed Peas', 4, 1995, 'Estados Unidos', 8, 90, 'Hip Hop');
INSERT INTO BANDA VALUES('The Cranberries', 4, 1989, 'Irlanda', 8, 90, 'Rock Alternativo');
INSERT INTO BANDA VALUES('The Carpenters', 2, 1969, 'Estados Unidos', 11, 110, 'Soft Rock');
INSERT INTO BANDA VALUES('Living Colour', 4, 1984, 'Estados Unidos', 6, 60, 'Funk Metal');
INSERT INTO BANDA VALUES('King Crimson', 8, 1968, 'Inglaterra', 13, 140, 'Rock Progressivo');
INSERT INTO BANDA VALUES('Massacration', 5, 2002, 'Brasil', 2, 20, 'Heavy Metal Cômico');
INSERT INTO BANDA VALUES('Kid Abelha', 3, 1981, 'Brasil', 12, 200, 'Pop Rock');
INSERT INTO BANDA VALUES('Os Mutantes', 3, 1966, 'Brasil', 9, 200, 'Rock Psicodélico');
INSERT INTO BANDA VALUES('Pato Fu', 5, 1992, 'Brasil', 11, 200, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Novos Baianos', 5, 1968, 'Brasil', 9, 200, 'MPB');
INSERT INTO BANDA VALUES('O Rappa', 4, 1993, 'Brasil', 8, 200, 'Reggae Rock');
INSERT INTO BANDA VALUES('Ira!', 2, 1981, 'Brasil', 11, 200, 'Rock Brasileiro');
INSERT INTO BANDA VALUES('Tribalistas', 3, 2001, 'Brasil', 3, 40, 'MPB');
INSERT INTO BANDA VALUES('Roupa Nova', 6, 1980, 'Brasil', 22, 200, 'Pop Rock');
INSERT INTO BANDA VALUES('Grupo Menos É Mais', 5, 2017, 'Brasil', 3, 70, 'Pagode');
INSERT INTO BANDA VALUES('Planet Hemp', 5, 1993, 'Brasil', 4, 60, 'Hip Hop');
INSERT INTO BANDA VALUES('Nação Zumbi', 6, 1991, 'Brasil', 10, 200, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Dead Fish', 4, 1991, 'Brasil', 8, 200, 'Hardcore');
INSERT INTO BANDA VALUES('Bacamarte', 7, 1974, 'Brasil', 3, 20, 'Rock Progressivo');
INSERT INTO BANDA VALUES('Secos & Molhados', 3, 1971, 'Brasil', 2, 25, 'MPB');
INSERT INTO BANDA VALUES('Móveis Coloniais de Acaju', 8, 1998, 'Brasil', 3, 50, 'Indie Rock');
INSERT INTO BANDA VALUES('Mindflow', 4, 2003, 'Brasil', 4, 45, 'Metal Progressivo');
INSERT INTO BANDA VALUES('Biquini Cavadão', 4, 1985, 'Brasil', 12, 200, 'Pop Rock');
INSERT INTO BANDA VALUES('Tribuzy', 1, 2004, 'Brasil', 1, 10, 'Heavy Metal');
INSERT INTO BANDA VALUES('Nenhum de Nós', 5, 1986, 'Brasil', 10, 200, 'Pop Rock');
INSERT INTO BANDA VALUES('14 Bis', 4, 1979, 'Brasil', 11, 200, 'MPB');
INSERT INTO BANDA VALUES('Farofa Carioca', 6, 1996, 'Brasil', 2, 30, 'Samba');
INSERT INTO BANDA VALUES('Racionais MCs', 4, 1988, 'Brasil', 5, 60, 'Hip Hop');
INSERT INTO BANDA VALUES('Scalene', 4, 2009, 'Brasil', 6, 80, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Krisiun', 3, 1990, 'Brasil', 12, 200, 'Death Metal');
INSERT INTO BANDA VALUES('Fresno', 4, 1999, 'Brasil', 8, 200, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Camisa de Vênus', 5, 1980, 'Brasil', 8, 200, 'Punk Rock');
INSERT INTO BANDA VALUES('Ultraje a Rigor', 4, 1980, 'Brasil', 8, 200, 'Punk Rock');
INSERT INTO BANDA VALUES('ABBA', 4, 1972, 'Suécia', 9, 200, 'Pop');
INSERT INTO BANDA VALUES('A-ha', 3, 1982, 'Noruega', 11, 200, 'New Wave');
INSERT INTO BANDA VALUES('The Monkees', 4, 1966, 'Estados Unidos', 13, 200, 'Pop Rock');
INSERT INTO BANDA VALUES('The Mamas & the Papas', 4, 1964, 'Estados Unidos', 5, 70, 'Folk Rock');
INSERT INTO BANDA VALUES('Supertramp', 5, 1969, 'Inglaterra', 11, 200, 'Rock Progressivo');
INSERT INTO BANDA VALUES('Toto', 5, 1977, 'Estados Unidos', 14, 200, 'Pop Rock');
INSERT INTO BANDA VALUES('Fleetwood Mac', 5, 1967, 'Inglaterra', 18, 200, 'Soft Rock');
INSERT INTO BANDA VALUES('Backstreet Boys', 5, 1993, 'Estados Unidos', 10, 200, 'Pop');
INSERT INTO BANDA VALUES('BTS', 7, 2013, 'Coreia do Sul', 10, 200, 'K-Pop');
INSERT INTO BANDA VALUES('Blackpink', 4, 2016, 'Coreia do Sul', 2, 80, 'K-Pop');
INSERT INTO BANDA VALUES('Blondie', 4, 1974, 'Estados Unidos', 11, 200, 'New Wave');
INSERT INTO BANDA VALUES('Eurythmics', 2, 1980, 'Inglaterra', 9, 110, 'Synth-Pop');
INSERT INTO BANDA VALUES('No Doubt', 4, 1986, 'Estados Unidos', 6, 80, 'Ska Punk');
INSERT INTO BANDA VALUES('About A Soul', 4, 2011, 'Brasil', 1, 10, 'Rock Alternativo');
INSERT INTO BANDA VALUES('America', 3, 1970, 'Inglaterra', 16, 200, 'Soft Rock');
INSERT INTO BANDA VALUES('Balkandji', 5, 2001, 'Bulgária', 4, 40, 'Folk Rock');
INSERT INTO BANDA VALUES('Bombay Bicycle Club', 4, 2006, 'Inglaterra', 6, 80, 'Indie Rock');
INSERT INTO BANDA VALUES('Bon Iver', 1, 2006, 'Estados Unidos', 5, 50, 'Indie Folk');
INSERT INTO BANDA VALUES('Buffalo Springfield', 5, 1966, 'Estados Unidos', 3, 30, 'Folk Rock');
INSERT INTO BANDA VALUES('The Dodos', 2, 2005, 'Estados Unidos', 7, 80, 'Indie Folk');
INSERT INTO BANDA VALUES('Flor de Loto', 5, 1998, 'Peru', 8, 90, 'Metal Progressivo');
INSERT INTO BANDA VALUES('Already Taken', 4, 2006, 'Estados Unidos', 1, 10, 'Pop Punk');
INSERT INTO BANDA VALUES('Age of Silence', 5, 2004, 'Noruega', 2, 10, 'Metal Progressivo');
INSERT INTO BANDA VALUES('Ancient', 4, 1992, 'Noruega', 7, 70, 'Black Metal');
INSERT INTO BANDA VALUES('Audrey Horne', 5, 2002, 'Noruega', 7, 80, 'Hard Rock');
INSERT INTO BANDA VALUES('Borknagar', 6, 1995, 'Noruega', 12, 120, 'Black Metal');
INSERT INTO BANDA VALUES('Casiokids', 6, 2004, 'Noruega', 3, 30, 'Synth-Pop');
INSERT INTO BANDA VALUES('Cold Mailman', 4, 2007, 'Noruega', 3, 30, 'Indie Pop');
INSERT INTO BANDA VALUES('Communic', 3, 2003, 'Noruega', 5, 40, 'Metal Progressivo');
INSERT INTO BANDA VALUES('Darkthrone', 2, 1987, 'Noruega', 20, 200, 'Black Metal');
INSERT INTO BANDA VALUES('Datarock', 4, 2000, 'Noruega', 4, 40, 'New Wave');
INSERT INTO BANDA VALUES('Djerv', 2, 2009, 'Noruega', 1, 10, 'Hard Rock');
INSERT INTO BANDA VALUES('Extol', 4, 1993, 'Noruega', 5, 50, 'Metal Progressivo');
INSERT INTO BANDA VALUES('Emperor', 3, 1991, 'Noruega', 4, 40, 'Black Metal');
INSERT INTO BANDA VALUES('Enslaved', 5, 1991, 'Noruega', 16, 200, 'Viking Metal');
INSERT INTO BANDA VALUES('Gate', 1, 1996, 'Noruega', 1, 10, 'Noise');
INSERT INTO BANDA VALUES('Hade Almighty', 3, 2010, 'Noruega', 1, 10, 'Black Metal');
INSERT INTO BANDA VALUES('Isengard', 1, 1992, 'Noruega', 3, 30, 'Black Metal');
INSERT INTO BANDA VALUES('Infinity', 2, 1992, 'Noruega', 3, 30, 'Black Metal');
INSERT INTO BANDA VALUES('Keiino', 3, 2019, 'Noruega', 1, 10, 'Pop');
INSERT INTO BANDA VALUES('In Flames', 5, 1990, 'Suécia', 14, 180, 'Death Metal');
INSERT INTO BANDA VALUES('Blues Pills', 4, 2011, 'Suécia', 4, 45, 'Blues Rock');
INSERT INTO BANDA VALUES('Backyard Babies', 4, 1989, 'Suécia', 8, 95, 'Hard Rock');
INSERT INTO BANDA VALUES('Alyson Avenue', 5, 1989, 'Suécia', 4, 42, 'Rock Melódico');
INSERT INTO BANDA VALUES('H.E.A.T', 5, 2007, 'Suécia', 7, 85, 'Rock Melódico');
INSERT INTO BANDA VALUES('Locomotive Breath', 4, 1995, 'Suécia', 4, 40, 'Heavy Metal');
INSERT INTO BANDA VALUES('The Poodles', 4, 2005, 'Suécia', 8, 98, 'Glam Metal');
INSERT INTO BANDA VALUES('Candlemass', 5, 1984, 'Suécia', 13, 115, 'Doom Metal');
INSERT INTO BANDA VALUES('Draconian', 5, 1994, 'Suécia', 7, 65, 'Doom Metal');
INSERT INTO BANDA VALUES('Forest of Shadows', 1, 1997, 'Suécia', 2, 18, 'Doom Metal');
INSERT INTO BANDA VALUES('Lamb of God', 5, 1994, 'Estados Unidos', 10, 130, 'Groove Metal');
INSERT INTO BANDA VALUES('Lake of Tears', 1, 1994, 'Suécia', 8, 75, 'Metal Gótico');
INSERT INTO BANDA VALUES('October Tide', 5, 1995, 'Suécia', 7, 60, 'Death Metal');
INSERT INTO BANDA VALUES('Eskobar', 3, 1996, 'Suécia', 6, 70, 'Indie Pop');
INSERT INTO BANDA VALUES('Subvision', 4, 2002, 'Suécia', 1, 13, 'Indie Rock');
INSERT INTO BANDA VALUES('The Radio Dept', 2, 1995, 'Suécia', 4, 55, 'Dream Pop');
INSERT INTO BANDA VALUES('Renegade Five', 5, 2005, 'Suécia', 2, 24, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Thin Lizzy', 4, 1969, 'Irlanda', 12, 160, 'Hard Rock');
INSERT INTO BANDA VALUES('Tesla', 5, 1981, 'Estados Unidos', 8, 105, 'Hard Rock');
INSERT INTO BANDA VALUES('Dokken', 4, 1979, 'Estados Unidos', 11, 125, 'Glam Metal');
INSERT INTO BANDA VALUES('Zinatra', 5, 1986, 'Holanda', 2, 22, 'Hard Rock');
INSERT INTO BANDA VALUES('Turbonegro', 6, 1989, 'Noruega', 10, 120, 'Punk Rock');
INSERT INTO BANDA VALUES('Poison', 4, 1983, 'Estados Unidos', 7, 90, 'Glam Metal');
INSERT INTO BANDA VALUES('Puddle of Mudd', 4, 1991, 'Estados Unidos', 6, 75, 'Rock Alternativo');
INSERT INTO BANDA VALUES('Ratt', 5, 1976, 'Estados Unidos', 7, 85, 'Glam Metal');
INSERT INTO BANDA VALUES('Slash ft. Myles Kennedy & The Conspirators', 5, 2010, 'Estados Unidos', 4, 52, 'Hard Rock');
INSERT INTO BANDA VALUES('Spoken', 3, 1996, 'Estados Unidos', 9, 95, 'Hard Rock');
INSERT INTO BANDA VALUES('Slaughter', 4, 1988, 'Estados Unidos', 5, 60, 'Glam Metal');
INSERT INTO BANDA VALUES('Steppenwolf', 5, 1967, 'Estados Unidos', 13, 145, 'Hard Rock');
INSERT INTO BANDA VALUES('Stone Sour', 5, 1992, 'Estados Unidos', 6, 95, 'Metal Alternativo');
INSERT INTO BANDA VALUES('Warrant', 5, 1984, 'Estados Unidos', 9, 110, 'Glam Metal');
INSERT INTO BANDA VALUES('Winger', 5, 1987, 'Estados Unidos', 7, 80, 'Glam Metal');
INSERT INTO BANDA VALUES('Children of Bodom', 5, 1993, 'Finlândia', 10, 115, 'Death Metal');
INSERT INTO BANDA VALUES('Amorphis', 6, 1990, 'Finlândia', 15, 165, 'Metal Progressivo');
INSERT INTO BANDA VALUES('Teräsbetoni', 4, 2002, 'Finlândia', 4, 45, 'Power Metal');
INSERT INTO BANDA VALUES('Blind Guardian', 4, 1984, 'Alemanha', 12, 140, 'Power Metal');
INSERT INTO BANDA VALUES('HammerFall', 5, 1993, 'Suécia', 13, 150, 'Power Metal');
INSERT INTO BANDA VALUES('Kamelot', 5, 1991, 'Estados Unidos', 13, 140, 'Metal Sinfonico');
INSERT INTO BANDA VALUES('Edguy', 5, 1992, 'Alemanha', 10, 120, 'Power Metal');
INSERT INTO BANDA VALUES('DragonForce', 5, 1999, 'Inglaterra', 9, 100, 'Power Metal');
INSERT INTO BANDA VALUES('Running Wild', 4, 1976, 'Alemanha', 17, 185, 'Heavy Metal');
INSERT INTO BANDA VALUES('Opeth', 5, 1990, 'Suécia', 13, 130, 'Metal Progressivo');
INSERT INTO BANDA VALUES('Sabaton', 5, 1999, 'Suécia', 10, 115, 'Power Metal');
INSERT INTO BANDA VALUES('The Dark Element', 4, 2017, 'Finlândia', 2, 25, 'Metal Sinfonico');
INSERT INTO BANDA VALUES('Tokio Hotel', 4, 2001, 'Alemanha', 7, 80, 'Pop Rock');
INSERT INTO BANDA VALUES('Münchener Freiheit', 5, 1980, 'Alemanha', 19, 210, 'Pop Rock');
INSERT INTO BANDA VALUES('Kreator', 4, 1982, 'Alemanha', 15, 160, 'Thrash Metal');
INSERT INTO BANDA VALUES('X Japan', 5, 1982, 'Japão', 5, 60, 'Visual Kei');
INSERT INTO BANDA VALUES('Dream', 4, 2000, 'Japão', 4, 60, 'J-Pop');
INSERT INTO BANDA VALUES('Flower', 6, 2011, 'Japão', 3, 40, 'J-Pop');
INSERT INTO BANDA VALUES('Mr. Bungle', 5, 1985, 'Estados Unidos', 4, 45, 'Experimental Rock');
INSERT INTO BANDA VALUES('Nervosa', 4, 2010, 'Brasil', 5, 60, 'Thrash Metal');
INSERT INTO BANDA VALUES('Extreme', 4, 1985, 'Estados Unidos', 6, 75, 'Hard Rock');
INSERT INTO BANDA VALUES('Suicidal Tendencies', 5, 1980, 'Estados Unidos', 14, 150, 'Crossover Thrash');
INSERT INTO BANDA VALUES('Skid Row', 5, 1986, 'Estados Unidos', 6, 70, 'Hard Rock');
INSERT INTO BANDA VALUES('Agathodaimon', 5, 1995, 'Alemanha', 7, 75, 'Black Metal');
INSERT INTO BANDA VALUES('ASP', 4, 1999, 'Alemanha', 14, 160, 'Gothic Metal');
INSERT INTO BANDA VALUES('Angel Dust', 5, 1984, 'Alemanha', 9, 90, 'Power Metal');
INSERT INTO BANDA VALUES('Axxis', 5, 1988, 'Alemanha', 16, 170, 'Power Metal');
INSERT INTO BANDA VALUES('Beyond the Black', 4, 2014, 'Alemanha', 5, 60, 'Metal Sinfonico');
INSERT INTO BANDA VALUES('Crematory', 5, 1991, 'Alemanha', 15, 160, 'Gothic Metal');
INSERT INTO BANDA VALUES('Running Wild', 4, 1976, 'Alemanha', 17, 185, 'Heavy Metal');
INSERT INTO BANDA VALUES('Sodom', 4, 1981, 'Alemanha', 16, 180, 'Thrash Metal');
INSERT INTO BANDA VALUES('Tankard', 4, 1982, 'Alemanha', 18, 190, 'Thrash Metal');
INSERT INTO BANDA VALUES('Kadavar', 3, 2010, 'Alemanha', 6, 60, 'Stoner Rock');
INSERT INTO BANDA VALUES('Haggard', 16, 1989, 'Alemanha', 4, 50, 'Metal Sinfonico');
INSERT INTO BANDA VALUES('Iced Earth', 5, 1984, 'Estados Unidos', 12, 130, 'Heavy Metal');
INSERT INTO BANDA VALUES('Kamelot', 5, 1991, 'Estados Unidos', 13, 140, 'Metal Sinfonico');
INSERT INTO BANDA VALUES('Queensrÿche', 5, 1982, 'Estados Unidos', 16, 170, 'Metal Progressivo');
INSERT INTO BANDA VALUES('Trivium', 4, 1999, 'Estados Unidos', 10, 110, 'Metalcore');
INSERT INTO BANDA VALUES('Twisted Sister', 5, 1972, 'Estados Unidos', 7, 80, 'Glam Metal');
INSERT INTO BANDA VALUES('Korzus', 5, 1983, 'Brasil', 7, 80, 'Thrash Metal');
INSERT INTO BANDA VALUES('Mennen', 4, 1994, 'França', 5, 50, 'Hard Rock');
INSERT INTO BANDA VALUES('Dalriada', 7, 1998, 'Hungria', 10, 110, 'Folk Metal');
INSERT INTO BANDA VALUES('The Cult', 4, 1983, 'Inglaterra', 11, 120, 'Hard Rock');
INSERT INTO BANDA VALUES('Heaven & Hell', 4, 2006, 'Inglaterra', 1, 15, 'Heavy Metal');
INSERT INTO BANDA VALUES('Saxon', 5, 1977, 'Inglaterra', 24, 250, 'Heavy Metal');

-- Conta o total de bandas registradas na tabela
SELECT COUNT(*) FROM BANDA;

-- Lista cada gênero e quantas bandas pertencem a ele
SELECT GENERO, COUNT(*) AS TOTAL_BANDAS
FROM BANDA
GROUP BY GENERO
ORDER BY TOTAL_BANDAS DESC;

-- Seleciona bandas brasileiras de Rock Alternativo fundadas após 1990
SELECT * FROM BANDA
WHERE GENERO = 'Rock Alternativo' AND ANO >= 1990 AND PAIS = 'Brasil';

-- Seleciona bandas que sejam Nu Metal OU Rock Alternativo
SELECT * FROM BANDA
WHERE GENERO = 'Nu Metal' OR GENERO = 'Rock Alternativo';

-- Seleciona bandas cujo país seja BRASIL ou um possível erro BRASIÇ
SELECT * FROM BANDA
WHERE PAIS = 'BRASIL' OR PAIS = 'BRASIÇ';

-- Conta quantas bandas inglesas existem por gênero
SELECT COUNT(*), GENERO
FROM BANDA
WHERE PAIS = 'Inglaterra'
GROUP BY GENERO
ORDER BY 1;

-- Busca todas as bandas da Inglaterra
SELECT * FROM BANDA
WHERE PAIS = 'Inglaterra';

-- Seleciona bandas de Power Metal com 6 ou mais membros
SELECT * FROM BANDA
WHERE QNTD_MEMBROS >= 6 AND GENERO = 'Power Metal';

-- Conta quantas bandas dos EUA têm 200 ou mais músicas
SELECT COUNT(*) MUSICAS
FROM BANDA
WHERE MUSICAS >= 200
AND PAIS = 'Estados Unidos'
GROUP BY MUSICAS
ORDER BY 1;

-- Lista países com o total de bandas cadastradas, em ordem decrescente
SELECT PAIS, COUNT(*) AS TOTAL_BANDAS
FROM BANDA
GROUP BY PAIS
ORDER BY TOTAL_BANDAS DESC;

-- Para cada país, mostra o gênero mais comum (TOP 1 por país)
SELECT PAIS, GENERO, TOTAL
FROM (
    SELECT 
        PAIS,
        GENERO,
        COUNT(*) AS TOTAL,
        ROW_NUMBER() OVER (
            PARTITION BY PAIS 
            ORDER BY COUNT(*) DESC
        ) AS rn
    FROM BANDA
    GROUP BY PAIS, GENERO
) AS t
WHERE rn = 1
ORDER BY PAIS;

-- Bandas com mais de 150 músicas, ordenadas pela quantidade
SELECT NOME, MUSICAS
FROM BANDA
WHERE MUSICAS > 150
ORDER BY MUSICAS DESC;

-- Média de músicas por país
SELECT PAIS, AVG(MUSICAS) AS MEDIA_MUSICAS
FROM BANDA
GROUP BY PAIS
ORDER BY MEDIA_MUSICAS DESC;

-- Gênero mais frequente no banco (apenas o primeiro)
SELECT PAIS, GENERO, COUNT(*) AS TOTAL
FROM BANDA
GROUP BY PAIS, GENERO
ORDER BY TOTAL DESC
LIMIT 1;

-- Quantidade de gêneros diferentes
SELECT COUNT(DISTINCT GENERO) AS TOTAL_GENEROS
FROM BANDA;

-- Top 5 gêneros com mais bandas
SELECT GENERO, COUNT(*) AS TOTAL
FROM BANDA
GROUP BY GENERO
ORDER BY TOTAL DESC
LIMIT 5;

-- Top 5 gêneros com maior média de músicas por banda
SELECT GENERO, AVG(MUSICAS) AS MEDIA_MUSICAS
FROM BANDA
GROUP BY GENERO
ORDER BY MEDIA_MUSICAS DESC
LIMIT 5;

-- Média de álbuns por país
SELECT PAIS, AVG(ALBUNS) AS MEDIA_ALBUNS
FROM BANDA
GROUP BY PAIS
ORDER BY MEDIA_ALBUNS DESC;

-- Bandas fundadas antes de 1970
SELECT NOME, ANO, GENERO
FROM BANDA
WHERE ANO < 1970
ORDER BY ANO;

-- Top 20 bandas com mais álbuns
SELECT NOME, ALBUNS
FROM BANDA
ORDER BY ALBUNS DESC
LIMIT 20;

-- Top 10 combinações de país + gênero com mais bandas
SELECT PAIS, GENERO, COUNT(*) AS TOTAL
FROM BANDA
GROUP BY PAIS, GENERO
ORDER BY TOTAL DESC
LIMIT 10;

-- Países com maior variedade de gêneros (diversidade)
SELECT PAIS, COUNT(DISTINCT GENERO) AS DIVERSIDADE
FROM BANDA
GROUP BY PAIS
ORDER BY DIVERSIDADE DESC;

-- Bandas cujo nome começa com “The”
SELECT *
FROM BANDA
WHERE NOME LIKE 'The %';

-- Calcula tempo de atividade de cada banda
SELECT NOME, (YEAR(CURDATE()) - ANO) AS ANOS_ATIVIDADE
FROM BANDA
ORDER BY ANOS_ATIVIDADE DESC;
