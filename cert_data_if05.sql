-- ISA IF05A cifras totales (valores corrientes)
SELECT anio_vigencia::int,
    'Total' as tipo_unidad,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isahist_if05a
GROUP BY 1
UNION
SELECT anio_vigencia::int,
    tipo_unidad,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isahist_if05a
GROUP BY 1, 2
ORDER BY 1, 2;

-- ISA IF05A cifras resumidas (valores constantes y corrientes)
SELECT anio_vigencia::int,
    'Total' as tipo_unidad,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg_cons)::real as valor_aseg_cons,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa_cons)::real as valor_incisa_cons,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima_cons)::real as valor_prima_cons,
    SUM(valor_prima)::real as valor_prima
FROM isahist_cifras
GROUP BY 1
UNION
SELECT anio_vigencia::int,
    tipo_unidad,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg_cons)::real as valor_aseg_cons,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa_cons)::real as valor_incisa_cons,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima_cons)::real as valor_prima_cons,
    SUM(valor_prima)::real as valor_prima
FROM isahist_cifras
GROUP BY 1, 2
ORDER BY 1, 2;

-- ISA IF05A cifras capa geografica (municipios)
SELECT anio_vigencia::int,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg_cons)::real as valor_aseg_cons,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa_cons)::real as valor_incisa_cons,
    SUM(valor_incisa)::real as valor_incisa
FROM isahist_geo_if05a
GROUP BY 1
ORDER BY 1;

-- Credito colocaciones IF05B cifras totales (valores corrientes)
SELECT anio::int,
    'Total' as tipo_linea,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocacionhist_if05b
GROUP BY 1
UNION
SELECT anio::int,
    tipo_linea,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocacionhist_if05b
GROUP BY 1, 2
ORDER BY 1, 2;

-- Credito saldos IF05B cifras totales (valores corrientes)
SELECT anio::int,
    'Total' as tipo_linea,
    SUM(total_saldos)::int as total_saldos,
    SUM(valor_saldos)::real as valor_saldos
FROM saldoshist_if05_b
GROUP BY 1
UNION
SELECT anio::int,
    tipo_linea,
    SUM(total_saldos)::int as total_saldos,
    SUM(valor_saldos)::real as valor_saldos
FROM saldoshist_if05_b
GROUP BY 1, 2
ORDER BY 1, 2;

-- Credito colocaciones IF05B cifras resumidas (valores constantes y corrientes)
SELECT anio::int,
    'Total' as tipo_linea,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc_cons)::real as valor_coloc_cons,
    SUM(valor_coloc)::real as valor_coloc
FROM colochist_tipoylinea
GROUP BY 1
UNION
SELECT anio::int,
    tipo_linea,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc_cons)::real as valor_coloc_cons,
    SUM(valor_coloc)::real as valor_coloc
FROM colochist_tipoylinea
GROUP BY 1, 2
ORDER BY 1, 2;

-- Credito saldos IF05B cifras resumidas (valores constantes y corrientes)
SELECT anio::int,
    'Total' as tipo_linea,
    SUM(total_saldos)::int as total_saldos,
    SUM(valor_saldo_cons)::real as valor_saldos_cons,
    SUM(valor_saldos)::real as valor_saldos
FROM saldoshist_tipoylinea
GROUP BY 1
UNION
SELECT anio::int,
    tipo_linea,
    SUM(total_saldos)::int as total_saldos,
    SUM(valor_saldo_cons)::real as valor_saldos_cons,
    SUM(valor_saldos)::real as valor_saldos
FROM saldoshist_tipoylinea
GROUP BY 1, 2
ORDER BY 1, 2;

-- Colocaciones IF05B cifras capa geografica (municipios)
SELECT anio::int,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc_cons)::real as valor_coloc_cons,
    SUM(valor_coloc)::real as valor_coloc
FROM colochist_geo_if05_b
GROUP BY 1
ORDER BY 1;