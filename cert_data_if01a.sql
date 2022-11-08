SELECT 'Totales IF01A' as tabla, 
    subtipo_inst, 
    mes::int,
    SUM(total_opif)::int as total_opif,
    SUM(valor_opif)::real as valor_opif
FROM totales_if01_a
WHERE anio = 2022
GROUP BY 2, 3
ORDER BY 1, 2, 3;