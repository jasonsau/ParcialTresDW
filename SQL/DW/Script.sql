CREATE DATABASE DwVuelos;
DROP TABLE DimAirlines;
CREATE TABLE DimAirlines(
AirlineKey															INT	IDENTITY(1,1) PRIMARY KEY,
CodigoAeroline														NVARCHAR(15),
DescripcionAerolinea												NVARCHAR(250),
Activo																BIT		DEFAULT 1,
FechaActualizacion													DATE	DEFAULT GETDATE()
);
GO


