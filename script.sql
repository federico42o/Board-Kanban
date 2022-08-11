-- MYSQL

CREATE TABLE Dueno (
dni CHAR(8) PRIMARY KEY,
nombre VARCHAR(25) NOT NULL, 
apellido VARCHAR(25) NOT NULL, 
telefono VARCHAR(15) NOT NULL, 
direccion VARCHAR(50) NOT NULL
);

-- 1) Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
CREATE TABLE Perro (
    id_perro INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    Fecha_Nac DATE,
    Sexo VARCHAR(6),
    dni_dueno CHAR(8) NOT NULL,
    FOREIGN KEY (dni_dueno) REFERENCES Dueno(dni)
);
-- ---------------------------------------------------------------------------------------
CREATE TABLE Historial (
    id_historial INT PRIMARY KEY,
    Fecha_Nac DATE,
    perro INT,
    descripcion VARCHAR(50) NOT NULL,
    monto FLOAT, 
    FOREIGN KEY (perro) REFERENCES Perro(id_perro)
);


-- 2) Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

INSERT INTO dueno values(39438866,'pope','lopez',15552912,'calle falsa 123');
INSERT INTO perro(nombre, Fecha_Nac, Sexo, dni_dueno) values('pepe','2022/07/01','Macho',39438866);

-- C. Elegir algunos de los puntos 3 al 12 y agregarlo al script  (diferentes entre cada uno de los integrantes)

-- Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.

SELECT * FROM perro WHERE sexo = 'Macho' AND Fecha_Nac between '2020-01-01' AND '2022-08-10';

