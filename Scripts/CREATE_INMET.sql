CREATE TABLE INMET (
	ID SERIAL PRIMARY KEY,
	COD_MUNIC NUMERIC(7),
    ANO NUMERIC(4),
	MES NUMERIC(2),	
	TEMP_MIN NUMERIC(5,2),
	TEMP_MED NUMERIC(5,2),
	TEMP_MAX NUMERIC(5,2),
	VEL_VENTO NUMERIC(5,2),
	DIR_VENTO NUMERIC(5,2),
	RAJ_VENTO NUMERIC(5,2),
	UR_AR NUMERIC(5,2),	
	CHUVA NUMERIC(6,2),
	PS_ATM NUMERIC(7,2),
	INS NUMERIC(6,2),
	NDC NUMERIC(2)		
);