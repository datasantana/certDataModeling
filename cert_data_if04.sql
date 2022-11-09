-- Colocaciones IF04 cifras totales
SELECT 'colocaciones_if04' as tabla,
    mes::int,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_if04
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'colocaciones_if04' as tabla,
    0 as mes,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_if04
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- Colocaciones IF04 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_geo_if04;
-- Colocaciones IF04 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_geo_dep_if04;
-- Colocaciones IF04 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_geo_reg_if04;

-- Saldos IF04 cifras totales
SELECT 'saldos_if04' as tabla,
    mes::int,
    SUM(total_saldos)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_if04
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'saldos_if04' as tabla,
    0 as mes,
    SUM(total_saldos)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_if04
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- Colocaciones IF04 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_saldos)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_geo_if04;
-- Colocaciones IF04 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_saldos)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_geodep_if04;
-- Colocaciones IF04 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_saldos)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_georeg_if04;

-- LEC IF04 cifras totales
SELECT 'lec_if04' as tabla,
    mes::int,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_subs)::real as valor_subs
FROM lec_if04
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'lec_if04' as tabla,
    0 as mes,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_subs)::real as valor_subs
FROM lec_if04
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- LEC IF04 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_geo_if04;
-- LEC IF04 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_geodep_if04;
-- LEC IF04 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_georeg_if04;

-- FAG Expedidas IF04 cifras totales
SELECT 'fagexp_if04' as tabla,
    mes::int,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_if04
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'fagexp_if04' as tabla,
    0 as mes,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_if04
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- FAG Expedidas IF04 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_geo_if04;
-- FAG Expedidas IF04 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_geodep_if04;
-- FAG Expedidas IF04 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_georeg_if04;

-- FAG Pagadas IF04 cifras totales
SELECT 'fagpag_if04' as tabla,
    mes::int,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_if04
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'fagpag_if04' as tabla,
    0 as mes,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_if04
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- FAG Pagadas IF04 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_geo_if04;
-- FAG Pagadas IF04 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_geodep_if04;
-- FAG Pagadas IF04 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_georeg_if04;

-- FAG Vigentes IF04 cifras totales
SELECT 'fagvig_if04' as tabla,
    mes::int,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credfag)::real as valor_credfag,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_actual)::real as valor_actual
FROM fagvig_if04
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'fagvig_if04' as tabla,
    0 as mes,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credfag)::real as valor_credfag,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_actual)::real as valor_actual
FROM fagvig_if04
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- FAG Vigenetes IF04 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credfag)::real as valor_credfag,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_actual)::real as valor_actual
FROM fagvig_geo_if04;
-- FAG Vigentes IF04 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credfag)::real as valor_credfag,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_actual)::real as valor_actual
FROM fagvig_geodep_if04;
-- FAG Vigentes IF04 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credfag)::real as valor_credfag,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_actual)::real as valor_actual
FROM fagvig_georeg_if04;

-- ISA IF04 cifras totales
SELECT 'isaunaseg_if04' as tabla,
    mes_vigencia::int as mes,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isaunaseg_if04
WHERE anio_vigencia = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'isaunaseg_if04' as tabla,
    0 as mes,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isaunaseg_if04
WHERE anio_vigencia = 2022
GROUP BY 2
ORDER BY 1, 2;
-- ISA IF04 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_asegurado)::real as valor_aseg,
    SUM(valor_incentivo)::real as valor_incisa
FROM isapol_geo_if04;
-- ISA IF04 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_asegurado)::real as valor_aseg,
    SUM(valor_incentivo)::real as valor_incisa
FROM isapol_geodep_if04;
-- ISA IF04 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_asegurado)::real as valor_aseg,
    SUM(valor_incentivo)::real as valor_incisa
FROM isapol_georeg_if04;

-- ISA IF04 cifras totales (capa de puntos)
SELECT 'isaunaseg_if04' as tabla,
    mes_vigencia::int as mes,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isapoint_geo_if04
WHERE anio_vigencia = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'isaunaseg_if04' as tabla,
    0 as mes,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isapoint_geo_if04
WHERE anio_vigencia = 2022
GROUP BY 2
ORDER BY 1, 2;

-- FMR IF04 cifras totales
SELECT 'mfrop_if04' as tabla,
    mes::int as mes,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrop_if04
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'mfrop_if04' as tabla,
    0 as mes,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrop_if04
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- FMR IF04 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrop_geo_if04;
-- FMR IF04 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrop_geodep_if04;
-- FMR IF04 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrop_georeg_if04;

-- CIF IF04 cifras totales
SELECT 'cifop_if04' as tabla,
    mes::int as mes,
    COUNT(DISTINCT contrato)::int as total_contratos,
    MAX(valor_valiq)::real as valor_liqcif,
    SUM(valor_pagcif)::real as valor_pagcif,
    MAX(area_vig)::real as area_vig
FROM cifop_if04
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'cifop_if04' as tabla,
    0 as mes,
    COUNT(DISTINCT contrato)::int as total_contratos,
    MAX(valor_valiq)::real as valor_liqcif,
    SUM(valor_pagcif)::real as valor_pagcif,
    MAX(area_vig)::real as area_vig
FROM cifop_if04
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- CIF IF04 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_contr)::int as total_contr,
    SUM(valor_valiq)::real as valor_liqcif,
    SUM(valor_pag)::real as valor_pagcif,
    SUM(total_area)::real as area_vig
FROM cifop_geo_if04;