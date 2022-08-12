
CREATE DATABASE peluquería_canina;

CREATE TABLE dueno (
dni CHAR(8) PRIMARY KEY,
nombre VARCHAR(25) NOT NULL, 
apellido VARCHAR(25) NOT NULL, 
telefono VARCHAR(15) NOT NULL, 
direccion VARCHAR(50) NOT NULL
);

-- 1) Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
CREATE TABLE perro (
    id_perro INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    Fecha_nac DATE,
    Sexo VARCHAR(10),
    dni_dueno CHAR(8) NOT NULL,
    FOREIGN KEY (dni_dueno) REFERENCES Dueno(dni)
);

CREATE TABLE historial (
    id_historial INT PRIMARY KEY,
    Fecha DATE,
    perro INT,
    descripcion VARCHAR(80) NOT NULL,
    monto FLOAT, 
    FOREIGN KEY (perro) REFERENCES Perro(id_perro)
);


-- 2) Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

INSERT INTO dueno values(33085214,'Juan','Perez',3794558726,'Urquiza 2053');

INSERT INTO perro(nombre, Fecha_nac, Sexo, dni_dueno) values('morita','2017/02/01','Hembra',33085214);


-- C. Elegir algunos de los puntos 3 al 12 y agregarlo al script  (diferentes entre cada uno de los integrantes)

-- (4-) Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
UPDATE perro SET Fecha_nac ='2018/03/02'
WHERE nombre='morita';
 SELECT * FROM perro;



