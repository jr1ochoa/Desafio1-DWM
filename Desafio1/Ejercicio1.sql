
--Base de datos SPAALL DIEGO
--Determinar cuales son los servicios mas usados en cada una de los sucursales
Select 'Centro' as Sucursal, 
c.Sexo, 
SUM(c.Sauna) as Sauna, 
SUM(c.Masaje) as Masaje, 
SUM(c.Hidro) as Hidro, 
SUM(c.Yoga) as Yoga
from SpaCentro as c
GROUP BY c.Sexo
UNION
Select 'Escalón'  as Sucursal, 
c.Sexo, 
SUM(c.Sauna) as Sauna, 
SUM(c.Masaje) as Masaje, 
SUM(c.Hidro) as Hidro, 
SUM(c.Yoga) as Yoga
from SpaEscalon as c
GROUP BY c.Sexo
UNION
Select 'Santa Tecla'  as Sucursal, 
c.Sexo, 
SUM(c.Sauna) as Sauna, 
SUM(c.Masaje) as Masaje, 
SUM(c.Hidro) as Hidro, 
SUM(c.Yoga) as Yoga
from SpaSantaTecla as c
GROUP BY c.Sexo
--Determinar el rango de dedad de usuarios que nos visitan por sucursal
Select 
'Centro' as Sucursal,
Sexo,
SUM(CASE WHEN (Edad < 18) THEN 1 ELSE 0 END) as 'Menores de 18',
SUM(CASE WHEN (Edad >= 18 AND Edad <= 24) THEN 1 ELSE 0 END) as 'Entre 18 y 24',
SUM(CASE WHEN (Edad >= 25 AND Edad <= 29) THEN 1 ELSE 0 END) as 'Entre 25 y 29',
SUM(CASE WHEN (Edad >= 30 AND Edad <= 35) THEN 1 ELSE 0 END) as 'Entre 30 y 35',
SUM(CASE WHEN (Edad >= 36 AND Edad <= 40) THEN 1 ELSE 0 END) as 'Entre 36 y 40',
SUM(CASE WHEN (Edad >= 41 AND Edad <= 49) THEN 1 ELSE 0 END) as 'Entre 41 y 49',
SUM(CASE WHEN (Edad >= 50 AND Edad <= 60) THEN 1 ELSE 0 END) as 'Entre 50 y 60',
SUM(CASE WHEN (Edad >= 61) THEN 1 ELSE 0 END) as 'Mayores de 60'
from SpaCentro 
GROUP BY Sexo 
UNION
Select 
'Escalón' as Sucursal,
Sexo,
SUM(CASE WHEN (Edad < 18) THEN 1 ELSE 0 END) as 'Menores de 18',
SUM(CASE WHEN (Edad >= 18 AND Edad <= 24) THEN 1 ELSE 0 END) as 'Entre 18 y 24',
SUM(CASE WHEN (Edad >= 25 AND Edad <= 29) THEN 1 ELSE 0 END) as 'Entre 25 y 29',
SUM(CASE WHEN (Edad >= 30 AND Edad <= 35) THEN 1 ELSE 0 END) as 'Entre 30 y 35',
SUM(CASE WHEN (Edad >= 36 AND Edad <= 40) THEN 1 ELSE 0 END) as 'Entre 36 y 40',
SUM(CASE WHEN (Edad >= 41 AND Edad <= 49) THEN 1 ELSE 0 END) as 'Entre 41 y 49',
SUM(CASE WHEN (Edad >= 50 AND Edad <= 60) THEN 1 ELSE 0 END) as 'Entre 50 y 60',
SUM(CASE WHEN (Edad >= 61) THEN 1 ELSE 0 END) as 'Mayores de 60'
from SpaEscalon 
GROUP BY Sexo 
UNION
Select 
'Santa Tecla' as Sucursal,
Sexo,
SUM(CASE WHEN (Edad < 18) THEN 1 ELSE 0 END) as 'Menores de 18',
SUM(CASE WHEN (Edad >= 18 AND Edad <= 24) THEN 1 ELSE 0 END) as 'Entre 18 y 24',
SUM(CASE WHEN (Edad >= 25 AND Edad <= 29) THEN 1 ELSE 0 END) as 'Entre 25 y 29',
SUM(CASE WHEN (Edad >= 30 AND Edad <= 35) THEN 1 ELSE 0 END) as 'Entre 30 y 35',
SUM(CASE WHEN (Edad >= 36 AND Edad <= 40) THEN 1 ELSE 0 END) as 'Entre 36 y 40',
SUM(CASE WHEN (Edad >= 41 AND Edad <= 49) THEN 1 ELSE 0 END) as 'Entre 41 y 49',
SUM(CASE WHEN (Edad >= 50 AND Edad <= 60) THEN 1 ELSE 0 END) as 'Entre 50 y 60',
SUM(CASE WHEN (Edad >= 61) THEN 1 ELSE 0 END) as 'Mayores de 60'
from SpaSantaTecla 
GROUP BY Sexo 
--Promedio maximo y minimo de visitas por sucursal 
Select 'Centro' as Sucursal,
MAX(PromVisit) as 'Promedio Maximo de Visitas', MIN(PromVisit) as 'Promedio Minimo de Visitas'
from 
SpaCentro
UNION
Select 'Escalón' as Sucursal,
MAX(PromVisit) as 'Promedio Maximo de Visitas', MIN(PromVisit) as 'Promedio Minimo de Visitas'
from 
SpaEscalon
UNION
Select 'Santa Tecla' as Sucursal,
MAX(PromVisit) as 'Promedio Maximo de Visitas', MIN(PromVisit) as 'Promedio Minimo de Visitas'
from 
SpaSantaTecla
--Promedio maximo y minimo de visitas por sucursal y  sexo
Select 'Centro' as Sucursal,
Sexo,
MAX(PromVisit) as 'Promedio Maximo de Visitas', MIN(PromVisit) as 'Promedio Minimo de Visitas'
from 
SpaCentro
group by Sexo
UNION
Select 'Escalón' as Sucursal,
Sexo,
MAX(PromVisit) as 'Promedio Maximo de Visitas', MIN(PromVisit) as 'Promedio Minimo de Visitas'
from 
SpaEscalon
group by Sexo
UNION
Select 'Santa Tecla' as Sucursal,
Sexo,
MAX(PromVisit) as 'Promedio Maximo de Visitas', MIN(PromVisit) as 'Promedio Minimo de Visitas'
from 
SpaSantaTecla
group by Sexo
--Promedio maximo y minimo de ingresos por sucursal  y sexo
Select 'Centro' as Sucursal,
Sexo,
MAX(ingresos) as 'Promedio maximo de ingresos', MIN(ingresos) as 'Promedio Minimo de ingresos'
from 
SpaCentro
group by Sexo
UNION
Select 'Escalón' as Sucursal,
Sexo,
MAX(ingresos) as 'Promedio maximo de ingresos', MIN(ingresos) as 'Promedio Minimo de ingresos'
from 
SpaEscalon
group by Sexo
UNION
Select 'Santa Tecla' as Sucursal,
Sexo,
MAX(ingresos) as 'Promedio Maximo de ingresos', MIN(ingresos) as 'Promedio Minimo de ingresos'
from 
SpaSantaTecla
group by Sexo
--Promedio maximo y minimo de ingresos por Sucursal
Select 'Centro' as Sucursal,
MAX(ingresos) as 'Promedio maximo de ingresos', MIN(ingresos) as 'Promedio Minimo de ingresos'
from 
SpaCentro
UNION
Select 'Escalón' as Sucursal,
MAX(ingresos) as 'Promedio maximo de ingresos', MIN(ingresos) as 'Promedio Minimo de ingresos'
from 
SpaEscalon
UNION
Select 'Santa Tecla' as Sucursal,
MAX(ingresos) as 'Promedio Maximo de ingresos', MIN(ingresos) as 'Promedio Minimo de ingresos'
from 
SpaSantaTecla
