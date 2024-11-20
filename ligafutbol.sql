DROP DATABASE FUTBOL;
CREATE DATABASE FUTBOL;
USE FUTBOL;

CREATE TABLE JUGADORES (
Cod_jugador INT PRIMARY KEY,
Nombre VARCHAR(50),
Apellidos VARCHAR(50),
Posicion VARCHAR(30),
Lesionado BOOlEAN,
Suspendido BOOLEAN 

);

CREATE TABLE EQUIPOS (
Cod_equipo INT PRIMARY KEY,
Nombre VARCHAR(50),
estado VARCHAR(50),
Ciudad VARCHAR(50) 

);

CREATE TABLE PARTIDOS (
Cod_partido INT PRIMARY KEY,
Fecha_partido DATE,
Goles_casa INT,
Goles_visitante INT
);

CREATE TABLE ENTRENADORES (
Cod_entrenador INT PRIMARY KEY,
Nombre VARCHAR(50),
Apellidos VARCHAR(50),
categoria VARCHAR(50),
Fecha_nacimiento DATE,
Nacionalidad VARCHAR(50)

);

CREATE TABLE MARCA_GOLES (
Cod_gol INT PRIMARY KEY,
Cod_jugador INT,
Cod_partido INT,
Minuto INT,
Descripcion VARCHAR(300),
FOREIGN KEY (Cod_jugador) REFERENCES JUGADORES(Cod_jugador),
FOREIGN KEY (Cod_partido) REFERENCES PARTIDOS(Cod_partido)
);

CREATE TABLE JUEGAN (
Cod_equipo INT,
Cod_partido INT,
Local_visitante ENUM('Local', 'Visitante'),
PRIMARY KEY (Cod_equipo, Cod_partido),
FOREIGN KEY (Cod_equipo) REFERENCES EQUIPOS(Cod_equipo),
FOREIGN KEY (Cod_partido) REFERENCES PARTIDOS(Cod_partidos)

);

CREATE TABLE TIENEN (
Cod_equipo INT,
Cod_entrenador INT,
PRIMARY KEY (Cod_equipo, Cod_entrenador),
FOREIGN KEY (Cod_equipo) REFERENCES EQUIPOS(Cod_equipo),
FOREIGN KEY (Cod_entrenador) REFERENCES ENTRENADORES(Cod_entrenador)

);
