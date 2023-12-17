/****** Object:  StoredProcedure [dbo].[usp_Api_Department_Add]    Script Date: 17/10/2023 16:47:01 ******/
DROP PROCEDURE [dbo].[usp_Api_Department_Add]
GO



/****** Object:  UserDefinedTableType [dbo].[DepartmentType]    Script Date: 17/10/2023 16:34:36 ******/
DROP TYPE [dbo].[DepartmentType]
GO

/****** Object:  UserDefinedTableType [dbo].[DepartmentType]    Script Date: 17/10/2023 16:34:36 ******/
CREATE TYPE [dbo].[DepartmentType] AS TABLE(
	[Id] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[DepartmentParentId] [int] NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedBy] NVARCHAR (255) NOT NULL
)
GO


/****** Object:  StoredProcedure [dbo].[usp_Api_Department_Add]    Script Date: 17/10/2023 16:42:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Api_Department_Add]
	@Departments DepartmentType READONLY
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @Result TABLE(OldId INT, [NewId] INT)

	-- DepartmentParentId exists on db
	MERGE [dbo].[Department] AS T
	USING (SELECT * FROM @Departments WHERE DepartmentParentId > 0) AS S ON (1=0)
	WHEN NOT MATCHED THEN
		INSERT ([OrganizationId], [DepartmentParentId], [Name], [CreatedBy], [CreatedOn])
		VALUES (S.[OrganizationId], S.[DepartmentParentId], S.[Name], LOWER(S.[Name]), GETDATE())
	OUTPUT S.Id, INSERTED.Id INTO @Result;

	-- DepartmentParentId has just been inserted
	MERGE [dbo].[Department] AS T
	USING (
		SELECT * 
		FROM @Departments d 
		INNER JOIN @Result r on r.OldId = d.DepartmentParentId 
		WHERE DepartmentParentId < 0
	) AS S ON (1=0)
	WHEN NOT MATCHED THEN
		INSERT ([OrganizationId], [DepartmentParentId], [Name], [CreatedBy], [CreatedOn])
		VALUES (S.[OrganizationId], S.[NewId], S.[Name], 'virtualeo', GETDATE())
	OUTPUT S.Id, INSERTED.Id INTO @Result;

	SELECT OldId, [NewId]
	FROM @Result;

END
GO


