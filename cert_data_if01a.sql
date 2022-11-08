-- IF01A Cifras totales
SELECT 'Totales IF01A' as tabla, 
    subtipo_inst, 
    mes::int,
    SUM(total_opif)::int as total_opif,
    SUM(valor_opif)::real as valor_opif
FROM totales_if01_a
WHERE anio = 2022
GROUP BY 2, 3
ORDER BY 1, 2, 3;

-- IF01A Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(total_saldos)::int as total_salos,
    SUM(valor_saldos)::real as valor_saldos,
    SUM(total_colec)::int as total_colec,
    SUM(valor_colec)::real as valor_colec,
    SUM(valor_subs)::real as valor_subs,
    SUM(total_certexp)::int as total_cerexp,
    SUM(valor_garexp)::real as valor_garexp,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(total_certepag)::int as total_certpag,
    SUM(valor_paginic)::real as valor_paginic,
    SUM(valor_garpag)::real as valor_garpag,
    SUM(valor_pagcredgar)::real as valor_pagcredgar,
    SUM(total_certvig)::int as total_certvig,
    SUM(valor_garinic)::real as valor_garinic,
    SUM(valor_garvig)::real as valor_garvig,
    SUM(valor_credfag)::real as valor_credfag,
    SUM(total_polizas)::int as total_polizas,
    SUM(valor_asegurado)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(total_proy)::int as total_proy,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(total_opmfr)::int as total_opmfr,
    SUM(valor_opmfr)::real as valor_opmfr,
    SUM(total_contrat)::int as total_contrat,
    SUM(valor_valiq_cif)::real as valor_valiq_cif,
    SUM(valor_pag)::real as valor_pagcif,
    SUM(total_opif)::int as total_opif,
    SUM(valor_opif)::real as valor_opif
FROM totales_geo_if01_a_1