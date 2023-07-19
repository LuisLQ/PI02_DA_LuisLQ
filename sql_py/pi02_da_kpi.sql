USE pi02_da;

SELECT a.`Año`, a.`Trimestre`, a.`Total` AS 'Clientes', 
	i.`Ingresos (miles de $)` * 1000 AS 'Ingresos', 
    (i.`Ingresos (miles de $)` * 1000 / a.`Total`) AS 'ARPU'
FROM `05_intaccesos_xtecnologia` a
JOIN `13_intingresos_trimestral` i ON a.`Año` = i.`Año` AND a.`Trimestre` = i.`Trimestre`
ORDER BY a.`Año` DESC, a.`Trimestre` DESC;

CREATE VIEW kpi02_arpu AS
	SELECT a.`Año`, a.`Trimestre`, a.`Total` AS 'Clientes', 
		i.`Ingresos (miles de $)` * 1000 AS 'Ingresos', 
		(i.`Ingresos (miles de $)` * 1000 / a.`Total`) AS 'ARPU'
	FROM `05_intaccesos_xtecnologia` a
	JOIN `13_intingresos_trimestral` i ON a.`Año` = i.`Año` AND a.`Trimestre` = i.`Trimestre`
    ORDER BY a.`Año` DESC, a.`Trimestre` DESC;
    
CREATE VIEW aux_accesofijo AS 
SELECT `Año`, `Trimestre`, `ADSL`, `Cablemodem` AS 'CM', `Fibra óptica` AS 'FO',
(`ADSL` + `Cablemodem` + `Fibra óptica`) AS 'AccesoFijo'
FROM `05_intaccesos_xtecnologia`
WHERE `Año` = 2022 AND `Trimestre` = 3;

CREATE VIEW kpi01_tasatec AS
SELECT `31_recmes_xservicio`.`Año`, `31_recmes_xservicio`.`Mes`,
	`31_recmes_xservicio`.`Internet Fijo` AS 'Reclamos_IF',
	`aux_accesofijo`.`AccesoFijo` AS 'Accesos_IF',
	(`31_recmes_xservicio`.`Internet Fijo` / `aux_accesofijo`.`AccesoFijo` * 1000000) AS 'TasaRec_xMM'
FROM `31_recmes_xservicio`, `aux_accesofijo`;


