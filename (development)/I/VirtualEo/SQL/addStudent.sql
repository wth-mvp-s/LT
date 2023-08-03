
SELECT cs.StudentId FROM Classroom AS c
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
	select * from Classroom