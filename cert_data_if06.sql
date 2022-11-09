-- Colocaciones IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- LEC IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_colec)::int as total_colec,
    SUM(valor_colec)::real as valor_colec
FROM lecmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_colec)::int as total_colec,
    SUM(valor_colec)::real as valor_colec
FROM lecmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- FAG IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credgar)::real as valor_credgar
FROM fagmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credgar)::real as valor_credgar
FROM fagmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- ICR IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_proy)::int as total_proy,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(valor_credicr)::real as valor_credicr,
    SUM(valor_inver)::real as valor_inver
FROM icrmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_proy)::int as total_proy,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(valor_credicr)::real as valor_credicr,
    SUM(valor_inver)::real as valor_inver
FROM icrmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- ISA IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_valaseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isamjr_if06
WHERE anio_vigencia = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_valaseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isamjr_if06
WHERE anio_vigencia = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- FMR IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- CIF IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    COUNT(DISTINCT contrato)::int as total_contratos,
    MAX(valor_valiq)::real as valor_liqcif,
    SUM(valor_pag)::real as valor_pagcif,
    MAX(area)::real as area_vig
FROM cifmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    COUNT(DISTINCT contrato)::int as total_contratos,
    MAX(valor_valiq)::real as valor_liqcif,
    SUM(valor_pag)::real as valor_pagcif,
    MAX(area)::real as area_vig
FROM cifmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- Totales IF06 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_opif)::int as total_opif,
    SUM(total_opif_m)::int as total_opif_m,
    SUM(valor_opif)::real as valor_opif,
    SUM(valor_opif_m)::real as valor_opif_m,
    SUM(total_coloc)::int as total_coloc,
    SUM(total_coloc_m)::int as total_coloc_m,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_coloc_m)::real as valor_coloc_m,
    SUM(total_colec)::int as total_colec,
    SUM(total_colec_m)::int as total_colec_m,
    SUM(valor_colec)::real as valor_colec,
    SUM(valor_colec_m)::real as valor_colec_m,
    SUM(total_cert)::int as total_cert,
    SUM(total_cert_m)::int as total_cert_m,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_garant_m)::real as valor_garant_m,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_credgar_m)::real as valor_credgar_m,
    SUM(total_proyicr)::int as total_proy,
    SUM(total_proyicr_m)::int as total_proy_m,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(valor_pagado_m)::real as valor_pagado_m,
    SUM(valor_inver)::real as valor_inver,
    SUM(valor_inver_m)::real as valor_inver_m,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(total_unaseg_m)::int as total_unaseg_m,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_aseg_m)::real as valor_aseg_m,
    SUM(valor_incent)::real as valor_incisa,
    SUM(valor_incent_m)::real as valor_incisa_m,
    SUM(total_opmfr)::int as total_operac,
    SUM(total_opmfr_m)::int as total_operac_m,
    SUM(valor_opmfr)::real as valor_cred,
    SUM(valor_opmfr_m)::real as valor_cred_m,
    SUM(total_contr)::int as total_contr,
    SUM(total_contr_m)::int as total_contr_m,
    SUM(valor_liq)::real as valor_liqcif,
    SUM(valor_liq_m)::real as valor_liqcif_m,
    SUM(valor_pagcif)::real as valor_pagcif,
    SUM(valor_pag_m)::real as valor_pagcif_m,
    SUM(area_vig)::real as area_vig,
    SUM(area_vig_m)::real as area_vig_m
FROM totalesmjr_mungeo_if06;

-- Totales IF06 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_opif)::int as total_opif,
    SUM(total_opif_m)::int as total_opif_m,
    SUM(valor_opif)::real as valor_opif,
    SUM(valor_opif_m)::real as valor_opif_m
FROM totalesmjr_depgeo_if06;