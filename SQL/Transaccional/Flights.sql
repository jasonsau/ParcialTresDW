DROP Table Flights;
CREATE TABLE Flights(
FlightDate													DATE,
Airline														NVARCHAR(255),
Origin														NVARCHAR(255),
Dest														NVARCHAR(255),
Cancelled													NVARCHAR(50),
Diverted													NVARCHAR(50),
CRSDepTime													INT,
DepTime														NVARCHAR(50),
DepDelayMinutes												NVARCHAR(50),
DepDelay													NVARCHAR(50),
ArrTime														NVARCHAR(50),
ArrDelayMinutes												NVARCHAR(50),
AirTime														NVARCHAR(50),
CRSElapsedTime												NVARCHAR(50),
ActualElapsedTime											NVARCHAR(50),
Distance													NVARCHAR(50),
[Year]														NVARCHAR(50),
[Quarter]													NVARCHAR(50),
[Month]														NVARCHAR(50),
[DayofMonth]												NVARCHAR(50),
[DayOfWeek]													NVARCHAR(50),
Marketing_Airline_Network									NVARCHAR(50),
Operated_or_Branded_Code_Share_Partners						NVARCHAR(250),
DOT_ID_Marketing_Airline									NVARCHAR(250),
IATA_Code_Marketing_Airline									NVARCHAR(250),
Flight_Number_Marketing_Airline								NVARCHAR(250),
Operating_Airline											NVARCHAR(250),
DOT_ID_Operating_Airline									NVARCHAR(250),
IATA_Code_Operating_Airline									NVARCHAR(250),
Tail_Number													NVARCHAR(250),
Flight_Number_Operating_Airline								NVARCHAR(250),
OriginAirportID												NVARCHAR(250),
OriginAirportSeqID											NVARCHAR(250),
OriginCityMarketID											NVARCHAR(250),
OriginCityName												NVARCHAR(250),
OriginState													NVARCHAR(250),
OriginStateFips												NVARCHAR(250),
OriginStateName												NVARCHAR(250),
OriginWac													NVARCHAR(250),
DestAirportID												NVARCHAR(250),
DestAirportSeqID											NVARCHAR(50),
DestCityMarketID											NVARCHAR(50),
DestCityName												NVARCHAR(250),
DestState													NVARCHAR(250),
DestStateFips												NVARCHAR(50),
DestStateName												NVARCHAR(250),
DestWac														NVARCHAR(50),
DepDel15													NVARCHAR(50),
DepartureDelayGroups										NVARCHAR(50),
DepTimeBlk													NVARCHAR(250),
TaxiOut														NVARCHAR(50),
WheelsOff													NVARCHAR(50),
WheelsOn													NVARCHAR(50),
TaxiIn														NVARCHAR(50),
CRSArrTime													NVARCHAR(50),
ArrDelay													NVARCHAR(50),
ArrDel15													NVARCHAR(50),
ArrivalDelayGroups											NVARCHAR(50),
ArrTimeBlk													NVARCHAR(250),
DistanceGroup												NVARCHAR(50),
DivAirportLandings											NVARCHAR(50)
);

GO
DROP TABLE Airlines;
CREATE TABLE Airlines(
Code														NVARCHAR(15),
[Description]												NVARCHAR(250)
);

GO
BULK INSERT Flights
FROM 'C:\Users\js\Documents\ID\Parcial3\archive\union.csv'
WITH(FORMAT='CSV',FIRSTROW=2, ROWTERMINATOR='0x0a')
GO

BULK INSERT Airlines
FROM 'C:\Users\js\Documents\ID\Parcial3\archive\Airlines.csv'
WITH(FORMAT='CSV',FIRSTROW=2, ROWTERMINATOR='0x0a')
GO

SELECT *FROM Airlines;


