--v1210.1653
use [VIRTUALEO];


BEGIN TRANSACTION;

DECLARE @OrgId INT = 45; 

DELETE FROM [dbo].[UserDepartmentRole]
WHERE [DepartmentId] = (
    SELECT [Id]
    FROM [dbo].[Department]
    WHERE [OrganizationId] = @OrgId
);

DELETE FROM [dbo].[Department]
WHERE [OrganizationId] = @OrgId;

DELETE FROM [dbo].[Organization]
WHERE [Id] = @OrgId;


Select * from [dbo].[Organization] order by Id desc;
Select * from [dbo].[Department] order by Id desc;
Select * from [dbo].[UserDepartmentRole] order by Id desc;


--ROLLBACK
--COMMIT; 