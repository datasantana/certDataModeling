-- Colocaciones IF07 cifras totales
SELECT mes::int,
    'Total Persona Natural' as mca_jvn,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    mca_jvn::text,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- LEC IF07 cifras totales
SELECT mes::int,
    'Total Persona Natural' as mca_jvn,
    SUM(total_colec)::int as total_colec,
    SUM(valor_colec)::real as valor_colec
FROM lecjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    mca_jvn::text,
    SUM(total_colec)::int as total_colec,
    SUM(valor_colec)::real as valor_colec
FROM lecjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- FAG IF07 cifras totales
SELECT mes::int,
    'Total Persona Natural' as mca_jvn,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credgar)::real as valor_credgar
FROM fagjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    mca_jvn::text,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credgar)::real as valor_credgar
FROM fagjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- ICR IF07 cifras totales
SELECT mes::int,
    'Total Persona Natural' as mca_jvn,
    SUM(total_proy)::int as total_proy,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(valor_credicr)::real as valor_credicr,
    SUM(valor_inver)::real as valor_inver
FROM icrjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    mca_jvn::text,
    SUM(total_proy)::int as total_proy,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(valor_credicr)::real as valor_credicr,
    SUM(valor_inver)::real as valor_inver
FROM icrjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- ISA IF07 cifras totales
SELECT mes::int,
    'Total Persona Natural' as mca_jvn,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_valaseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isajvr_if07
WHERE anio_vigencia = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    mca_jvn::text,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_valaseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isajvr_if07
WHERE anio_vigencia = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- FMR IF07 cifras totales
SELECT mes::int,
    'Total Persona Natural' as mca_jvn,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    mca_jvn::text,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- CIF IF07 cifras totales
SELECT mes::int,
    'Total Persona Natural' as mca_jvn,
    COUNT(DISTINCT contrato)::int as total_contratos,
    MAX(valor_valiq)::real as valor_liqcif,
    SUM(valor_pag)::real as valor_pagcif,
    MAX(area)::real as area_vig
FROM cifjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    mca_jvn::text,
    COUNT(DISTINCT contrato)::int as total_contratos,
    MAX(valor_valiq)::real as valor_liqcif,
    SUM(valor_pag)::real as valor_pagcif,
    MAX(area)::real as area_vig
FROM cifjvr_if07
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- Totales IF07 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_opif)::int as total_opif,
    SUM(total_opif_jvn)::int as total_opif_jvn,
    SUM(valor_opif)::real as valor_opif,
    SUM(valor_opif_jvn)::real as valor_opif_jvn,
    SUM(total_coloc)::int as total_coloc,
    SUM(total_coloc_jvn)::int as total_coloc_jvn,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_coloc_jvn)::real as valor_coloc_jvn,
    SUM(total_colec)::int as total_colec,
    SUM(total_colec_jvn)::int as total_colec_jvn,
    SUM(valor_colec)::real as valor_colec,
    SUM(valor_colec_jvn)::real as valor_colec_jvn,
    SUM(total_cert)::int as total_cert,
    SUM(total_cert_jvn)::int as total_cert_jvn,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_garant_jvn)::real as valor_garant_jvn,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_credgar_jvn)::real as valor_credgar_jvn,
    SUM(total_proyicr)::int as total_proy,
    SUM(total_proyicr_jvn)::int as total_proy_jvn,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(valor_pagado_jvn)::real as valor_pagado_jvn,
    SUM(valor_inver)::real as valor_inver,
    SUM(valor_inver_jvn)::real as valor_inver_jvn,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(total_unaseg_jvn)::int as total_unaseg_jvn,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_aseg_jvn)::real as valor_aseg_jvn,
    SUM(valor_incent)::real as valor_incisa,
    SUM(valor_incent_jvn)::real as valor_incisa_jvn,
    SUM(total_opmfr)::int as total_operac,
    SUM(total_opmfr_jvn)::int as total_operac_jvn,
    SUM(valor_opmfr)::real as valor_cred,
    SUM(valor_opmfr_jvn)::real as valor_cred_jvn,
    SUM(total_contr)::int as total_contr,
    SUM(total_contr_jvn)::int as total_contr_jvn,
    SUM(valor_liq)::real as valor_liqcif,
    SUM(valor_liq_jvn)::real as valor_liqcif_jvn,
    SUM(valor_pagcif)::real as valor_pagcif,
    SUM(valor_pag_jvn_cif)::real as valor_pagcif_jvn,
    SUM(area_vig)::real as area_vig,
    SUM(area_vig_jvn)::real as area_vig_jvn
FROM totalesjvr_mungeo_if07;

-- Totales IF07 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_opif)::int as total_opif,
    SUM(total_opif_jvn)::int as total_opif_jvn,
    SUM(valor_opif)::real as valor_opif,
    SUM(valor_opif_jvn)::real as valor_opif_jvn
FROM totalesjvr_depgeo_if07;