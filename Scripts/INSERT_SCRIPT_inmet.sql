copy inmet (ano, mes, temp_min, temp_med, temp_max, vel_vento, dir_vento, raj_vento,ur_ar,chuva,ps_atm,ins,ndc) 
FROM 'D:/Dados/DMEC/83967-PORTO ALEGRE-RS.csv' 
DELIMITER ',' 
CSV HEADER
NULL 'NA';
