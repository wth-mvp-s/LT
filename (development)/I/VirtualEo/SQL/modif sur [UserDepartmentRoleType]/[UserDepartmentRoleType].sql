
DROP PROCEDURE [dbo].[usp_Api_UserDepartmentRole_Add]
GO




DROP TYPE [dbo].[UserDepartmentRoleType]
GO

/****** Object:  UserDefinedTableType [dbo].[UserDepartmentRoleType]    Script Date: 17/10/2023 16:35:48 ******/
CREATE TYPE [dbo].[UserDepartmentRoleType] AS TABLE(
	[Id] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [nvarchar](255) NOT NULL,
	[CreatedBy]    NVARCHAR (255) NOT NULL
)
GO

/****** Object:  StoredProcedure [dbo].[usp_Api_UserDepartmentRole_Add]    Script Date: 17/10/2023 16:45:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[usp_Api_UserDepartmentRole_Add]
	@UserDepartmentRoles UserDepartmentRoleType READONLY
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @Result TABLE(OldId INT, [NewId] INT)

	MERGE [dbo].[UserDepartmentRole] AS T
	USING @UserDepartmentRoles AS S ON (1=0)
	WHEN NOT MATCHED THEN
		INSERT ([DepartmentId], [RoleId], [UserId], [CreatedBy], [CreatedOn])
		VALUES (S.[DepartmentId], S.[RoleId], S.[UserId], 'virtualeo', GETDATE())
	OUTPUT S.Id, INSERTED.Id INTO @Result;

	SELECT OldId, [NewId]
	FROM @Result;

END
GO





