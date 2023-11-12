DROP DATABASE IF EXISTS The_Five_Lost;
CREATE DATABASE The_Five_Lost;
USE The_Five_Lost;

CREATE TABLE Categoria (
  tematica varchar(30) PRIMARY KEY
);

CREATE TABLE Pregunta_Puerta (
  cod_pregunta int PRIMARY KEY,
  tematica varchar(30),
  nivel varchar(20),
  pregunta varchar(200),
  FOREIGN KEY (tematica) REFERENCES Categoria(tematica)
);

CREATE TABLE Respuesta_Pregunta (
  cod_respuesta int PRIMARY KEY,
  cod_pregunta int,
  respuesta varchar(300),
  correcto boolean,
  FOREIGN KEY (cod_pregunta) REFERENCES Pregunta_Puerta(cod_pregunta)
);

-- select c.tematica, pp.cod_pregunta, pp.pregunta, pp.nivel, rp.cod_respuesta, rp.respuesta from categoria c
-- inner join pregunta_puerta pp on pp.tematica = c.tematica
-- inner join respuesta_pregunta rp on pp.cod_pregunta = rp.cod_pregunta
-- where rp.correcto = true
-- order by pp.cod_pregunta asc;



--  CREACIÓN DE LA TABLA CATEGORÍA 

INSERT INTO Categoria VALUES ("Entretenimiento");
INSERT INTO Categoria VALUES ("Musica");
INSERT INTO Categoria VALUES ("Cultura General");
INSERT INTO Categoria VALUES ("Deportes");
INSERT INTO Categoria VALUES ("Videojuegos");


--  CREACIÓN DE LA TABLA PREGUNTA_PUERTA Y SUS PREGUNTAS 

--  CATEGORÍA: ENTRETENIMIENTO  -----

--  NIVEL 1
INSERT INTO Pregunta_Puerta VALUES (1, "Entretenimiento", "1", "¿Quién es Brad Pitt?");
INSERT INTO Pregunta_Puerta VALUES (2, "Entretenimiento", "1", "¿Quién está detrás del traje de 'Iron Man'?");
INSERT INTO Pregunta_Puerta VALUES (3, "Entretenimiento", "1", "¿Cómo se les llama a los que prestan su voz para un personaje en otro idioma?");
INSERT INTO Pregunta_Puerta VALUES (4, "Entretenimiento", "1", "¿Cuál de las siguientes es una película?");
INSERT INTO Pregunta_Puerta VALUES (5, "Entretenimiento", "1", "¿Qué es un Oscar?");

--  NIVEL 2
INSERT INTO Pregunta_Puerta VALUES (6, "Entretenimiento", "2", "¿Quién es Jerry?");
INSERT INTO Pregunta_Puerta VALUES (7, "Entretenimiento", "2", "¿Qué personaje de anime usa un traje naranja?");
INSERT INTO Pregunta_Puerta VALUES (8, "Entretenimiento", "2", "¿En cuál de las siguientes películas el protagonista es un animal?");
INSERT INTO Pregunta_Puerta VALUES (9, "Entretenimiento", "2", "¿Qué significan las siglas UCM?");
INSERT INTO Pregunta_Puerta VALUES (10, "Entretenimiento", "2", "¿Qué era Woody?");

--  NIVEL 3
INSERT INTO Pregunta_Puerta VALUES (11, "Entretenimiento", "3", "¿Cómo se llama el padre de Nemo?");
INSERT INTO Pregunta_Puerta VALUES (12, "Entretenimiento", "3", "¿Cuál de los siguientes videojuegos tuvo una adaptación?");
INSERT INTO Pregunta_Puerta VALUES (13, "Entretenimiento", "3", "¿De cuántas películas se compone la saga de 'Harry Potter'?");
INSERT INTO Pregunta_Puerta VALUES (14, "Entretenimiento", "3", "¿Cuál es la película más taquillera de la historia?");
INSERT INTO Pregunta_Puerta VALUES (15, "Entretenimiento", "3", "¿De qué país es Ricardo Darín?");

--  NIVEL 4
INSERT INTO Pregunta_Puerta VALUES (16, "Entretenimiento", "4", "¿Qué serie de los 90s protagonizó Will Smith?");
INSERT INTO Pregunta_Puerta VALUES (17, "Entretenimiento", "4", "¿Quién de los siguientes personajes no es de Marvel?");
INSERT INTO Pregunta_Puerta VALUES (18, "Entretenimiento", "4", "¿Qué canal de pago emitió la serie 'Juego de Tronos'?");
INSERT INTO Pregunta_Puerta VALUES (19, "Entretenimiento", "4", "¿Qué serie animada sigue las aventuras de un científico y su nieto?");
INSERT INTO Pregunta_Puerta VALUES (20, "Entretenimiento", "4", "¿Qué cuento para niños fue adaptado al cine?");

--  NIVEL 5
INSERT INTO Pregunta_Puerta VALUES (21, "Entretenimiento", "5", "¿Qué es Orgullo y Prejuicio?");
INSERT INTO Pregunta_Puerta VALUES (22, "Entretenimiento", "5", "¿Quién escribió el cuento 'Caperucita Roja'?");
INSERT INTO Pregunta_Puerta VALUES (23, "Entretenimiento", "5", "¿Qué serie se estrenó primero?");
INSERT INTO Pregunta_Puerta VALUES (24, "Entretenimiento", "5", "¿Cómo se llama la isla en la que habita King Kong?");
INSERT INTO Pregunta_Puerta VALUES (25, "Entretenimiento", "5", "¿Cuál es el libro más vendido de la historia?");

--  NIVEL 6
INSERT INTO Pregunta_Puerta VALUES (26, "Entretenimiento", "6", "¿Cuál de las siguientes películas fue dirigida por Steven Spielberg?");
INSERT INTO Pregunta_Puerta VALUES (27, "Entretenimiento", "6", "¿Qué superhéroe vendió más comics?");
INSERT INTO Pregunta_Puerta VALUES (28, "Entretenimiento", "6", "¿En qué año se creó Netflix?");
INSERT INTO Pregunta_Puerta VALUES (29, "Entretenimiento", "6", "¿Qué director de cine recaudó más dinero? ");
INSERT INTO Pregunta_Puerta VALUES (30, "Entretenimiento", "6", "¿De qué país es la película 'El Secreto de Sus Ojos'?");

--  NIVEL 7
INSERT INTO Pregunta_Puerta VALUES (31, "Entretenimiento", "7", "¿Cuál es el manga más vendido de la historia?");
INSERT INTO Pregunta_Puerta VALUES (32, "Entretenimiento", "7", "¿En qué año comenzó a emitirse la primera temporada de 'Los Simpson'?");
INSERT INTO Pregunta_Puerta VALUES (33, "Entretenimiento", "7", "¿Quién de los siguientes actores protagonizó un musical y fue nominado al Oscar?");
INSERT INTO Pregunta_Puerta VALUES (34, "Entretenimiento", "7", "¿Qué actor no interpretó a Batman en el cine?");
INSERT INTO Pregunta_Puerta VALUES (35, "Entretenimiento", "7", "¿Cuántos Oscar tiene Argentina?");

--  NIVEL 8
INSERT INTO Pregunta_Puerta VALUES (36, "Entretenimiento", "8", "¿A qué edad falleció Stan Lee?");
INSERT INTO Pregunta_Puerta VALUES (37, "Entretenimiento", "8", "¿Cuál fue la primera película de Walt Disney?");
INSERT INTO Pregunta_Puerta VALUES (38, "Entretenimiento", "8", "¿Qué actor fue aplaudido durante 6 minutos seguidos?");
INSERT INTO Pregunta_Puerta VALUES (39, "Entretenimiento", "8", "¿Qué obra cinematográfica ganó más Oscar? ");
INSERT INTO Pregunta_Puerta VALUES (40, "Entretenimiento", "8", "¿Cuál es el país que más Oscar ganó sin incluir a Estados Unidos ni Reino Unido?");





--  CATEGORÍA: Musica  -----

--  NIVEL 1 
INSERT INTO Pregunta_Puerta VALUES (41, "Musica", "1", "¿Cual de los siguientes es musico?");
INSERT INTO Pregunta_Puerta VALUES (42, "Musica", "1", "¿Cual de los siguientes no es musico?");
INSERT INTO Pregunta_Puerta VALUES (43, "Musica", "1", "¿Qué artista musical es argentino?");
INSERT INTO Pregunta_Puerta VALUES (44, "Musica", "1", "¿Cuál de las siguientes es una nota musical?");
INSERT INTO Pregunta_Puerta VALUES (45, "Musica", "1", "¿Cuál de estas es una canción?");

--  NIVEL 2 
INSERT INTO Pregunta_Puerta VALUES (46, "Musica", "2", "¿Cuál es un instrumento de cuerda?");
INSERT INTO Pregunta_Puerta VALUES (47, "Musica", "2", "¿Quién es Bizarrap?");
INSERT INTO Pregunta_Puerta VALUES (48, "Musica", "2", "¿Cuál de los siguientes NO es un disco?");
INSERT INTO Pregunta_Puerta VALUES (49, "Musica", "2", "¿Cuál de las siguientes es una artista musical?");
INSERT INTO Pregunta_Puerta VALUES (50, "Musica", "2", "¿Cuál de los siguientes músicos salió de una serie infantil?");

--  NIVEL 3 
INSERT INTO Pregunta_Puerta VALUES (51, "Musica", "3", "¿Cuál es la canción más escuchada históricamente?");
INSERT INTO Pregunta_Puerta VALUES (52, "Musica", "3", "¿Cuál de los siguientes es rapero?");
INSERT INTO Pregunta_Puerta VALUES (53, "Musica", "3", "¿Qué artista musical a su vez mantuvo una carrera actoral?");
INSERT INTO Pregunta_Puerta VALUES (54, "Musica", "3", "¿Cuál de los siguientes es un artista español?");
INSERT INTO Pregunta_Puerta VALUES (55, "Musica", "3", "¿Cuál de los siguientes NO es un genero musical?");

--  NIVEL 4 
INSERT INTO Pregunta_Puerta VALUES (56, "Musica", "4", "¿Cuál de los siguientes es un artista emergente?");
INSERT INTO Pregunta_Puerta VALUES (57, "Musica", "4", "¿Cuál de las siguientes canciones es originalmente de Bad Bunny?");
INSERT INTO Pregunta_Puerta VALUES (58, "Musica", "4", "¿De qué artista es la canción Bohemian Rhapsody?");
INSERT INTO Pregunta_Puerta VALUES (59, "Musica", "4", "¿De qué artista es la canción Billie jean?");
INSERT INTO Pregunta_Puerta VALUES (60, "Musica", "4", "¿Cuál de las siguientes no es una banda musical?");

--  NIVEL 5 
INSERT INTO Pregunta_Puerta VALUES (61, "Musica", "5", "¿Qué artista se dio a conocer gracias a sus 'Sessions'?");
INSERT INTO Pregunta_Puerta VALUES (62, "Musica", "5", "¿En cuál de los siguientes Géneros es pionera la Argentina?");
INSERT INTO Pregunta_Puerta VALUES (63, "Musica", "5", "¿En cuál de los siguientes Géneros es pionera España?");
INSERT INTO Pregunta_Puerta VALUES (64, "Musica", "5", "¿Dónde fue descubierto Justin Bieber?");
INSERT INTO Pregunta_Puerta VALUES (65, "Musica", "5", "¿Cuál es la famosa banda de K-pop?");

--  NIVEL 6 
INSERT INTO Pregunta_Puerta VALUES (66, "Musica", "6", "¿Quién es llamado el rey del rock?");
INSERT INTO Pregunta_Puerta VALUES (67, "Musica", "6", "Continúe la siguiente canción de Air Bag: Yo sé que algunas veces…");
INSERT INTO Pregunta_Puerta VALUES (68, "Musica", "6", "¿Con quien hace Justin Bieber la canción ‘Stay’?");
INSERT INTO Pregunta_Puerta VALUES (69, "Musica", "6", "¿De qué arista es la canción 'La Chica Del Bikini Azul'?");
INSERT INTO Pregunta_Puerta VALUES (70, "Musica", "6", "¿Qué pasa en el videoclip de Michael Jackson en ‘Thriller’?");

--  NIVEL 7 
INSERT INTO Pregunta_Puerta VALUES (71, "Musica", "7", "¿Cuántas 'Sessions' tiene el productor bizarrap actualmente?");
INSERT INTO Pregunta_Puerta VALUES (72, "Musica", "7", "¿Cuándo nació el rap?");
INSERT INTO Pregunta_Puerta VALUES (73, "Musica", "7", "¿Cuándo nace el reggaetón?");
INSERT INTO Pregunta_Puerta VALUES (74, "Musica", "7", "¿De donde es nativo Luis Miguel?");
INSERT INTO Pregunta_Puerta VALUES (75, "Musica", "7", "¿En qué época nace ‘Ludwig van Beethoven’?");

--  NIVEL 8 
INSERT INTO Pregunta_Puerta VALUES (76, "Musica", "8", "¿Quién es el artista mas escuchado del mundo en Spotify?");
INSERT INTO Pregunta_Puerta VALUES (77, "Musica", "8", "¿Qué artista tiene el récord de Grammys ganados?");
INSERT INTO Pregunta_Puerta VALUES (78, "Musica", "8", "¿A qué año se remontan los primeros instrumentos musicales de la humanidad?");
INSERT INTO Pregunta_Puerta VALUES (79, "Musica", "8", "¿A qué edad fallece Michael Jackson?");
INSERT INTO Pregunta_Puerta VALUES (80, "Musica", "8", "¿En que año se separan los Beatles?");





--  CATEGORÍA: CULTURA GENERAL  -----

--  NIVEL 1 
INSERT INTO Pregunta_Puerta VALUES (81, "Cultura General", "1", "¿En qué país se ubica el Coliseo Romano?");
INSERT INTO Pregunta_Puerta VALUES (82, "Cultura General", "1", "¿En qué país se ubica el El Obelisco?");
INSERT INTO Pregunta_Puerta VALUES (83, "Cultura General", "1", "¿En qué país se ubica el La Torre Eiffel?");
INSERT INTO Pregunta_Puerta VALUES (84, "Cultura General", "1", "¿En qué país se ubica el Cristo Redentor?");
INSERT INTO Pregunta_Puerta VALUES (85, "Cultura General", "1", "¿En qué país se ubica la Estatua de la libertad?");

--  NIVEL 2 
INSERT INTO Pregunta_Puerta VALUES (86, "Cultura General", "2", "¿Cuál es el idioma con más hablantes nativos?");
INSERT INTO Pregunta_Puerta VALUES (87, "Cultura General", "2", "¿Dónde se originó la famosa comida Pizza?");
INSERT INTO Pregunta_Puerta VALUES (88, "Cultura General", "2", "¿Dónde se originó la famosa comida Asado?");
INSERT INTO Pregunta_Puerta VALUES (89, "Cultura General", "2", "¿Dónde se originó la famosa comida Ceviche?");
INSERT INTO Pregunta_Puerta VALUES (90, "Cultura General", "2", "¿Dónde se originó la famosa comida Paella?");

--  NIVEL 3 
INSERT INTO Pregunta_Puerta VALUES (91, "Cultura General", "3", "¿En qué país se habla la lengua guaraní?");
INSERT INTO Pregunta_Puerta VALUES (92, "Cultura General", "3", "¿Cuál es el océano más grande del mundo?");
INSERT INTO Pregunta_Puerta VALUES (93, "Cultura General", "3", "¿Cuál es el lugar más frío de la tierra?");
INSERT INTO Pregunta_Puerta VALUES (94, "Cultura General", "3", "¿Cuál es el rio mas largo de la Tierra?");
INSERT INTO Pregunta_Puerta VALUES (95, "Cultura General", "3", "¿Qué elemento de la tabla periódica tiene como símbolo H2o?");

--  NIVEL 4 
INSERT INTO Pregunta_Puerta VALUES (96, "Cultura General", "4", "¿A quién se le considera como “Libertador”?");
INSERT INTO Pregunta_Puerta VALUES (97, "Cultura General", "4", "¿Cada cuantos años se genera un año bisiesto?");
INSERT INTO Pregunta_Puerta VALUES (98, "Cultura General", "4", "¿Cuántos huesos hay en el cuerpo humano?");
INSERT INTO Pregunta_Puerta VALUES (99, "Cultura General", "4", "¿Cómo se llama el proceso por el cual las plantas se alimentan?");
INSERT INTO Pregunta_Puerta VALUES (100, "Cultura General", "4", "¿Cuál es el animal más grande de la Tierra?");

--  NIVEL 5 
INSERT INTO Pregunta_Puerta VALUES (101, "Cultura General", "5", "¿En qué año se produjo la Revolución Francesa?");
INSERT INTO Pregunta_Puerta VALUES (102, "Cultura General", "5", "¿Quién pintó “La última cena”?");
INSERT INTO Pregunta_Puerta VALUES (103, "Cultura General", "5", "¿Quién pintó “La Mona Lisa”?");
INSERT INTO Pregunta_Puerta VALUES (104, "Cultura General", "5", "¿Quién pintó “La creación de Adán”?");
INSERT INTO Pregunta_Puerta VALUES (105, "Cultura General", "5", "¿Quién componía música siendo sordo?");

--  NIVEL 6 
INSERT INTO Pregunta_Puerta VALUES (106, "Cultura General", "6", "¿Cuándo se extinguieron los dinosaurios?");
INSERT INTO Pregunta_Puerta VALUES (107, "Cultura General", "6", "¿En qué país se usó la primera bomba atómica?");
INSERT INTO Pregunta_Puerta VALUES (108, "Cultura General", "6", "¿En qué año viajó al espacio el primer ser humano?");
INSERT INTO Pregunta_Puerta VALUES (109, "Cultura General", "6", "¿En qué año cayó el muro de Berlín?");
INSERT INTO Pregunta_Puerta VALUES (110, "Cultura General", "6", "¿Cuál es el país más grande del mundo?");

--  NIVEL 7 
INSERT INTO Pregunta_Puerta VALUES (111, "Cultura General", "7", "¿Cuánto duró “La Guerra de los Cien Años”?");
INSERT INTO Pregunta_Puerta VALUES (112, "Cultura General", "7", "¿Cuál es país más poblado de la Tierra?");
INSERT INTO Pregunta_Puerta VALUES (113, "Cultura General", "7", "¿Cuál fue la primera presidente mujer del mundo?");
INSERT INTO Pregunta_Puerta VALUES (114, "Cultura General", "7", "¿Cuál es la montaña más alta del planeta?");
INSERT INTO Pregunta_Puerta VALUES (115, "Cultura General", "7", "¿Cuál es el libro más vendido en el mundo después de la Biblia?");

--  NIVEL 8 
INSERT INTO Pregunta_Puerta VALUES (116, "Cultura General", "8", "¿Cada cuántos años pasa por la tierra el cometa Halley?");
INSERT INTO Pregunta_Puerta VALUES (117, "Cultura General", "8", "¿Quién fue el auténtico padre de la electricidad?");
INSERT INTO Pregunta_Puerta VALUES (118, "Cultura General", "8", "¿Cuál es el edificio más alto del mundo?");
INSERT INTO Pregunta_Puerta VALUES (119, "Cultura General", "8", "¿Cuál es el país con menos habitantes del mundo?");
INSERT INTO Pregunta_Puerta VALUES (120, "Cultura General", "8", "¿Cuál es el animal que más muertes provoca cada año?");





--  CATEGORÍA: DEPORTE  -----

--  NIVEL 1 
INSERT INTO Pregunta_Puerta VALUES (121, "Deportes", "1", "¿De qué color es la pelota clásica de basket?");
INSERT INTO Pregunta_Puerta VALUES (122, "Deportes", "1", "¿En qué deporte se usa una raqueta?");
INSERT INTO Pregunta_Puerta VALUES (123, "Deportes", "1", "¿Qué deporte juega Lionel Messi?");
INSERT INTO Pregunta_Puerta VALUES (124, "Deportes", "1", "¿Por cuál deporte es conocido Michael Jordan?");
INSERT INTO Pregunta_Puerta VALUES (125, "Deportes", "1", "¿En cuál de estos deportes hay una red en medio de la cancha?");

--  NIVEL 2 
INSERT INTO Pregunta_Puerta VALUES (126, "Deportes", "2", "¿Cuál es el equipo del futbol europeo más famoso del mundo?");
INSERT INTO Pregunta_Puerta VALUES (127, "Deportes", "2", "¿Quien es corredor mas rapido del mundo?");
INSERT INTO Pregunta_Puerta VALUES (128, "Deportes", "2", "¿Cuál es el nombre de la liga estadounidense de basket?");
INSERT INTO Pregunta_Puerta VALUES (129, "Deportes", "2", "¿Cuáles son los 2 equipos del futbol argentino mas conocidos?");
INSERT INTO Pregunta_Puerta VALUES (130, "Deportes", "2", "¿Cuántos pasos se puede dar en Handball sin picar el balón?");

--  NIVEL 3 
INSERT INTO Pregunta_Puerta VALUES (131, "Deportes", "3", "¿Qué deporte hace Connor McGregor?");
INSERT INTO Pregunta_Puerta VALUES (132, "Deportes", "3", "¿Cuál de estas personas es un tenista?");
INSERT INTO Pregunta_Puerta VALUES (133, "Deportes", "3", "¿De qué pais es el famoso exbasquetbolista Manuel Ginobili?");
INSERT INTO Pregunta_Puerta VALUES (134, "Deportes", "3", "¿Con qué partes del cuerpo se puedo jugar al voley?");
INSERT INTO Pregunta_Puerta VALUES (135, "Deportes", "3", "¿Dónde se jugó el último mundial de Futbol 2022?");

--  NIVEL 4 
INSERT INTO Pregunta_Puerta VALUES (136, "Deportes", "4", "¿De qué pais es el jugador de futbol Dani Alves?");
INSERT INTO Pregunta_Puerta VALUES (137, "Deportes", "4", "¿Cuantos pasos sin picar el balon se pueden hacer en el Basket?");
INSERT INTO Pregunta_Puerta VALUES (138, "Deportes", "4", "¿Cuánto mide la cancha de voley?");
INSERT INTO Pregunta_Puerta VALUES (139, "Deportes", "4", "¿Cuántas piezas hay en el ajedrez?");
INSERT INTO Pregunta_Puerta VALUES (140, "Deportes", "4", "¿Cuatos años tiene Rafa Nadal?");

--  NIVEL 5 
INSERT INTO Pregunta_Puerta VALUES (141, "Deportes", "5", "¿En qué años salio campeon del mundial de futbol la seleccion Argentina?");
INSERT INTO Pregunta_Puerta VALUES (142, "Deportes", "5", "¿Cuál es el maximo anotador de la NBA?");
INSERT INTO Pregunta_Puerta VALUES (143, "Deportes", "5", "¿Cuál es el equipo con más Copas Libertadores?");
INSERT INTO Pregunta_Puerta VALUES (144, "Deportes", "5", "¿Cuál es el apellido del famoso boxeador apodado como 'El Chino'?");
INSERT INTO Pregunta_Puerta VALUES (145, "Deportes", "5", "¿En cuál de estas artes marciales se puede usar todo el cuerpo?");

--  NIVEL 6 
INSERT INTO Pregunta_Puerta VALUES (146, "Deportes", "6", "¿Cuántos Balones de Oro tiene Pele?");
INSERT INTO Pregunta_Puerta VALUES (147, "Deportes", "6", "¿Cuántos Anillos de Basket tiene Michael Jordan?");
INSERT INTO Pregunta_Puerta VALUES (148, "Deportes", "6", "¿Cuál es la maxima distancia que se puede hacer en un torneo oficial de natación masculino?");
INSERT INTO Pregunta_Puerta VALUES (149, "Deportes", "6", "¿Quíen es el deportista con mas medallas de oro?");
INSERT INTO Pregunta_Puerta VALUES (150, "Deportes", "6", "En carrera de velocidad, ¿cuál es la máxima distancia que se puede correr?");

--  NIVEL 7 
INSERT INTO Pregunta_Puerta VALUES (151, "Deportes", "7", "¿Además de las carreras a que otro deporte se dedico Usain Bolt?");
INSERT INTO Pregunta_Puerta VALUES (152, "Deportes", "7", "¿Cuál es el equipo mas perdedor de finales de la Champions League?");
INSERT INTO Pregunta_Puerta VALUES (153, "Deportes", "7", "¿Cuál es el jugador de Basket con mas puntos anotados?");
INSERT INTO Pregunta_Puerta VALUES (154, "Deportes", "7", "¿En que año se empezo a considerar un deporte el ajedrez?");
INSERT INTO Pregunta_Puerta VALUES (155, "Deportes", "7", "¿Cuál es el record de distancia de lazamiento de jabalina?");

--  NIVEL 8 
INSERT INTO Pregunta_Puerta VALUES (156, "Deportes", "8", "¿Cuál fue el resultado de la primera final del mundo del mundial de futbol?");
INSERT INTO Pregunta_Puerta VALUES (157, "Deportes", "8", "¿Cuál es el partido de la NBA con mas puntos de la historia?");
INSERT INTO Pregunta_Puerta VALUES (158, "Deportes", "8", "¿Quíen fue el ultimo campeon de los juegos olimpicos de natacion 2020?");
INSERT INTO Pregunta_Puerta VALUES (159, "Deportes", "8", "¿Cuál es la velocidad mas rapida alcanzada por el ser humano?");
INSERT INTO Pregunta_Puerta VALUES (160, "Deportes", "8", "¿Cuál es el partido de futbol con mas goles de la historia?");







--  CATEGORÍA: VIDEOJUEGOS  -----


--  NIVEL 1 
INSERT INTO Pregunta_Puerta VALUES (161, "Videojuegos", "1", "¿De qué juego es el famoso personaje 'Mario'?");
INSERT INTO Pregunta_Puerta VALUES (162, "Videojuegos", "1", "¿Cuál de las siguientes opciones no es una consola de videojuegos?");
INSERT INTO Pregunta_Puerta VALUES (163, "Videojuegos", "1", "¿Cuál de los siguientes es un videojuego?");
INSERT INTO Pregunta_Puerta VALUES (164, "Videojuegos", "1", "¿De que deporte trata el juego 'Pro Evolution Soccer'?");
INSERT INTO Pregunta_Puerta VALUES (165, "Videojuegos", "1", "¿De que color es Pikachu del juego 'Pokemon'?");

--  NIVEL 2 
INSERT INTO Pregunta_Puerta VALUES (166, "Videojuegos", "2", "¿Qué significan las siglas 'GTA'?");
INSERT INTO Pregunta_Puerta VALUES (167, "Videojuegos", "2", "¿Cómo se llama el hermano de 'Mario Bros'?");
INSERT INTO Pregunta_Puerta VALUES (168, "Videojuegos", "2", "¿Cómo se llama el mando de la PS4?");
INSERT INTO Pregunta_Puerta VALUES (169, "Videojuegos", "2", "¿Cuál de los suiguientes videojuegos es de autos de carreras?");
INSERT INTO Pregunta_Puerta VALUES (170, "Videojuegos", "2", "¿Cuál fue la primera consola de Playstation?");

--  NIVEL 3 
INSERT INTO Pregunta_Puerta VALUES (171, "Videojuegos", "3", "¿Cuál de los siguientes videojuegos fue lanzado primero?");
INSERT INTO Pregunta_Puerta VALUES (172, "Videojuegos", "3", "¿Cómo es el nombre del enemigo de 'Sonic'?");
INSERT INTO Pregunta_Puerta VALUES (173, "Videojuegos", "3", "¿Cuál de las siguientes consolas pertenece a Sony?");
INSERT INTO Pregunta_Puerta VALUES (174, "Videojuegos", "3", "¿Cuántos luchadores hay en 'Street Fighter II'?");
INSERT INTO Pregunta_Puerta VALUES (175, "Videojuegos", "3", "¿Cuál es el material de la primera espada que te dan en 'The Legend of Zelda'?");

--  NIVEL 4 
INSERT INTO Pregunta_Puerta VALUES (176, "Videojuegos", "4", "¿De qué empresa es el videojuego 'League of legends'?");
INSERT INTO Pregunta_Puerta VALUES (177, "Videojuegos", "4", "¿En qué ciudad se situa el videojuego 'Resident Evil'?");
INSERT INTO Pregunta_Puerta VALUES (178, "Videojuegos", "4", "¿Cómo es el nombre completo del videojuego 'CS:GO'?");
INSERT INTO Pregunta_Puerta VALUES (179, "Videojuegos", "4", "¿Cuáles son los videojugos mas conocidos de futbol?");
INSERT INTO Pregunta_Puerta VALUES (180, "Videojuegos", "4", "¿Cuál es el videojuego mas conocido de basquet?");

--  NIVEL 5 
INSERT INTO Pregunta_Puerta VALUES (181, "Videojuegos", "5", "¿Cuántas entregas hay de el videojuego 'Uncharted'?");
INSERT INTO Pregunta_Puerta VALUES (182, "Videojuegos", "5", "¿Cuál de los siguientes videojuegos es de la empresa Naughty Dog?");
INSERT INTO Pregunta_Puerta VALUES (183, "Videojuegos", "5", "¿De qué personaje busca vengarse 'Kratos' del videojuego 'God of War'?");
INSERT INTO Pregunta_Puerta VALUES (184, "Videojuegos", "5", "¿Cómo se llama el protagonista de 'Halo'?");
INSERT INTO Pregunta_Puerta VALUES (185, "Videojuegos", "5", "¿En qué año fue lanzado 'Super Mario 64'?");

--  NIVEL 6 
INSERT INTO Pregunta_Puerta VALUES (186, "Videojuegos", "6", "¿Cuál es el nombre del mejor jugador de la historia de 'League Of Legends'?");
INSERT INTO Pregunta_Puerta VALUES (187, "Videojuegos", "6", "¿Cómo se llama el fundador de la compania Nintendo?");
INSERT INTO Pregunta_Puerta VALUES (188, "Videojuegos", "6", "¿Qué es el lag?");
INSERT INTO Pregunta_Puerta VALUES (189, "Videojuegos", "6", "¿Cuál de las siguientes empresas no es un estudio de videojuegos?");
INSERT INTO Pregunta_Puerta VALUES (190, "Videojuegos", "6", "¿Cuál fue el primer ofico de 'Mario'?");

--  NIVEL 7 
INSERT INTO Pregunta_Puerta VALUES (191, "Videojuegos", "7", "¿Cuál es el nombre del virus de la saga de videojuegos Resident Evil?");
INSERT INTO Pregunta_Puerta VALUES (192, "Videojuegos", "7", "¿Cuál es el videojuego mas largo de la historia?");
INSERT INTO Pregunta_Puerta VALUES (193, "Videojuegos", "7", "¿Cuál fue la primer consola con CD's?");
INSERT INTO Pregunta_Puerta VALUES (194, "Videojuegos", "7", "¿Cómo se llama el mando de la Wii?");
INSERT INTO Pregunta_Puerta VALUES (195, "Videojuegos", "7", "¿Cómo se llama la institución mental en la qué ocurre el videojuego 'Outlast'?");

--  NIVEL 8 
INSERT INTO Pregunta_Puerta VALUES (196, "Videojuegos", "8", "¿En cuál de las siguientes empresas trabajó Steve Jobs cuando era joven?");
INSERT INTO Pregunta_Puerta VALUES (197, "Videojuegos", "8", "¿Qué jugadores aparecen en la portada de 'FIFA 2004' ?");
INSERT INTO Pregunta_Puerta VALUES (198, "Videojuegos", "8", "¿Cuál es el juego con mas finales de la historia?");
INSERT INTO Pregunta_Puerta VALUES (199, "Videojuegos", "8", "¿Quién de los siguientes es considerado como uno de los padres del gaming en PC?");
INSERT INTO Pregunta_Puerta VALUES (200, "Videojuegos", "8", "¿Cuánto costó el desarrollo del videojuego 'The Witcher 3'?");









--  CREACIÓN DE LA TABLA RESPUESTA_PREGUNTA Y SUS RESPUESTAS  ----------

--  ENTRETENIMIENTO

--  NIVEL 1

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (1, 1, "Un actor", true);
INSERT INTO Respuesta_Pregunta VALUES (2, 1, "Un musico", false);
INSERT INTO Respuesta_Pregunta VALUES (3, 1, "Un comediante", false);
INSERT INTO Respuesta_Pregunta VALUES (4, 1, "Un empresario", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (5, 2, "Tony Stark", true);
INSERT INTO Respuesta_Pregunta VALUES (6, 2, "Bruce Banner", false);
INSERT INTO Respuesta_Pregunta VALUES (7, 2, "Steve Rogers", false);
INSERT INTO Respuesta_Pregunta VALUES (8, 2, "Peter Parker", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (9, 3, "Dobladores", true);
INSERT INTO Respuesta_Pregunta VALUES (10, 3, "Actrices", false);
INSERT INTO Respuesta_Pregunta VALUES (11, 3, "Locutores", false);
INSERT INTO Respuesta_Pregunta VALUES (12, 3, "Traductores", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (13, 4, "Titanic", true);
INSERT INTO Respuesta_Pregunta VALUES (14, 4, "Peaky Blinders", false);
INSERT INTO Respuesta_Pregunta VALUES (15, 4, "The Flash", false);
INSERT INTO Respuesta_Pregunta VALUES (16, 4, "La Casa de Papel", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (17, 5, "Un premio", true);
INSERT INTO Respuesta_Pregunta VALUES (18, 5, "Un nombramiento", false);
INSERT INTO Respuesta_Pregunta VALUES (19, 5, "Un evento", false);
INSERT INTO Respuesta_Pregunta VALUES (20, 5, "Una insignia", false);


--  NIVEL 2

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (21, 6, "El ratón", true);
INSERT INTO Respuesta_Pregunta VALUES (22, 6, "El gato", false);
INSERT INTO Respuesta_Pregunta VALUES (23, 6, "La mujer", false);
INSERT INTO Respuesta_Pregunta VALUES (24, 6, "El señor", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (25, 7, "Goku (Dragon Ball)", true);
INSERT INTO Respuesta_Pregunta VALUES (26, 7, "Luffy (One Piece)", false);
INSERT INTO Respuesta_Pregunta VALUES (27, 7, "Eren (Shingeki No Kyojin)", false);
INSERT INTO Respuesta_Pregunta VALUES (28, 7, "Ash (Pokemon)", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (29, 8, "La Razón de Estar Contigo", true);
INSERT INTO Respuesta_Pregunta VALUES (30, 8, "El Lobo de Wall Street", false);
INSERT INTO Respuesta_Pregunta VALUES (31, 8, "Pérdida", false);
INSERT INTO Respuesta_Pregunta VALUES (32, 8, "Godzilla", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (33, 9, "Universo Cinematográfico de Marvel", true);
INSERT INTO Respuesta_Pregunta VALUES (34, 9, "Universo de Cine Marvel", false);
INSERT INTO Respuesta_Pregunta VALUES (35, 9, "Universo Centrado de Mar del Plata", false);
INSERT INTO Respuesta_Pregunta VALUES (36, 9, "Unidos Con Milán ", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (37, 10, "Un juguete", true);
INSERT INTO Respuesta_Pregunta VALUES (38, 10, "Un vaquero", false);
INSERT INTO Respuesta_Pregunta VALUES (39, 10, "Un torero", false);
INSERT INTO Respuesta_Pregunta VALUES (40, 10, "Un sheriff", false);


--  NIVEL 3

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (41, 11, "Marlin", true);
INSERT INTO Respuesta_Pregunta VALUES (42, 11, "Martin", false);
INSERT INTO Respuesta_Pregunta VALUES (43, 11, "Mario", false);
INSERT INTO Respuesta_Pregunta VALUES (44, 11, "Matias", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (45, 12, "Todas", true);
INSERT INTO Respuesta_Pregunta VALUES (46, 12, "The Last Of us", false);
INSERT INTO Respuesta_Pregunta VALUES (47, 12, "Uncharted", false);
INSERT INTO Respuesta_Pregunta VALUES (48, 12, "Halo", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (49, 13, "ocho", true);
INSERT INTO Respuesta_Pregunta VALUES (50, 13, "nueve", false);
INSERT INTO Respuesta_Pregunta VALUES (51, 13, "seis", false);
INSERT INTO Respuesta_Pregunta VALUES (52, 13, "siete", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (53, 14, "Avatar", true);
INSERT INTO Respuesta_Pregunta VALUES (54, 14, "Avengers: End Game", false);
INSERT INTO Respuesta_Pregunta VALUES (55, 14, "Titanic", false);
INSERT INTO Respuesta_Pregunta VALUES (56, 14, "Avatar: The Way Of Water", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (57, 15, "Argentina", true);
INSERT INTO Respuesta_Pregunta VALUES (58, 15, "Estados Unidos", false);
INSERT INTO Respuesta_Pregunta VALUES (59, 15, "Mexico", false);
INSERT INTO Respuesta_Pregunta VALUES (60, 15, "España", false);


--  NIVEL 4

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (61, 16, "El Príncipe del Rap", true);
INSERT INTO Respuesta_Pregunta VALUES (62, 16, "El Príncipe", false);
INSERT INTO Respuesta_Pregunta VALUES (63, 16, "El Príncipe de la Moda", false);
INSERT INTO Respuesta_Pregunta VALUES (64, 16, "El Príncipe Perdido", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (65, 17, "Linterna Verde", true);
INSERT INTO Respuesta_Pregunta VALUES (66, 17, "Deadpool", false);
INSERT INTO Respuesta_Pregunta VALUES (67, 17, "Wolverine", false);
INSERT INTO Respuesta_Pregunta VALUES (68, 17, "Ant-Man", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (69, 18, "HBO", true);
INSERT INTO Respuesta_Pregunta VALUES (70, 18, "Netflix", false);
INSERT INTO Respuesta_Pregunta VALUES (71, 18, "Paramount", false);
INSERT INTO Respuesta_Pregunta VALUES (72, 18, "Cuevana", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (73, 19, "Rick and Morty", true);
INSERT INTO Respuesta_Pregunta VALUES (74, 19, "El Mundo de Gumball", false);
INSERT INTO Respuesta_Pregunta VALUES (75, 19, "Gravity Falls", false);
INSERT INTO Respuesta_Pregunta VALUES (76, 19, "Hora de Aventura", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (77, 20, "Todas", true);
INSERT INTO Respuesta_Pregunta VALUES (78, 20, "Las Crónicas de Narnia: El León, La Bruja y El Ropero", false);
INSERT INTO Respuesta_Pregunta VALUES (79, 20, "Cenicienta", false);
INSERT INTO Respuesta_Pregunta VALUES (80, 20, "Maléfica", false);


--  NIVEL 5

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (81, 21, "Un libro", true);
INSERT INTO Respuesta_Pregunta VALUES (82, 21, "Una novela", false);
INSERT INTO Respuesta_Pregunta VALUES (83, 21, "Una canción", false);
INSERT INTO Respuesta_Pregunta VALUES (84, 21, "Una serie", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (85, 22, "Charles Perrault", true);
INSERT INTO Respuesta_Pregunta VALUES (86, 22, "Maria Elena Walsh", false);
INSERT INTO Respuesta_Pregunta VALUES (87, 22, "William Shakespeare", false);
INSERT INTO Respuesta_Pregunta VALUES (88, 22, "Pablo Picasso", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (89, 23, "Friends", true);
INSERT INTO Respuesta_Pregunta VALUES (90, 23, "Dr. House", false);
INSERT INTO Respuesta_Pregunta VALUES (91, 23, "Grey’s Anatomy", false);
INSERT INTO Respuesta_Pregunta VALUES (92, 23, "The Office", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (93, 24, "Isla Calavera", true);
INSERT INTO Respuesta_Pregunta VALUES (94, 24, "Isla Perdida", false);
INSERT INTO Respuesta_Pregunta VALUES (95, 24, "Isla Cráneo", false);
INSERT INTO Respuesta_Pregunta VALUES (96, 24, "Isla Caníbal", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (97, 25, "La Biblia", true);
INSERT INTO Respuesta_Pregunta VALUES (98, 25, "Don Quijote de la Marcha", false);
INSERT INTO Respuesta_Pregunta VALUES (99, 25, "Historia de Dos Ciudades", false);
INSERT INTO Respuesta_Pregunta VALUES (100, 25, "El Hobbit", false);


--  NIVEL 6

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (101, 26, "Jurassic Park", true);
INSERT INTO Respuesta_Pregunta VALUES (102, 26, "IT", false);
INSERT INTO Respuesta_Pregunta VALUES (103, 26, "El Hombre Bicentenario", false);
INSERT INTO Respuesta_Pregunta VALUES (104, 26, "Matilda", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (105, 27, "Superman", true);
INSERT INTO Respuesta_Pregunta VALUES (106, 27, "Batman", false);
INSERT INTO Respuesta_Pregunta VALUES (107, 27, "Spider-Man", false);
INSERT INTO Respuesta_Pregunta VALUES (108, 27, "Hulk", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (109, 28, "1997", true);
INSERT INTO Respuesta_Pregunta VALUES (110, 28, "1998", false);
INSERT INTO Respuesta_Pregunta VALUES (111, 28, "2007", false);
INSERT INTO Respuesta_Pregunta VALUES (112, 28, "2005", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (113, 29, "Steven Spielberg", true);
INSERT INTO Respuesta_Pregunta VALUES (114, 29, "Peter Jackson", false);
INSERT INTO Respuesta_Pregunta VALUES (115, 29, "James Cameron", false);
INSERT INTO Respuesta_Pregunta VALUES (116, 29, "Michael Bay", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (117, 30, "Argentina", true);
INSERT INTO Respuesta_Pregunta VALUES (118, 30, "España", false);
INSERT INTO Respuesta_Pregunta VALUES (119, 30, "Colombia", false);
INSERT INTO Respuesta_Pregunta VALUES (120, 30, "México", false);


--  NIVEL 7

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (121, 31, "One Piece", true);
INSERT INTO Respuesta_Pregunta VALUES (122, 31, "Shingeki No Kyojin", false);
INSERT INTO Respuesta_Pregunta VALUES (123, 31, "Dragon Ball Z", false);
INSERT INTO Respuesta_Pregunta VALUES (124, 31, "Bleach", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (125, 32, "1989", true);
INSERT INTO Respuesta_Pregunta VALUES (126, 32, "1988", false);
INSERT INTO Respuesta_Pregunta VALUES (127, 32, "1987", false);
INSERT INTO Respuesta_Pregunta VALUES (128, 32, "1990", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (129, 33, "Andrew Garfield", true);
INSERT INTO Respuesta_Pregunta VALUES (130, 33, "Leonardo DiCaprio", false);
INSERT INTO Respuesta_Pregunta VALUES (131, 33, "Zac Efron", false);
INSERT INTO Respuesta_Pregunta VALUES (132, 33, "Brad Pitt", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (133, 34, "Johnny Deep", true);
INSERT INTO Respuesta_Pregunta VALUES (134, 34, "George Clooney", false);
INSERT INTO Respuesta_Pregunta VALUES (135, 34, "Adam West", false);
INSERT INTO Respuesta_Pregunta VALUES (136, 34, "Christian Bale", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (137, 35, "dos", true);
INSERT INTO Respuesta_Pregunta VALUES (138, 35, "uno", false);
INSERT INTO Respuesta_Pregunta VALUES (139, 35, "tres", false);
INSERT INTO Respuesta_Pregunta VALUES (140, 35, "cero", false);


--  NIVEL 8

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (141, 36, "95 años", true);
INSERT INTO Respuesta_Pregunta VALUES (142, 36, "96 años", false);
INSERT INTO Respuesta_Pregunta VALUES (143, 36, "97 años", false);
INSERT INTO Respuesta_Pregunta VALUES (144, 36, "94 años", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (145, 37, "Blanca Nieves y los Siete Enanitos", true);
INSERT INTO Respuesta_Pregunta VALUES (146, 37, "Mickey Mouse", false);
INSERT INTO Respuesta_Pregunta VALUES (147, 37, "Toy Story", false);
INSERT INTO Respuesta_Pregunta VALUES (148, 37, "Mary Poppins", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (149, 38, "Brendan Fraser", true);
INSERT INTO Respuesta_Pregunta VALUES (150, 38, "Brad Pitt", false);
INSERT INTO Respuesta_Pregunta VALUES (151, 38, "Michael B. Jordan", false);
INSERT INTO Respuesta_Pregunta VALUES (152, 38, "Robert Downey Jr.", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (153, 39, "Ben Hur", true);
INSERT INTO Respuesta_Pregunta VALUES (154, 39, "Lo Que el Viento Se Llevó", false);
INSERT INTO Respuesta_Pregunta VALUES (155, 39, "El Último Emperador", false);
INSERT INTO Respuesta_Pregunta VALUES (156, 39, "De Aquí a la Eternidad", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (157, 40, "Italia", true);
INSERT INTO Respuesta_Pregunta VALUES (158, 40, "Alemania", false);
INSERT INTO Respuesta_Pregunta VALUES (159, 40, "Francia", false);
INSERT INTO Respuesta_Pregunta VALUES (160, 40, "España", false);










--

--  MÚSICA

--  NIVEL 1

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (161, 41, "Michael Jackson", true);
INSERT INTO Respuesta_Pregunta VALUES (162, 41, "Lionel Messi", false);
INSERT INTO Respuesta_Pregunta VALUES (163, 41, "Vladimir Putin", false);
INSERT INTO Respuesta_Pregunta VALUES (164, 41, "Elon Musk", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (165, 42, "Emilio Pereira", true);
INSERT INTO Respuesta_Pregunta VALUES (166, 42, "Bad Bunny", false);
INSERT INTO Respuesta_Pregunta VALUES (167, 42, "Freddy Mercury", false);
INSERT INTO Respuesta_Pregunta VALUES (168, 42, "Harry Styles", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (169, 43, "Duki", true);
INSERT INTO Respuesta_Pregunta VALUES (170, 43, "Travis scott", false);
INSERT INTO Respuesta_Pregunta VALUES (171, 43, "Ed Sheeran", false);
INSERT INTO Respuesta_Pregunta VALUES (172, 43, "Kidd Keo", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (173, 44, "si", true);
INSERT INTO Respuesta_Pregunta VALUES (174, 44, "no", false);
INSERT INTO Respuesta_Pregunta VALUES (175, 44, "ro", false);
INSERT INTO Respuesta_Pregunta VALUES (176, 44, "fi", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (177, 45, "Despacito", true);
INSERT INTO Respuesta_Pregunta VALUES (178, 45, "El Lobo de Wall Streat", false);
INSERT INTO Respuesta_Pregunta VALUES (179, 45, "Bajo la misma estrella", false);
INSERT INTO Respuesta_Pregunta VALUES (180, 45, "Inception", false);


--  NIVEL 2

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (181, 46, "Guitarra", true);
INSERT INTO Respuesta_Pregunta VALUES (182, 46, "Flauta dulce", false);
INSERT INTO Respuesta_Pregunta VALUES (183, 46, "Triángulo", false);
INSERT INTO Respuesta_Pregunta VALUES (184, 46, "Trompeta", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (185, 47, "Un Productor", true);
INSERT INTO Respuesta_Pregunta VALUES (186, 47, "Un Cantante", false);
INSERT INTO Respuesta_Pregunta VALUES (187, 47, "Un Compositor", false);
INSERT INTO Respuesta_Pregunta VALUES (188, 47, "Un Mánager", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (189, 48, "Orgullo y Prejuicio", true);
INSERT INTO Respuesta_Pregunta VALUES (190, 48, "Thriller", false);
INSERT INTO Respuesta_Pregunta VALUES (191, 48, "Let It Be", false);
INSERT INTO Respuesta_Pregunta VALUES (192, 48, "Un Verano Sin Tí", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (193, 49, "Megan Fox", true);
INSERT INTO Respuesta_Pregunta VALUES (194, 49, "Maria Becerra", false);
INSERT INTO Respuesta_Pregunta VALUES (195, 49, "Gilda", false);
INSERT INTO Respuesta_Pregunta VALUES (196, 49, "Amy Winehouse", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (197, 50, "Tini", true);
INSERT INTO Respuesta_Pregunta VALUES (198, 50, "Duki", false);
INSERT INTO Respuesta_Pregunta VALUES (199, 50, "L-gante", false);
INSERT INTO Respuesta_Pregunta VALUES (200, 50, "Maria Becerra", false);


--  NIVEL 3

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (201, 51, "Despacito", true);
INSERT INTO Respuesta_Pregunta VALUES (202, 51, "Bohemian Rhapsody", false);
INSERT INTO Respuesta_Pregunta VALUES (203, 51, "Baby", false);
INSERT INTO Respuesta_Pregunta VALUES (204, 51, "Shape of you", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (205, 52, "Todas", true);
INSERT INTO Respuesta_Pregunta VALUES (206, 52, "Tupac", false);
INSERT INTO Respuesta_Pregunta VALUES (207, 52, "Kendrick Lamar", false);
INSERT INTO Respuesta_Pregunta VALUES (208, 52, "Eminem", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (209, 53, "Ice cube", true);
INSERT INTO Respuesta_Pregunta VALUES (210, 53, "Bad Bunny", false);
INSERT INTO Respuesta_Pregunta VALUES (211, 53, "Brad Pitt", false);
INSERT INTO Respuesta_Pregunta VALUES (212, 53, "Quevedo", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (213, 54, "Quevedo", true);
INSERT INTO Respuesta_Pregunta VALUES (214, 54, "Raw Alejandro", false);
INSERT INTO Respuesta_Pregunta VALUES (215, 54, "Sebastián Yatra", false);
INSERT INTO Respuesta_Pregunta VALUES (216, 54, "Camila Cabello", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (217, 55, "Green", true);
INSERT INTO Respuesta_Pregunta VALUES (218, 55, "Jazz", false);
INSERT INTO Respuesta_Pregunta VALUES (219, 55, "Country", false);
INSERT INTO Respuesta_Pregunta VALUES (220, 55, "Funk", false);


--  NIVEL 4

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (221, 56, "Milo J", true);
INSERT INTO Respuesta_Pregunta VALUES (222, 56, "Kidd keo", false);
INSERT INTO Respuesta_Pregunta VALUES (223, 56, "Iann dior", false);
INSERT INTO Respuesta_Pregunta VALUES (224, 56, "Bhavi", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (225, 57, "Titi me preguntó", true);
INSERT INTO Respuesta_Pregunta VALUES (226, 57, "She dont give a fo", false);
INSERT INTO Respuesta_Pregunta VALUES (227, 57, "Todo de ti", false);
INSERT INTO Respuesta_Pregunta VALUES (228, 57, "Loca", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (229, 58, "Freddy Mercury", true);
INSERT INTO Respuesta_Pregunta VALUES (230, 58, "Michael Jackson", false);
INSERT INTO Respuesta_Pregunta VALUES (231, 58, "Los Beatles", false);
INSERT INTO Respuesta_Pregunta VALUES (232, 58, "Kiss", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (233, 59, "Michael Jackson", true);
INSERT INTO Respuesta_Pregunta VALUES (234, 59, "Eminem", false);
INSERT INTO Respuesta_Pregunta VALUES (235, 59, "Elvis Presley", false);
INSERT INTO Respuesta_Pregunta VALUES (236, 59, "Mick Jagger", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (237, 60, "Led Balloon", true);
INSERT INTO Respuesta_Pregunta VALUES (238, 60, "Coldplay", false);
INSERT INTO Respuesta_Pregunta VALUES (239, 60, "Marron 5", false);
INSERT INTO Respuesta_Pregunta VALUES (240, 60, "Gorillaz", false);


--  NIVEL 5

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (241, 61, "Bizarrap", true);
INSERT INTO Respuesta_Pregunta VALUES (242, 61, "Duki", false);
INSERT INTO Respuesta_Pregunta VALUES (243, 61, "Shakira", false);
INSERT INTO Respuesta_Pregunta VALUES (244, 61, "Bad Bunny", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (245, 62, "Tango", true);
INSERT INTO Respuesta_Pregunta VALUES (246, 62, "Polca", false);
INSERT INTO Respuesta_Pregunta VALUES (247, 62, "Jazz", false);
INSERT INTO Respuesta_Pregunta VALUES (248, 62, "Hip Hop", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (249, 63, "Flamenco", true);
INSERT INTO Respuesta_Pregunta VALUES (250, 63, "Polca", false);
INSERT INTO Respuesta_Pregunta VALUES (251, 63, "Jazz", false);
INSERT INTO Respuesta_Pregunta VALUES (252, 63, "Merengue", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (253, 64, "Youtube", true);
INSERT INTO Respuesta_Pregunta VALUES (254, 64, "Tik tok", false);
INSERT INTO Respuesta_Pregunta VALUES (255, 64, "Instagram", false);
INSERT INTO Respuesta_Pregunta VALUES (256, 64, "America Got Talent", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (257, 65, "BTS", true);
INSERT INTO Respuesta_Pregunta VALUES (258, 65, "GTS", false);
INSERT INTO Respuesta_Pregunta VALUES (259, 65, "VTS", false);
INSERT INTO Respuesta_Pregunta VALUES (260, 65, "TBS", false);


--  NIVEL 6

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (261, 66, "Elvis Presley", true);
INSERT INTO Respuesta_Pregunta VALUES (262, 66, "Bob Dylan", false);
INSERT INTO Respuesta_Pregunta VALUES (263, 66, "Justin Timberlake", false);
INSERT INTO Respuesta_Pregunta VALUES (264, 66, "Michael Jackson", false);


-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (265, 67, "…me equivoco demasiado", true);
INSERT INTO Respuesta_Pregunta VALUES (266, 67, "…me enojo demasiado", false);
INSERT INTO Respuesta_Pregunta VALUES (267, 67, "…me enojo mucho", false);
INSERT INTO Respuesta_Pregunta VALUES (268, 67, "…me siento desgraciado", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (269, 68, "Kid Laroi", true);
INSERT INTO Respuesta_Pregunta VALUES (270, 68, "Juice WRLD", false);
INSERT INTO Respuesta_Pregunta VALUES (271, 68, "Travis Scott", false);
INSERT INTO Respuesta_Pregunta VALUES (272, 68, "Drake", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (273, 69, "Luis Miguel", true);
INSERT INTO Respuesta_Pregunta VALUES (274, 69, "David Bisbal", false);
INSERT INTO Respuesta_Pregunta VALUES (275, 69, "Gilda", false);
INSERT INTO Respuesta_Pregunta VALUES (276, 69, "Chayanne", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (277, 70, "Apocalipsis zombie", true);
INSERT INTO Respuesta_Pregunta VALUES (278, 70, "Invaden Extraterrestres", false);
INSERT INTO Respuesta_Pregunta VALUES (279, 70, "Cae un meteorito", false);
INSERT INTO Respuesta_Pregunta VALUES (280, 70, "Una explosion", false);


--  NIVEL 7

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (281, 71, "54", true);
INSERT INTO Respuesta_Pregunta VALUES (282, 71, "51", false);
INSERT INTO Respuesta_Pregunta VALUES (283, 71, "63", false);
INSERT INTO Respuesta_Pregunta VALUES (284, 71, "48", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (285, 72, "Los 70", true);
INSERT INTO Respuesta_Pregunta VALUES (286, 72, "Los 90", false);
INSERT INTO Respuesta_Pregunta VALUES (287, 72, "Los 50", false);
INSERT INTO Respuesta_Pregunta VALUES (288, 72, "Los 2000", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (289, 73, "Los 90", true);
INSERT INTO Respuesta_Pregunta VALUES (290, 73, "Los 70", false);
INSERT INTO Respuesta_Pregunta VALUES (291, 73, "Los 80", false);
INSERT INTO Respuesta_Pregunta VALUES (292, 73, "Los 2000", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (293, 74, "Puerto Rico", true);
INSERT INTO Respuesta_Pregunta VALUES (294, 74, "México", false);
INSERT INTO Respuesta_Pregunta VALUES (295, 74, "Costa Rica", false);
INSERT INTO Respuesta_Pregunta VALUES (296, 74, "Argentina", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (297, 75, "Principios del 1800", true);
INSERT INTO Respuesta_Pregunta VALUES (298, 75, "Finales del 1800", false);
INSERT INTO Respuesta_Pregunta VALUES (299, 75, "Principios de 1700", false);
INSERT INTO Respuesta_Pregunta VALUES (300, 75, "Mediados de 1600", false);


--  NIVEL 8

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (301, 76, "Bad Bunny", true);
INSERT INTO Respuesta_Pregunta VALUES (302, 76, "Taylor Swift", false);
INSERT INTO Respuesta_Pregunta VALUES (303, 76, "Harry Styles", false);
INSERT INTO Respuesta_Pregunta VALUES (304, 76, "Drake", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (305, 77, "Beyoncé", true);
INSERT INTO Respuesta_Pregunta VALUES (306, 77, "Juan Luis Guerra", false);
INSERT INTO Respuesta_Pregunta VALUES (307, 77, "Residente", false);
INSERT INTO Respuesta_Pregunta VALUES (308, 77, "Rosalía", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (309, 78, "Hace 40.000 años", true);
INSERT INTO Respuesta_Pregunta VALUES (310, 78, "Hace 10.000 años", false);
INSERT INTO Respuesta_Pregunta VALUES (311, 78, "Hace 80.000 años", false);
INSERT INTO Respuesta_Pregunta VALUES (312, 78, "Hace 5.000 años", false);

-- PREGUNTA 4 
INSERT INTO Respuesta_Pregunta VALUES (313, 79, "A los 50", true);
INSERT INTO Respuesta_Pregunta VALUES (314, 79, "A los 60", false);
INSERT INTO Respuesta_Pregunta VALUES (315, 79, "A los 40", false);
INSERT INTO Respuesta_Pregunta VALUES (316, 79, "A los 35", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (317, 80, "1970", true);
INSERT INTO Respuesta_Pregunta VALUES (318, 80, "1980", false);
INSERT INTO Respuesta_Pregunta VALUES (319, 80, "1985", false);
INSERT INTO Respuesta_Pregunta VALUES (320, 80, "1990", false); 










--

--  CULTURA GENERAL


--  NIVEL 1

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (321, 81, "Italia", true);
INSERT INTO Respuesta_Pregunta VALUES (322, 81, "Roma", false);
INSERT INTO Respuesta_Pregunta VALUES (323, 81, "Francia", false);
INSERT INTO Respuesta_Pregunta VALUES (324, 81, "Grecia", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (325, 82, "Argentina", true);
INSERT INTO Respuesta_Pregunta VALUES (326, 82, "Buenos Aires", false);
INSERT INTO Respuesta_Pregunta VALUES (327, 82, "La Plata", false);
INSERT INTO Respuesta_Pregunta VALUES (328, 82, "Uruguay", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (329, 83, "Francia", true);
INSERT INTO Respuesta_Pregunta VALUES (330, 83, "París", false);
INSERT INTO Respuesta_Pregunta VALUES (331, 83, "Marsella", false);
INSERT INTO Respuesta_Pregunta VALUES (332, 83, "Estados Unidos", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (333, 84, "Brasil", true);
INSERT INTO Respuesta_Pregunta VALUES (334, 84, "Jerusalén", false);
INSERT INTO Respuesta_Pregunta VALUES (335, 84, "Rio de Janeiro", false);
INSERT INTO Respuesta_Pregunta VALUES (336, 84, "Grecia", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (337, 85, "Estados Unidos", true);
INSERT INTO Respuesta_Pregunta VALUES (338, 85, "Washington", false);
INSERT INTO Respuesta_Pregunta VALUES (339, 85, "Nueva Zelanda", false);
INSERT INTO Respuesta_Pregunta VALUES (340, 85, "Jamaica", false);


--  NIVEL 2

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (341, 86, "Chino Mandarin", true);
INSERT INTO Respuesta_Pregunta VALUES (342, 86, "Frances", false);
INSERT INTO Respuesta_Pregunta VALUES (343, 86, "Ingles", false);
INSERT INTO Respuesta_Pregunta VALUES (344, 86, "Español", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (345, 87, "Italia", true);
INSERT INTO Respuesta_Pregunta VALUES (346, 87, "Argentina", false);
INSERT INTO Respuesta_Pregunta VALUES (347, 87, "Francia", false);
INSERT INTO Respuesta_Pregunta VALUES (348, 87, "España", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (349, 88, "Argentina", true);
INSERT INTO Respuesta_Pregunta VALUES (350, 88, "España", false);
INSERT INTO Respuesta_Pregunta VALUES (351, 88, "Mexico", false);
INSERT INTO Respuesta_Pregunta VALUES (352, 88, "Chile", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (353, 89, "Perú", true);
INSERT INTO Respuesta_Pregunta VALUES (354, 89, "Chile", false);
INSERT INTO Respuesta_Pregunta VALUES (355, 89, "Paraguay", false);
INSERT INTO Respuesta_Pregunta VALUES (356, 89, "Finlandia", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (357, 90, "España", true);
INSERT INTO Respuesta_Pregunta VALUES (358, 90, "Argentina", false);
INSERT INTO Respuesta_Pregunta VALUES (359, 90, "Italia", false);
INSERT INTO Respuesta_Pregunta VALUES (360, 90, "Francia", false);


--  NIVEL 3

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (361, 91, "Paraguay", true);
INSERT INTO Respuesta_Pregunta VALUES (362, 91, "Argentina", false);
INSERT INTO Respuesta_Pregunta VALUES (363, 91, "Concepcion", false);
INSERT INTO Respuesta_Pregunta VALUES (364, 91, "Asunción", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (365, 92, "Océano Pacifico", true);
INSERT INTO Respuesta_Pregunta VALUES (366, 92, "Océano Ártico", false);
INSERT INTO Respuesta_Pregunta VALUES (367, 92, "Océano Indico", false);
INSERT INTO Respuesta_Pregunta VALUES (368, 92, "Océano Atlántico", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (369, 93, "La Antártida", true);
INSERT INTO Respuesta_Pregunta VALUES (370, 93, "El Caribe", false);
INSERT INTO Respuesta_Pregunta VALUES (371, 93, "La selva", false);
INSERT INTO Respuesta_Pregunta VALUES (372, 93, "Todas", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (373, 94, "El Amazonas", true);
INSERT INTO Respuesta_Pregunta VALUES (374, 94, "El río Nilo", false);
INSERT INTO Respuesta_Pregunta VALUES (375, 94, "Río Mississippi", false);
INSERT INTO Respuesta_Pregunta VALUES (376, 94, "Rio Yangzi", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (377, 95, "Agua", true);
INSERT INTO Respuesta_Pregunta VALUES (378, 95, "Helio", false);
INSERT INTO Respuesta_Pregunta VALUES (379, 95, "Cobre", false);
INSERT INTO Respuesta_Pregunta VALUES (380, 95, "Oro", false);


--  NIVEL 4

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (381, 96, "Todos", true);
INSERT INTO Respuesta_Pregunta VALUES (382, 96, "José de San Martín", false);
INSERT INTO Respuesta_Pregunta VALUES (383, 96, "Simón Bolívar", false);
INSERT INTO Respuesta_Pregunta VALUES (384, 96, "Thomas Cochrane", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (385, 97, "Cada 4 años", true);
INSERT INTO Respuesta_Pregunta VALUES (386, 97, "Cada 2 años", false);
INSERT INTO Respuesta_Pregunta VALUES (387, 97, "Cada 8 años", false);
INSERT INTO Respuesta_Pregunta VALUES (388, 97, "Cada 6 años", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (389, 98, "206", true);
INSERT INTO Respuesta_Pregunta VALUES (390, 98, "224", false);
INSERT INTO Respuesta_Pregunta VALUES (391, 98, "321", false);
INSERT INTO Respuesta_Pregunta VALUES (392, 98, "263", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (393, 99, "Fotosíntesis", true);
INSERT INTO Respuesta_Pregunta VALUES (394, 99, "Insolación", false);
INSERT INTO Respuesta_Pregunta VALUES (395, 99, "Absorción", false);
INSERT INTO Respuesta_Pregunta VALUES (396, 99, "Todas", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (397, 100, "La ballena azul antártica", true);
INSERT INTO Respuesta_Pregunta VALUES (398, 100, "Gusano cordón de bota", false);
INSERT INTO Respuesta_Pregunta VALUES (399, 100, "Anaconda", false);
INSERT INTO Respuesta_Pregunta VALUES (400, 100, "Medusa melena de león ártica", false);


--  NIVEL 5

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (401, 101, "1789", true);
INSERT INTO Respuesta_Pregunta VALUES (402, 101, "1889", false);
INSERT INTO Respuesta_Pregunta VALUES (403, 101, "1598", false);
INSERT INTO Respuesta_Pregunta VALUES (404, 101, "1692", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (405, 102, "Leonarco Davinci", true);
INSERT INTO Respuesta_Pregunta VALUES (406, 102, "Pablo Picasso", false);
INSERT INTO Respuesta_Pregunta VALUES (407, 102, "Miguel Ángel", false);
INSERT INTO Respuesta_Pregunta VALUES (408, 102, "Frida Kahlo", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (409, 103, "Leonardo Davinci", true);
INSERT INTO Respuesta_Pregunta VALUES (410, 103, "Vincent van Gogh", false);
INSERT INTO Respuesta_Pregunta VALUES (411, 103, "Pablo Picasso", false);
INSERT INTO Respuesta_Pregunta VALUES (412, 103, "Pierre-Auguste Renoir", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (413, 104, "Miguel Ángel", true);
INSERT INTO Respuesta_Pregunta VALUES (414, 104, "Leonardo Davinci", false);
INSERT INTO Respuesta_Pregunta VALUES (415, 104, "Pablo Picasso", false);
INSERT INTO Respuesta_Pregunta VALUES (416, 104, "Vincent van Gogh", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (417, 105, "Ludwig van Beethoven", true);
INSERT INTO Respuesta_Pregunta VALUES (418, 105, "Mozart", false);
INSERT INTO Respuesta_Pregunta VALUES (419, 105, "Bizarrap", false);
INSERT INTO Respuesta_Pregunta VALUES (420, 105, "Johannes Brahms", false);


--  NIVEL 6

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (421, 106, "Hace 66 millones de años", true);
INSERT INTO Respuesta_Pregunta VALUES (422, 106, "Hace 56 millones de años", false);
INSERT INTO Respuesta_Pregunta VALUES (423, 106, "Hace 59 millones de años", false);
INSERT INTO Respuesta_Pregunta VALUES (424, 106, "Hace 84 millones de años", false);


-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (425, 107, "Japón", true);
INSERT INTO Respuesta_Pregunta VALUES (426, 107, "China", false);
INSERT INTO Respuesta_Pregunta VALUES (427, 107, "Estados Unidos", false);
INSERT INTO Respuesta_Pregunta VALUES (428, 107, "Rusia", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (429, 108, "1961", true);
INSERT INTO Respuesta_Pregunta VALUES (430, 108, "1894", false);
INSERT INTO Respuesta_Pregunta VALUES (431, 108, "1985", false);
INSERT INTO Respuesta_Pregunta VALUES (432, 108, "1765", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (433, 109, "1989", true);
INSERT INTO Respuesta_Pregunta VALUES (434, 109, "1798", false);
INSERT INTO Respuesta_Pregunta VALUES (435, 109, "1983", false);
INSERT INTO Respuesta_Pregunta VALUES (436, 109, "1863", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (437, 110, "Rusia", true);
INSERT INTO Respuesta_Pregunta VALUES (438, 110, "China", false);
INSERT INTO Respuesta_Pregunta VALUES (439, 110, "Estados Unidos", false);
INSERT INTO Respuesta_Pregunta VALUES (440, 110, "España", false);


--  NIVEL 7

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (441, 111, "116 años", true);
INSERT INTO Respuesta_Pregunta VALUES (442, 111, "110 años", false);
INSERT INTO Respuesta_Pregunta VALUES (443, 111, "111 años", false);
INSERT INTO Respuesta_Pregunta VALUES (444, 111, "105 años", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (445, 112, "China", true);
INSERT INTO Respuesta_Pregunta VALUES (446, 112, "Rusia", false);
INSERT INTO Respuesta_Pregunta VALUES (447, 112, "India", false);
INSERT INTO Respuesta_Pregunta VALUES (448, 112, "Siria", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (449, 113, "María Estela Martínez de Peron", true);
INSERT INTO Respuesta_Pregunta VALUES (450, 113, "Michelle Bachelet", false);
INSERT INTO Respuesta_Pregunta VALUES (451, 113, "Cristina Fernández de Kirchner", false);
INSERT INTO Respuesta_Pregunta VALUES (452, 113, "Margaret Thatcher", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (453, 114, "Monte Everest", true);
INSERT INTO Respuesta_Pregunta VALUES (454, 114, "Cho Oyu", false);
INSERT INTO Respuesta_Pregunta VALUES (455, 114, "Manaslu", false);
INSERT INTO Respuesta_Pregunta VALUES (456, 114, "K2", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (457, 115, "Don Quijote de la Mancha", true);
INSERT INTO Respuesta_Pregunta VALUES (458, 115, "El Señor de los Anillos", false);
INSERT INTO Respuesta_Pregunta VALUES (459, 115, "Cien años de Soledad", false);
INSERT INTO Respuesta_Pregunta VALUES (460, 115, "El principito", false);


--  NIVEL 8

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (461, 116, "Cada 75 años", true);
INSERT INTO Respuesta_Pregunta VALUES (462, 116, "Cada 95 años", false);
INSERT INTO Respuesta_Pregunta VALUES (463, 116, "Cada 30 años", false);
INSERT INTO Respuesta_Pregunta VALUES (464, 116, "Cada 115 años", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (465, 117, "Nikola Tesla", true);
INSERT INTO Respuesta_Pregunta VALUES (466, 117, "Thomas Edison", false);
INSERT INTO Respuesta_Pregunta VALUES (467, 117, "Henry M. Leland Inventor", false);
INSERT INTO Respuesta_Pregunta VALUES (468, 117, "Willieam Greener", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (469, 118, "Hace 40.000 años", true);
INSERT INTO Respuesta_Pregunta VALUES (470, 118, "Hace 10.000 años", false);
INSERT INTO Respuesta_Pregunta VALUES (471, 118, "Hace 80.000 años", false);
INSERT INTO Respuesta_Pregunta VALUES (472, 118, "Hace 5.000 años", false);

-- PREGUNTA 4 
INSERT INTO Respuesta_Pregunta VALUES (473, 119, "Bruj Khalifa", true);
INSERT INTO Respuesta_Pregunta VALUES (474, 119, "Torre de Shanghai", false);
INSERT INTO Respuesta_Pregunta VALUES (475, 119, "Abraj Al Bait", false);
INSERT INTO Respuesta_Pregunta VALUES (476, 119, "Ping An Finance Center", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (477, 120, "El mosquito", true);
INSERT INTO Respuesta_Pregunta VALUES (478, 120, "Serpiente", false);
INSERT INTO Respuesta_Pregunta VALUES (479, 120, "Caracoles de agua dulce", false);
INSERT INTO Respuesta_Pregunta VALUES (480, 120, "Tiburon", false); 










--

--  Deportes

--  NIVEL 1

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (481, 121, "Naranja", true);
INSERT INTO Respuesta_Pregunta VALUES (482, 121, "Rojo", false);
INSERT INTO Respuesta_Pregunta VALUES (483, 121, "Azul", false);
INSERT INTO Respuesta_Pregunta VALUES (484, 121, "Amarillo", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (485, 122, "Tenis", true);
INSERT INTO Respuesta_Pregunta VALUES (486, 122, "Futbol", false);
INSERT INTO Respuesta_Pregunta VALUES (487, 122, "Basket", false);
INSERT INTO Respuesta_Pregunta VALUES (488, 122, "Voley", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (489, 123, "Futbol", true);
INSERT INTO Respuesta_Pregunta VALUES (490, 123, "Handball", false);
INSERT INTO Respuesta_Pregunta VALUES (491, 123, "Boxeo", false);
INSERT INTO Respuesta_Pregunta VALUES (492, 123, "Basket", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (493, 124, "Basket", true);
INSERT INTO Respuesta_Pregunta VALUES (494, 124, "Tenis", false);
INSERT INTO Respuesta_Pregunta VALUES (495, 124, "Futbol", false);
INSERT INTO Respuesta_Pregunta VALUES (496, 124, "Handball", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (497, 125, "Voley", true);
INSERT INTO Respuesta_Pregunta VALUES (498, 125, "Handball", false);
INSERT INTO Respuesta_Pregunta VALUES (499, 125, "Futbol", false);
INSERT INTO Respuesta_Pregunta VALUES (500, 125, "Basket", false);


--  NIVEL 2

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (501, 126, "Real Madrid", true);
INSERT INTO Respuesta_Pregunta VALUES (502, 126, "Sacachispas", false);
INSERT INTO Respuesta_Pregunta VALUES (503, 126, "Lakers", false);
INSERT INTO Respuesta_Pregunta VALUES (504, 126, "Real Madrid Castilla", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (505, 127, "Usain Bolt", true);
INSERT INTO Respuesta_Pregunta VALUES (506, 127, "Del Potro", false);
INSERT INTO Respuesta_Pregunta VALUES (507, 127, "Advincula", false);
INSERT INTO Respuesta_Pregunta VALUES (508, 127, "Cristiano Ronaldo", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (509, 128, "NBA", true);
INSERT INTO Respuesta_Pregunta VALUES (510, 128, "BBVA", false);
INSERT INTO Respuesta_Pregunta VALUES (511, 128, "MLS", false);
INSERT INTO Respuesta_Pregunta VALUES (512, 128, "Liga Endesa", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (513, 129, "Boca y River", true);
INSERT INTO Respuesta_Pregunta VALUES (514, 129, "Barcelona y Real Madrid", false);
INSERT INTO Respuesta_Pregunta VALUES (515, 129, "Voca y Riber", false);
INSERT INTO Respuesta_Pregunta VALUES (516, 129, "Peñarol y Nacional", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (517, 130, "tres", true);
INSERT INTO Respuesta_Pregunta VALUES (518, 130, "infinito", false);
INSERT INTO Respuesta_Pregunta VALUES (519, 130, "cinco", false);
INSERT INTO Respuesta_Pregunta VALUES (520, 130, "dos", false);


--  NIVEL 3

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (521, 131, "Boxeo", true);
INSERT INTO Respuesta_Pregunta VALUES (522, 131, "Taekwondo", false);
INSERT INTO Respuesta_Pregunta VALUES (523, 131, "Rugby", false);
INSERT INTO Respuesta_Pregunta VALUES (524, 131, "Futbol", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (525, 132, "Rafa Nadal", true);
INSERT INTO Respuesta_Pregunta VALUES (526, 132, "Lebron James", false);
INSERT INTO Respuesta_Pregunta VALUES (527, 132, "Arturo Vidal", false);
INSERT INTO Respuesta_Pregunta VALUES (528, 132, "James Rodriguez", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (529, 133, "Argentina", true);
INSERT INTO Respuesta_Pregunta VALUES (530, 133, "Italia", false);
INSERT INTO Respuesta_Pregunta VALUES (531, 133, "Uruguay", false);
INSERT INTO Respuesta_Pregunta VALUES (532, 133, "Español", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (533, 134, "Todo el cuerpo", true);
INSERT INTO Respuesta_Pregunta VALUES (534, 134, "Brazos y Piernas", false);
INSERT INTO Respuesta_Pregunta VALUES (535, 134, "Brazos y Cabeza", false);
INSERT INTO Respuesta_Pregunta VALUES (536, 134, "Brazos, Piernas y cabeza", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (537, 135, "Qatar", true);
INSERT INTO Respuesta_Pregunta VALUES (538, 135, "Argentina", false);
INSERT INTO Respuesta_Pregunta VALUES (539, 135, "Arabia", false);
INSERT INTO Respuesta_Pregunta VALUES (540, 135, "Francia", false);


--  NIVEL 4

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (541, 136, "Brasil", true);
INSERT INTO Respuesta_Pregunta VALUES (542, 136, "Argentina", false);
INSERT INTO Respuesta_Pregunta VALUES (543, 136, "Bolivia", false);
INSERT INTO Respuesta_Pregunta VALUES (544, 136, "España", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (545, 137, "tres", true);
INSERT INTO Respuesta_Pregunta VALUES (546, 137, "dos", false);
INSERT INTO Respuesta_Pregunta VALUES (547, 137, "uno", false);
INSERT INTO Respuesta_Pregunta VALUES (548, 137, "infinito", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (549, 138, "18x9", true);
INSERT INTO Respuesta_Pregunta VALUES (550, 138, "40x20", false);
INSERT INTO Respuesta_Pregunta VALUES (551, 138, "25x50", false);
INSERT INTO Respuesta_Pregunta VALUES (552, 138, "30x60", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (553, 139, "16", true);
INSERT INTO Respuesta_Pregunta VALUES (554, 139, "14", false);
INSERT INTO Respuesta_Pregunta VALUES (555, 139, "12", false);
INSERT INTO Respuesta_Pregunta VALUES (556, 139, "18", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (557, 140, "36", true);
INSERT INTO Respuesta_Pregunta VALUES (558, 140, "26", false);
INSERT INTO Respuesta_Pregunta VALUES (559, 140, "46", false);
INSERT INTO Respuesta_Pregunta VALUES (560, 140, "40", false);


--  NIVEL 5

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (561, 141, "1978-1986-2022", true);
INSERT INTO Respuesta_Pregunta VALUES (562, 141, "1986-1990-2022", false);
INSERT INTO Respuesta_Pregunta VALUES (563, 141, "1994-2014-2022", false);
INSERT INTO Respuesta_Pregunta VALUES (564, 141, "1987-2021-2022", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (565, 142, "Lebron James", true);
INSERT INTO Respuesta_Pregunta VALUES (566, 142, "Michael Jordan", false);
INSERT INTO Respuesta_Pregunta VALUES (567, 142, "Michael Jackson", false);
INSERT INTO Respuesta_Pregunta VALUES (568, 142, "Kobe Bryant", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (569, 143, "Independiente de Avellaneda", true);
INSERT INTO Respuesta_Pregunta VALUES (570, 143, "Independiente Medellin", false);
INSERT INTO Respuesta_Pregunta VALUES (571, 143, "Independiente Del Valle", false);
INSERT INTO Respuesta_Pregunta VALUES (572, 143, "Independiente Santa Fe", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (573, 144, "Maidana", true);
INSERT INTO Respuesta_Pregunta VALUES (574, 144, "Martinez", false);
INSERT INTO Respuesta_Pregunta VALUES (575, 144, "Suarez", false);
INSERT INTO Respuesta_Pregunta VALUES (576, 144, "Rodriguez", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (577, 145, "Muay Thai", true);
INSERT INTO Respuesta_Pregunta VALUES (578, 145, "Taekwondo", false);
INSERT INTO Respuesta_Pregunta VALUES (579, 145, "Aikido", false);
INSERT INTO Respuesta_Pregunta VALUES (580, 145, "Tai Chi", false);


--  NIVEL 6

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (581, 146, "cero", true);
INSERT INTO Respuesta_Pregunta VALUES (582, 146, "tres", false);
INSERT INTO Respuesta_Pregunta VALUES (583, 146, "cinco", false);
INSERT INTO Respuesta_Pregunta VALUES (584, 146, "siete", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (585, 147, "seis", true);
INSERT INTO Respuesta_Pregunta VALUES (586, 147, "cinco", false);
INSERT INTO Respuesta_Pregunta VALUES (587, 147, "cuatro", false);
INSERT INTO Respuesta_Pregunta VALUES (588, 147, "siete", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (589, 148, "1500", true);
INSERT INTO Respuesta_Pregunta VALUES (590, 148, "800", false);
INSERT INTO Respuesta_Pregunta VALUES (591, 148, "500", false);
INSERT INTO Respuesta_Pregunta VALUES (592, 148, "1800", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (593, 149, "Michael Phelps", true);
INSERT INTO Respuesta_Pregunta VALUES (594, 149, "Michael Jordan", false);
INSERT INTO Respuesta_Pregunta VALUES (595, 149, "Michael B. Jordan", false);
INSERT INTO Respuesta_Pregunta VALUES (596, 149, "Michael Keaton", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (597, 150, "400 metros", true);
INSERT INTO Respuesta_Pregunta VALUES (598, 150, "500 metos", false);
INSERT INTO Respuesta_Pregunta VALUES (599, 150, "600 metros", false);
INSERT INTO Respuesta_Pregunta VALUES (600, 150, "300 metros", false);


--  NIVEL 7

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (601, 151, "Futbol", true);
INSERT INTO Respuesta_Pregunta VALUES (602, 151, "Jabalina", false);
INSERT INTO Respuesta_Pregunta VALUES (603, 151, "Handball", false);
INSERT INTO Respuesta_Pregunta VALUES (604, 151, "Boxeo", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (605, 152, "Juventus", true);
INSERT INTO Respuesta_Pregunta VALUES (606, 152, "Manchester United", false);
INSERT INTO Respuesta_Pregunta VALUES (607, 152, "Napoli", false);
INSERT INTO Respuesta_Pregunta VALUES (608, 152, "Liverpool", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (609, 153, "Lebron James", true);
INSERT INTO Respuesta_Pregunta VALUES (610, 153, "Kobe Bryant", false);
INSERT INTO Respuesta_Pregunta VALUES (611, 153, "Wilt Chamberlain", false);
INSERT INTO Respuesta_Pregunta VALUES (612, 153, "Manuel Ginobilli", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (613, 154, "2000", true);
INSERT INTO Respuesta_Pregunta VALUES (614, 154, "2010", false);
INSERT INTO Respuesta_Pregunta VALUES (615, 154, "1990", false);
INSERT INTO Respuesta_Pregunta VALUES (616, 154, "2020", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (617, 155, "98.48m", true);
INSERT INTO Respuesta_Pregunta VALUES (618, 155, "98.88m", false);
INSERT INTO Respuesta_Pregunta VALUES (619, 155, "94.44m", false);
INSERT INTO Respuesta_Pregunta VALUES (620, 155, "95.15m", false);


--  NIVEL 8

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (621, 156, "Uruguay 4 Argentina 2", true);
INSERT INTO Respuesta_Pregunta VALUES (622, 156, "Uruguay 2 Argentina 4", false);
INSERT INTO Respuesta_Pregunta VALUES (623, 156, "Argentina 2 Italia 0", false);
INSERT INTO Respuesta_Pregunta VALUES (624, 156, "Brasil 1 Alemania 7", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (625, 157, "186-184", true);
INSERT INTO Respuesta_Pregunta VALUES (626, 157, "185-187", false);
INSERT INTO Respuesta_Pregunta VALUES (627, 157, "196-194", false);
INSERT INTO Respuesta_Pregunta VALUES (628, 157, "195-197", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (629, 158, "Florian Wellbrock", true);
INSERT INTO Respuesta_Pregunta VALUES (630, 158, "Michael Phelps", false);
INSERT INTO Respuesta_Pregunta VALUES (631, 158, "Rafa Nadal", false);
INSERT INTO Respuesta_Pregunta VALUES (632, 158, "Mark Andrew Spitz", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (633, 159, "42 km/h", true);
INSERT INTO Respuesta_Pregunta VALUES (634, 159, "52 km/h", false);
INSERT INTO Respuesta_Pregunta VALUES (635, 159, "48 km/h", false);
INSERT INTO Respuesta_Pregunta VALUES (636, 159, "50 km/h", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (637, 160, "149-0", true);
INSERT INTO Respuesta_Pregunta VALUES (638, 160, "125-0", false);
INSERT INTO Respuesta_Pregunta VALUES (639, 160, "100-0", false);
INSERT INTO Respuesta_Pregunta VALUES (640, 160, "50-49", false);









--

--  VIDEOJUEGOS

--  NIVEL 1

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (641, 161, "Super Mario Bros", true);
INSERT INTO Respuesta_Pregunta VALUES (642, 161, "Pokemon", false);
INSERT INTO Respuesta_Pregunta VALUES (643, 161, "Mega Mario bros", false);
INSERT INTO Respuesta_Pregunta VALUES (644, 161, "Luigi Bros", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (645, 162, "Roblox360", true);
INSERT INTO Respuesta_Pregunta VALUES (646, 162, "Nintendo switch", false);
INSERT INTO Respuesta_Pregunta VALUES (647, 162, "Sega", false);
INSERT INTO Respuesta_Pregunta VALUES (648, 162, "PlayStation 4", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (649, 163, "Fortnite", true);
INSERT INTO Respuesta_Pregunta VALUES (650, 163, "Pro Evolution Basket", false);
INSERT INTO Respuesta_Pregunta VALUES (651, 163, "Kokemon", false);
INSERT INTO Respuesta_Pregunta VALUES (652, 163, "PLantas vs Vampiros", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (653, 164, "Fútbol", true);
INSERT INTO Respuesta_Pregunta VALUES (654, 164, "Fútbol Americano", false);
INSERT INTO Respuesta_Pregunta VALUES (655, 164, "Básquetbol", false);
INSERT INTO Respuesta_Pregunta VALUES (656, 164, "Béisbol", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (657, 165, "Amarillo", true);
INSERT INTO Respuesta_Pregunta VALUES (658, 165, "Verde", false);
INSERT INTO Respuesta_Pregunta VALUES (659, 165, "Naranja", false);
INSERT INTO Respuesta_Pregunta VALUES (660, 165, "Violeta", false);


--  NIVEL 2

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (661, 166, "Grand Theft Auto", true);
INSERT INTO Respuesta_Pregunta VALUES (662, 166, "Grand The Auto", false);
INSERT INTO Respuesta_Pregunta VALUES (663, 166, "Ground Traffic Automatic", false);
INSERT INTO Respuesta_Pregunta VALUES (664, 166, "Gran Tráfico Auto", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (665, 167, "Luigi", true);
INSERT INTO Respuesta_Pregunta VALUES (666, 167, "Mario Jr.", false);
INSERT INTO Respuesta_Pregunta VALUES (667, 167, "Luis", false);
INSERT INTO Respuesta_Pregunta VALUES (668, 167, "Honguito", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (669, 168, "Dualshock 4", true);
INSERT INTO Respuesta_Pregunta VALUES (670, 168, "Trialshock 4", false);
INSERT INTO Respuesta_Pregunta VALUES (671, 168, "Duomando 4", false);
INSERT INTO Respuesta_Pregunta VALUES (672, 168, "ControlDuo 4", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (673, 169, "Top Gear", true);
INSERT INTO Respuesta_Pregunta VALUES (674, 169, "Snake", false);
INSERT INTO Respuesta_Pregunta VALUES (675, 169, "GTA", false);
INSERT INTO Respuesta_Pregunta VALUES (676, 169, "FIFA", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (677, 170, "PS1", true);
INSERT INTO Respuesta_Pregunta VALUES (678, 170, "Play One", false);
INSERT INTO Respuesta_Pregunta VALUES (679, 170, "PlayStation Origin", false);
INSERT INTO Respuesta_Pregunta VALUES (680, 170, "PS Project", false);


--  NIVEL 3

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (681, 171, "Pong", true);
INSERT INTO Respuesta_Pregunta VALUES (682, 171, "Tetris", false);
INSERT INTO Respuesta_Pregunta VALUES (683, 171, "Donkey Kong", false);
INSERT INTO Respuesta_Pregunta VALUES (684, 171, "Pac-man", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (685, 172, "Dr. Robotnik", true);
INSERT INTO Respuesta_Pregunta VALUES (686, 172, "Robotech", false);
INSERT INTO Respuesta_Pregunta VALUES (687, 172, "Dr. Malo", false);
INSERT INTO Respuesta_Pregunta VALUES (688, 172, "Tails", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (689, 173, "PS4", true);
INSERT INTO Respuesta_Pregunta VALUES (690, 173, "Xbox One", false);
INSERT INTO Respuesta_Pregunta VALUES (691, 173, "Nintendo Switch", false);
INSERT INTO Respuesta_Pregunta VALUES (692, 173, "Ninguna", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (693, 174, "12", true);
INSERT INTO Respuesta_Pregunta VALUES (694, 174, "16", false);
INSERT INTO Respuesta_Pregunta VALUES (695, 174, "4", false);
INSERT INTO Respuesta_Pregunta VALUES (696, 174, "8", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (697, 175, "Madera", true);
INSERT INTO Respuesta_Pregunta VALUES (698, 175, "Hierro", false);
INSERT INTO Respuesta_Pregunta VALUES (699, 175, "Hueso", false);
INSERT INTO Respuesta_Pregunta VALUES (700, 175, "Acero", false);


--  NIVEL 4

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (701, 176, "Riot Games", true);
INSERT INTO Respuesta_Pregunta VALUES (702, 176, "Rockstar", false);
INSERT INTO Respuesta_Pregunta VALUES (703, 176, "Naughty Dog", false);
INSERT INTO Respuesta_Pregunta VALUES (704, 176, "Ubisoft", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (705, 177, "Racoon City", true);
INSERT INTO Respuesta_Pregunta VALUES (706, 177, "New York", false);
INSERT INTO Respuesta_Pregunta VALUES (707, 177, "Metrópolis", false);
INSERT INTO Respuesta_Pregunta VALUES (708, 177, "Resident City", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (709, 178, "Counter-Strike:Global Offensive ", true);
INSERT INTO Respuesta_Pregunta VALUES (710, 178, "Crisis-Star:Global Off", false);
INSERT INTO Respuesta_Pregunta VALUES (711, 178, "Counter-Strike:Global Offline", false);
INSERT INTO Respuesta_Pregunta VALUES (712, 178, "Crisis-Strike:Global Offseason", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (713, 179, "Todas son correctas", true);
INSERT INTO Respuesta_Pregunta VALUES (714, 179, "FIFA y Pro Evolution Soccer ", false);
INSERT INTO Respuesta_Pregunta VALUES (715, 179, "EA Sports FIFA Y PES", false);
INSERT INTO Respuesta_Pregunta VALUES (716, 179, "FIFA y PES", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (717, 180, "NBA2K", true);
INSERT INTO Respuesta_Pregunta VALUES (718, 180, "NBA Live", false);
INSERT INTO Respuesta_Pregunta VALUES (719, 180, "NBA Jam", false);
INSERT INTO Respuesta_Pregunta VALUES (720, 180, "NBA Playgrounds", false);


--  NIVEL 5

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (721, 181, "5", true);
INSERT INTO Respuesta_Pregunta VALUES (722, 181, "4", false);
INSERT INTO Respuesta_Pregunta VALUES (723, 181, "3", false);
INSERT INTO Respuesta_Pregunta VALUES (724, 181, "6", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (725, 182, "The Last Of Us", true);
INSERT INTO Respuesta_Pregunta VALUES (726, 182, "Read Dead Redemption", false);
INSERT INTO Respuesta_Pregunta VALUES (727, 182, "Minecraft", false);
INSERT INTO Respuesta_Pregunta VALUES (728, 182, "Fortnite", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (729, 183, "Ares", true);
INSERT INTO Respuesta_Pregunta VALUES (730, 183, "Zeus", false);
INSERT INTO Respuesta_Pregunta VALUES (731, 183, "Poseidon", false);
INSERT INTO Respuesta_Pregunta VALUES (732, 183, "Hades", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (733, 184, "Jefe Maestro", true);
INSERT INTO Respuesta_Pregunta VALUES (734, 184, "Comandante Total", false);
INSERT INTO Respuesta_Pregunta VALUES (735, 184, "Soldado Maestro", false);
INSERT INTO Respuesta_Pregunta VALUES (736, 184, "Jhon", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (737, 185, "1995", true);
INSERT INTO Respuesta_Pregunta VALUES (738, 185, "1996", false);
INSERT INTO Respuesta_Pregunta VALUES (739, 185, "1998", false);
INSERT INTO Respuesta_Pregunta VALUES (740, 185, "1999", false);


--  NIVEL 6

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (741, 186, "Faker", true);
INSERT INTO Respuesta_Pregunta VALUES (742, 186, "Dpa", false);
INSERT INTO Respuesta_Pregunta VALUES (743, 186, "Chovy", false);
INSERT INTO Respuesta_Pregunta VALUES (744, 186, "Josedeodo", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (745, 187, "Fusajiro Yamauchi", true);
INSERT INTO Respuesta_Pregunta VALUES (746, 187, "Shigero Miyamoto", false);
INSERT INTO Respuesta_Pregunta VALUES (747, 187, "Satoru Iwata", false);
INSERT INTO Respuesta_Pregunta VALUES (748, 187, "Eiichirō Oda", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (749, 188, "Todas son correctas", true);
INSERT INTO Respuesta_Pregunta VALUES (750, 188, "La pesadilla de todo gamer", false);
INSERT INTO Respuesta_Pregunta VALUES (751, 188, "Lo peor que te puede pasar mientras juegas", false);
INSERT INTO Respuesta_Pregunta VALUES (752, 188, "Retardo producido por una telecomunicación en teimpo real", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (753, 189, "RioGames", true);
INSERT INTO Respuesta_Pregunta VALUES (754, 189, "Smilegate", false);
INSERT INTO Respuesta_Pregunta VALUES (755, 189, "Mixi", false);
INSERT INTO Respuesta_Pregunta VALUES (756, 189, "Valve", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (757, 190, "Carpintero", true);
INSERT INTO Respuesta_Pregunta VALUES (758, 190, "Fontanero", false);
INSERT INTO Respuesta_Pregunta VALUES (759, 190, "Plomero", false);
INSERT INTO Respuesta_Pregunta VALUES (760, 190, "Electricista", false);


--  NIVEL 7

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (761, 191, "Virus Progenitor", true);
INSERT INTO Respuesta_Pregunta VALUES (762, 191, "Virus z", false);
INSERT INTO Respuesta_Pregunta VALUES (763, 191, "Demaevirus", false);
INSERT INTO Respuesta_Pregunta VALUES (764, 191, "Adenovirus Mortem", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (765, 192, "The Longing", true);
INSERT INTO Respuesta_Pregunta VALUES (766, 192, "Microsoft Flight Simulator 2020", false);
INSERT INTO Respuesta_Pregunta VALUES (767, 192, "The Elder Scroll: Daggerfall", false);
INSERT INTO Respuesta_Pregunta VALUES (768, 192, "No Man's Sky", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (769, 193, "3DO", true);
INSERT INTO Respuesta_Pregunta VALUES (770, 193, "Sega CD", false);
INSERT INTO Respuesta_Pregunta VALUES (771, 193, "CD Boy", false);
INSERT INTO Respuesta_Pregunta VALUES (772, 193, "PlayStation", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (773, 194, "Wiimote", true);
INSERT INTO Respuesta_Pregunta VALUES (774, 194, "Wiicontrol", false);
INSERT INTO Respuesta_Pregunta VALUES (775, 194, "MandoWii", false);
INSERT INTO Respuesta_Pregunta VALUES (776, 194, "Nunchuk", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (777, 195, "Mount Massive", true);
INSERT INTO Respuesta_Pregunta VALUES (778, 195, "Hospital Severalls", false);
INSERT INTO Respuesta_Pregunta VALUES (779, 195, "Hospital Whittingham", false);
INSERT INTO Respuesta_Pregunta VALUES (780, 195, "Hospital Mental", false);


--  NIVEL 8

-- PREGUNTA 1
INSERT INTO Respuesta_Pregunta VALUES (781, 196, "Atari", true);
INSERT INTO Respuesta_Pregunta VALUES (782, 196, "Nintendo", false);
INSERT INTO Respuesta_Pregunta VALUES (783, 196, "Pixar", false);
INSERT INTO Respuesta_Pregunta VALUES (784, 196, "Sega", false);

-- PREGUNTA 2
INSERT INTO Respuesta_Pregunta VALUES (785, 197, "Henry, Ronaldinho, Del Piero", true);
INSERT INTO Respuesta_Pregunta VALUES (786, 197, "Messi, Ronaldinho, Totti", false);
INSERT INTO Respuesta_Pregunta VALUES (787, 197, "Del Piero, Izaghi, Ronaldinho", false);
INSERT INTO Respuesta_Pregunta VALUES (788, 197, "Ronaldinho, Shevchenko, Totti", false);

-- PREGUNTA 3
INSERT INTO Respuesta_Pregunta VALUES (789, 198, "Reventure", true);
INSERT INTO Respuesta_Pregunta VALUES (790, 198, "Undertale", false);
INSERT INTO Respuesta_Pregunta VALUES (791, 198, "NieR: Automata", false);
INSERT INTO Respuesta_Pregunta VALUES (792, 198, "Detroit: Become Human", false);

-- PREGUNTA 4
INSERT INTO Respuesta_Pregunta VALUES (793, 199, "Gabe Newell", true);
INSERT INTO Respuesta_Pregunta VALUES (794, 199, "Phil Spencer", false);
INSERT INTO Respuesta_Pregunta VALUES (795, 199, "Trip Hawkins", false);
INSERT INTO Respuesta_Pregunta VALUES (796, 199, "Yves Guillemont", false);

-- PREGUNTA 5
INSERT INTO Respuesta_Pregunta VALUES (797, 200, "72 millones de Euros", true);
INSERT INTO Respuesta_Pregunta VALUES (798, 200, "65 millones de Euros", false);
INSERT INTO Respuesta_Pregunta VALUES (799, 200, "100 millones de Dólares", false);
INSERT INTO Respuesta_Pregunta VALUES (800, 200, "58.452.444 millones de Pesos", false);