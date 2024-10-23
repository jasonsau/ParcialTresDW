CREATE DATABASE DwVuelos;
CREATE TABLE DimAirlines(
AirlineKey															INT	IDENTITY(1,1) PRIMARY KEY,
CodigoAeroline														NVARCHAR(15),
DescripcionAerolinea												NVARCHAR(250),
Activo																BIT		DEFAULT 1,
FechaActualizacion													DATE	DEFAULT GETDATE()
);
CREATE TABLE DimAeropuertos(
	AeropuertoKey	INT		IDENTITY(1,1) PRIMARY KEY,
	AeropuertoId	BIGINT,
	NombreCiudad	NVARCHAR(250),
	NombreEstado	NVARCHAR(250)
)
GO

