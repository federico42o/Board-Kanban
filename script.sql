-- MYSQL

CREATE TABLE Perro (
    id_perro INT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    Fecha_Nac DATE,
    Sexo VARCHAR(6),
    dni_dueno CHAR(8) NOT NULL,
    FOREIGN KEY (dni_dueno) REFERENCES Dueno(dni)
);


