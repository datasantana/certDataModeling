-- Colocaciones IF10 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocmm_if10
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocmm_if10
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- FMR IF10 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrmm_if10
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrmm_if10
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- Totales IF10 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_opif)::int as total_opif,
    SUM(total_opif_m)::int as total_opif_m,
    SUM(valor_opif)::real as valor_opif,
    SUM(valor_opif_m)::real as valor_opif_m,
    SUM(total_coloc)::int as total_coloc,
    SUM(total_coloc_m)::int as total_coloc_m,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_coloc_m)::real as valor_coloc_m,
    SUM(total_opmfr)::int as total_operac,
    SUM(total_opmfr_m)::int as total_operac_m,
    SUM(valor_opmfr)::real as valor_cred,
    SUM(valor_opmfr_m)::real as valor_cred_m
FROM totalesmm_mungeo_if10;

-- Totales IF10 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_opif)::int as total_opif,
    SUM(total_opif_m)::int as total_opif_m,
    SUM(valor_opif)::real as valor_opif,
    SUM(valor_opif_m)::real as valor_opif_m
FROM totalesmm_depgeo_if10;