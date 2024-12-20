CREATE TABLE IEMA (
	ID SERIAL PRIMARY KEY,
	COD_MUNIC NUMERIC(7),
    ANO NUMERIC(4),
	MES NUMERIC(2),
	DIA	NUMERIC(2),
	NOME_EST CHAR(20),
	NUM_EST CHAR(5),
	CO NUMERIC(4,2),
	MP10 NUMERIC(4,2),
	MP25 NUMERIC(4,2),
	N_O NUMERIC(4,2),
	NO2 NUMERIC(4,2),
	O3 NUMERIC(5,2),
	SO2 NUMERIC(4,2),	
	FMC NUMERIC(6,2),
	PTS NUMERIC(6,2),
	LATI NUMERIC(9,6),
	LONG NUMERIC(9,6)
);