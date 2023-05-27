#### 0051::
`You are building an Azure Stream Analytics job that queries reference data from a product catalog file. The file is updated daily.
`The reference data input details for the file are shown in the Input exhibit
`Input Details
`products
`Tests Delete
`Container
`Create new  *Use Existing
`refdata
`Path pattern
`product.csv
`Date format
`YYYY/MM/DD
`Time format
`HH
`Event serialization format
`CSV
`Delimiter
`comma(,)
`Encoding
`UTF-8

`Save  If  the chosen resource and the 
`      stream analytics job ale located in
`      different regions, you will be billed
`      to move data between regions.
`The storage account container view is shown in the Refdata exhibit
`refdata
`Container
`Search (Ctrl+/)    Upload Add Directory Refresh Rename Delete
`Overview           Authentication method: Access key (Switch to Azure AD User Account)
`Access Control (IAM)       Location: refdata / 2020-03-20
`Settings           Search blobs by prefix (case-sensitive)
`Access policy      Name
`Properties         [..]
`Metadata           product.csv

`You need to configure the Stream Analytics job to pick up the new reference data.
What should you configure?
-[ ] Path pattern: {date}/product.csv
-[ ] Path pattern: {date}/{time}/product.csv
-[ ] Path pattern: product.csv
-[ ] Path pattern: */product.csv
-[ ] Date format: MM/DD/YYYY
-[ ] Date format: YYYY/MM/DD
-[ ] Date format: YYYY-DD-MM
-[ ] Date format: YYYY-MM-DD

#### 0052::
`You have the following Azure Stream Analytics query.
`WITH
`stepl AS (SELECT *
`   FROM inputi
`   PARTITION BY StateID
`   INTO 10),

`step2 AS (SELECT *
`   FROM input2
`   PARTITION BY StateID
`   INTO 10)
`
`SELECT *
`INTO output
`FROM stepl
`PARTITION BY StateID
`UNION
`SELECT * INTO output
`   FROM step2
`   PARTITION BY StateID
For each of the following statements, select Yes if the statement is true. Otherwise, select No.

-[ ] The query combines two streams of partitioned data.: Yes
-[x] The query combines two streams of partitioned data.: No
-[x] The stream scheme key and count must match the output scheme.: Yes
-[ ] The stream scheme key and count must match the output scheme.: No
-[x] Providing 60 streaming units will optimize the performance of the query.: Yes
-[ ] Providing 60 streaming units will optimize the performance of the query.: No

#### 0053::
`HOTSPOT -
You are building a database in an Azure Synapse Analytics serverless SQL pool.
`You have data stored in Parquet files in an Azure Data Lake Storege Gen2 container.
`Records are structured as shown in the following sample.
`{
`"id": 123,
`"address_housenumber": "19c",
`"address_line": "Memory Lane",
`"applicant1_name": "Jane",
`"applicant2_name": "Dev"
`}
`The records contain two applicants at most.
`You need to build a table that includes only the address fields.
`How should you complete the Transact-SQL statement?

- [x] CREATE EXTERNAL TABLE applications
- [ ] CREATE TABLE applications
- [ ] CREATE VIEW applications
`WITH (
`   LOCATION = ‘applications/’,
`   DATA_SOURCE = applications_ds,
`   FILE_FORMAT = applications file format
`)
`AS
`SELECT id, [address_housenumber] as addresshousenumber, [address_linel] as addresslinel
FROM
- [ ] CROSS APPLY (BULK ‘https: //contosol.dfs.core.windows.net/applications/year=*/*.parquet’,
- [ ] OPENJSON (BULK ‘https: //contosol.dfs.core.windows.net/applications/year=*/*.parquet’,
- [x] OPENROWSET (BULK ‘https: //contosol.dfs.core.windows.net/applications/year=*/*.parquet’,
`FORMAT='PARQUET) AS [r]
`GO
#### 0054::
`You have an Azure Synapse Analytics dedicated SQL pool named Pool1 and an Azure Data Lake Storage Gen2 account named Account1.
`You plan to access the files in Account1 by using an external table.
`You need to create a data source in Pool1 that you can reference when you create the external table.
`How should you complete the Transact-SQL statement?
`CREATE EXTERNAL DATA SOURCE sourcel
WITH
`( LOCATION = 
- [x] ‘https://accountl.blob.core.windows.net',
- [ ] ‘https://accountl.dfs.core.windows.net',
- [ ] ‘https://accountl.table.core.windows.net',

- [ ] PUSHDOWN = ON
- [ ] TYPE = BLOB_STORAGE
- [x] TYPE = HADOOP
`)

#### 0055::
`You have an Azure subscription that contains an Azure Blob Storage account named storage1 and an Azure Synapse Analytics dedicated SQL pool named
Pool1.
`You need to store data in storage1. The data will be read by Pool1. The solution must meet the following requirements:
`Enable Pool1 to skip columns and rows that are unnecessary in a query.

`✑ Automatically create column statistics.
`✑ Minimize the size of files.
`Which type of file should you use?
- [ ] JSON
- [x] Parquet
- [ ] Avro
- [ ] CSV

#### 0056::
`You plan to create a table in an Azure Synapse Analytics dedicated SQL pool.
`Data in the table will be retained for five years. Once a year, data that is older than five years will be deleted.
`You need to ensure that the data is distributed evenly across partitions. The solution must minimize the amount of time required to delete old data.
`How should you complete the Transact-SQL statement?
- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = CustomerKey ([ProductKey])
`,  PARTITION ( [HASH] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = CustomerKey ([ProductKey])
`,  PARTITION ( [ROUND_ROBIN] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = CustomerKey ([ProductKey])
`,  PARTITION ( [REPLICATE] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = CustomerKey ([ProductKey])
`,  PARTITION ( [OrderDateKey] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = CustomerKey ([ProductKey])
`,  PARTITION ( [SalesOrderNumber] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = HASH ([ProductKey])
`,  PARTITION ( [CustomerKey] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = HASH ([ProductKey])
`,  PARTITION ( [ROUND_ROBIN] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = HASH ([ProductKey])
`,  PARTITION ( [REPLICATE] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [x] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = HASH ([ProductKey])
`,  PARTITION ( [OrderDateKey] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = HASH ([ProductKey])
`,  PARTITION ( [SalesOrderNumber] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = ROUND_ROBIN ([ProductKey])
`,  PARTITION ( [CustomerKey] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = ROUND_ROBIN ([ProductKey])
`,  PARTITION ( [HASH] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = ROUND_ROBIN ([ProductKey])
`,  PARTITION ( [REPLICATE] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = ROUND_ROBIN ([ProductKey])
`,  PARTITION ( [OrderDateKey] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = ROUND_ROBIN ([ProductKey])
`,  PARTITION ( [SalesOrderNumber] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = REPLICATE ([ProductKey])
`,  PARTITION ( [CustomerKey] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = REPLICATE ([ProductKey])
`,  PARTITION ( [HASH] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = REPLICATE ([ProductKey])
`,  PARTITION ( [ROUND_ROBIN] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = REPLICATE ([ProductKey])
`,  PARTITION ( [OrderDateKey] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = REPLICATE ([ProductKey])
`,  PARTITION ( [SalesOrderNumber] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = OrderDateKey ([ProductKey])
`,  PARTITION ( [CustomerKay] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = OrderDateKey ([ProductKey])
`,  PARTITION ( [HASH] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = OrrderDateKey ([ProductKey])
`,  PARTITION ( [ROUND_ROBIN] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = OrrderDateKey ([ProductKey])
`,  PARTITION ( [REPLICATE] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = OrderDateKey ([ProductKey])
`,  PARTITION ( [SalesOrderNumber] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = SalesOrderNumber ([ProductKey])
`,  PARTITION ( [CustomerKey] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = SalesOrderNumber ([ProductKey])
`,  PARTITION ( [HASH] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = SalesOrderNumber ([ProductKey])
`,  PARTITION ( [ROUND_ROBIN] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = SalesOrderNumber ([ProductKey])
`,  PARTITION ( [REPLICATE] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

- [ ] 
`CREATE TABLE [dbo]. [FactSales]
`(

`[ProductKey] int NOT NULL
`, [OrderDateKey] int NOT NULL
`,  [[CustomerKey] int NOT NULL
`, [SalesOrderNumber] nvarchar ( 20 ) NOT NULL
`, [OrderQuantity] smallint NOT NULL
`, [UnitPrice] money NOT NULL
`)
`WITH
`( CLUSTERED COLUMNSTORE INDEX
`,  DISTRIBUTION = SalesOrderNumber ([ProductKey])
`,  PARTITION ( [OrderDateKey] RANGE RIGHT FOR VALUES

`       (20170101, 20180101, 20190101, 20200101,20210101)
`       )
`)

#### 0057
`You have an Azure Data Lake Storage Gen2 service.
`You need to design a data archiving solution that meets the following requirements:
`✑ Data that is older than five years is accessed infrequently but must be available within one second when requested.
`✑ Data that is older than seven years is NOT accessed.
`✑ Costs must be minimized while maintaining the required availability.
`How should you manage the data? 
- [ ] Data over five years old: Delete the blob.
- [ ] Data over five years old: Move to archieve storage.
- [x] Data over five years old: Move to cool storage.
- [ ] Data over five years old: move to hot storage.
- [ ] Data over seven years old: Delete the blob. 
- [x] Data over seven years old: Move to archieve storage.
- [ ] Data over seven years old: Move to cool storage.
- [ ] Data over seven years old: move to hot storage.

#### 0058::
`You plan to create an Azure Data Lake Storage Gen2 account.
`You need to recommend a storage solution that meets the following requirements:
`✑ Provides the highest degree of data resiliency
`✑ Ensures that content remains available for writes if a primary data center fails
`What should you include in the recommendation?

- [ ] Replication mechanism: Change feed
- [ ] Replication mechanism: Zone-redundant storage (ZRS)
- [ ] Replication mechanism: Read-access geo-redundant storage (RA-GRS)
- [x] Replication mechanism: Read-access geo-zone-redundant storage (RA-GRS)
- [ ] Failover process: Failover initiated by Microsoft
- [x] Failover process: Failover manually initiated by the customer
- [ ] Failover process: Failover automatically initiated by an Azuer Automation job

#### 0059::
`You need to implement a Type 3 slowly changing dimension (SCD) for product category data in an Azure Synapse Analytics dedicated SQL pool.
`You have a table that was created by using the following Transact-SQL statement.

`CREATE TABLE [DBO] . [DimProduct] (
`[ProductKey] [int] IDENTITY(1,1) NOT NULL,
`[ProductSourceID] [int] NOT NULL,
`[ProductNane] [nvarchar] (100) NOT NULL,
`[Color] [nvarchar] (15) NULL,
`[SellStartDate] [date] NOT NULL,
`[SellEndOate] [date] NULL,
`[RowInsertedDateTime] [datetime] NOT NULL,
`[RowipdatedDateTine] [datetime] NOT NULL,
`[ETLAuditID] [int] NOT NULL
`)
`Which two columns should you add to the table? 

- [ ] [EffectiveEndDate] [datetime] NULL,
- [x] [CurrentProductCategory] [nvarchar] (100) NOT NULL,
- [ ] [ProductCategory] [nvarchar] (100) NOT NULL,
- [ ] [EffectiveStartDate] [datetime] NOT NULL,
- [x] [OriginalProductCategory] [nvarchar] (100) NOT NULL,

#### 0060::
`You have an Azure subscription.
`You plan to build a data warehouse in an Azure Synapse Analytics dedicated SQL pool named pool1 that will contain staging tables and a dimensional model.
`Pool1 will contain the following tables.
`|Name-----------------|Number of rows---|Update frequency--------------|Description-------------------|
`|Common.date----------|7,300------------|New rows----------------------|-Contains one row per date----|
`|---------------------|-----------------|Inserted yearly---------------|for the last 20 years---------|
`|---------------------|-----------------|------------------------------|-Contains columns named-------|
`|---------------------|-----------------|------------------------------|Year, month, quarter and------|
`|---------------------|-----------------|------------------------------|isWeekend---------------------|
`|Marketing.WebSessions|1,500,500,000----|Hourly inserts and updates----|Fact table that contains------|
`|---------------------|------------------|-----------------------------|counts of and updates---------|
`|---------------------|------------------|-----------------------------|sessions and page views-------|
`|---------------------|------------------|-----------------------------|inlcuding foreign key values--|
`|---------------------|------------------|-----------------------------|for date,hannel,device and----|
`|---------------------|------------------|-----------------------------|medium------------------------|
`|Staging.WebSessions--|300,000-----------|Hourly truncation and inserts|------------------------------|
`|---------------------|------------------|-----------------------------|Staging table for web session-|
`|---------------------|------------------|-----------------------------|data,truncation and including-|
`|---------------------|------------------|-----------------------------|descriptive fields for inserts|
`|---------------------|------------------|-----------------------------|-channel,device,and medium----|

- [ ]
`Common.Data: Hash
`Marketing.Web.Sessions: Replicated
`Staging.Web.Session: Round-robin

- [ ]
`Common.Data: Hash
`Marketing.Web.Sessions: Round-robin
`Staging.Web.Session: Replicated

- [x]
`Common.Data: Replicated
`Marketing.Web.Sessions: Hash
`Staging.Web.Session: Round-robin

- [ ]
`Common.Data: Replicated
`Marketing.Web.Sessions: Round-robin
`Staging.Web.Session: Hash

- [ ]
`Common.Data: Round-robin
`Marketing.Web.Sessions: Hash
`Staging.Web.Session: Replicated

- [ ]
`Common.Data: Round-robin
`Marketing.Web.Sessions: Replicated
`Staging.Web.Session: Hash

#### 0061::
`You have an Azure Synapse Analytics dedicated SQL pool.
`You need to create a table named FactInternetSales that will be a large fact table in a dimensional model. FactInternetSales will contain 100 million rows and two columns named SalesAmount and OrderQuantity. Queries executed on FactInternetSales will aggregate the values in SalesAmount and OrderQuantity from the last year for a specific product. The solution must minimize the data size and query execution time.
`How should you complete the code?

`CREATE TABLE [dbo] .[FactInternetSales]

`( [Productkey] int NOT NULL

`, [OrderDatekey] int NOT NULL

`, [Customerkey] int NOT NULL

`, [Promotionkey] int NOT NULL
`, [SalesOrdertumber] nvarchar(20) NOT NULL
`, [Orderquantity] smallint NOT NULL
`,  [UnitPrice] money NOT NULL
`, [SalesAmount] money NOT NULL
`)
`WITH
-[x] ( CLUSTERED COLUMNSTORE INDEX
-[ ] (CLUSTERED INDEX ([OrderDateKey])
-[ ] (HEAP
-[ ] (INDEX on [ProductKey}
-[ ] , DISTRIBUTION = Hash([OrderDateKey])
-[x] , DISTRIBUTION = Hash([ProductKey])
-[ ] , DISTRIBUTION = REPLICATE
-[ ] , DISTRIBUTION = ROUND_ROBIN

`);
#### 0062::
`You have an Azure Synapse Analytics dedicated SQL pool that contains a table named Table1. Table1 contains the following:
`✑ One billion rows
`✑ A clustered columnstore index
`✑ A hash-distributed column named Product Key
`✑ A column named Sales Date that is of the date data type and cannot be null
`Thirty million rows will be added to Table1 each month.
`You need to partition Table1 based on the Sales Date column. The solution must optimize query performance and data loading.
`How often should you create a partition?
- [x] once per month
- [ ] once per year
- [ ] once per day
- [ ] once per week

#### 0064::
`You are designing an Azure Data Lake Storage solution that will transform raw JSON files for use in an analytical workload.
`You need to recommend a format for the transformed files. The solution must meet the following requirements:
`✑ Contain information about the data types of each column in the files.
`✑ Support querying a subset of columns in the files.
`✑ Support read-heavy analytical workloads.
`✑ Minimize the file size.
`What should you recommend?
- [ ] JSON
- [ ] CSV
- [ ] Apache Avro
- [x] Apache Parquet

#### 0065::
`You plan to copy the data from the storage account to an enterprise data warehouse in Azure Synapse Analytics.
`You need to prepare the files to ensure that the data copies quickly.
Solution: You modify the files to ensure that each row is less than 1 MB.
`Does this meet the goal?
- [x] Yes
- [ ] No

#### 0066::
`You plan to create a dimension table in Azure Synapse Analytics that will be less than 1 GB.
`You need to create the table to meet the following requirements:
`✑ Provide the fastest query time.
`✑ Minimize data movement during queries.
`Which type of table should you use?
- [x] replicated
- [ ] hash distributed
- [ ] heap
- [ ] round-robin

#### 0067::
`You are designing a dimension table in an Azure Synapse Analytics dedicated SQL pool.
`You need to create a surrogate key for the table. The solution must provide the fastest query performance.
`What should you use for the surrogate key?
- [ ] a GUID column
- [ ] a sequence object
- [x]  an IDENTITY column

#### 0068::
                     |/floder1|
|mydata.csv|  |/folder2|   |/.folder3|  |_mydata4.csv| 
            |mydata2.csv|  |mydata3.csv|
`The external data source is defined by using the following statement.
`CREATE EXTERNAL DATA SOURCE DataLake
`WITH
`(  LOCATION = ‘https: //mydatalake.dfs.core.windows.net/container1/folder1/***
`   ,CREDENTIAL = DataLakeCred
`);

- [x] When selecting all the rows in dbo.Table1, data from the mydata2.csv file will be returned.: Yes
- [ ] When selecting all the rows in dbo.Table1, data from the mydata2.csv file will be returned.: No
- [x] When selecting all the rows in dbo.Table1, data from the mydata3.csv file will be returned.: Yes
- [ ] When selecting all the rows in dbo.Table1, data from the mydata3.csv file will be returned.: No
- [ ] When selecting all the rows in dbo.Table1, data from the _mydata4.csv file will be returned.: Yes
- [x] When selecting all the rows in dbo.Table1, data from the _mydata4.csv file will be returned.: No

#### 0069::
`You have an Azure Synapse Analytics dedicated SQL pool.

You need to create a fact table named Table1 that will store sales data from the last three years. The solution must be optimized for the following query operations:

`• Show order counts by week.
`• Calculate sales totals by region.
`• Calculate sales totals by product.
`• Find all the orders from a given month.

`Which data should you use to partition Table1?

- [ ] product
- [x] month
- [ ] week
- [ ] region

#### 0070::
`You are designing the folder structure for an Azure Data Lake Storage Gen2 account.

`You identify the following usage patterns:

`• Users will query data by using Azure Synapse Analytics serverless SQL pools and Azure Synapse Analytics serverless Apache Spark pools.
`• Most queries will include a filter on the current year or week.
`• Data will be secured by data source.

`You need to recommend a folder structure that meets the following requirements:

`• Supports the usage patterns
`• Simplifies folder security
`• Minimizes query times

`Which folder structure should you recommend?
- [x] \DataSource\SubjectArea\YYYY\WW\FileData_YYYY_MM_DD.parquet
- [ ] \DataSource\SubjectArea\YYYY-WW\FileData_YYYY_MM_DD.parquet
- [ ] DataSource\SubjectArea\WW\YYYY\FileData_YYYY_MM_DD.parquet
- [ ] \YYYY\WW\DataSource\SubjectArea\FileData_YYYY_MM_DD.parquet
- [ ] WW\YYYY\SubjectArea\DataSource\FileData_YYYY_MM_DD.parquet

#### 0071::
`You have an Azure Synapse Analytics dedicated SQL pool named Pool1. Pool1 contains a table named table1.

`You load 5 TB of data into table1.

`You need to ensure that columnstore compression is maximized for table1.

`Which statement should you execute?

- [ ] DBCC INDEXDEFRAG (pool1, table1)
- [ ] DBCC DBREINDEX (table1)
- [ ] ALTER INDEX ALL on table1 REORGANIZE
- [x] ALTER INDEX ALL on table1 REBUILD

#### 0072::
`You have an Azure Synapse Analytics dedicated SQL pool named pool1.

`You plan to implement a star schema in pool and create a new table named DimCustomer by using the following code.
`CREATE TABLE dbo. [DimCustomer] ()
`[CustomerKey] int NOT NULL,
`[CustomerSourceID] [int] NOT NULL,
`[Title] [nvarchar](8) NULL,
`[FirstName] [nvarchar](50) NOT NULL,
`[MiddleName] [nvarchar](50) NULL,
`[LastName] [nvarchar](5@) NOT NULL,
`[Suffix] [nvarchar](10) NULL,
`[CompanyName] [nvarchar](128) NULL,
`[SalesPerson] [nvarchar](256) NULL,
`[EmailAddress] [nvarchar](5@) NULL,
`[Phone] [nvarchar](25) NULL,
`[InsertedDate] [datetime] NOT NULL,
`[ModifiedDate] [datetime] NOT NULL,
`[HashKey] [varchar](100) NOT NULL,
`[IsCurrentRow] [bit] NOT NULL
`)
`WITH
`(
`   DISTRIBUTION = REPLICATE,
`   CLUSTERED COLUMNSTORE INDEX
`);
`GO
`You need to ensure that DimCustomer has the necessary columns to support a Type 2 slowly changing dimension (SCD).

`Which two columns should you add? Each correct answer presents part of the solution.
- [ ] [HistoricalSalesPerson] [nvarchar] (256) NOT NULL
- [x] [EffectiveEndDate] [datetime] NOT NULL
- [ ] [PreviousModifiedDate] [datetime] NOT NULL
- [ ] [RowID] [bigint] NOT NULL
- [x] [EffectiveStartDate] [datetime] NOT NULL

#### 0073::
`You have an Azure subscription that contains an Azure Synapse Analytics dedicated SQL pool.
`You plan to deploy a solution that will analyze sales data and include the following:

`• A table named Country that will contain 195 rows
`• A table named Sales that will contain 100 million rows
`• A query to identify total sales by country and customer from the past 30 days

`You need to create the tables. The solution must maximize query performance.

`How should you complete the script?

`CREATE TABLE [dbo].[Sales]

`(
`   [orderdate] date NOT NULL
`,  [Customertd] int NOT NULL
`,  [Countrytd] int HOT NULL
`,  [Total] money NOT NULL
`)
`WITH

`(
- [ ] DISTRIBUTION = HASH([Customerld])
- [ ] DISTRIBUTION = HASH([OrderDate])
- [ ] DISTRIBUTION = REPLICATE
- [ ] DISTRIBUTION = ROUND_ROBIN

`   CLUSTERED COLUMNSTORE INDEX
`)

`CREATE TABLE [dbo] . [Country]
`(
`   [CountryId] int NOT NULL
`   [CountryCode] varchar(10) NOT NULL
`)
`WITH
`(
- [ ] DISTRIBUTION = HASH([Customerld])
- [ ] DISTRIBUTION = HASH([OrderDate])
- [ ] DISTRIBUTION = REPLICATE
- [ ] DISTRIBUTION = ROUND_ROBIN
`   CLUSTERED COLUMNSTORE INDEX 
`)

#### 0074::
`You have an Azure subscription that contains an Azure Data Lake Storage Gen2 account named account1 and an Azure Synapse Analytics workspace named workspace1.

`You need to create an external table in a serverless SQL pool in workspace1. The external table will reference CSV files stored in account1. The solution must maximize performance.

`How should you configure the external table?

- [X] Use a native external table and authenticate by using a shared access signature (SAS).
- [ ]Use a native external table and authenticate by using a storage account key.
- [ ] Use an Apache Hadoop external table and authenticate by using a shared access signature (SAS).
- [ ] Use an Apache Hadoop external table and authenticate by using a service principal in Microsoft Azure Active Directory (Azure AD), part of Microsoft Entra.

#### 0075::
`You have an Azure Synapse Analytics serverless SQL pool that contains a database named db1. The data model for db1 is shown in the following exhibit.
`|DimGeography-|                            |Date---------|
`|GeographyKey-|                            |DateKey------|
`|City---------|                            |Date---------|
`|StateProvince|                            |Month--------|
`|Region-------|                            |Year---------|
`|Country------|                            |Quarter------|
`
`|DimCustomer--|
`|CustomerKey--|
`|CustomerID---|                            |ProductLine---|
`|CustomerName-|                            |ProductLineKey|
`|CustomerType-|     |FactOrders-----|      |ProductLine---|
`|GeographyKey-|     |CustomerKey----|
`                    |StoreKey-------|
`|Dimstore-----|     |ProductKey-----|
`|StoreKey-----|     |OrderDateKey---|      |Product-------|
`|StorelD------|     |OrederNumber---|      |ProductKey----|
`|StoreName----|     |OrderLineNumber|      |ProductID-----|
`|StoreType----|     |Quantity-------|      |ProductName---|
`|GeographyID--|     |Price----------|      |ProductNameID-|


- [x] To convert the data model to a star schema,: join DimGeography and DimCustomer
- [ ] To convert the data model to a star schema,: join DimGeography and FactOrders
- [ ] To convert the data model to a star schema,: umon DimGeography and DimCustomer
- [ ] To convert the data model to a star schema,: union DimGeography and FactOrders
- [ ] Once the data model is converted into a star schema, there will be: 4 tables
- [ ] Once the data model is converted into a star schema, there will be: 5 tbales
- [x] Once the data model is converted into a star schema, there will be: 6 tables
- [ ] Once the data model is converted into a star schema, there will be: 7 tables




 
