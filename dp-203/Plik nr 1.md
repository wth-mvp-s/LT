##   1°.0606.1240


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
- [-] 
`Execute a DELETE statement where the value in the Date column is more than 36 months ago.
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
`DISTRIBUTION = HASH(ID),
`CLUSTERED INDEX (ID RANGE LEFT FOR VALUES (1. 1000000, 2000000))

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
`Sales group access to the files in the data lake.
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

- [ ] 
`When User2 queries the YearlyIncome column, the values returned will be a random number
- [ ] 
`When User2 queries the YearlyIncome column, the values returned will be the values stored in the database
- [ ] When User2 queries the YearlyIncome column, the values returned will be XXXX
- [x] When User2 queries the YearlyIncome column, the values returned will be 0
- [ ] When User1 queries the BirthDate column, the values returned will be a random date
- [x] 
`When User1 queries the BirthDate column, the values returned will be the values stored in the database
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

#### 0016::
`You have two Azure Storage accounts named Storage1 and Storage2. Each account holds one container and has the hierarchical namespace enabled. The system has files that contain data stored in the Apache Parquet format.
`You need to copy folders and files from Storage1 to Storage2 by using a Data Factory copy activity. The solution must meet the following requirements:
`✑ No transformations must be performed.
`✑ The original folder structure must be retained.
`✑ Minimize time required to perform the copy activity.
`How should you configure the copy activity?
- [ ] Source dataset type: Binary
- [x] Source dataset type: Parquet
- [ ] Source dataset type: Delimited text
- [ ] Copy activity copy behavior: FlattenHierarchy
- [ ] Copy activity copy behavior: MergeFiles
- [x] Copy activity copy behavior: PreserveHierarchy

#### 0017::
`You have an Azure Data Lake Storage Gen2 container that contains 100 TB of data.
`You need to ensure that the data in the container is available for read workloads in a secondary region if an outage occurs in the primary region. The solution must minimize costs.
`Which type of data redundancy should you use?

- [ ] geo-redundant storage (GRS)
- [x] read-access geo-redundant storage (RA-GRS)
- [ ] zone-redundant storage (ZRS)
- [ ] locally-redundant storage (LRS)

#### 0018::
`You plan to implement an Azure Data Lake Gen 2 storage account.
`You need to ensure that the data lake will remain available if a data center fails in the primary Azure region. The solution must minimize costs.
`Which type of replication should you use for the storage account?

- [ ] geo-redundant storage (GRS)
- [ ] geo-zone-redundant storage (GZRS)
- [ ] locally-redundant storage (LRS)
- [x] zone-redundant storage (ZRS)

#### 0019::
`You have a SQL pool in Azure Synapse.
`You plan to load data from Azure Blob storage to a staging table. Approximately 1 million rows of data will be loaded daily. The table will be truncated before each daily load.
`You need to create the staging table. The solution must minimize how long it takes to load the data to the staging table.
`How should you configure the table?

- [x] Distribution: Hash
- [ ] Distribution: Replicated
- [ ] Distribution: Round-robin
- [ ] Indexing: Clustered
- [x] Indexing: Clustered columnstore
- [ ] Indexing: Heap
- [x] Partitioning: Date
- [ ] Partitioning: None

#### 0020::
`You are designing a fact table named FactPurchase in an Azure Synapse Analytics dedicated SQL pool. The table contains purchases from suppliers for a retail store. 
`FactPurchase will contain the following columns.
`|Name------------|Data Type----|Nullable----|
`|PurchaseKey-----|Bigint-------|No----------|
`|DateKey---------|Int----------|No----------|
`|SupplierKey-----|Int----------|No----------|
`|StockItemKey----|Int----------|No----------|
`|PurchaseOrderID-|Int----------|Yes---------|
`|OrderedQuantity-|Int----------|No----------|
`|OrderedOuters---|Int----------|No----------|
`|ReceivedOuters--|Int----------|No----------|
`|Package---------|Nvarchar(50)-|No----------|
`|IsOrderFinalized|Bit----------|No----------|
`|LineageKey------|Int----------|No----------|
`
`FactPurchase will have 1 million rows of data added daily and will contain three years of data.
`Transact-SQL queries similar to the following query will be executed daily.
`
`
`SELECT -
`SupplierKey, StockItemKey, IsOrderFinalized, COUNT(*)
`
`FROM FactPurchase -
`
`WHERE DateKey >= 20210101 -
`
`AND DateKey <= 20210131 -
`GROUP By SupplierKey, StockItemKey, IsOrderFinalized
`Which table distribution will minimize query times?

- [ ] replicated
- [x] hash-distributed on PurchaseKey
- [ ] round-robin
- [ ] hash-distributed on IsOrderFinalized

#### 0021::
`From a website analytics system, you receive data extracts about user interactions such as downloads, link clicks, form submissions, and video plays.
`The data contains the following columns.
`|Name------------|Sample value------|
`|Date------------|15 Jan 2021-------|
`|EventCategory---|Videos------------|
`|EventAction-----|Play--------------|
`|EventLabel------|ContosoPromotional|
`|ChannelGrouping-|Social------------|
`|TotalEvents-----|150---------------|
`|UniqueEvents----|120---------------|
`|SessionWithEvens|99----------------|
`You need to design a star schema to support analytical queries of the data. The star schema will contain four tables including a date dimension.
`To which table should you add each column?

- [ ] EventCategory: DimChannel
- [ ] EventCategory: DimDate
- [x] EventCategory: DimEvents
- [ ] EventCategory: FactEvents
- [x] ChannelGrouping: DimChannel
- [ ] ChannelGrouping: DimDate
- [ ] ChannelGrouping: DimEvents 
- [ ] ChannelGrouping: FactEvents
- [ ] TotalEvents: DimChannel
- [ ] TotalEvents: DimDate
- [ ] TotalEvents: DimEvents
- [x] TotalEvents: FactEvents

#### 0022::
`You have an Azure Storage account that contains 100 GB of files. The files contain rows of text and numerical values. 75% of the rows contain description data that has an average length of 1.1 MB.
`You plan to copy the data from the storage account to an enterprise data warehouse in Azure Synapse Analytics.
`You need to prepare the files to ensure that the data copies quickly.
`Solution: You convert the files to compressed delimited text files.
`Does this meet the goal?

- [x] Yes
- [ ] No

#### 0023::
`You have an Azure Storage account that contains 100 GB of files. The files contain rows of text and numerical values. 75% of the rows contain description data that has an average length of 1.1 MB.
`You plan to copy the data from the storage account to an enterprise data warehouse in Azure Synapse Analytics.
`You need to prepare the files to ensure that the data copies quickly.
`Solution: You copy the files to a table that has a columnstore index.
`Does this meet the goal?

- [ ] Yes
- [x] No

#### 0024::
`You have an Azure Storage account that contains 100 GB of files. The files contain rows of text and numerical values. 75% of the rows contain description data that has an average length of 1.1 MB.
`You plan to copy the data from the storage account to an enterprise data warehouse in Azure Synapse Analytics.
`You need to prepare the files to ensure that the data copies quickly.
`Solution: You modify the files to ensure that each row is more than 1 MB.
`Does this meet the goal?

- [ ] Yes
- [x] No

#### 0025::
`You build a data warehouse in an Azure Synapse Analytics dedicated SQL pool.
`Analysts write a complex SELECT query that contains multiple JOIN and CASE statements to transform data for use in inventory reports. The inventory reports will use the data and additional WHERE parameters depending on the report. The reports will be produced once daily.
`You need to implement a solution to make the dataset available for the reports. The solution must minimize query times.
`What should you implement?

- [ ] an ordered clustered columnstore index
- [x] a materialized view
- [ ] result set caching
- [ ] a replicated table

#### 0026::
`You have an Azure Synapse Analytics workspace named WS1 that contains an Apache Spark pool named Pool1.
`You plan to create a database named DB1 in Pool1.
`You need to ensure that when tables are created in DB1, the tables are available automatically as external tables to the built-in serverless SQL pool.
`Which format should you use for the tables in DB1?

- [ ] CSV
- [ ] ORC
- [ ] JSON
- [x] Parquet

#### 0027::
`You are planning a solution to aggregate streaming data that originates in Apache Kafka and is output to Azure Data Lake Storage Gen2. The developers who will implement the stream processing solution use Java.
`Which service should you recommend using to process the streaming data?

- [ ] Azure Event Hubs
- [ ] Azure Data Factory
- [ ] Azure Stream Analytics
- [x] Azure Databricks

#### 0028::
`You plan to implement an Azure Data Lake Storage Gen2 container that will contain CSV files. The size of the files will vary based on the number of events that occur per hour.
`File sizes range from 4 KB to 5 GB.
`You need to ensure that the files stored in the container are optimized for batch processing.
`What should you do?

- [ ] Convert the files to JSON
- [ ] Convert the files to Avro
- [ ] Compress the files
- [x] Merge the files


#### 0029::
`You store files in an Azure Data Lake Storage Gen2 container. The container has the storage policy shown in the following exhibit.
`{
`   “rules”: [
`     {
`       “enabled”: true,
`       “name”: “contosorule”,
`       “type”: “Lifecycle”,
`       “definition”: {
`         “actions”: {
`          “version”: {
`            “delete”: {
`              “daysAfterCreationGreaterThan”: 60
`             }
`           },
`           “baseBlob”: {
`            “tierToCool”: {
`               “daysAfterModificationGreaterThan”:
`30
`              },
`              },
`           }
`         },
`           “filters”: {
`            “plobTypes”: [
`               “blockBlob”
`           ],
`           “prefixMatch”: [
`             “containerl/contoso”

- [ ] The files are delated from the container after 30 days
- [ ] The files are moved to archive storage after 30 days
- [x] The files are moved to cool storage after 30 days
- [ ] The files are moved to hot storage after 30 days
- [x] The storage policy applies to container1/contoso.csv
- [ ] The storage policy applies to container1/docs/contoso.json
- [ ] The storage policy applies to container1/mycontoso/contoso.csv

#### 0030::
`You are designing a financial transactions table in an Azure Synapse Analytics dedicated SQL pool. The table will have a clustered columnstore index and will include the following columns:
`✑ TransactionType: 40 million rows per transaction type
`✑ CustomerSegment: 4 million per customer segment
`✑ TransactionMonth: 65 million rows per month
`AccountType: 500 million per account type
`
`You have the following query requirements:
`✑ Analysts will most commonly analyze transactions for a given month.
`✑ Transactions analysis will typically summarize transactions by transaction type, customer segment, and/or account type
`You need to recommend a partition strategy for the table to minimize query times.
`On which column should you recommend partitioning the table?

- [ ] CustomerSegment
- [ ] AccountType
- [ ] TransactionType
- [x] TransactionMonth

#### 0031::
`You have an Azure Data Lake Storage Gen2 account named account1 that stores logs as shown in the following table.
`|Type----------|Designated retention period|
`|Application---|360 days-------------------|
`|Infrastructure|60 days--------------------|
`
`You do not expect that the logs will be accessed during the retention periods.
`You need to recommend a solution for account1 that meets the following requirements:
`✑ Automatically deletes the logs at the end of each retention period
`✑ Minimizes storage costs
`What should you include in the recommendation?

- [ ] 
`To minimize storage costs: Store the infrastructure logs and the application logs in the Archive access tier
- [ ] 
`To minimize storage costs: Store the infrastructure logs and the application logs in the Cool access tier
- [x] 
`To minimize storage costs: Store the infrastructure logs in the Cool access tier and the application logs in the Archive access tier
- [ ] To delete logs automatically: Azure Data Factory pipelines
- [x] To delete logs automatically: Azure Blob storage lifecycle management rules
- [ ] 
`To delete logs automatically: Immutable Azure Blob storage time-based retention policies

#### 0032::
`You plan to ingest streaming social media data by using Azure Stream Analytics. The data will be stored in files in Azure Data Lake Storage, and then consumed by using Azure Databricks and PolyBase in Azure Synapse Analytics.
`You need to recommend a Stream Analytics data output format to ensure that the queries from Databricks and PolyBase against the files encounter the fewest possible errors. The solution must ensure that the files can be queried quickly and that the data type information is retained.
`What should you recommend?

- [ ] JSON
- [x] Parquet
- [ ] CSV
- [ ] Avro

#### 0033::
`You have an Azure Synapse Analytics dedicated SQL pool named Pool1. Pool1 contains a partitioned fact table named dbo.Sales and a staging table named stg.Sales that has the matching table and partition definitions.
`You need to overwrite the content of the first partition in dbo.Sales with the content of the same partition in stg.Sales. The solution must minimize load times.
`What should you do?

- [ ] Insert the data from stg.Sales into dbo.Sales.
- [ ] Switch the first partition from dbo.Sales to stg.Sales.
- [x] Switch the first partition from stg.Sales to dbo.Sales.
- [ ] Update dbo.Sales from stg.Sales.

#### 0034::
`You are designing a slowly changing dimension (SCD) for supplier data in an Azure Synapse Analytics dedicated SQL pool.
`You plan to keep a record of changes to the available fields.
`The supplier data contains the following columns.
`|Name-----------------|Description--------------------------|
`|SupplierSystemID-----|Unique supplier ID in an enterprise--|
`|---------------------|resource planning (ERP) system-------|
`|SupplierName---------|Name of the supplier company---------|
`|SupplierAddress1-----|Address of the supplier company------|
`|SupplierAddress2-----|Second address of the supplier-------|
`|---------------------|company------------------------------|
`|SupplierCity---------|City of the supplier company---------|
`|SupplierStateProvince|State or province of the supplier----|
`|---------------------|company------------------------------|
`|SupplierCountry------|Country of the supplier company------|
`|SupplierPostalCode---|Postal code of the supplier company--|
`|SupplierDescription--|Free-test description of the supplier|
`|---------------------|company------------------------------|
`|SupplierCategory-----|Category of goods provided by the----|
`|---------------------|supplier company---------------------|
`
`Which three additional columns should you add to the data to create a Type 2 SCD?

- [x] surrogate primary key
- [x] effective start date
- [ ] business key
- [ ] last modified date
- [x] effective end date
- [ ] foreign key

#### 0035::
`You have a Microsoft SQL Server database that uses a third normal form schema.
`You plan to migrate the data in the database to a star schema in an Azure Synapse Analytics dedicated SQL pool.
`You need to design the dimension tables. The solution must optimize read operations.
`What should you include in the solution? 

- [ ] Transform data for the dimension tables by: Maintaining to a third normal form
- [ ] Transform data for the dimension tables by: Normalizing to a fourth normal form
- [x] Transform data for the dimension tables by: Denormalizing to a second normal form
- [x] For the primary key columns in the dimension tables, use: New IDENTITY columns
- [ ] For the primary key columns in the dimension tables, use: A new computed column
- [ ] For the primary key columns in the dimension tables, use: The buisness key column from the source sys

#### 0036::
`You plan to develop a dataset named Purchases by using Azure Databricks. Purchases will contain the following columns:
`✑ ProductID
`✑ ItemPrice
`✑ LineTotal
`✑ Quantity
`✑ StoreID
`✑ Minute
`✑ Month
`✑ Hour
`
`Year -
`✑ Day
`You need to store the data to support hourly incremental load pipelines that will vary for each Store ID. The solution must minimize storage costs.
`How should you complete the code?

- [x] 
`df.write1: .partitionBy ("StorelD’, “Year”, “Month”, “Day”, “Hour”)
`.mode("append"): .parquet ("/Purchases” )

- [ ] 
`df.write1: .partitionBy ("StorelD’, “Year”, “Month”, “Day”, “Hour”)
`.mode("append"): .saveAsTable (“/Purchases”)

- [ ] 
`df.write1: .bucketBy ("StorelD’, “Year”, “Month”, “Day”, “Hour”)
`.mode("append"): .parquet ("/Purchases” )

- [ ] 
`df.write1: .range ("StorelD’, “Year”, “Month”, “Day”, “Hour”)
`.mode("append"): .parquet ("/Purchases” )

- [ ] 
`df.write1: .sortBy ("StorelD’, “Year”, “Month”, “Day”, “Hour”)
`.mode("append"): .parquet ("/Purchases” )


- [ ] 
`df.write1: .partitionBy ("*")
`.mode("append"): .parquet ("/Purchases” )

- [ ] 
`df.write1: .bucketBy ("*")
`.mode("append"): .parquet ("/Purchases” )

- [ ] 
`df.write1: .range (“StoreID”, “Hour”)
`.mode("append"): .parquet ("/Purchases” )

- [ ] 
`df.write1: .sortBy (“StoreID”, “Hour”)
`.mode("append"): .parquet ("/Purchases” )

- [ ] 
`df.write1: .partitionBy ("StorelD’, “Year”, “Month”, “Day”, “Hour”)
`.mode("append"): .json (“/Purchases”)

- [ ] 
`df.write1: .bucketBy ("StorelD’, “Year”, “Month”, “Day”, “Hour”)
`.mode("append"): .csv(“/Purchases”)

- [ ] 
`df.write1: .range ("StorelD’, “Year”, “Month”, “Day”, “Hour”)
`.mode("append"): .json (“/Purchases”)

- [ ] 
`df.write1: .sortBy ("StorelD’, “Year”, “Month”, “Day”, “Hour”)
`.mode("append"): .saveAsTable (“/Purchases”)

#### 0037::
`You are designing a partition strategy for a fact table in an Azure Synapse Analytics dedicated SQL pool. The table has the following specifications:
`✑ Contain sales data for 20,000 products.
`Use hash distribution on a column named ProductID.
`
`✑ Contain 2.4 billion records for the years 2019 and 2020.
`Which number of partition ranges provides optimal compression and performance for the clustered columnstore index?

- [x] 40
- [ ] 240
- [ ] 400
- [ ] 2400

#### 0038::
`You are creating dimensions for a data warehouse in an Azure Synapse Analytics dedicated SQL pool.
`You create a table by using the Transact-SQL statement shown in the following exhibit.
`CREATE TABLE [DBO] . [DimProduct] (
`[ProductKey] [int] IDENTITY(1,1) NOT NULL,
`[ProductSourceID] [int] NOT NULL,
`[ProductName] [nvarchar] (100) NOT NULL,
`[ProductNumber] [nvarchar] (25) NOT NULL,
`[Color] [nvarchar] (15) NULL,
`[Size] [nvarchar] (5) NULL,
`[Weight] [decimal] (8, 2) NULL,
`[ProductCategory] [nvarchar] (100) NULL,
`[SellStartDate] [date] NOT NULL,
`[SellEndDate] [date] NULL,
`[RowInsertedDateTime] [datetime] NOT NULL,
`[RowUpdatedDateTime] [datetime] NOT NULL,
`[ETLAuditID] [int] NOT NULL

- [ ] DimProduct is a Type 0 slowly changing dimension (SCD).
- [ ] DimProduct is a Type 1 slowly changing dimension (SCD).
- [x] DimProduct is a Type 2 slowly changing dimension (SCD).
- [ ] The ProductKey column is a surrogate key
- [x] The ProductKey column is a buisness key
- [ ] The ProductKey column is an audit column

#### 0039::
`You are designing a fact table named FactPurchase in an Azure Synapse Analytics dedicated SQL pool. The table contains purchases from suppliers for a retail store. 
`FactPurchase will contain the following columns.
`|Name------------|Data Type----|Nullable----|
`|PurchaseKey-----|Bigint-------|No----------|
`|DateKey---------|Int----------|No----------|
`|SupplierKey-----|Int----------|No----------|
`|StockItemKey----|Int----------|No----------|
`|PurchaseOrderID-|Int----------|Yes---------|
`|OrderedQuantity-|Int----------|No----------|
`|OrderedOuters---|Int----------|No----------|
`|ReceivedOuters--|Int----------|No----------|
`|Package---------|Nvarchar(50)-|No----------|
`|IsOrderFinalized|Bit----------|No----------|
`|LineageKey------|Int----------|No----------|
`
`FactPurchase will have 1 million rows of data added daily and will contain three years of data.
`Transact-SQL queries similar to the following query will be executed daily.
`
`
`SELECT -
`SupplierKey, StockItemKey, IsOrderFinalized, COUNT(*)
`
`FROM FactPurchase -
`
`WHERE DateKey >= 20210101 -
`
`AND DateKey <= 20210131 -
`GROUP By SupplierKey, StockItemKey, IsOrderFinalized
`Which table distribution will minimize query times?

- [ ] replicated
- [x] hash-distributed on PurchaseKey
- [ ] round-robin
- [ ] hash-distributed on DateKey


#### 0040::
`You are implementing a batch dataset in the Parquet format.
`Data files will be produced be using Azure Data Factory and stored in Azure Data Lake Storage Gen2. The files will be consumed by an Azure Synapse Analytics serverless SQL pool.
`You need to minimize storage costs for the solution.
`What should you do?

- [x] Use Snappy compression for the files.
- [x] Use OPENROWSET to query the Parquet files.
- [x] Create an external table that contains a subset of columns from the Parquet files.
- [ ] Store all data as string in the Parquet files.

#### 0041::
`You need to build a solution to ensure that users can query specific files in an Azure Data Lake Storage Gen2 account from an Azure Synapse Analytics serverless SQL pool.
`Which three actions should you perform in sequence?

- [1] Create an external file format object
- [0] Create an external data source
- [-] Create a query that uses Create Table as Select
- [-] Create a table
- [2] Create an external table

#### 0042::
`You are designing a data mart for the human resources (HR) department at your company. The data mart will contain employee information and employee transactions.
`From a source system, you have a flat extract that has the following fields:
`✑ EmployeeID
`
`FirstName -
`
`✑ LastName
`✑ Recipient
`✑ GrossAmount
`✑ TransactionID
`✑ GovernmentID
`✑ NetAmountPaid
`✑ TransactionDate
`You need to design a star schema data model in an Azure Synapse Analytics dedicated SQL pool for the data mart.
`Which two tables should you create?

- [ ] a dimension table for Transaction
- [ ] a dimension table for EmployeeTransaction
- [x] a dimension table for Employee
- [ ] a fact table for Employee
- [x] a fact table for Transaction

#### 0043::
`You are designing a dimension table for a data warehouse. The table will track the value of the dimension attributes over time and preserve the history of the data by adding new rows as the data changes.
`Which type of slowly changing dimension (SCD) should you use?

- [ ] Type 0
- [ ] Type 1
- [x] Type 2
- [ ] Type 3

#### 0044::
`You have data stored in thousands of CSV files in Azure Data Lake Storage Gen2. Each file has a header row followed by a properly formatted carriage return (/ r) and line feed (/n).
`You are implementing a pattern that batch loads the files daily into a dedicated SQL pool in Azure Synapse Analytics by using PolyBase.
`You need to skip the header row when you import the files into the data warehouse. Before building the loading pattern, you need to prepare the required database objects in Azure Synapse Analytics.
`Which three actions should you perform in sequence?

- [-] 
`Create a database scoped credential that uses Azure Active Directory Application and a Service Principal Key
- [0]
`Create an external data source that uses the abfs location
- [2] 
`Use CREATE EXTERNAL TABLE AS SELECT
`(CETAS) and configure the reject options to
`specify reject values or percentages
- [1] 
`Create an external file format and set the
`First_Row option


#### 0045::
`You are building an Azure Synapse Analytics dedicated SQL pool that will contain a fact table for transactions from the first half of the year 2020.
`You need to ensure that the table meets the following requirements:
`✑ Minimizes the processing time to delete data that is older than 10 years
`✑ Minimizes the I/O for queries that use year-to-date values
`How should you complete the Transact-SQL statement?
`CREATE TABLE [dbo].[FactTransaction]
`
`(
`   [TransactionTypeID]     int     NOT NULL
`   [TransactionDateID]     int     NOT NULL
`   [CustomerID]            int     NOT NULL
`   [Recipient ID]          int     NOT NULL
`   [Amount]                money    NOT NU::
`)
`WITH

- [ ] ( CLUSTERED COLUMNSTORE INDEX
- [ ] (DISTRIBUTION
- [x] (PARTIATION
- [ ] (TRUNCATE_TARGET
- [x] ([TransactionDateID] RANGE RIGHT FOR VALUES
- [ ] ( [TransactionDateID], [TransactionTypeID] RANGE RIGHT FOR VALUES
- [ ] ( HASH ( [TransactionTypeID] ) RANGE RIGHT FOR VALUES
- [ ] ( ROUND_ROBIN RANGE RIGHT FOR VALUES
  

#### 0046::
`You are performing exploratory analysis of the bus fare data in an Azure Data Lake Storage Gen2 account by using an Azure Synapse Analytics serverless SQL pool.
`You execute the Transact-SQL query shown in the following exhibit.
`SELECT
`
`   payment_type,
`   SUM(fare_amount) AS fare_total
` FROM OPENROWSET (
`
`   )
`
`       BULK ‘csv/busfare/tripdata_2020*.csv’,
`       DATA_SOURCE = ‘BusData’,
`       FORMAT = ‘CSV’, PARSER_VERSION = ‘2.0’,
`       FIRSTROW = 2
`)
`WITH (
`       payment_type INT 10,
`       fare_amount FLOAT 11
`
`   ) AS nyc
` GROUP BY payment_type
` ORDER BY payment type;
`
`What do the query results include?

- [ ] Only CSV files in the tripdata_2020 subfolder.
- [ ] All files that have file names that beginning with "tripdata_2020".
- [ ] All CSV files that have file names that contain "tripdata_2020".
- [x] Only CSV that have file names that beginning with "tripdata_2020".

#### 0047::
`You use PySpark in Azure Databricks to parse the following JSON input.
`{
`   "persons": [
`       {
`           "name":"Keith",
`           "age":30,
`           "dogs": ["Fido", "Fluffy"]
`       },
`       {
`           "name" :"Donna",
`           "age":46,
`           "dogs": ["Spot"]
`You need to output the data in the following tabular format.
`|owner|age|dog---|
`|Keith|30-|Fido--|
`|Keith|30-|Fluffy|
`|Donna|46-|Spot--|
`How should you complete the PySpark code?

- [x]
`dbutils.fs.put ("/tmp/source.json", source_json, True)
`source_df = spark.read.option("multiline", "true").json("/tmp/source. json")
`persons = source_df.select explode ("persons") .alias ("persons"))
`persons dogs = persons.select (col ("persons.name") .alias ("owner"), col("persons.age") .alias ("age"),
`explode         alias ("dog"))
`("persons-dogs").
`display(persons_dogs_)

- [ ]
`dbutils.fs.put ("/tmp/source.json", source_json, True)
`source_df = spark.read.option("multiline", "true").json("/tmp/source. json")
`persons = source_df.select createDataFrame ("persons") .alias ("persons"))
`persons dogs = persons.select (col ("persons.name") .alias ("owner"), col("persons.age") .alias ("age"),
`explode         alias ("dog"))
`("persons-dogs").
`display(persons_dogs_)

- [ ]
`dbutils.fs.put ("/tmp/source.json", source_json, True)
`source_df = spark.read.option("multiline", "true").json("/tmp/source. json")
`persons = source_df.translate explode ("persons") .alias ("persons"))
`persons dogs = persons.select (col ("persons.name") .alias ("owner"), col("persons.age") .alias ("age"),
`explode         select ("dog"))
`("persons-dogs").
`display(persons_dogs_)

- [ ]
`dbutils.fs.put ("/tmp/source.json", source_json, True)
`source_df = spark.read.option("multiline", "true").json("/tmp/source. json")
`persons = source_df.array_union alias ("persons") .alias ("persons"))
`persons dogs = persons.select (col ("persons.name") .alias ("owner"), col("persons.age") .alias ("age"),
`explode         explode ("dog"))
`("persons-dogs").
`display(persons_dogs_)

- [ ]
`dbutils.fs.put ("/tmp/source.json", source_json, True)
`source_df = spark.read.option("multiline", "true").json("/tmp/source. json")
`persons = source_df.translate createDataFrame("persons") .alias ("persons"))
`persons dogs = persons.select (col ("persons.name") .alias ("owner"), col("persons.age") .alias ("age"),
`explode         translate ("dog"))
`("persons-dogs").
`display(persons_dogs_)

- [ ]
`dbutils.fs.put ("/tmp/source.json", source_json, True)
`source_df = spark.read.option("multiline", "true").json("/tmp/source. json")
`persons = source_df.alias createDataFrame ("persons") .alias ("persons"))
`persons dogs = persons.select (col ("persons.name") .alias ("owner"), col("persons.age") .alias ("age"),
`explode         array_union ("dog"))
`("persons-dogs").
`display(persons_dogs_)

- [ ]
`dbutils.fs.put ("/tmp/source.json", source_json, True)
`source_df = spark.read.option("multiline", "true").json("/tmp/source. json")
`persons = source_df.createDataFrame array_union ("persons") .alias ("persons"))
`persons dogs = persons.select (col ("persons.name") .alias ("owner"), col("persons.age") .alias ("age"),
`explode         alias ("dog"))
`("persons-dogs").
`display(persons_dogs_)

- [ ]
`dbutils.fs.put ("/tmp/source.json", source_json, True)
`source_df = spark.read.option("multiline", "true").json("/tmp/source. json")
`persons = source_df.select explode ("persons") .alias ("persons"))
`persons dogs = persons.select (col ("persons.name") .alias ("owner"), col("persons.age") .alias ("age"),
`explode         createDataFrame ("dog"))
`("persons-dogs").
`display(persons_dogs_)
 
#### 0048::
`You are designing an application that will store petabytes of medical imaging data.
`When the data is first created, the data will be accessed frequently during the first week. After one month, the data must be accessible within 30 seconds, but files will be accessed infrequently. After one year, the data will be accessed infrequently but must be accessible within five minutes.
`You need to select a storage strategy for the data. The solution must minimize costs.
`Which storage tier should you use for each time frame?

- [ ] First week: Archieve
- [ ] First week: Cool 
- [x] First week: Hot
- [ ] After one month: Archieve
- [x] After one month: Cool 
- [ ] After one month: Hot
- [ ] After one year: Archieve
- [x] After one year: Cool 
- [ ] After one year: Hot

#### 0049::
`You have an Azure Synapse Analytics Apache Spark pool named Pool1.
`You plan to load JSON files from an Azure Data Lake Storage Gen2 container into the tables in Pool1. The structure and data types vary by file.
`You need to load the files into the tables. The solution must maintain the source data types.
`What should you do?

- [ ] Use a Conditional Split transformation in an Azure Synapse data flow.
- [ ] Use a Get Metadata activity in Azure Data Factory.
- [ ] Load the data by using the OPENROWSET Transact-SQL command in an Azure Synapse Analytics serverless SQL pool.
- [x] Load the data by using PySpark.

#### 0050::
`You have an Azure Databricks workspace named workspace1 in the Standard pricing tier. Workspace1 contains an all-purpose cluster named cluster1.
`You need to reduce the time it takes for cluster1 to start and scale up. The solution must minimize costs.
`What should you do first?

- [ ] Configure a global init script for workspace1.
- [ ] Create a cluster policy in workspace1.
- [ ] Upgrade workspace1 to the Premium pricing tier.
- [x] Create a pool in workspace1.
