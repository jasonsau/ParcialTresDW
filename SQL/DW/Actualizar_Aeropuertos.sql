CREATE PROCEDURE ActualizarDimAeropuertos(
@AeropuertoKey	INT,
@NombreCiudad NVARCHAR(250),
@NombreEstado NVARCHAR(250)
) AS
BEGIN
	UPDATE DimAeropuertos SET NombreCiudad=@NombreCiudad, NombreEstado=@NombreEstado 
	WHERE AeropuertoKey = @AeropuertoKey
END;

/*Exec ActualizarDimAeropuertos ?, ?, ?*/