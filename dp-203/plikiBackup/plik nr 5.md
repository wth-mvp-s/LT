##   5°.0706.1028

#### 0012::
`Question #12Topic 3
`You are designing a streaming data solution that will ingest variable volumes of data.
`You need to ensure that you can change the partition count after creation.
`Which service should you use to ingest the data?
- [x] Azure Event Hubs Dedicated
- [ ] Azure Stream Analytics
- [ ] Azure Data Factory
- [ ] Azure Synapse Analytics

#### 0013::
`You are designing a date dimension table in an Azure Synapse Analytics dedicated SQL pool. The date dimension table will be used by all the fact tables.
`Which distribution type should you recommend to minimize data movement during queries?
- [ ] HASH
- [x] REPLICATE
- [ ] ROUND_ROBIN

#### 0014::
`You develop a dataset named DBTBL1 by using Azure Databricks.
`DBTBL1 contains the following columns:
`✑ SensorTypeID
`✑ GeographyRegionID
`✑ Year
`✑ Month
`✑ Day
`✑ Hour
`✑ Minute
`✑ Temperature
`✑ WindSpeed
`✑ Other
`You need to store the data to support daily incremental load pipelines that vary for each GeographyRegionID. The solution must minimize storage costs.
`How should you complete the code?
- [x]
`df.write
`.partitionBy ("Year", “Month”, “Day”, “GeographyRegionID”)
`.mode("append")
`.saveAsTable("/DBTBL1")

- [ ]
`df.write
`.partitionBy ("*")
`.mode("append")
`.saveAsTable("/DBTBL1")

- [ ]
`df.write
`.sortBy ("GeographyRegionID")
`.mode("append")
`.parquet("/DBTBL1")

- [ ]
`df.write
`.format ("GeographyRegionID")
`.mode("append")
`.csv("/DBTBL1")

- [ ]
`df.write
`.format ("GeographyRegionID","Year","Month","Day")
`.mode("append")
`.csv("/DBTBL1")

- [ ]
`df.write
`.bucketBy ("Year", “Month”, “Day”, “GeographyRegionID”)
`.mode("append")
`json("/DBTBL1")

- [ ]
`df.write
`.bucketBy ("*")
`.mode("append")
`parquet("/DBTBL1")

- [ ]
`df.write
`.sortBy ("Year", “Month”, “Day”, “GeographyRegionID”)
`.mode("append")
`csv("/DBTBL1")

#### 0015::
`You are designing a security model for an Azure Synapse Analytics dedicated SQL pool that will support multiple companies.
`You need to ensure that users from each company can view only the data of their respective company.
`Which two objects should you include in the solution? 
- [x] a security policy
- [x] a custom role-based access control (RBAC) role
- [ ] a predicate function
- [ ] a column encryption key
- [ ] asymmetric keys
#### 0016::
`You have a SQL pool in Azure Synapse that contains a table named dbo.Customers. The table contains a column name Email.
`You need to prevent nonadministrative users from seeing the full email addresses in the Email column. The users must see values in a format of aXXX@XXXX.com instead.
`What should you do?
- [x] From Microsoft SQL Server Management Studio, set an email mask on the Email column.
- [ ] From the Azure portal, set a mask on the Email column.
- [ ] From Microsoft SQL Server Management Studio, grant the SELECT permission to the users for all the columns in the dbo.Customers table except Email.
- [ ] From the Azure portal, set a sensitivity classification of Confidential for the Email column.

#### 0017::
`You have an Azure Data Lake Storage Gen2 account named adls2 that is protected by a virtual network.
`You are designing a SQL pool in Azure Synapse that will use adls2 as a source.
`What should you use to authenticate to adls2?
- [ ] an Azure Active Directory (Azure AD) user
- [ ] a shared key
- [ ] a shared access signature (SAS)
- [x] a managed identity

#### 0018::
`You have an Azure Synapse Analytics SQL pool named Pool1. In Azure Active Directory (Azure AD), you have a security group named Group1.
`You need to control the access of Group1 to specific columns and rows in a table in Pool1.
`Which Transact-SQL commands should you use?
- [ ] To control access to the columns: CREATE CRYPTOGRAPHIC PROVIDER
- [ ] To control access to the columns: CREATE PARTITION FUNCTION
- [ ] To control access to the columns: CREATE SECURITY POLICY
- [x] To control access to the columns: GRANT
- [ ] To control access to the rows: CREATE CRYPTOGRAPHIC PROVIDER
- [ ] To control access to the rows: CREATE PARTITION FUNCTION
- [x] To control access to the rows: CREATE SECURITY POLICY
- [ ] To control access to the rows: GRANT

#### 0019::
`You need to implement an Azure Databricks cluster that automatically connects to Azure Data Lake Storage Gen2 by using Azure Active Directory (Azure AD) integration.
`How should you configure the new cluster?
- [x] Tier: Premium
- [ ] Tier: Standard
- [x] Advanced option to enable: Azure Data Lake Storage Credentail Passthrough
- [ ] Advanced option to enable: Table Access Control

#### 0020::
`You are designing an Azure Synapse solution that will provide a query interface for the data stored in an Azure Storage account. The storage account is only accessible from a virtual network.
`You need to recommend an authentication mechanism to ensure that the solution can access the source data.
`What should you recommend?
- [x] a managed identity
- [ ] anonymous public read access
- [ ] a shared key

#### 0021::
`You are developing an application that uses Azure Data Lake Storage Gen2.
`You need to recommend a solution to grant permissions to a specific application for a limited time period.
`What should you include in the recommendation?
- [ ] role assignments
- [x] shared access signatures (SAS)
- [ ] Azure Active Directory (Azure AD) identities
- [ ] account keys

#### 0022::
`You use Azure Data Lake Storage Gen2 to store data that data scientists and data engineers will query by using Azure Databricks interactive notebooks. Users will have access only to the Data Lake Storage folders that relate to the projects on which they work.
`You need to recommend which authentication methods to use for Databricks and Data Lake Storage to provide the users with the appropriate access. The solution must minimize administrative effort and development effort.
`Which authentication method should you recommend for each Azure service?

- [ ] Databricks: Azure Active Directory credential passthrough
- [ ] Databricks: Azure Key Vault secrets
- [x] Databricks: Personal access tokens
- [x] Data Lake Storage: Azure Active Directory credential passthrough
- [ ] Data Lake Storage: Shared access keys
- [ ] Data Lake Storage: Shared access signatures

#### 0023::
`You have an Azure Synapse Analytics dedicated SQL pool that contains a table named Contacts. Contacts contains a column named Phone.
`You need to ensure that users in a specific role only see the last four digits of a phone number when querying the Phone column.
`What should you include in the solution?
- [ ] table partitions
- [ ] a default value
- [ ] row-level security (RLS)
- [ ] column encryption
- [x] dynamic data masking

#### 0024::
`You are designing database for an Azure Synapse Analytics dedicated SQL pool to support workloads for detecting ecommerce transaction fraud.
`Data will be combined from multiple ecommerce sites and can include sensitive financial information such as credit card numbers.
`You need to recommend a solution that meets the following requirements:
`Users must be able to identify potentially fraudulent transactions.
`
`✑ Users must be able to use credit cards as a potential feature in models.
`✑ Users must NOT be able to access the actual credit card numbers.
`What should you include in the recommendation?
- [ ] Transparent Data Encryption (TDE)
- [ ] row-level security (RLS)
- [x] column-level encryption
- [ ] Azure Active Directory (Azure AD) pass-through authentication

#### 0025::
`You have an Azure subscription linked to an Azure Active Directory (Azure AD) tenant that contains a service principal named ServicePrincipal1. The subscription contains an Azure Data Lake Storage account named adls1. 
`Adls1 contains a folder named Folder2 that has a URI of https://adls1.dfs.core.windows.net/ container1/Folder1/Folder2/.
`ServicePrincipal1 has the access control list (ACL) permissions shown in the following table.
`|Resource--|Permission----|
`|container1|Access-Execute|
`|Folder1---|Access-Execute|
`|Folder2---|Access-Read---|
`You need to ensure that ServicePrincipal1 can perform the following actions:
`✑ Traverse child items that are created in Folder2.
`✑ Read files that are created in Folder2.
`The solution must use the principle of least privilege.
`Which two permissions should you grant to ServicePrincipal1 for Folder2?

- [ ] Access ג€" Read
- [ ] Access ג€" Write
- [x] Access ג€" Execute
- [x] Default ג€" Read
- [ ] Default ג€" Write
- [ ] Default ג€" Execute

#### 0026::
`You have an Azure subscription that is linked to a hybrid Azure Active Directory (Azure AD) tenant. The subscription contains an Azure Synapse Analytics SQL pool named Pool1.
You need to recommend an authentication solution for Pool1. The solution must support multi-factor authentication (MFA) and database-level authentication.
Which authentication solution or solutions should you include in the recommendation?
- [x] MFA: Azure AD authentication
- [ ] MFA: Microsoft SQL Server authentication
- [ ] MFA: Passwordless authentication
- [ ] MFA: Windows authentication
- [ ] Database-level authentication: Application roles
- [x] Database-level authentication: Contained database users
- [ ] Database-level authentication: Database roles
- [ ] Database-level authentication: Microsoft SQL Server logins

#### 0027::
`You have an Azure data factory.
`You need to ensure that pipeline-run data is retained for 120 days. The solution must ensure that you can query the data by using the Kusto query language.
`Which four actions should you perform in sequence?
- [-] 
`Select the PipelineRuns category.
- [1] 
`Create a Log Analytics workspace that
`has Data Retention set to 120 days.
- [-] 
`Stream to an Azure event hub.
- [0] 
`Create an Azure Storage account that
`has a lifecycle policy.
- [2] 
`From the Azure portal, add a
`diagnostic setting.
- [3] 
`Send the data to a Log Analytics
`workspace.
- [-] 
`Select the TriggerRuns category.

#### 0028::
`You have an Azure Synapse Analytics dedicated SQL pool.
`You need to ensure that data in the pool is encrypted at rest. The solution must NOT require modifying applications that query the data.
`What should you do?
- [ ] Enable encryption at rest for the Azure Data Lake Storage Gen2 account.
- [x] Enable Transparent Data Encryption (TDE) for the pool.
- [ ] Use a customer-managed key to enable double encryption for the Azure Synapse workspace.
- [ ] Create an Azure key vault in the Azure subscription grant access to the pool.

#### 0029::
`You have an Azure subscription that contains an Azure Data Lake Storage Gen2 account named storage1. Storage1 contains a container named container1.
`Container1 contains a directory named directory1. Directory1 contains a file named file1.
`You have an Azure Active Directory (Azure AD) user named User1 that is assigned the Storage Blob Data Reader role for storage1.
`You need to ensure that User1 can append data to file1. The solution must use the principle of least privilege.
`Which permissions should you grant?

- [x]
`contrainer1: Execute
`directory1: Execute
`file1: Write

- [ ]
`contrainer1: Read
`directory1: Write
`file1: Read

- [ ]
`contrainer1: Write
`directory1: Execute
`file1: Read

- [ ]
`contrainer1: Execute
`directory1: Read
`file1: Write

- [ ]
`contrainer1: Execute
`directory1: Write
`file1: Write

- [ ]
`contrainer1: Read
`directory1: Execute
`file1: Execute

- [ ]
`contrainer1: Read 
`directory1: Write
`file1: Execute

- [ ]
`contrainer1: Write
`directory1: Read
`file1: Write

- [ ]
`contrainer1: Write
`directory1: Read
`file1: Execute


#### 0030::
`You have an Azure subscription that contains an Azure Databricks workspace named databricks1 and an Azure Synapse Analytics workspace named synapse1.
`The synapse1 workspace contains an Apache Spark pool named pool1.
`You need to share an Apache Hive catalog of pool1 with databricks1.
`What should you do?
- [ ] From synapse1, create a linked service to: Azure Cosmos DB
- [ ] From synapse1, create a linked service to: Azure Data Lake Storage Gen2
- [x] From synapse1, create a linked service to: Azure SQL Database
- [ ] Configure pool1 to use the linked service as: An Azure Purview accout
- [x] Configure pool1 to use the linked service as: A Hive metastore
- [ ] Configure pool1 to use the linked service as: A managed Hive metastore service

#### 0031::
`You have an Azure subscription.
`You need to deploy an Azure Data Lake Storage Gen2 Premium account. 
`The solution must meet the following requirements:
`* Blobs that are older than 365 days must be deleted.
`* Administrative effort must be minimized.
`* Costs must be minimized.
`What should you use?
- [ ] To minimize costs: Locally-redundant storage (LRS)
- [x] To minimize costs: The Archive access tier
- [ ] To minimize costs: The Cool access tier
- [ ] To minimize costs: Zone-redundant sotrage (ZRS)
- [ ] To delete blobs: Azure Automation ruinbooks
- [x] To delete blobs: Azure Storage lifecycle management
- [ ] To delete blobs: Soft delete

#### 0032::
`You are designing an application that will use an Azure Data Lake Storage Gen 2 account to store petabytes of license plate photos from toll booths. The account will use zone-redundant storage (ZRS).
`You identify the following usage patterns:
`* The data will be accessed several times a day during the first 30 days after the data is created. The data must meet an availability SLA of 99.9%.
`* After 90 days, the data will be accessed infrequently but must be available within 30 seconds.
`* After 365 days, the data will be accessed infrequently but must be available within five minutes.
`You need to recommend a data retention solution. The solution must minimize costs.
`Which access tier should you recommend for each time frame? 
- [ ] First 30 days: Archive
- [ ] First 30 days: Cool
- [x] First 30 days: Hot
- [ ] After 90 days: Archive
- [x] After 90 days: Cool
- [ ] After 90 days: Hot
- [ ] After 365 days: Archive
- [x] After 365 days: Cool
- [ ] After 365 days: Hot

#### 0033::
`You have an Azure Data Lake Storage Gen 2 account named storage1.
`
`You need to recommend a solution for accessing the content in storage1. The solution must meet the following requirements:
`
`• List and read permissions must be granted at the storage account level.
`• Additional permissions can be applied to individual objects in storage1.
`• Security principals from Microsoft Azure Active Directory (Azure AD), part of Microsoft Entra, must be used for authentication.
`
`What should you use? 
- [x]
`To grant permissions at the storge account level: Role-based access control (RBAC) roles
`To grant permissions at the object level: Access control lists (ACLs)

- [ ]
`To grant permissions at the storge account level: Role-based access control (RBAC) roles
`To grant permissions at the object level: Shared account keys

- [ ]
`To grant permissions at the storge account level: Access control lists (ACLs)
`To grant permissions at the object level: Shared access signatures (SAS)

- [ ]
`To grant permissions at the storge account level: Access control lists (ACLs)
`Role-based access control (RBAC) roles

- [ ]
`To grant permissions at the storge account level: Shared access signatures (SAS)
`To grant permissions at the object level: Shared account keys

- [ ]
`To grant permissions at the storge account level: Shared access signatures (SAS)
`To grant permissions at the object level: Access control lists (ACLs)

- [ ]
`To grant permissions at the storge account level: Shared account keys
`To grant permissions at the object level: Shared access signatures (SAS)

- [ ]
`To grant permissions at the storge account level: Shared account keys
`To grant permissions at the object level: Role-based access control (RBAC) roles

#### 0034::
`You have an Azure Synapse Analytics dedicated SQL pool named Pool1 that contains a table named Sales.
`
`Sales has row-level security (RLS) applied. RLS uses the following predicate filter.
`
`CREATE FUNCTION Security. fn_securitypredicate(@SalesRep AS sysname)
`   RETURNS TABLE
`
`WITH SCHEMABINDING
`AS
`   RETURN SELECT 1 AS fn_securitypredicate_result
`WHERE @SalesRep = USER_NAME() OR USER_NAME() = 'Manager';
`
`A user named SalesUser1 is assigned the db_datareader role for Pool1.
`
`Which rows in the Sales table are returned when SalesUser1 queries the table?
- [ ] only the rows for which the value in the User_Name column is SalesUser1
- [ ] all the rows
- [ ] only the rows for which the value in the SalesRep column is Manager
- [x] only the rows for which the value in the SalesRep column is SalesUser1

#### 0035::
`You have an Azure Data Lake Storage Gen2 account named account1 that contains the resources shown in the following table.
`
`|Name------|Type-----|Description---------------|
`|container1|Container|A container---------------|
`|Directory1|Directory|A directory in contrainer1|
`|File1-----|File-----|A file in Directory1------|
`You need to configure access control lists (ACLs) to allow a user named User1 to delete File1. User1 is NOT assigned any role-based access control (RBAC) roles for account1. The solution must use the principle of least privilege.
`
`Which type of ACL should you configure for each resource?
- [ ] container1: --- permissions
- [ ] container1: -WX permissions
- [x] container1: --X permissions
- [ ] Directory1: --- permissions
- [ ] Directory1: -WX permissions
- [x] Directory1: --X permissions
- [ ] File1: --- permissions
- [x] File1: -WX permissions
- [ ] File1: --X permissions

#### 0036::
`You have an Azure subscription that is linked to a tenant in Microsoft Azure Active Directory (Azure AD), part of Microsoft Entra. The tenant that contains a security group named Group1. The subscription contains an Azure Data Lake Storage account named myaccount1. The myaccount1 account contains two containers named container1 and container2.
`
`You need to grant Group1 read access to container1. The solution must use the principle of least privilege.
`
`Which role should you assign to Group1?

- [ ] Storage Table Data Reader for myaccount1
- [x] Storage Blob Data Reader for container1
- [ ] Storage Blob Data Reader for myaccount1
- [ ] Storage Table Data Reader for container1

#### 0037::
`You have an Azure Synapse Analytics dedicated SQL pool that contains a table named dbo.Users.
`
`You need to prevent a group of users from reading user email addresses from dbo.Users.
`
`What should you use?

- [x] column-level security
- [ ] row-level security (RLS)
- [ ] Transparent Data Encryption (TOE)
- [ ] dynamic data masking

#### 0038::
`You have an Azure Synapse Analytics dedicated SQL pool that hosts a database named DB1.
`
`You need to ensure that DB1 meets the following security requirements:
`
`• When credit card numbers show in applications, only the last four digits must be visible.
`• Tax numbers must be visible only to specific users.
`
`What should you use for each requirement?
- [ ] Credit card numers: Column-level security
- [x] Credit card numers: Dynamic Data Masking
- [ ] Credit card numers: Row-level security (RLS)
- [x] Tax numbers: Column-level security
- [ ] Tax numbers: Row-level security (RLS)
- [ ] Tax numbers: Transparent Database Encryption (TDE)

#### 0039::
`You have an Azure subscription that contains a storage account named storage1 and an Azure Synapse Analytics dedicated SQL pool. The storage1 account contains a CSV file that requires an account key for access.
`
`You plan to read the contents of the CSV file by using an external table.
`
`You need to create an external data source for the external table.
`
`What should you create first?

- [ ] a database role
- [x] a database scoped credential
- [ ] a database view
- [ ] an external file format

Topic 4
#### 001::
`You implement an enterprise data warehouse in Azure Synapse Analytics.
`You have a large fact table that is 10 terabytes (TB) in size.
`Incoming queries use the primary key SaleKey column to retrieve data as displayed in the following table:
`
`|SaleKey|CityKey|CusotmerKey|StockItemKey|InvoiceDateKey|Quantity|UnitPrice|TotalExcludingTax|
`|49390--|90858--|70---------|69----------|10/22/13------|8-------|16-------|128--------------|
`|49313--|55710--|126--------|69----------|10/22/13------|2-------|16-------|32---------------|
`|49343--|44710--|234--------|68----------|10/22/13------|10------|16-------|160--------------|
`|49352--|66109--|163--------|70----------|10/22/13------|4-------|16-------|64---------------|
`|49448--|65312--|230--------|70----------|10/22/13------|8-------|16-------|128--------------|
`|49646--|85877--|271--------|70----------|10/24/13------|1-------|16-------|16---------------|
`|49798--|41238--|288--------|69----------|10/24/13------|1-------|16-------|16---------------|
`
`You need to distribute the large fact table across multiple nodes to optimize performance of the table.
`Which technology should you use?

- [ ] hash distributed table with clustered index
- [x] hash distributed table with clustered Columnstore index
- [ ] round robin distributed table with clustered index
- [ ] round robin distributed table with clustered Columnstore index
- [ ] heap table with distribution replicate

#### 002::
`You have an Azure Synapse Analytics dedicated SQL pool that contains a large fact table. The table contains 50 columns and 5 billion rows and is a heap.
`Most queries against the table aggregate values from approximately 100 million rows and return only two columns.
`You discover that the queries against the fact table are very slow.
`Which type of index should you add to provide the fastest query times?
- [ ] nonclustered columnstore
- [x] clustered columnstore
- [ ] nonclustered
- [ ] clustered

#### 003::
`You create an Azure Databricks cluster and specify an additional library to install.
`When you attempt to load the library to a notebook, the library in not found.
`You need to identify the cause of the issue.
`What should you review?
- [ ] notebook logs
- [x] cluster event logs
- [ ] global init scripts logs
- [ ] workspace logs

#### 004::
`You have an Azure data factory.
`You need to examine the pipeline failures from the last 60 days.
`What should you use?
- [ ] the Activity log blade for the Data Factory resource
- [ ] the Monitor & Manage app in Data Factory
- [ ] the Resource health blade for the Data Factory resource
- [x] Azure Monitor

#### 005::
`You are monitoring an Azure Stream Analytics job.
`The Backlogged Input Events count has been 20 for the last hour.
`You need to reduce the Backlogged Input Events count.
`What should you do?
- [ ] Drop late arriving events from the job.
- [ ] Add an Azure Storage account to the job.
- [x] Increase the streaming units for the job.
- [ ] Stop the job.

#### 006::
`You are designing an Azure Databricks interactive cluster. The cluster will be used infrequently and will be configured for auto-termination.
`You need to ensure that the cluster configuration is retained indefinitely after the cluster is terminated. The solution must minimize costs.
`What should you do?
- [x] Pin the cluster.
- [ ] Create an Azure runbook that starts the cluster every 90 days.
- [ ] Terminate the cluster manually when processing completes.
- [ ] Clone the cluster after it is terminated.

#### 007::
`You have an Azure data solution that contains an enterprise data warehouse in Azure Synapse Analytics named DW1.
`Several users execute ad hoc queries to DW1 concurrently.
`You regularly perform automated data loads to DW1.
`You need to ensure that the automated data loads have enough memory available to complete quickly and successfully when the adhoc queries run.
`What should you do?
- [ ] Hash distribute the large fact tables in DW1 before performing the automated data loads.
- [ ] Assign a smaller resource class to the automated data load queries.
- [x] Assign a larger resource class to the automated data load queries.
- [ ] Create sampled statistics for every column in each table of DW1.
- 

#### 008::
`You have an Azure Synapse Analytics dedicated SQL pool named Pool1 and a database named DB1. DB1 contains a fact table named Table1.
`You need to identify the extent of the data skew in Table1.
`What should you do in Synapse Studio?
- [ ] Connect to the built-in pool and run DBCC PDW_SHOWSPACEUSED.
- [ ] Connect to the built-in pool and run DBCC CHECKALLOC.
- [ ] Connect to Pool1 and query sys.dm_pdw_node_status.
- [x] Connect to Pool1 and query sys.dm_pdw_nodes_db_partition_stats.

#### 009::
`You need to collect application metrics, streaming query events, and application log messages for an Azure Databrick cluster.
`Which type of library and workspace should you implement?
- [x] Library: Azure Databricks Monitoring Library
- [ ] Library: Microsoft Azure Management Monitoring Library
- [ ] Library: PyTorch
- [ ] Library: TensorFlow
- [ ] Workspace: Azure Databricks
- [x] Workspace: Azure Loga Analytics
- [ ] Workspace: Azure Machine Learning

#### 0010::
`You have a SQL pool in Azure Synapse.
`You discover that some queries fail or take a long time to complete.
`You need to monitor for transactions that have rolled back.
`Which dynamic management view should you query?
- [ ] sys.dm_pdw_request_steps
- [x] sys.dm_pdw_nodes_tran_database_transactions
- [ ] sys.dm_pdw_waits
- [ ] sys.dm_pdw_exec_sessions

#### 0011::
`You are monitoring an Azure Stream Analytics job.
`You discover that the Backlogged Input Events metric is increasing slowly and is consistently non-zero.
`You need to ensure that the job can handle all the events.
`What should you do?
- [ ] Change the compatibility level of the Stream Analytics job.
- [x] Increase the number of streaming units (SUs).
- [ ] Remove any named consumer groups from the connection and use $default.
- [ ] Create an additional output stream for the existing input stream.

#### 0012::
`You are designing an inventory updates table in an Azure Synapse Analytics dedicated SQL pool. The table will have a clustered columnstore index and will include the following columns:
`|Table----------------|Comment--------------------------------------------------------------|
`|EventDate------------|One milion records are added to the table each day-------------------|
`|EventTypeID----------|The table contains 10 million records for each event type.-----------|
`|WarehouseID----------|The table contains 100 million records for each warehouse.-----------|
`|ProductCategoryTypeID|The table Contains 25 million records for each product category type.|
`You identify the following usage patterns:
`✑ Analysts will most commonly analyze transactions for a warehouse.
`✑ Queries will summarize by product category type, date, and/or inventory event type.
`You need to recommend a partition strategy for the table to minimize query times.
`On which column should you partition the table?
- [ ] EventTypeID
- [ ] ProductCategoryTypeID
- [ ] EventDate
- [x] WarehouseID

#### 0013::
`You are designing a star schema for a dataset that contains records of online orders. Each record includes an order date, an order due date, and an order ship date.
`You need to ensure that the design provides the fastest query times of the records when querying for arbitrary date ranges and aggregating by fiscal calendar attributes.
`Which two actions should you perform? 
- [ ] Create a date dimension table that has a DateTime key.
- [ ] Use built-in SQL functions to extract date attributes.
- [x] Create a date dimension table that has an integer key in the format of YYYYMMDD.
- [x] In the fact table, use integer columns for the date fields.
- [ ] Use DateTime columns for the date fields.

#### 0014::
`A company purchases IoT devices to monitor manufacturing machinery. The company uses an Azure IoT Hub to communicate with the IoT devices.
`The company must be able to monitor the devices in real-time.
`You need to design the solution.
`What should you recommend?

- [ ] Azure Analysis Services using Azure Portal
- [ ] Azure Analysis Services using Azure PowerShell
- [x] Azure Stream Analytics cloud job using Azure Portal
- [ ] Azure Data Factory instance using Microsoft Visual Studio

#### 0015::
`You have a SQL pool in Azure Synapse.
`A user reports that queries against the pool take longer than expected to complete. You determine that the issue relates to queried columnstore segments.
`You need to add monitoring to the underlying storage to help diagnose the issue.
`Which two metrics should you monitor? 
- [ ] Snapshot Storage Size
- [x] Cache used percentage
- [ ] DWU Limit
- [x] Cache hit percentage

#### 0016::
`You manage an enterprise data warehouse in Azure Synapse Analytics.
`Users report slow performance when they run commonly used queries. 
`Users do not report performance changes for infrequently used queries.
`You need to monitor resource utilization to determine the source of the performance issues.
`Which metric should you monitor?
- [ ] DWU percentage
- [x] Cache hit percentage
- [ ] DWU limit
- [ ] Data IO percentage

#### 0017::
`You have an Azure Databricks resource.
`You need to log actions that relate to changes in compute for the Databricks resource.
`Which Databricks services should you log?
- [x] clusters
- [ ] workspace
- [ ] DBFS
- [ ] SSH
- [ ] jobs

#### 0018::
`You are designing a highly available Azure Data Lake Storage solution that will include geo-zone-redundant storage (GZRS).
`You need to monitor for replication delays that can affect the recovery point objective (RPO).
`What should you include in the monitoring solution?
- [ ] 5xx: Server Error errors
- [ ] Average Success E2E Latency
- [ ] availability
- [x] Last Sync Time

#### 0019::
`You configure monitoring for an Azure Synapse Analytics implementation. The implementation uses PolyBase to load data from comma-separated value (CSV) files stored in Azure Data Lake Storage Gen2 using an external table.
`Files with an invalid schema cause errors to occur.
`You need to monitor for an invalid schema error.
`For which error should you monitor?
- [ ] EXTERNAL TABLE access failed due to internal error: 'Java exception raised on call to HdfsBridge_Connect: Error [com.microsoft.polybase.client.KerberosSecureLogin] occurred while accessing external file.'
- [x] Cannot execute the query "Remote Query" against OLE DB provider "SQLNCLI11" for linked server "(null)". Query aborted- the maximum reject threshold (0 rows) was reached while reading from an external source: 1 rows rejected out of total 1 rows processed.
- [ ] EXTERNAL TABLE access failed due to internal error: 'Java exception raised on call to HdfsBridge_Connect: Error [Unable to instantiate LoginClass] occurred while accessing external file.'
- [ ] EXTERNAL TABLE access failed due to internal error: 'Java exception raised on call to HdfsBridge_Connect: Error [No FileSystem for scheme: wasbs] occurred while accessing external file.'

#### 0020::
`You have an Azure Synapse Analytics dedicated SQL pool.
`You run PDW_SHOWSPACEUSED('dbo.FactInternetSales'); and get the results shown in the following table.
`|ROWS|RESERVED_SPACE|DATA_SPACE|INDEX_SPACE|UNUSED_SPACE|DPW_NODE_ID|DISTRIBUTION_ID|
`|694-|2776----------|616-------|48---------|2112--------|1----------|1--------------|
`|407-|2704----------|576-------|48---------|2080--------|1----------|2--------------|
`|53--|2376----------|512-------|16---------|1848--------|1----------|3--------------|
`|58--|2376----------|512-------|16---------|1848--------|1----------|4--------------|
`|168-|2632----------|528-------|32---------|2072--------|1----------|5--------------|
`|195-|2696----------|536-------|32---------|2128--------|1----------|6--------------|
`|5995|3464----------|1424------|32---------|2008--------|1----------|7--------------|
`|0---|2232----------|496-------|0----------|1736--------|1----------|8--------------|
`|264-|2576----------|544-------|40---------|1992--------|1----------|9--------------|
`|3008|3016----------|960-------|32---------|2024--------|1----------|10-------------|
`|...-|...-----------|...-------|...--------|...---------|...--------|...------------|
`|1550|2832----------|752-------|48---------|2032--------|1----------|50-------------|
`|1238|2832----------|696-------|40---------|2096--------|1----------|51-------------|
`|192-|2632----------|528-------|32---------|2072--------|1----------|52-------------|
`|1127|2768----------|680-------|48---------|2240--------|1----------|53-------------|
`|1244|3032----------|704-------|64---------|2264--------|1----------|54-------------|
`|409-|2632----------|568-------|32---------|2032--------|1----------|55-------------|
`|0---|2232----------|496-------|0----------|1736--------|1----------|56-------------|
`|1437|2832----------|728-------|40---------|2064--------|1----------|57-------------|
`|0---|2232----------|496-------|0----------|1736--------|1----------|58-------------|
`|384-|2632----------|560-------|32---------|2040--------|1----------|59-------------|
`|225-|2768----------|544-------|40---------|2184--------|1----------|60-------------|
`Which statement accurately describes the dbo.FactInternetSales table?

- [ ] All distributions contain data.
- [ ] The table contains less than 10,000 rows.
- [ ] The table uses round-robin distribution.
- [x] The table is skewed.

#### 0021::
`You have two fact tables named Flight and Weather. Queries targeting the tables will be based on the join between the following columns.
`|Table--|Column----------|
`|Flight-|ArrivalAirportID|
`|-------|ArrivalDateTime-|
`|Weather|AirportID-------|
`|-------|ReportDateTime--|
`You need to recommend a solution that maximizes query performance.
`What should you include in the recommendation?

- [ ] In the tables use a hash distribution of ArrivalDateTime and ReportDateTime.
- [x] In the tables use a hash distribution of ArrivalAirportID and AirportID.
- [ ] In each table, create an IDENTITY column.
- [ ] In each table, create a column as a composite of the other two columns in the table.

#### 0022::
`You have an Azure Data Factory pipeline that has the activities shown in the following exhibit.
`               |Set variable----|       |Stored procedure-|
`               |(X)Set varialbe1|       |Stored procedure1|
`|Web-|
`|Web1|
`               |Set variable----|
`               |(X)Set variable2|
`Use the drop-down menus to select the answer choice that completes each statement based on the information presented in the graphic.

- [ ] Stored procedure! will execute Web1 and Set variable1 complete
- [ ] Stored procedure! will execute Web1 and Set variable1 fail
- [x] Stored procedure! will execute Web1 and Set variable1 succeed
- [ ] If Web1 fails and Set variable2 succeeds, the pipeline status wil be Canceled
- [x] If Web1 fails and Set variable2 succeeds, the pipeline status wil be Failed
- [ ] If Web1 fails and Set variable2 succeeds, the pipeline status wil be Succeeded