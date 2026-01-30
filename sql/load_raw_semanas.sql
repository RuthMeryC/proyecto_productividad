USE DB_OPERACIONES;
GO
-- Tabla staging
CREATE TABLE semanas_stage(
	nombre_dia VARCHAR (50),
	fecha VARCHAR (50),
	semana VARCHAR (50)
);
-- Carga desde CSV
BULK INSERT semanas_stage
FROM 'D:\BD_PROYECTO\SEMANA\semanas.csv'
WITH(
	FIRSTROW=2,
	FIELDTERMINATOR=';',
	ROWTERMINATOR='0x0d0a',
	CODEPAGE='65001',
	TABLOCK
);
--Paso a RAW
SET DATEFORMAT dmy;

INSERT INTO semanas_raw (
	fecha,
	nombre_dia,
	nombre_semana
)
SELECT
	TRY_CONVERT(DATE, LTRIM(RTRIM(fecha))),
	nombre_dia,
	semana
FROM semanas_stage
WHERE TRY_CONVERT(DATE, LTRIM(RTRIM(fecha))) IS NOT NULL;