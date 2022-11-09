-- Tipo de Uso Agricola (hectareas)
SELECT AVG(d.area_ha)::real as avg_area FROM (SELECT anio, sum(area_ha) area_ha FROM sde.usoestratoexp
WHERE des_tipo='Agrícola'
GROUP BY 1) as d;

-- Tipo de Uso Agricola (hectareas) agrgacion geografica
SELECT d.dpto_cnmbr, AVG(d.area_ha)::real as avg_area FROM (SELECT dpto_cnmbr, anio, sum(area_ha) area_ha FROM sde.usoestratoexp
WHERE des_tipo='Agrícola'
GROUP BY 1, 2
ORDER BY 2 DESC) as d
GROUP BY 1
ORDER BY 2 DESC;
