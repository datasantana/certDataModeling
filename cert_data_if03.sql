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