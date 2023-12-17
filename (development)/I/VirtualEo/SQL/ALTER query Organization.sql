/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[Name]
      ,[BillingCode]
      ,[ParentId]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[UpdatedBy]
      ,[UpdatedOn]
  FROM [dbo].[Organization]
  order by id desc


  FORMAT( GETUTCDATE(), 'dd/MM/yyyy');

  SELECT GETUTCDATE(); 

  SELECT COUNT(Id) FROM [dbo].[Organization] WHERE CAST([CreatedOn] AS DATE) = CAST(GETUTCDATE() AS DATE);;

  DECLARE @BillingCode VARCHAR (255);

		SET @BillingCode = 'VIRT'
							+FORMAT( GETUTCDATE(), 'yyyyMMdd') 
							+'-'
							+CAST((SELECT COUNT(Id) 
							FROM [dbo].[Organization] 
							WHERE CAST([CreatedOn] AS DATE) = CAST(GETUTCDATE() AS DATE)
							) +1 AS VARCHAR(10));

		SELECT @BillingCode ;

		VIRT20231006-6