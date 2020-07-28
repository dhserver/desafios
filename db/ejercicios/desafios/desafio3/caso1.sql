-- CASO N°1


CREATE TABLE Departamentos(
    nombre_departamento VARCHAR(30),
    id SERIAL PRIMARY KEY
);

CREATE TABLE Trabajadorres(
    rut VARCHAR(15)  PRIMARY KEY,
    nombre_trabajador VARCHAR(50),
    direccion VARCHAR(50),
    id_departamento INT REFERENCES Deparamento(id)
);

CREATE TABLE Liquidaciones(
    rut VARCHAR(15) REFERENCES Trabajador(rut),
    id SERIAL PRIMARY KEY,
    drive VARCHAR
);



