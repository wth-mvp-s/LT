
SELECT 

	d.Name AS ChoixDuDepartement,
	ct.Code AS TypeDeClasse_FromCode, 
	ct.Label AS TypeDeClasse_FromLabel, 
	vi.Publisher AS SystemeDexploitation,
	vi.Id AS VMimageId,
	vi.Label AS VMimageLabel,
	vs.Description AS PuissanceDesMachines,
	c.Id, 
	c.Name, 
	d.Id

FROM Classroom AS c
INNER JOIN Department AS d	
	ON c.DepartmentId = d.Id

INNER JOIN ClassroomType AS ct
	ON c.ClassroomTypeId = ct.Id

--Système d'exploitation
INNER JOIN VMImage AS vi
	ON c.VmImageId = vi.Id
--Puissance des machines
INNER JOIN VMSize AS vs
	ON c.VmSizeId = vs.Id

--WHERE c.Name like '%az-204%'
WHERE c.Id = 11

-- 
select * from VMImage where Id=6

/*
*temp delete Label From Id 6 where 2022 DATACENTER
*/
Update VMImage 
set Label = '2022 DATACENTER'
where Id = 6; 