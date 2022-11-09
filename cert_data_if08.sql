-- Colocaciones IF08 cifras totales
SELECT mes::int,
    'Total' as tipo_productor,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocpp_if08
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    tipo_productor,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocpp_if08
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- LEC IF08 cifras totales
SELECT mes::int,
    'Total' as tipo_productor,
    SUM(total_colec)::int as total_colec,
    SUM(valor_colec)::real as valor_colec
FROM lecpp_if08
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    tipo_productor,
    SUM(total_colec)::int as total_colec,
    SUM(valor_colec)::real as valor_colec
FROM lecpp_if08
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- FAG IF08 cifras totales
SELECT mes::int,
    'Total' as tipo_productor,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credgar)::real as valor_credgar
FROM fagpp_if08
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    tipo_productor,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credgar)::real as valor_credgar
FROM fagpp_if08
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- ICR IF08 cifras totales
SELECT mes::int,
    'Total' as tipo_productor,
    SUM(total_proy)::int as total_proy,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(valor_credicr)::real as valor_credicr,
    SUM(valor_inver)::real as valor_inver
FROM icrpp_if08
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    tipo_productor,
    SUM(total_proy)::int as total_proy,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(valor_credicr)::real as valor_credicr,
    SUM(valor_inver)::real as valor_inver
FROM icrpp_if08
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- ISA IF08 cifras totales
SELECT mes::int,
    'Total' as tipo_productor,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_valaseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isapp_if08
WHERE anio_vigencia = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    tipo_productor,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_valaseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isapp_if08
WHERE anio_vigencia = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- FMR IF08 cifras totales
SELECT mes::int,
    'Total' as tipo_productor,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrpp_if08
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    tipo_productor,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrpp_if08
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- CIF IF08 cifras totales
SELECT mes::int,
    'Total' as tipo_productor,
    COUNT(DISTINCT contrato)::int as total_contratos,
    MAX(valor_valiq)::real as valor_liqcif,
    SUM(valor_pag)::real as valor_pagcif,
    MAX(area)::real as area_vig
FROM cifpp_if08
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    tipo_productor,
    COUNT(DISTINCT contrato)::int as total_contratos,
    MAX(valor_valiq)::real as valor_liqcif,
    SUM(valor_pag)::real as valor_pagcif,
    MAX(area)::real as area_vig
FROM cifpp_if08
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- Totales IF08 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_opif)::int as total_opif,
    SUM(total_opif_pp)::int as total_opif_pp,
    SUM(valor_opif)::real as valor_opif,
    SUM(valor_opif_pp)::real as valor_opif_pp,
    SUM(total_coloc)::int as total_coloc,
    SUM(total_coloc_pp)::int as total_coloc_pp,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_coloc_pp)::real as valor_coloc_pp,
    SUM(total_colec)::int as total_colec,
    SUM(total_colec_pp)::int as total_colec_pp,
    SUM(valor_colec)::real as valor_colec,
    SUM(valor_colec_pp)::real as valor_colec_pp,
    SUM(total_cert)::int as total_cert,
    SUM(total_cert_pp)::int as total_cert_pp,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_garant_pp)::real as valor_garant_pp,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_credgar_pp)::real as valor_credgar_pp,
    SUM(total_proyicr)::int as total_proy,
    SUM(total_proyicr_pp)::int as total_proy_pp,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(valor_pagado_pp)::real as valor_pagado_pp,
    SUM(valor_inver)::real as valor_inver,
    SUM(valor_inver_pp)::real as valor_inver_pp,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(total_unaseg_pp)::int as total_unaseg_pp,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_aseg_pp)::real as valor_aseg_pp,
    SUM(valor_incent)::real as valor_incisa,
    SUM(valor_incent_pp)::real as valor_incisa_pp,
    SUM(total_opmfr)::int as total_operac,
    SUM(total_opmfr_pp)::int as total_operac_pp,
    SUM(valor_opmfr)::real as valor_cred,
    SUM(valor_opmfr_pp)::real as valor_cred_pp,
    SUM(total_contr)::int as total_contr,
    SUM(total_contr_pp)::int as total_contr_pp,
    SUM(valor_liq)::real as valor_liqcif,
    SUM(valor_liq_pp)::real as valor_liqcif_pp,
    SUM(valor_pagcif)::real as valor_pagcif,
    SUM(valor_pagcif_pp)::real as valor_pagcif_pp,
    SUM(area_vig)::real as area_vig,
    SUM(area_vig_pp)::real as area_vig_pp
FROM totalespp_mungeo_if08;

-- Totales IF08 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_opif)::int as total_opif,
    SUM(total_opif_pp)::int as total_opif_pp,
    SUM(valor_opif)::real as valor_opif,
    SUM(valor_opif_pp)::real as valor_opif_pp
FROM totalespp_depgeo_if08;