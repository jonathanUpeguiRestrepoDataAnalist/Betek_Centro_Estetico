CREATE DATABASE centro_estetico;
USE centro_estetico;

CREATE TABLE proveedor(
	ID_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(70) UNIQUE NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Correo_electronico VARCHAR(50) NOT NULL
);

CREATE TABLE agenda(
	ID_agenda INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Hora_inicio TIME NOT NULL,
    Hora_final TIME NOT NULL,
    Disponibilidad BOOL
);

CREATE TABLE producto(
	ID_producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(70) NOT NULL,
	Descripción VARCHAR(300) NOT NULL,
	Precio INT,
	ID_proveedor INT,
    FOREIGN KEY (ID_proveedor) REFERENCES proveedor (ID_proveedor)
);

CREATE TABLE inventario(
	ID_inventario INT AUTO_INCREMENT PRIMARY KEY,
    Cantidad_entrante INT NOT NULL,
	Cantidad_saliente INT NOT NULL,
	Fecha_movimiento DATE NOT NULL,
	ID_Producto INT,
    FOREIGN KEY (ID_Producto) REFERENCES producto (ID_Producto)
);

CREATE TABLE cliente(
	ID_cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(70) NOT NULL,
	Telefono VARCHAR(20) NOT NULL,
    Correo_electronico VARCHAR(50) NOT NULL,
	Direccion VARCHAR (50) NOT NULL,
    Condicion_medica VARCHAR(70),
    Historial_visitas VARCHAR(70),
	ID_producto INT,
    FOREIGN KEY (ID_Producto) REFERENCES producto (ID_Producto)
);

CREATE TABLE especialista(
	ID_especialista INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(70) NOT NULL,
	Telefono VARCHAR(20) NOT NULL,
    Correo_electronico VARCHAR(50) NOT NULL,
    Habilidad_certificado VARCHAR(70) NOT NULL,
	ID_agenda INT,
    FOREIGN KEY (ID_agenda) REFERENCES agenda (ID_agenda)
);

CREATE TABLE procedimiento_servicio(
	ID_procedimiento INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
	Descripción VARCHAR(300) NOT NULL,
	Duracion_promedio INT NOT NULL,
	Precio_base INT NOT NULL,
	ID_especialista INT,
	ID_producto INT,
    FOREIGN KEY (ID_especialista) REFERENCES especialista (ID_especialista),
    FOREIGN KEY (ID_Producto) REFERENCES producto (ID_Producto)
);

CREATE TABLE cita(
	ID_cita INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    Estado BOOL,
    ID_cliente INT,
    ID_procedimiento INT,
    ID_especialista INT,
    FOREIGN KEY (ID_cliente) REFERENCES cliente (ID_cliente),
    FOREIGN KEY (ID_procedimiento) REFERENCES procedimiento_servicio (ID_procedimiento),
    FOREIGN KEY (ID_especialista) REFERENCES especialista (ID_especialista)
);

CREATE TABLE cita_realizada(
	ID_cita INT,
    ID_procedimiento INT,
    cantidad_procedimiento INT,
    PRIMARY KEY (ID_cita, ID_procedimiento),
    FOREIGN KEY (ID_cita) REFERENCES cita (ID_cita),
    FOREIGN KEY (ID_procedimiento) REFERENCES procedimiento_servicio (ID_procedimiento)
);