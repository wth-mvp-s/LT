
SELECT cs.StudentId, cs.Id FROM Classroom AS c
	INNER JOIN ClassroomStudent AS cs
		ON c.Id = cs.ClassroomId
	WHERE c.Id = 11
	AND c.Name = 'Classe passée'


--ADD Student
INSERT INTO [dbo].[ClassroomStudent]
           (
		   [ClassroomId]
           ,[StudentId]
           ,[StudentIndex]
           ,[CreatedBy]
           ,[CreatedOn]
           ,[UpdatedBy]
           ,[UpdatedOn])
     VALUES
           (
		   11
           ,'studentExampleEmail@gmail.com'
           ,4
           ,'lbo'
           ,GETDATE()
           ,NULL
           ,NULL);



	select * from ClassroomStudent
	where Id=228

	update ClassroomStudent
	set StudentIndex = 0 
	where Id= 228

	select * from Classroom