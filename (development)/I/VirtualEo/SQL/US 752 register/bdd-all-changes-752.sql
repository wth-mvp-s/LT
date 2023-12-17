
-- name : usp_Api_Organization_CheckSocietyNameExists
-- type : proc
-- chenges on bdd needed : yes 
-- exists on Api.DATABASE : yes copied below : 

CREATE PROCEDURE [dbo].[usp_Api_Organization_CheckSocietyNameExists]
    @SocietyName NVARCHAR(255),
    @Exists BIT = NULL OUTPUT
AS
BEGIN


    IF EXISTS (SELECT 1 FROM [dbo].[Organization] WHERE [Name] = @SocietyName)
        SET @Exists = 1;
    ELSE
        SET @Exists = 0;
    
END;



-- name : usp_Api_Organization_Upsert
-- type : proc
-- chenges on bdd needed : yes 
-- exists on Api.DATABASE : yes copied below : 

CREATE PROCEDURE [dbo].[usp_Api_Organization_Upsert]
--ALTER PROCEDURE [dbo].[usp_Api_Organization_Upsert]
	@Organization [dbo].[OrganizationDataType] READONLY,
	@UpsertedBy NVARCHAR(255),
	@CreatedBy NVARCHAR(255),
	@OrganizationId INT = NULL OUTPUT
AS
BEGIN

	/****************************************/
	/*	IF @OrganizationId is null OR < 1	*/
	/*		-> CREATE Organization		    */
	/****************************************/
	IF (ISNULL(@OrganizationId, 0) < 1)
	BEGIN
		
		DECLARE @BillingCode VARCHAR (255);

		SET @BillingCode = 'NULL';

		INSERT INTO [dbo].[Organization]
			([Name], [BillingCode], [CreatedBy], [CreatedOn])
		SELECT TOP 1
			[Name], @BillingCode, LOWER(@CreatedBy), GETUTCDATE()
		FROM @Organization;

		SET @OrganizationId = SCOPE_IDENTITY();

	END
	/********************************************/
	/*	IF @ClassroomId is not null AND >= 1	*/
	/*		-> CHECK IF Organization EXISTS		*/
	/*		-> UPDATE Organization					*/
	/********************************************/
	ELSE
	BEGIN
		
		IF NOT EXISTS (SELECT TOP 1 [Id] FROM [dbo].[Organization] WHERE [Id] = @OrganizationId)
		BEGIN

			DECLARE @ErrorMsg NVARCHAR(255);
			
			SET @ErrorMsg='Organization with Id ' + CAST(@OrganizationId AS NVARCHAR(50)) + ' not exists';
			
			RAISERROR(@ErrorMsg, 1, 1);

		END

		UPDATE [dbo].[Organization]
			SET
				[Name] = C.[Name]
				,[BillingCode] = C.[BillingCode]
				,[UpdatedBy] = @UpsertedBy
				,[UpdatedOn] = GETUTCDATE()
		FROM (SELECT TOP 1 * FROM @Organization) C
		WHERE [Id] = @OrganizationId;

	END

END;


-- name : OrganizationDataType
-- type : type
-- chenges on bdd needed : yes 
-- exists on Api.DATABASE : yes copied below : 
DROP PROCEDURE [dbo].[usp_Api_Organization_Upsert]
GO



DROP TYPE [dbo].[OrganizationDataType]
GO


CREATE TYPE [dbo].[OrganizationDataType] AS TABLE
(
    [Name]         NVARCHAR(255)   NOT NULL, 
    [BillingCode]  NVARCHAR(255)   NOT NULL
)


-- name : DepartmentType  usp_Api_Department_Add
-- type : type
-- chenges on bdd needed : yes 
-- exists on Api.DATABASE : yes copied below : 

DROP PROCEDURE [dbo].[usp_Api_Department_Add]
GO

DROP TYPE [dbo].[DepartmentType]
GO

CREATE TYPE [dbo].[DepartmentType] AS TABLE (
    [Id]                 INT            NOT NULL,
    [OrganizationId]     INT            NOT NULL,
    [DepartmentParentId] INT            NULL,
    [Name]               NVARCHAR (255) NOT NULL,
    [CreatedBy]          NVARCHAR (255) NOT NULL);


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
		VALUES (S.[OrganizationId], S.[DepartmentParentId], S.[Name], LOWER(S.[CreatedBy]), GETDATE())
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


-- name : UserDepartmentRoleType ON usp_Api_UserDepartmentRole_Add
-- type : type
-- chenges on bdd needed : yes 
-- exists on Api.DATABASE : yes copied below : 
DROP PROCEDURE [dbo].[usp_Api_UserDepartmentRole_Add]
GO

DROP TYPE [dbo].[UserDepartmentRoleType]
GO

CREATE TYPE [dbo].[UserDepartmentRoleType] AS TABLE (
    [Id]           INT            NOT NULL,
    [DepartmentId] INT            NOT NULL,
    [RoleId]       INT            NOT NULL,
    [UserId]       NVARCHAR (255) NOT NULL,
    [CreatedBy]    NVARCHAR (255) NOT NULL);        



CREATE PROCEDURE [dbo].usp_Api_UserDepartmentRole_Add
	@UserDepartmentRoles UserDepartmentRoleType READONLY
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @Result TABLE(OldId INT, [NewId] INT)

	MERGE [dbo].[UserDepartmentRole] AS T
	USING @UserDepartmentRoles AS S ON (1=0)
	WHEN NOT MATCHED THEN
		INSERT ([DepartmentId], [RoleId], [UserId], [CreatedBy], [CreatedOn])
		VALUES (S.[DepartmentId], S.[RoleId], LOWER(S.[UserId]), LOWER(S.[CreatedBy]), GETDATE())
	OUTPUT S.Id, INSERTED.Id INTO @Result;

	SELECT OldId, [NewId]
	FROM @Result;

END
