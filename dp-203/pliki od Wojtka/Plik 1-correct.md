##   1°_001-050_2405.2245

#### 001::
`You have a table in an Azure Synapse Analytics dedicated SQL pool. The table was created by using the following Transact-SQL statement.
`CREATE TABLE [dbo]. [DimEmployee] (
`[EmployeeKey] [int] IDENTITY(1,1) NOT NULL,
`{EmployeeID] [int] NOT NULL,
`[FirstName] [varchar] (100) NOT NULL,
`[LastName] [varchar] (100) NOT NULL,
`[JobTitle] [varchar] (100) NULL,
`[LastHireDate] [date] NULL,
`[StreetAddress] [varchar] (500) NOT NULL,
`[City] [varchar] (200) NOT NULL,
`[StateProvince] [varchar] (50) NOT NULL,
`[Portalcode] [varchar] (10) NOT NULL
`)
`You need to alter the table to meet the following requirements:
`✑ Ensure that users can identify the current manager of employees.
`✑ Support creating an employee reporting hierarchy for your entire company.
`✑ Provide fast lookup of the managers' attributes such as name and job title.
`Which column should you add to the table?

- [ ] [ManagerEmployeeID] [smallint] NULL
- [ ] [ManagerEmployeeKey] [smallint] NULL
- [x] [ManagerEmployeeKey] [int] NULL
- [ ] [ManagerName] [varchar](200) NULL

#### 002::
`You have an Azure Synapse workspace named MyWorkspace that contains an Apache Spark database named mytestdb.
`You run the following command in an Azure Synapse Analytics Spark pool in MyWorkspace.
`CREATE TABLE mytestdb.myParquetTable(
`EmployeeID int,
`EmployeeName string,
`EmployeeStartDate date)
`
`USING Parquet -
`You then use Spark to insert a row into mytestdb.myParquetTable. The row contains the following data.
`|EmployeeName|EmployeeID|EmployeeStartDate|
`|------------|----------|-----------------|
`|Alice-------|24--------|2020-01-25-------|
`
`One minute later, you execute the following query from a serverless SQL pool in MyWorkspace.
`SELECT EmployeeID -
`FROM mytestdb.dbo.myParquetTable
`WHERE EmployeeName = 'Alice';
`What will be returned by the query?

- [ ] 24
- [x] an error
- [ ] a null value

#### 003::
`You have a table named SalesFact in an enterprise data warehouse in Azure Synapse Analytics. SalesFact contains sales data from the past 36 months and has the following characteristics:
`✑ Is partitioned by month
`✑ Contains one billion rows
`✑ Has clustered columnstore index
`At the beginning of each month, you need to remove data from SalesFact that is older than 36 months as quickly as possible.
`Which three actions should you perform in sequence in a stored procedure? 
`Select and Place:

- [0] Create an empty table named SalesFact_Work that has the same schema as SalesFact.
- [1] Switch the partition containing the stale data from SalesFact to SalesFact_Work.
- [2] Drop the SalesFact_Work table.
- [-] Truncate the partition containing the stale data.
- [-] Execute a DELETE statement where the value in the Date column is more than 36 months ago.
- [-] Copy the data to a new table by using CREATE TABLE AS SELECT (CTAS).

#### 004::
`You have files and folders in Azure Data Lake Storage Gen2 for an Azure Synapse workspace as shown in the following exhibit.
`
`                          |/topfolder/|
`        File1.csv|   |/folder1/|  |//folder2|  |File4.csv|
`                     |File2.csv|  |File3.csv|
`
`You create an external table named ExtTable that has LOCATION='/topfolder/'.
`When you query ExtTable by using an Azure Synapse Analytics serverless SQL pool, which files are returned?

- [ ] File2.csv and File3.csv only
- [x] File1.csv and File4.csv only
- [ ] File1.csv, File2.csv, File3.csv, and File4.csv
- [ ] File1.csv only

#### 005::
`You are planning the deployment of Azure Data Lake Storage Gen2.
`You have the following two reports that will access the data lake:
`✑ Report1: Reads three columns from a file that contains 50 columns.
`✑ Report2: Queries a single record based on a timestamp.
`You need to recommend in which format to store the data in the data lake to support the reports. The solution must minimize read times.
`What should you recommend for each report? 
- [ ] Report1: Avro
- [x] Report1: CSV
- [ ] Report1: Parquet
- [ ] Report1: TSV
- [x] Report2: Avro
- [ ] Report2: CSV
- [ ] Report2: Parquet
- [ ] Report2: TSV

#### 006::
`You are designing the folder structure for an Azure Data Lake Storage Gen2 container.
`Users will query data by using a variety of services including Azure Databricks and Azure Synapse Analytics serverless SQL pools. The data will be secured by subject 
`area. Most queries will include data from the current year or current month.
`Which folder structure should you recommend to support fast queries and simplified folder security?
- [ ] /{SubjectArea}/{DataSource}/{DD}/{MM}/{YYYY}/{FileData}_{YYYY}_{MM}_{DD}.csv
- [ ] /{DD}/{MM}/{YYYY}/{SubjectArea}/{DataSource}/{FileData}_{YYYY}_{MM}_{DD}.csv
- [ ] /{YYYY}/{MM}/{DD}/{SubjectArea}/{DataSource}/{FileData}_{YYYY}_{MM}_{DD}.csv
- [x] /{SubjectArea}/{DataSource}/{YYYY}/{MM}/{DD}/{FileData}_{YYYY}_{MM}_{DD}.csv 

#### 007::
`You need to output files from Azure Data Factory.
`Which file format should you use for each type of output?
- [ ] Columnar format: Avro
- [ ] Columnar format: GZip
- [x] Columnar format: Parquet
- [ ] Columnar format: TXT
- [x] JSON with a timestamp: Avro
- [ ] JSON with a timestamp:  GZip
- [ ] JSON with a timestamp: Parquet
- [ ] JSON with a timestamp: TXT

#### 008::
`You use Azure Data Factory to prepare data to be queried by Azure Synapse Analytics serverless SQL pools.
`Files are initially ingested into an Azure Data Lake Storage Gen2 account as 10 small JSON files. Each file contains the same data attributes and data from a subsidiary of your company.
`You need to move the files to a different folder and transform the data to meet the following requirements:
`✑ Provide the fastest possible query times.
`✑ Automatically infer the schema from the underlying files.
`How should you configure the Data Factory copy activity?
- [ ] Copy behavior: Flatten hierarchy
- [ ] Copy behavior: Merge flies
- [x] Copy behavior: Preserve hierarchy
- [ ] Sink file type: CSV
- [ ] Sink file type: JSON
- [x] Sink file type: Parquet
- [ ] Sink file type: TXT

#### 009::
`You have a data model that you plan to implement in a data warehouse in Azure Synapse Analytics as shown in the following exhibit.
`
`|Dim_Employee|            |Fact-DailyBookings     Dim_Customer                           
`|iEmployeeID|             |iDailyBookingsID|      iCustomerID                                 
`|vcEmployeeLastName|      |iCustomerID|           vcCustomerName                    
`|vcEmployeeMName|         |iTimeID|               vcCustomerAddress1                    
`|vcEmployeeFirstName|     |iEmployeeID|           vcCustomerCity                     
`|dtEmployeeHireDate|      |iItemID|               ...                    
`|dtEmployeeLevel|         |iQuantityOrder|                                    
`|dtEmployeeLastPromotion| |dExchangeRate|                                 
`                          |iCountryOrigin|        Dim_Time                         
`                          |mUnitPrice|            iTimeID                     
`                                                  iCalendarDay                     
`                                                  iCalendarWeek                     
`                                                  iCalendarMonth                     
`                                                  vcDayofWeek
`                                                  vcDayofMonth
`                                                  vcDayofYear
`                                                  iHolidayIndicator
`
`All the dimension tables will be less than 2 GB after compression, and the fact table will be approximately 6 TB. The dimension tables will be relatively static with very few data inserts and updates.
`Which type of table should you use for each table?
- [ ] Dim_Customer: Hash distributed
- [ ] Dim_Customer: Round-robin
- [x] Dim_Customer: Replicated
- [ ] Dim_Employee: Hash distributed
- [ ] Dim_Employee: Round-robin
- [x] Dim_Employee: Replicated
- [ ] Dim_Time: Hash distributed
- [ ] Dim_Time: Round-robin
- [x] Dim_Time: Replicated
- [x] Fact_DailyBookings: Hash distributed
- [ ] Fact_DailyBookings: Round-robin
- [ ] Fact_DailyBookings: Replicated

#### 0010::
`You have an Azure Data Lake Storage Gen2 container.
`Data is ingested into the container, and then transformed by a data integration application. The data is NOT modified after that. Users can read files in the container but cannot modify the files.
`You need to design a data archiving solution that meets the following requirements:
`✑ New data is accessed frequently and must be available as quickly as possible.
`✑ Data that is older than five years is accessed infrequently but must be available within one second when requested.
`✑ Data that is older than seven years is NOT accessed. After seven years, the data must be persisted at the lowest cost possible.
`✑ Costs must be minimized while maintaining the required availability.
`How should you manage the data?
- [ ] Five-year-old data: Delete the blob.
- [ ] Five-year-old data: Move to archive storage.
- [x] Five-year-old data: Move to cool storage.
- [ ] Five-year-old data: Move to hot storage.
- [ ] Seven-year-old data: Delete the blob.
- [x] Seven-year-old data: Move to archive storage.
- [ ] Seven-year-old data: Move to cool storage.
- [ ] Seven-year-old data: Move to hot storage.

#### 0011::
`You need to create a partitioned table in an Azure Synapse Analytics dedicated SQL pool.
`How should you complete the Transact-SQL statement? 

- [x] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`DISTRIBUTION = HASH(ID),
`PARTITION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`);
`CLUSTERED INDEX = HASH(ID),
`COLLATE (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`);
`CLUSTERED INDEX = HASH(ID),
`DISTRIBUTION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`CLUSTERED INDEX = HASH(ID),
`PARTITION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`CLUSTERED INDEX = HASH(ID),
`PARTITION FUNCTION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`CLUSTERED INDEX = HASH(ID),
`PARTITION SCHEME (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`COLLATE = HASH(ID),
`CLUSTARED INDEX (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`COLLATE = HASH(ID),
`DISTRIBUTION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`COLLATE = HASH(ID),
`PARTITION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`COLLATE = HASH(ID),
`PARTITION FUNCTION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`COLLATE = HASH(ID),
`PARTITION SCHEME (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`DISTRIBUTION = HASH(ID),
`CLUSTERED INDEX (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`DISTRIBUTION = HASH(ID),
`COLLATE (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`DISTRIBUTION = HASH(ID),
`PARTITION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`DISTRIBUTION = HASH(ID),
`PARTITION FUNCTION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`DISTRIBUTION = HASH(ID),
`PARTITION SCHEME (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION = HASH(ID),
`CLUSTERED INDEX (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION = HASH(ID),
`COLLATE (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION = HASH(ID),
`DISTRIBUTION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION = HASH(ID),
`PARTITION FUNCTION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION = HASH(ID),
`PARTITION SCHEME (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION FUNCTION = HASH(ID),
`CLUSTERED INDEX (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION FUNCTION = HASH(ID),
`COLLATE (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION FUNCTION = HASH(ID),
`DISTRIBUTION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION FUNCTION = HASH(ID),
`PARTITION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION FUNCTION = HASH(ID),
`PARTITION SCHEME (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION SCHEME= HASH(ID),
`CLUSTERED INDEX (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION SCHEME= HASH(ID),
`COLLATE (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION SCHEME= HASH(ID),
`DISTRIBUTION (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION SCHEME= HASH(ID),
`PARTITION(ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);

- [ ] 
`CREATE TABLE tablel
` (
`ID INTEGER,
`coll VARCHAR (10),
`col2 VARCHAR (10)
`) WITH
` (
`PARTITION SCHEME= HASH(ID),
`PARTITION FUNCTION(ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))
`);






#### 0012::
`You need to design an Azure Synapse Analytics dedicated SQL pool that meets the following requirements:
`✑ Can return an employee record from a given point in time.
`✑ Maintains the latest employee information.
`✑ Minimizes query complexity.
`How should you model the employee data?

- [ ] as a temporal table
- [ ] as a SQL graph table
- [ ] as a degenerate dimension table
- [x] as a Type 2 slowly changing dimension (SCD) table


#### 0013::
`You have an enterprise-wide Azure Data Lake Storage Gen2 account. The data lake is accessible only through an Azure virtual network named VNET1.
`You are building a SQL pool in Azure Synapse that will use data from the data lake.
`Your company has a sales team. All the members of the sales team are in an Azure Active Directory group named Sales. POSIX controls are used to assign the
Sales group access to the files in the data lake.
`You plan to load data to the SQL pool every hour.
`You need to ensure that the SQL pool can load the sales data from the data lake.
`Which three actions should you perform?

- [x] Add the managed identity to the Sales group.
- [x] Use the managed identity as the credentials for the data load process.
- [ ] Create a shared access signature (SAS).
- [ ] Add your Azure Active Directory (Azure AD) account to the Sales group.
- [ ] Use the shared access signature (SAS) as the credentials for the data load process.
- [x] Create a managed identity.

#### 0014::
`You have an Azure Synapse Analytics dedicated SQL pool that contains the users shown in the following table.
`
`|Name-|Role---------|
`|User1|Server admin-|
`|User2|db_datereader|
`
`User1 executes a query on the database, and the query returns the results shown in the following exhibit.
`
`SELECT c.name,
`   tbl.name as table_name,
`   typ.name as datatype,
`   c.is_masked,
`   c.masking_function
`FROM sys.masked_columns AS c
`INNER JOIN sys.tables AS tbl ON c.[object_id] = tbl.[object_id]
`INNER JOIN sys.types typ ON c.user_type_id = typ.user_type_id
`WHERE is_masked = 1; 
`
`Result Messages
`
`|-|name-----------|table_name-|datatype|is_masked|making_function|
`|1|BirthDate------|DimCustomer|date----|1--------|default ()-----|
`|2|Gender---------|DimCustomer|nvarchar|1--------|default ()-----|
`|3|EmailAddress---|DimCustomer|nvarchar|1--------|email ()-------|
`|4|YearlyIncome---|DimCustomer|money---|1--------|default ()-----|
`
`User1 is the only user who has access to the unmasked data.

- [ ] When User2 queries the YearlyIncome column, the values returned will be a random number
- [ ] When User2 queries the YearlyIncome column, the values returned will be the values stored in the database
- [ ] When User2 queries the YearlyIncome column, the values returned will be XXXX
- [x] When User2 queries the YearlyIncome column, the values returned will be 0
- [ ] When User1 queries the BirthDate column, the values returned will be a random date
- [x] When User1 queries the BirthDate column, the values returned will be the values stored in the database
- [ ] When User1 queries the BirthDate column, the values returned will be XXXX
- [ ] When User1 queries the BirthDate column, the values returned will be 1900-01-01


#### 0015::
`You have an enterprise data warehouse in Azure Synapse Analytics.
`Using PolyBase, you create an external table named [Ext].[Items] to query Parquet files stored in Azure Data Lake Storage Gen2 without importing the data to the data warehouse.
`The external table has three columns.
`You discover that the Parquet files have a fourth column named ItemID.
`Which command should you run to add the ItemID column to the external table?

- [ ] 
`ALTER EXTERNAL TABLE [Ext].[Items]
`   ADD [ItemID] int;
- [ ] 
`DROP EXTERNAL FILE FORMAT parquetfilel;
`CREATE EXTERNAL FILE FORMAT parquetfilel
`WITH (
`   FORMAT_TYPE = PARQUET,
`   DATA_COMPRESSION = ‘org.apache.hadoop.io.compress.SnappyCodec’
`);
- [x] 
`DROP EXTERNAL TABLE [Ext].[Items]
`CREATE EXTERNAL TABLE [Ext].[Items]
` ({ItemID] [int] NULL,
` [ItemName] nvarchar (50) NULL,
` [ItemType] nvarchar(20) NULL,
` [ItemDescription] nvarchar(250))
` WITH
` (
`   LOCATION= */Items/’,
`       DATA_SOURCE = AzureDataLakeStore,
`       FILE_FORMAT = PARQUET,
`       REJECT_TYPE = VALUE,
`       REJECT_VALUE = 0
` );
-[ ]
`ALTER TABLE [Ext] . [Items]
`ADD [ItemID] int;
