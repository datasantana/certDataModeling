-- Colocaciones IF09 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocvc_if09
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocvc_if09
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- Totales IF06 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(total_coloc_vc)::int as total_coloc_vc,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_coloc_vc)::real as valor_coloc_vc
FROM totalesvc_mungeo_if09;

-- Totales IF06 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(total_coloc_vc)::int as total_coloc_vc,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_coloc_vc)::real as valor_coloc_vc
FROM totalesvc_depgeo_if09;