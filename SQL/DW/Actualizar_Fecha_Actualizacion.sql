CREATE PROCEDURE UpdateParameterFechaUltimaActualizacion
AS
BEGIN
	DECLARE @Fecha NVARCHAR(100);

	SELECT @Fecha= ValorParametro FROM Parametros WHERE NombreParametro = 'Fecha_Ultima_Ejecucion'; 
	UPDATE Parametros SET ValorParametro = DATEADD(month, 1, cast(@Fecha as datetime)) WHERE NombreParametro = 'Fecha_Ultima_Ejecucion';
END;