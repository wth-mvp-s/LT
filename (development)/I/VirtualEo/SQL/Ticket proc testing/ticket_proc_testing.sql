
use [backup-VIRTUALEO-1710.1448]; 

DECLARE @TicketData [dbo].[TicketDataType];
DECLARE @TicketId INT; 
SET @TicketId = 0; 

INSERT INTO @TicketData (
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
) VALUES 
(
'Subject 1', 
'Body 1',
1,
190,
FORMAT( GETUTCDATE(), 'yyyyMMdd') ,
'tester',
null,
null,
null,
null,
1
);

EXEC [dbo].[usp_Api_Ticket_Upsert] @TicketData, @TicketId OUTPUT;