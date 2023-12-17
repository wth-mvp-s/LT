-- 


DECLARE @CutoffDate DATE = '2023-09-25';

BEGIN TRANSACTION;

--SELECT * FROM [dbo].[Classroom] WHERE [CreatedOn] < @CutoffDate;


UPDATE [dbo].[Classroom]
SET [DepartmentId] = 1
WHERE [CreatedOn] < @CutoffDate;


UPDATE [dbo].[Department]
SET [DepartmentParentId] = 1
WHERE [CreatedOn] < @CutoffDate;

UPDATE [dbo].[Department]
SET [OrganizationId] = 1
WHERE [CreatedOn] < @CutoffDate;

DELETE FROM [dbo].[Department]
WHERE [OrganizationId] IN (SELECT [OrganizationId] FROM [dbo].[Organization] WHERE [CreatedOn] < @CutoffDate);

DELETE FROM [dbo].[Organization]
WHERE [CreatedOn] < @CutoffDate;

DELETE FROM [dbo].[UserDepartmentRole]
WHERE [DepartmentId] IN (SELECT [DepartmentId] FROM [dbo].[Department] WHERE [CreatedOn] < @CutoffDate);

SELECT * FROM [dbo].[UserDepartmentRole] WHERE [CreatedOn] < @CutoffDate;
SELECT * FROM [dbo].[Department] WHERE [CreatedOn] < @CutoffDate;
SELECT * FROM [dbo].[Organization] WHERE [CreatedOn] < @CutoffDate;

-- Decide to either commit or rollback the transaction
-- COMMIT;
-- ROLLBACK;
