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
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_subs)::real as valor_subs
FROM lec_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'lec_if03' as tabla,
    0 as mes,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_subs)::real as valor_subs
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
-- LEC IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_georeg_if03;

-- FAG Expedidas IF03 cifras totales
SELECT 'fagexp_if03' as tabla,
    mes::int,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'fagexp_if03' as tabla,
    0 as mes,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- FAG Expedidas IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_geo_if03;
-- FAG Expedidas IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_geodep_if03;
-- FAG Expedidas IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_georeg_if03;

-- FAG Pagadas IF03 cifras totales
SELECT 'fagpag_if03' as tabla,
    mes::int,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'fagpag_if03' as tabla,
    0 as mes,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- FAG Pagadas IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_geo_if03;
-- FAG Pagadas IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_geodep_if03;
-- FAG Pagadas IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_georeg_if03;