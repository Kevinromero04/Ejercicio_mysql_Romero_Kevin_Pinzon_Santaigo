CREATE DATABASE U_Campus; 

use U_Campus;

CREATE TABLE Estudiante(
ID_Estudiante INT PRIMARY KEY AUTO_INCREMENT,
Nombre_Estudiante  VARCHAR(45) NOT NULL,
Apellido_Estudiante VARCHAR(45) not null,
Edad INT not null
);

CREATE TABLE IF NOT EXISTS Docente(
ID_Docente INT PRIMARY KEY AUTO_INCREMENT,
Nombre_Docente  VARCHAR(45) NOT NULL,
Apellido_Docente VARCHAR(45) not null,
Edad INT not null
);

CREATE TABLE IF NOT EXISTS Cursos(
ID_Cursos INT PRIMARY KEY AUTO_INCREMENT,
Nombre_Curso VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Aulas(
ID_Aulas INT PRIMARY KEY AUTO_INCREMENT,
Nombre_Aula VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Horarios(
ID_Horarios INT PRIMARY KEY AUTO_INCREMENT,
Horario TIME not null
);

CREATE TABLE IF NOT EXISTS Dias(
ID_Dias INT PRIMARY KEY AUTO_INCREMENT,
Dia VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Docentes_Cursos(
ID_DocentesCursos INT PRIMARY KEY AUTO_INCREMENT,
Cursos_ID INT not null,
Docente_ID INT not null,
FOREIGN KEY (Cursos_ID) REFERENCES Cursos(ID_Cursos),
FOREIGN KEY (Docente_ID) REFERENCES Docente(ID_Docente)
);

CREATE TABLE IF NOT EXISTS Estudiantes_Cursos(
ID_EstudianteCurso INT PRIMARY KEY AUTO_INCREMENT,
Estudiante_ID INT not null,
Cursos_ID INT not null,
FOREIGN KEY (Estudiante_ID) REFERENCES Estudiante(ID_Estudiante),
FOREIGN KEY (Cursos_ID) REFERENCES Cursos(ID_Cursos)
);

CREATE TABLE IF NOT EXISTS CursosAulas(
ID_CursosAulas INT PRIMARY KEY AUTO_INCREMENT,
Cursos_ID INT not null,
Aulas_ID INT not null,
FOREIGN KEY (Cursos_ID) REFERENCES Cursos(ID_Cursos),
FOREIGN KEY (Aulas_ID) REFERENCES Aulas(ID_Aulas)
);

CREATE TABLE IF NOT EXISTS AulaHorarios(
ID_AulaHorarios INT PRIMARY KEY AUTO_INCREMENT,
Aulas_ID INT not null,
Horarios_ID INT not null,
FOREIGN KEY (Aulas_ID) REFERENCES Aulas(ID_Aulas),
FOREIGN KEY (Horarios_ID) REFERENCES Horarios(ID_Horarios)
);

CREATE TABLE IF NOT EXISTS DiaHorarios(
ID_DiaHorarios INT PRIMARY KEY AUTO_INCREMENT,
Dia_ID INT not null,
Horario_ID INT not null,
FOREIGN KEY (Dia_ID) REFERENCES Dias(ID_Dias),
FOREIGN KEY (Horario_ID) REFERENCES Horarios(ID_Horarios)
);

