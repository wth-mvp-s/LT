
-- 00:01.05
DECLARE @i int
SET @i = 1
WHILE @i <= 10000
BEGIN
    INSERT INTO UserExamples(Date, Username, Email, FirstName, LastName)
    VALUES (
		DATEADD(DAY, (@i % 365), '2022-01-01'),
        'User' + CAST(@i AS NVARCHAR(50)), -- Username
        'User' + CAST(@i AS NVARCHAR(50)) + '@example.com', -- Email
        'FirstName', -- FirstName
        'LastName'  -- LastName
    )
    SET @i = @i + 1
END

/*
Starting from SQL Server 2012, 

	100_000 = 100000
*/