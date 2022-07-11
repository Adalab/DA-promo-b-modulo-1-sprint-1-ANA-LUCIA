CREATE SCHEMA pair1;
CREATE TABLE Zapatillas (
		id_zapatilla INT NOT NULL AUTO_INCREMENT,
        modelo VARCHAR(45) NOT NULL,
        color VARCHAR(45) NOT NULL, 
	PRIMARY KEY (id_zapatilla));
    
CREATE TABLE Clientes (
		id_cliente INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(45) NOT NULL,
        numero_telefono INT NOT NULL,
        email VARCHAR(45) NOT NULL,
        direccion VARCHAR(45) NOT NULL,
        ciudad VARCHAR(45) DEFAULT NULL,
        provincia VARCHAR(45) NOT NULL, 
        pais VARCHAR(45) NOT NULL, 
        codigo_postal VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_cliente));
    
CREATE TABLE Empleados (
		id_empleado INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(45) NOT NULL, 
        tienda VARCHAR(45) NOT NULL, 
        salario INT DEFAULT NULL, 
        fecha_incorporacion DATE NOT NULL,
	PRIMARY KEY (id_empleado));
    
CREATE TABLE Facturas (
		id_factura INT NOT NULL AUTO_INCREMENT,
        numero_factura VARCHAR(45) NOT NULL,
        fecha DATE NOT NULL,
        id_zapatilla INT NOT NULL,
        id_empleado INT NOT NULL,
        id_cliente INT NOT NULL,
	PRIMARY KEY (id_factura),
    INDEX fk_facturas_zapatillas (id_zapatilla),
    CONSTRAINT fk_facturas_zapatillas
    FOREIGN KEY (id_zapatilla)
		REFERENCES Zapatillas (id_zapatilla),
	INDEX fk_facturas_empleados (id_empleado),
    CONSTRAINT fk_facturas_empleados
	FOREIGN KEY (id_empleado)
		REFERENCES Empleados (id_empleado),
	INDEX fk_facturas_clientes (id_cliente),
    CONSTRAINT fk_facturas_clientes
	FOREIGN KEY (id_cliente)
		REFERENCES Clientes (id_cliente));

ALTER TABLE zapatillas
ADD COLUMN marca VARCHAR(45) NOT NULL,
ADD COLUMN talla INT NOT NULL;

ALTER TABLE empleados
	MODIFY salario FLOAT;
    
ALTER TABLE	 clientes
	DROP COLUMN pais;

ALTER TABLE	 clientes
    MODIFY codigo_postal INT(5);

ALTER TABLE Facturas
	ADD COLUMN total FLOAT NOT NULL;
    
INSERT INTO zapatillas (modelo, color, marca, talla)
	VALUES 	('XQYUN', 'Negro', 'Nike', 42), 
			('UOPMN', 'Rosas', 'Nike', 39),
			('OPNYT', 'Verdes', 'Adidas', 35);

INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
	VALUES 	('Laura', 'Alcobendas', 25987, '2010-09-03'), 
			('María', 'Sevilla', NULL, '2001-04-11'),
			('Ester', 'Oviedo', 30175.8, '2000-11-29');

INSERT INTO clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
	VALUES 	('Monica', 123456789, 'monica@email.com', 'calle felicidad', 'Móstoles', 'Madrid', 28176), 
			('Lorena', 289345678, 'lorena@email.com', 'calle alegria', 'Barcelona', 'Barcelona', 12346), 
			('Carmen', 298463759, 'carmen@email.com', 'calle del color', 'Vigo', 'Pontevedra', 23456);
            
			
INSERT INTO facturas (numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
	VALUES 	(123, '2001-12-11', 1, 2, 1, 54.98),
			(1234, '2005-05-23', 1, 1, 3, 89.91),
            (12345, '2015-09-18', 2, 3, 3, 76.23);

select * from empleados