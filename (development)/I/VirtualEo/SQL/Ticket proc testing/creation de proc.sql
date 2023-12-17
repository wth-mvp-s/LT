CREATE TYPE [dbo].[TicketDataType] AS TABLE
(
    [Id] INT,
    [Subject] NVARCHAR(255),
    [TicketBody] NVARCHAR(255),
    [UserId] INT,
    [ClassroomId] INT,
    [CreatedOn] DATETIME,
    [CreatedBy] NVARCHAR(255),
    [UpdatedOn] DATETIME,
    [UpdatedBy] NVARCHAR(255),
    [DeletedOn] DATETIME,
    [DeletedBy] NVARCHAR(255),
    [Active] BIT
)



CREATE PROCEDURE [dbo].[usp_Api_Ticket_Upsert]
	@TicketDataType [dbo].[TicketDataType] READONLY,
	@TicketId INT = NULL OUTPUT
AS
BEGIN

	/****************************************/
	/*	IF @TicketId is null OR < 1			*/
	/*		-> CREATE Ticket				*/
	/****************************************/
	IF (ISNULL(@TicketId, 0) < 1)
	BEGIN

		INSERT INTO [dbo].[Ticket]
			(
				[Subject]
				,[TicketBody]
				,[UserId]
				,[ClassroomId]
				,[CreatedOn]
				,[CreatedBy]
				,[UpdatedOn]
				,[UpdatedBy]
				,[DeletedOn]
				,[DeletedBy]
				,[Active] 
			)
		SELECT TOP 1
				[Subject]
				,[TicketBody]
				,[UserId]
				,[ClassroomId]
				,[CreatedOn]
				,[CreatedBy]
				,[UpdatedOn]
				,[UpdatedBy]
				,[DeletedOn]
				,[DeletedBy]
				,[Active]
		FROM @TicketDataType;

		SET @TicketId = SCOPE_IDENTITY();

	END
	/********************************************/
	/*	IF @@TicketId is not null AND >= 1		*/
	/*		-> CHECK IF Ticket EXISTS			*/
	/*		-> UPDATE Ticket					*/
	/********************************************/
	ELSE
	BEGIN
		
		IF NOT EXISTS (SELECT TOP 1 [Id] FROM [dbo].[Ticket] WHERE [Id] = @TicketId)
		BEGIN

			DECLARE @ErrorMsg NVARCHAR(255);
			
			SET @ErrorMsg='Ticket with Id ' + CAST(@TicketId AS NVARCHAR(50)) + ' not exists';
			
			RAISERROR(@ErrorMsg, 1, 1);

		END

		UPDATE [dbo].[Ticket]
			SET
				[Subject]		= T.[Subject]
				,[TicketBody]	= T.[TicketBody]
				,[UserId]		= T.[UserId]
				,[ClassroomId]	= T.[ClassroomId]
				,[CreatedOn]	= T.[CreatedOn]
				,[CreatedBy]	= T.[CreatedBy]
				,[UpdatedOn]	= T.[UpdatedOn]
				,[UpdatedBy]	= T.[UpdatedBy]
				,[DeletedOn]	= T.[DeletedOn]
				,[DeletedBy]	= T.[DeletedBy]
				,[Active]		= T.[Active]
		FROM (SELECT TOP 1 * FROM @TicketDataType) T
		WHERE [dbo].[Ticket].[Id] = @TicketId;

	END

END;


CREATE TABLE [dbo].[Ticket] (
[Id]                    INT             IDENTITY (1, 1) NOT NULL,
[Subject]               NVARCHAR (255)  NOT NULL,
[TicketBody]            NVARCHAR (255)  NOT NULL,
[UserId]                INT             NOT NULL,
[ClassroomId]           INT             NULL,
[CreatedOn]             DATETIME        CONSTRAINT [DF_Ticket_CreatedOn] DEFAULT (getutcdate()) NOT NULL, 
[CreatedBy]             NVARCHAR (255)  NOT NULL,
[UpdatedOn]             DATETIME        NULL,
[UpdatedBy]             NVARCHAR (255)  NULL,
[DeletedOn]             DATETIME        NULL,
[DeletedBy]             NVARCHAR (255)  NULL,
[Active]                BIT             CONSTRAINT [DF_Ticket_Active] DEFAULT ((1)) NOT NULL,

    CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_Ticket_Classroom] FOREIGN KEY ([ClassroomId]) REFERENCES [dbo].[Classroom]([Id]),
    CONSTRAINT [FK_Classroom_UserDepartmentRole] FOREIGN KEY ([UserId]) REFERENCES [dbo].[UserDepartmentRole]([Id]),
);