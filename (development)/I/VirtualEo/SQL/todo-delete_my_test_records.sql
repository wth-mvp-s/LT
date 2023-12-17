/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[Name]
      ,[BillingCode]
      ,[ParentId]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[UpdatedBy]
      ,[UpdatedOn]
  FROM [dbo].[Organization] order by CreatedOn desc 

  2023-09-26 00:00:00.0000000

  DECLARE @CutoffDate DATE = '2023-09-25';

-- Start a transaction
BEGIN TRANSACTION;


-- Delete from UserOrganizationRole where CreatedOn is older than the cutoff date
DELETE FROM [dbo].[UserDepartmentRole]
WHERE [CreatedOn] < @CutoffDate;
-- Delete from Department where CreatedOn is older than the cutoff date
DELETE FROM [dbo].[Department]
WHERE [CreatedOn] < @CutoffDate;
-- DECLARE @CutoffDate DATE = '2023-09-25';
-- To view the results of what you've deleted before committing
SELECT * FROM [dbo].[UserDepartmentRole] WHERE [CreatedOn] < @CutoffDate;
SELECT * FROM [dbo].[Department] WHERE [CreatedOn] < @CutoffDate;
SELECT * FROM [dbo].[Organization] WHERE [CreatedOn] < @CutoffDate;

-- Delete from Organization where CreatedOn is older than the cutoff date
DELETE FROM [dbo].[Organization]
WHERE [CreatedOn] < @CutoffDate;


-- Decide to either commit or rollback the transaction
COMMIT;
-- ROLLBACK;
