COPY datasus (uf, ano, mes, cep, cod_munic, sexo, idade, diag_princ, diag_sec, dt_inter, dt_saida, val_sh,val_sp,val_sadt,val_uti,us_tot,val_tot,dias_perm)
FROM 'D:/Dados/Dados_Datasus/SIH-AC-2000-2023.csv'
DELIMITER ','
CSV HEADER
NULL 'NA';
