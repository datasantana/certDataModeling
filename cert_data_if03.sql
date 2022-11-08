-- Colocaciones IF03 cifras totales
SELECT 'colocaciones_if03' as tabla,
    mes::int,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'colocaciones_if03' as tabla,
    0 as mes,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- Colocaciones IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_geo_if03;
-- Colocaciones IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_geo_dep_if03;
-- Colocaciones IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_geo_reg_if03;

-- Saldos IF03 cifras totales
SELECT 'saldos_if03' as tabla,
    mes::int,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'saldos_if03' as tabla,
    0 as mes,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- Colocaciones IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_geo_if03;
-- Colocaciones IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_geodep_if03;
-- Colocaciones IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_georeg_if03;

-- LEC IF03 cifras totales
SELECT 'lec_if03' as tabla,
    mes::int,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'lec_if03' as tabla,
    0 as mes,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- LEC IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_geo_if03;
-- LEC IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_geodep_if03;
-- Colocaciones IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_georeg_if03;