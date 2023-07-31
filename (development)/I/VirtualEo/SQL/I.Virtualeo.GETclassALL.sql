
SELECT 

	d.Name AS ChoixDuDepartement,
	ct.Code AS TypeDeClasse_FromCode, 
	ct.Label AS TypeDeClasse_FromLabel, 
	vi.Publisher AS SystemeDexploitation,
	vs.Description AS PuissanceDesMachines,
	'from :',
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
WHERE c.Id = 22