
--Ver que productos fue el mas vendido por departamento 
Select 'San Miguel' as Departamento,
SUM(Rosas) as Rosas,
SUM(Claveles) as Claveles,
SUM(Macetas) as Macetas,
SUM(Tierra) as Tierra,
SUM(Girasoles) as Girasoles,
SUM(Hortensia) as Hortensia,
SUM(Globos) as Globos,
SUM(Tarjetas) as Tarjetas,
SUM(Orquidias) as Orquidias,
SUM(Carmesas) as Carmesas,
SUM(Lirios) as Lirios,  
SUM(Aurora) as Aurora,
SUM(Tulipanes) as Tulipanes,
SUM(Listones) as Listones
FROM SanMiguel
UNION
Select 'San Salvador' as Departamento,
SUM(Rosas) as Rosas,
SUM(Claveles) as Claveles,
SUM(Macetas) as Macetas,
SUM(Tierra) as Tierra,
SUM(Girasoles) as Girasoles,
SUM(Hortensia) as Hortensia,
SUM(Globos) as Globos,
SUM(Tarjetas) as Tarjetas,
SUM(Orquidias) as Orquidias,
SUM(Carmesas) as Carmesas,
SUM(Lirios) as Lirios,  
SUM(Aurora) as Aurora,
SUM(Tulipanes) as Tulipanes,
SUM(Listones) as Listones
FROM SanSalvador
UNION
Select 'Santa Ana' as Departamento,
SUM(Rosas) as Rosas,
SUM(Claveles) as Claveles,
SUM(Macetas) as Macetas,
SUM(Tierra) as Tierra,
SUM(Girasoles) as Girasoles,
SUM(Hortensia) as Hortensia,
SUM(Globos) as Globos,
SUM(Tarjetas) as Tarjetas,
SUM(Orquidias) as Orquidias,
SUM(Carmesas) as Carmesas,
SUM(Lirios) as Lirios,  
SUM(Aurora) as Aurora,
SUM(Tulipanes) as Tulipanes,
SUM(Listones) as Listones
FROM SantaAna

--Ver que producto fue el mas vendido en el Pais
SELECT 'El Salvador' as Pais,
SUM(pais.Rosas) as Rosas,
SUM(pais.Claveles) as Claveles,
SUM(pais.Macetas) as Macetas,
SUM(pais.Tierra) as Tierra,
SUM(pais.Girasoles) as Girasoles,
SUM(pais.Hortensia) as Hortensia,
SUM(pais.Globos) as Globos,
SUM(pais.Tarjetas) as Tarjetas,
SUM(pais.Orquidias) as Orquidias,
SUM(pais.Carmesas) as Carmesas,
SUM(pais.Lirios) as Lirios,  
SUM(pais.Aurora) as Aurora,
SUM(pais.Tulipanes) as Tulipanes,
SUM(pais.Listones) as Listones
FROM 
(
Select 'San Miguel' as Departamento,
SUM(Rosas) as Rosas,
SUM(Claveles) as Claveles,
SUM(Macetas) as Macetas,
SUM(Tierra) as Tierra,
SUM(Girasoles) as Girasoles,
SUM(Hortensia) as Hortensia,
SUM(Globos) as Globos,
SUM(Tarjetas) as Tarjetas,
SUM(Orquidias) as Orquidias,
SUM(Carmesas) as Carmesas,
SUM(Lirios) as Lirios,  
SUM(Aurora) as Aurora,
SUM(Tulipanes) as Tulipanes,
SUM(Listones) as Listones
FROM SanMiguel
UNION
Select 'San Salvador' as Departamento,
SUM(Rosas) as Rosas,
SUM(Claveles) as Claveles,
SUM(Macetas) as Macetas,
SUM(Tierra) as Tierra,
SUM(Girasoles) as Girasoles,
SUM(Hortensia) as Hortensia,
SUM(Globos) as Globos,
SUM(Tarjetas) as Tarjetas,
SUM(Orquidias) as Orquidias,
SUM(Carmesas) as Carmesas,
SUM(Lirios) as Lirios,  
SUM(Aurora) as Aurora,
SUM(Tulipanes) as Tulipanes,
SUM(Listones) as Listones
FROM SanSalvador
UNION
Select 'Santa Ana' as Departamento,
SUM(Rosas) as Rosas,
SUM(Claveles) as Claveles,
SUM(Macetas) as Macetas,
SUM(Tierra) as Tierra,
SUM(Girasoles) as Girasoles,
SUM(Hortensia) as Hortensia,
SUM(Globos) as Globos,
SUM(Tarjetas) as Tarjetas,
SUM(Orquidias) as Orquidias,
SUM(Carmesas) as Carmesas,
SUM(Lirios) as Lirios,  
SUM(Aurora) as Aurora,
SUM(Tulipanes) as Tulipanes,
SUM(Listones) as Listones
FROM SantaAna
) as pais

