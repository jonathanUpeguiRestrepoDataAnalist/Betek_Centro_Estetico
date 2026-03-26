CREATE DATABASE centro_estetico;
USE centro_estetico;

CREATE TABLE proveedor(
	ID_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(70) UNIQUE NOT NULL,
    Telefono VARCHAR(20) UNIQUE NOT NULL,
    Correo_electronico VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE cliente(
	ID_cliente INT AUTO_INCREMENT PRIMARY KEY, 
    Nombre VARCHAR(70) UNIQUE,
	Telefono VARCHAR(20) UNIQUE NOT NULL,
    Correo_electronico VARCHAR(50) NOT NULL,
	Direccion VARCHAR (50) NOT NULL, 
    Condicion_medica VARCHAR(70)
);

CREATE TABLE especialista(
	ID_especialista INT AUTO_INCREMENT PRIMARY KEY, 
    Nombre VARCHAR(70) UNIQUE NOT NULL,
	Telefono VARCHAR(20) UNIQUE NOT NULL,
    Correo_electronico VARCHAR(50) NOT NULL,
    Habilidad_certificado VARCHAR(70) NOT NULL
);

CREATE TABLE producto(
	ID_producto VARCHAR(10) PRIMARY KEY, 
    Nombre VARCHAR(70) UNIQUE,
	Descripcion VARCHAR(200), 
	Precio INT, 
	ID_proveedor INT,
    FOREIGN KEY (ID_proveedor) REFERENCES proveedor (ID_proveedor)
);

CREATE TABLE procedimiento_servicio(
	ID_procedimiento VARCHAR(10) PRIMARY KEY, 
    Nombre VARCHAR(50) UNIQUE NOT NULL,
	Descripcion VARCHAR(200) NOT NULL, 
	Duracion_promedio FLOAT NOT NULL, 
	Precio INT NOT NULL 
);

CREATE TABLE inventario(
	ID_inventario VARCHAR(10) PRIMARY KEY, 
    Cantidad_entrante INT NOT NULL,
	Cantidad_saliente INT NOT NULL, 
	Fecha_movimiento DATE, 
	ID_Producto VARCHAR(10),
    FOREIGN KEY (ID_Producto) REFERENCES producto (ID_Producto)
);

CREATE TABLE cita(
	ID_cita VARCHAR(10) PRIMARY KEY,
    Fecha DATE NOT NULL,
    Hora_inicio TIME NOT NULL,
    Hora_final TIME NOT NULL,
    Estado BOOL,
    ID_cliente INT,
    ID_procedimiento VARCHAR(10),
    ID_especialista INT,
    FOREIGN KEY (ID_cliente) REFERENCES cliente (ID_cliente),
    FOREIGN KEY (ID_procedimiento) REFERENCES procedimiento_servicio (ID_procedimiento),
    FOREIGN KEY (ID_especialista) REFERENCES especialista (ID_especialista)
);

CREATE TABLE factura(
	ID_factura INT AUTO_INCREMENT PRIMARY KEY,
    ID_cita VARCHAR(10),
    ID_producto VARCHAR(10),
    Cantidad INT,
    FOREIGN KEY (ID_cita) REFERENCES cita (ID_cita),
    FOREIGN KEY (ID_producto) REFERENCES producto (ID_producto)
);

CREATE TABLE producto_procedimiento(
    ID_procedimiento VARCHAR(10),
    ID_producto VARCHAR(10),
    cantidad_producto INT,
    PRIMARY KEY (ID_procedimiento, ID_producto),
    FOREIGN KEY (ID_procedimiento) REFERENCES procedimiento_servicio (ID_procedimiento),
    FOREIGN KEY (ID_producto) REFERENCES producto (ID_producto)
);