CREATE DATABASE DwVuelos;
CREATE TABLE DimAirlines(
AirlineKey															INT	IDENTITY(1,1) PRIMARY KEY,
CodigoAeroline														NVARCHAR(15),
DescripcionAerolinea												NVARCHAR(250),
Activo																BIT		DEFAULT 1,
FechaActualizacion													DATE	DEFAULT GETDATE()
);
GO
CREATE TABLE DimAeropuertos(
	AeropuertoKey	INT		IDENTITY(1,1) PRIMARY KEY,
	AeropuertoId	BIGINT,
	NombreCiudad	NVARCHAR(250),
	NombreEstado	NVARCHAR(250)
)
GO
CREATE TABLE FactVuelos(
	AerolineasKey					INT				NOT NULL		FOREIGN KEY REFERENCES DimAirlines(AirlineKey),
	AeropuertoDestino				INT				NOT NULL		FOREIGN KEY REFERENCES DimAeropuertos(AeropuertoKey),
	AeropuertosOrigen				INT				NOT NULL		FOREIGN KEY REFERENCES DimAeropuertos(AeropuertoKey),
	FechaVuelo						INT				NOT NULL		FOREIGN KEY REFERENCES DimTiempo(TiempoKey),
	NumeroVuelo						NVARCHAR(250),
	HoraSalidaProgramada			FLOAT,
	HoraSalidaReal					FLOAT,
	RetrasoSalida					FLOAT,
	HoraLLegadaProgramada			FLOAT,
	HoraLLegadaReal					FLOAT,
	RetrasoLLegada					FLOAT,
	VueloCancelado					BIT,
	VueloDesviado					BIT
);

GO
CREATE TABLE Parametros(
	IdParametro					INT				PRIMARY KEY			IDENTITY(1,1),
	NombreParametro				VARCHAR(25)		NOT NULL,
	ValorParametro				VARCHAR(100)	NOT NULL
);
INSERT INTO Parametros(NombreParametro, ValorParametro) VALUES('Fecha_Ultima_Ejecucion', convert(varchar, convert(datetime,'01/01/2018')));
