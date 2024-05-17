CREATE TABLE JediIndexingExample (
    ID int identity(1,1) primary key,
    UserName varchar(255),
    UserDate datetime
);

/*
-- TRUNCATE TABLE JediIndexingExample;

	seeding time - 
*/
-- Variables to hold the generated name and date
DECLARE @UserName varchar(255), @UserDate datetime;
SET @UserDate = '2023-07-03';

-- The loop for inserting 1000 records
DECLARE @i INT = 1;
WHILE @i <= 100000
BEGIN
    -- Generate a name of 6 random letters
    DECLARE @j INT = 1;
    SET @UserName = '';
    WHILE @j <= 6
    BEGIN
        SET @UserName = @UserName + CHAR(65 + CAST(RAND()*26 as int));
        SET @j = @j + 1;
    END

    -- Insert the record with the generated name and date
    INSERT INTO UserExamples2 (UserName, UserDate) 
    VALUES (@UserName, @UserDate)
    
    -- Increment the date and counter
    SET @UserDate = DATEADD(day, 1, @UserDate);
    SET @i = @i + 1;
END


-- Create an index on the UserName column.
CREATE INDEX idx_JediIndexingExample_UserName ON JediIndexingExample (UserName);

/*
* query check time execution with an index vs without, on the UserName column.
*/
SET STATISTICS TIME ON;
SELECT * FROM JediIndexingExample WHERE UserName = 'MQCSAO'; 
SET STATISTICS TIME OFF;
