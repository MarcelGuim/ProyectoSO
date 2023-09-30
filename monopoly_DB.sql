DROP DATABASE IF EXISTS monopoly;
CREATE DATABASE monopoly;

use monopoly;

CREATE TABLE jugadores(
ID_J int NOT NULL,
puntuacion_ultima float,
puntuacion_maxima float,
partidas_jugadas int,
PRIMARY KEY (ID_J)
)ENGINE=InnoDB;

CREATE TABLE dades_personals(
ID_P int NOT NULL,
nombre varchar(20),
gmail varchar(50),
contrasenya varchar(20),
FOREIGN KEY (ID_P)
REFERENCES jugadores(ID_J)
)ENGINE=InnoDB;

CREATE TABLE partida(
ID_PA int,
ID_J1 int,
ID_J2 int,
ID_J3 int,
ID_J4 int,
ultima_posicion_1 int,
ultima_posicion_2 int,
ultima_posicion_3 int,
ultima_posicion_4 int,
dinero_1 float,
dinero_2 float,
dinero_3 float,
dinero_4 float,
PRIMARY KEY (ID_PA)
)ENGINE=InnoDB;

CREATE TABLE relacion(
ID_PA int NOT NULL,
ID_J int NOT NULL,
FOREIGN KEY (ID_PA)
REFERENCES partida(ID_PA),
FOREIGN KEY (ID_J)
REFERENCES jugadores(ID_J)
)ENGINE=InnoDB;


CREATE TABLE propiedades(
ID_P int,
P1 int,
P2 int,
P3 int,
P4 int,
P5 int,
P6 int,
P7 int,
P8 int,
P9 int,
P10 int,
P11 int,
P12 int,
P13 int,
P14 int,
P15 int,
P16 int,
P17 int,
P18 int,
P19 int,
P20 int,
P21 int,
P22 int,
P23 int,
P24 int,
P25 int,
P26 int,
P27 int,
P28 int,
FOREIGN KEY (ID_P)
REFERENCES partida(ID_PA)
)ENGINE=InnoDB;



INSERT INTO jugadores(ID_J,puntuacion_ultima,puntuacion_maxima,partidas_jugadas) VALUES (1,13.5,12.3,2);
INSERT INTO jugadores(ID_J,puntuacion_ultima,puntuacion_maxima,partidas_jugadas) VALUES (2,10,11,3);
INSERT INTO jugadores(ID_J,puntuacion_ultima,puntuacion_maxima,partidas_jugadas) VALUES (3,16.75,17.3,2);
INSERT INTO jugadores(ID_J,puntuacion_ultima,puntuacion_maxima,partidas_jugadas) VALUES (4,20,20.3,1);

INSERT INTO dades_personals(ID_P,nombre,gmail,contrasenya) VALUES (1,'HUGO','hugo.anton@estudiantat.upc.edu','1234');
INSERT INTO dades_personals(ID_P,nombre,gmail,contrasenya) VALUES (2,'ABRIL','abril.perella@estudiantat.upc.edu','12345');
INSERT INTO dades_personals(ID_P,nombre,gmail,contrasenya) VALUES (3,'LEO','leonardo.andreoli@estudiantat.upc.edu','123456');
INSERT INTO dades_personals(ID_P,nombre,gmail,contrasenya) VALUES (4,'DAVID','david.torrents@estudiantat.upc.edu','1234567');

INSERT INTO partida(ID_PA,ID_J1,ID_J2,ID_J3,ID_J4,ultima_posicion_1,ultima_posicion_2,ultima_posicion_3,ultima_posicion_4,dinero_1,dinero_2,dinero_3,dinero_4) VALUES(1,1,2,3,4,12,15,21,9,1234,1500,56,2013);

INSERT INTO relacion(ID_PA,ID_J) VALUES(1,1);
INSERT INTO relacion(ID_PA,ID_J) VALUES(1,2);
INSERT INTO relacion(ID_PA,ID_J) VALUES(1,3);
INSERT INTO relacion(ID_PA,ID_J) VALUES(1,4);


INSERT INTO propiedades(ID_P,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28) VALUES (1,1,1,1,2,4,3,2,3,4,0,0,0,0,2,3,2,2,2,3,4,4,4,3,4,3,2,1,4);



