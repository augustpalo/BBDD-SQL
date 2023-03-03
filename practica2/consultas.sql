-- 1. Hallar, por orden alfabético, los nombres de los departamentos cuyo director lo es en funciones y no en propiedad.
SELECT nomde
FROM DEPARTAMENTOS
WHERE TIDIR = 'F'
ORDER BY 1;

-- 