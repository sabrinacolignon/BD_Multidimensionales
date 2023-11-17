CREATE TABLE Modalidad (
	ID_Modalidad INT PRIMARY KEY,
	Modalidad_nombre VARCHAR (255)
);

CREATE TABLE Edad (
	ID_Edad INT PRIMARY KEY,
	Edad_rango VARCHAR (255)
);

CREATE TABLE Sexo (
	ID_Sexo INT PRIMARY KEY,
	Sexo_nombre VARCHAR (255),
	Genero_nombre VARCHAR (255)
);

CREATE TABLE Tiempo (
	ID_Fecha INT PRIMARY KEY,
	Fecha TIMESTAMP,
	Hora INT,
	Mes INT,
	Anio INT
);

CREATE TABLE Lugar (
	ID_Lugar INT PRIMARY KEY,
	Lugar_nombre VARCHAR (255),
	Localidad_nombre VARCHAR (255),
	Departamento_nombre VARCHAR (255),
	Provincia_nombre VARCHAR (255)
);

CREATE TABLE Sucesos (
	ID_Suceso INT PRIMARY KEY NOT NULL,
	ID_Modalidad INT,
	ID_Edad INT,
	ID_Fecha INT,
	ID_Lugar INT,
	ID_Sexo INT,
	N_Suicidios_Mes INT,
	N_Suicidios_Anio INT,
	Edad_Prom_Sexo INT,
	Edad_Prom_Modalidad INT,
	Edad_Prom_Lugar INT,
	Edad_Prom_Tiempo INT,
	Metodos_Comunes INT,
	Lugares_Comunes INT,
	FOREIGN KEY(ID_Modalidad) REFERENCES Modalidad(ID_Modalidad),
	FOREIGN KEY(ID_Edad) REFERENCES Edad(ID_Edad),
	FOREIGN KEY(ID_Fecha) REFERENCES Tiempo(ID_Fecha),
	FOREIGN KEY(ID_Lugar) REFERENCES Lugar(ID_Lugar),
	FOREIGN KEY(ID_Sexo) REFERENCES Sexo(ID_Sexo)
);
