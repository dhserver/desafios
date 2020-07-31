CREATE TABLE autor(
    id_autor INT PRIMARY KEY,
    nombre_auto VARCHAR(25)
);

CREATE TABLE libro(
    id_libro INT PRIMARY KEY,
    nombre_libro VARCHAR(50)
);

CREATE TABLE editorial(
    id_editorial INT PRIMARY KEY,
    nombre_editorial VARCHAR(50)
);

CREATE TABLE lector(
    id_lector INT PRIMARY KEY,
    nombre_lector VARCHAR(50)
);

CREATE TABLE Autorlibro(
    id_autor INT REFERENCES autor(id_autor),
    id_libro INT REFERENCES libro(id_libro)
);

CREATE TABLE LibroEditorial(
    id_autor INT REFERENCES autor(id_autor),
    id_editorial INT REFERENCES editorial(id_editorial)
);

CREATE TABLE prestamo(
    id_prestamo SERIAL PRIMARY KEY,
    id_lector INT REFERENCES lector(id_lector),
    id_libro INT REFERENCES libro(id_libro)
);