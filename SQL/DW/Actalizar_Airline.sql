CREATE PROCEDURE ActualizarDimAirlines(
@AirlineKey	INT,
@CodigoAerolinia NVARCHAR(15),
@DescripcionAerolinea NVARCHAR(250)
) AS
BEGIN
	IF NOT EXISTS (
		SELECT *FROM DimAirlines WHERE DescripcionAerolinea = @DescripcionAerolinea AND ACTIVO = 1
	)
	BEGIN
		UPDATE DimAirlines SET Activo = 0, FechaActualizacion = GETDATE() WHERE AirlineKey = @AirlineKey;
		INSERT INTO DimAirlines(CodigoAeroline, DescripcionAerolinea, Activo) VALUES (@CodigoAerolinia, @DescripcionAerolinea, 1); 
	END;

END;

/*Exec ActualizarDimAirlines ?, ?, ?*/