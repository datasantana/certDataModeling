-- ISA IF02 cifras totales
SELECT 'isapol_if02' as tabla,
    mes::int,
    SUM(total_polizas)::int as total_polizas,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_valaseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isapol_if02
WHERE anio_vigencia = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'isapol_if02' as tabla,
    0 as mes,
    SUM(total_polizas)::int as total_polizas,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_valaseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isapol_if02
WHERE anio_vigencia = 2022
GROUP BY 2
ORDER BY 1, 2;
-- ISA IF02 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_valaseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa
FROM isapol_geo_if02;