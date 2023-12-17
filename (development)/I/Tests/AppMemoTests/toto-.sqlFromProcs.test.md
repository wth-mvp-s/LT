t43.test.sqlFromProcs 26.10.1110

CAST::
+CAST((SELECT COUNT(Id) 
							FROM [dbo].[Organization] 
							WHERE CAST([CreatedOn] AS DATE) = CAST(GETUTCDATE() AS DATE)
							) +1 AS VARCHAR(10));

ISNULL  IF (ISNULL(@OrganizationId, 0) < 1)

LOWER(@CreatedBy)

GO
