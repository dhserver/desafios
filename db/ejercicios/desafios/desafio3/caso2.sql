
-- CASO N°2 

CREATE TABLE Curso(
    id_curso SERIAL PRIMARY KEY,
    nombre VARCHAR(25)
);

CREATE TABLE Departamento(
    id_departamento SERIAL PRIMARY KEY,
    nombre VARCHAR(25)
);


CREATE TABLE Profesor(
    id_profesor INT PRIMARY KEY,
    nombre VARCHAR(50),
    id_departamento SERIAL REFERENCES Departamento(id_departamento)
);

CREATE TABLE Alumno(
    id_alumno INT PRIMARY KEY,
    nombre VARCHAR(30),
    rut VARCHAR(25),
    id_curso SERIAL REFERENCES Curso(id_curso)
);

CREATE TABLE Prueba(
    id_prueba SERIAL PRIMARY KEY,
    puntaje FLOAT,
    id_profesor INT REFERENCES Profesor(id_profesor),
    id_alumno INT REFERENCES Alumno(id_alumno)
);