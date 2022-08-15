create database peluqueriaCanina;
use peluqueriaCanina;
-- tabla dueno
CREATE TABLE Dueno (
dni CHAR(10) PRIMARY KEY,
nombre VARCHAR(30) NOT NULL, 
apellido VARCHAR(30) NOT NULL, 
telefono VARCHAR(20) NOT NULL, 
direccion VARCHAR(50) NOT NULL
);

-- 1) Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
CREATE TABLE Perro (
    id_perro INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    Fecha_Nac DATE,
    Sexo VARCHAR(10),
    dni_dueno CHAR(10) NOT NULL,
    FOREIGN KEY (dni_dueno) REFERENCES Dueno(dni)
);
-- ---------------------------------------------------------------------------------------
CREATE TABLE Historial (
    id_historial INT PRIMARY KEY,
    Fecha DATE,
    perro INT,
    descripcion VARCHAR(50) NOT NULL,
    monto FLOAT, 
    FOREIGN KEY (perro) REFERENCES Perro(id_perro)
);

-- 2) Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

INSERT INTO dueno values(36887423,'Cristian','Gimenez',154472347,'Los zorzales 287');
INSERT INTO perro(nombre, Fecha_Nac, Sexo, dni_dueno) values('cunino','12/09/2012','Macho',36887423);

-- C. Elegir algunos de los puntos 3 al 12 y agregarlo al script  (diferentes entre cada uno de los integrantes)
-- Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123

UPDATE dueno SET direccion ='Libertad 123'
WHERE nombre='Cristian';
 SELECT * FROM dueno;
 





