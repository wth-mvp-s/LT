##   6°_0906.1212

#### 0023::
`You have several Azure Data Factory pipelines that contain a mix of the following types of activities:
`✑ Wrangling data flow
`✑ Notebook
`✑ Copy
`✑ Jar
`Which two Azure services should you use to debug the activities? 
- [ ] Azure Synapse Analytics
- [ ] Azure HDInsight
- [ ] Azure Machine Learning
- [x] Azure Data Factory
- [x] Azure Databricks

#### 0024::
`You have an Azure Synapse Analytics dedicated SQL pool named Pool1 and a database named DB1. DB1 contains a fact table named Table1.
`You need to identify the extent of the data skew in Table1.
`What should you do in Synapse Studio?
- [ ] Connect to the built-in pool and run sys.dm_pdw_nodes_db_partition_stats.
- [ ] Connect to Pool1 and run DBCC CHECKALLOC.
- [ ] Connect to the built-in pool and run DBCC CHECKALLOC.
- [x] Connect to Pool1 and query sys.dm_pdw_nodes_db_partition_stats.

#### 0025::
`You manage an enterprise data warehouse in Azure Synapse Analytics.
`Users report slow performance when they run commonly used queries. Users do not report performance changes for infrequently used queries.
`You need to monitor resource utilization to determine the source of the performance issues.
`Which metric should you monitor?
- [ ] Local tempdb percentage
- [x] Cache used percentage
- [ ] Data IO percentage
- [ ] CPU percentage

#### 0026::
`You have an Azure data factory.
`You need to examine the pipeline failures from the last 180 days.
`What should you use?
- [ ] the Activity log blade for the Data Factory resource
- [ ] Pipeline runs in the Azure Data Factory user experience
- [ ] the Resource health blade for the Data Factory resource
- [x] Azure Data Factory activity runs in Azure Monitor

#### 0027::
`A company purchases IoT devices to monitor manufacturing machinery. The company uses an Azure IoT Hub to communicate with the IoT devices.
`The company must be able to monitor the devices in real-time.
`You need to design the solution.
`What should you recommend?
- [ ] Azure Analysis Services using Azure PowerShell
- [x] Azure Stream Analytics Edge application using Microsoft Visual Studio
- [ ] Azure Analysis Services using Microsoft Visual Studio
- [ ] Azure Data Factory instance using Azure Portal

#### 0028::
`You have an Azure Synapse Analytics dedicated SQL pool named SA1 that contains a table named Table1.
`You need to identify tables that have a high percentage of deleted rows.
`What should you run?
- [ ] sys.pdw_nodes_column_store_segments
- [ ] sys.dm_db_column_store_row_group_operational_stats
- [x] sys.pdw_nodes_column_store_row_groups
- [ ] sys.dm_db_column_store_row_group_physical_stats
 
#### 0029::
`You have an enterprise data warehouse in Azure Synapse Analytics.
`You need to monitor the data warehouse to identify whether you must scale up to a higher service level to accommodate the current workloads.
`Which is the best metric to monitor?

- [ ] DWU used
- [ ] CPU percentage
- [x] DWU percentage
- [ ] Data IO percentage

#### 0030::
`A company purchases IoT devices to monitor manufacturing machinery. The company uses an Azure IoT Hub to communicate with the IoT devices.
`The company must be able to monitor the devices in real-time.
`You need to design the solution.
`What should you recommend?
- [ ] Azure Analysis Services using Azure PowerShell
- [ ] Azure Data Factory instance using Azure PowerShell
- [x] Azure Stream Analytics cloud job using Azure Portal
- [ ] Azure Data Factory instance using Microsoft Visual Studio

#### 0031::
`You have an Azure event hub named retailhub that has 16 partitions. Transactions are posted to retailhub. Each transaction includes the transaction ID, the individual line items, and the payment details. The transaction ID is used as the partition key.
`You are designing an Azure Stream Analytics job to identify potentially fraudulent transactions at a retail store. The job will use retailhub as the input. The job will output the transaction ID, the individual line items, the payment details, a fraud score, and a fraud indicator.
`You plan to send the output to an Azure event hub named fraudhub.
`You need to ensure that the fraud detection solution is highly scalable and processes transactions as quickly as possible.
`How should you structure the output of the Stream Analytics job?
- [ ] Number of partitions: `
- [ ] Number of partitions: 8
- [x] Number of partitions: 16
- [ ] Number of partitions: 32
- [ ] Partition key: Fraud indicator
- [ ] Partition key: Fraud score
- [ ] Partition key: Individual line items
- [ ] Partition key: Payment details
- [x] Partition key: Transaction ID

#### 0032::
`You have an on-premises data warehouse that includes the following fact tables. Both tables have the following columns: DateKey, ProductKey, RegionKey.
`There are 120 unique product keys and 65 unique region keys.
`|Table--|Comments-----------------------------------------------------------------------|
`|Sales--|The table is 600 GB in size. DateKey is used extensively in the WHERE clause in|
`|-------|queries, ProductKey is used extensively in join operations. RegionKey is used--|
`|-------|for grouping. Severity-five percent of records relate to one of 40 regions.----|
`|Invoice|The table is 6 GB in size. DateKey and ProductKey are used extensively in the--|
`|-------|WHERE clause in queries. RegionKey is used for grouping------------------------|

`Queries that use the data warehouse take a long time to complete.
`You plan to migrate the solution to use Azure Synapse Analytics. You need to ensure that the Azure-based solution optimizes query performance and minimizes processing skew.
`What should you recommend?
- [x]
`Table     Distribution type Distribution column
`Sales:    Hash-distributed  ProductKey
`Invoices: Hash-distributed  RegionKey

- [ ]
`Table     Distribution type Distribution column
`Sales:    Hash-distributed  RegionKey
`Invoices: Round-robin  RegionKey

- [ ]
`Table     Distribution type Distribution column
`Sales:    Round-robin  ProductKey
`Invoices: Hash-distributed  DateKey

- [ ]
`Table     Distribution type Distribution column
`Sales:    Round-robin  DateKey
`Invoices: Round-robin  ProductKey

- [ ]
`Table     Distribution type Distribution column
`Sales:    Hash-distributed  ProductKey
`Invoices: Round-robin  RegionKey

- [ ]
`Table     Distribution type Distribution column
`Sales:    Hash-distributed  RegionKey
`Invoices: Hash-distributed  DateKey

- [ ]
`Table     Distribution type Distribution column
`Sales:    Round-robin  ProductKey
`Invoices: Hash-distributed  ProductKey

- [ ]
`Table     Distribution type Distribution column
`Sales:    Hash-distributed  ProductKey
`Invoices: Hash-distributed  DateKey

#### 0033::
`You have a partitioned table in an Azure Synapse Analytics dedicated SQL pool.
`You need to design queries to maximize the benefits of partition elimination.
`What should you include in the Transact-SQL queries?
- [ ] JOIN
- [x] WHERE
- [ ] DISTINCT
- [ ] GROUP BY

#### 0034::
`You have an Azure Stream Analytics query. The query returns a result set that contains 10,000 distinct values for a column named clusterID.
`You monitor the Stream Analytics job and discover high latency.
`You need to reduce the latency.
`Which two actions should you perform? 
- [ ] Add a pass-through query.
- [x] Increase the number of streaming units.
- [ ] Add a temporal analytic function.
- [x] Scale out the query by using PARTITION BY.
- [ ] Convert the query to a reference query.

#### 0035::
`You have an Azure Synapse Analytics dedicated SQL pool named Pool1 and a database named DB1. DB1 contains a fact table named Table1.
`You need to identify the extent of the data skew in Table1.
`What should you do in Synapse Studio?
- [ ] Connect to the built-in pool and query sys.dm_pdw_nodes_db_partition_stats.
- [ ] Connect to the built-in pool and run DBCC CHECKALLOC.
- [ ] Connect to Pool1 and query sys.dm_pdw_node_status.
- [x] Connect to Pool1 and query sys.dm_pdw_nodes_db_partition_stats.


#### 0036::
`You have an Azure Synapse Analytics dedicated SQL pool named Pool1. Pool1 contains a fact table named Table1.
`You need to identify the extent of the data skew in Table1.
`What should you do in Synapse Studio?
- [x] Connect to Pool1 and DBCC PDW_SHOWSPACEUSED.
- [ ] Connect to the built-in pool and run DBCC PDW_SHOWSPACEUSED.
- [ ] Connect to the built-in pool and run DBCC CHECKALLOC.
- [ ] Connect to the built-in pool and query sys.dm_pdw_sys_info.

#### 0037::
`You use Azure Data Lake Storage Gen2.
`You need to ensure that workloads can use filter predicates and column projections to filter data at the time the data is read from disk.
`Which two actions should you perform?
- [ ] Reregister the Azure Storage resource provider.
- [ ] Create a storage policy that is scoped to a container.
- [ ] Reregister the Microsoft Data Lake Store resource provider.
- [x] Create a storage policy that is scoped to a container prefix filter.
- [x] Register the query acceleration feature.

#### 0038::
`You have an Azure Synapse Analytics dedicated SQL pool named Pool1. Pool1 contains a fact table named Table1.
`
`You need to identify the extent of the data skew in Table1.
`
`What should you do in Synapse Studio?

- [x] Connect to Pool1 and run DBCC PDW_SHOWSPACEUSED.
- [ ] Connect to the built-in pool and run DBCC PDW_SHOWSPACEUSED.
- [ ] Connect to Pool1 and run DBCC CHECKALLOC.
- [ ] Connect to the built-in pool and query sys.dm_pdw_sys_info.

#### 0039::
`You have an Azure Data Lake Storage Gen2 account that contains two folders named Folder1 and Folder2.
`
`You use Azure Data Factory to copy multiple files from Folder1 to Folder2.
`
`You receive the following error.
`
`Operation on target Copy_sks failed: Failure happened on 'Sink' side.
`ErrorCode=DelimitedTextMoreColumnsThanDefined,
`'Type=Microsoft.DataTransfer.Common.Snared.HybridDeliveryException,
`Message=Error found when processing 'Csv/Tsv Format Text' source
'0_2020_11_09_11_43_32.avro' with row number 53: found more columns than expected column count 27., Source=Microsoft.DataTransfer.Comnon,'
`
`What should you do to resolve the error?

- [ ] Change the Copy activity setting to Binary Copy.
- [ ] Lower the degree of copy parallelism.
- [ ] Add an explicit mapping.
- [x] Enable fault tolerance to skip incompatible rows.

#### 0040::
`A company plans to use Apache Spark analytics to analyze intrusion detection data.
`
`You need to recommend a solution to analyze network and system activity data for malicious activities and policy violations. The solution must minimize administrative efforts.
`
`What should you recommend?

- [ ] Azure HDInsight
- [ ] Azure Data Factory
- [ ] Azure Data Lake Storage
- [x] Azure Databricks

#### 0041::
`You have an Azure Synapse Analytics dedicated SQL pool.
`
`You need to monitor the database for long-running queries and identify which queries are waiting on resources.
`
`Which dynamic management view should you use for each requirement?

- [x] Monitor the database for long-running queries: sys.dm_pdw_exec_requests
- [ ] Monitor the database for long-running queries: sys.dm_pdw_sql_requests
- [ ] Monitor the database for long-running queries: sys.dm_pdw_exec_session
- [x] Identify which queries are waiting on resources: sys.dm_pdw_waits 
- [ ] Identify which queries are waiting on resources: sys.dm_pdw_lock_waits
- [ ] Identify which queries are waiting on resources: sys.resource_governor_worklood_groups

#### 0042::
`You have an Azure Data Factory pipeline named pipeline1 that includes a Copy activity named Copy1. Copy1 has the following configurations:
`
`• The source of Copy1 is a table in an on-premises Microsoft SQL Server instance that is accessed by using a linked service connected via a self-hosted integration runtime.
`• The sink of Copy1 uses a table in an Azure SQL database that is accessed by using a linked service connected via an Azure integration runtime.
`
`You need to maximize the amount of compute resources available to Copy1. The solution must minimize administrative effort.
`
`What should you do?

- [ ] Scale out the self-hosted integration runtime.
- [ ] Scale up the data flow runtime of the Azure integration runtime and scale out the self-hosted integration runtime.
- [x] Scale up the data flow runtime of the Azure integration runtime.

#### 0043::
`You are designing a solution that will use tables in Delta Lake on Azure Databricks.
`
`You need to minimize how long it takes to perform the following:
`
`• Queries against non-partitioned tables
`• Joins on non-partitioned columns
`
`Which two options should you include in the solution? 
- [ ] the clone command
- [x] Z-Ordering
- [ ] Apache Spark caching
- [x] dynamic file pruning (DFP)

#### 0044::
`You have an Azure Data Lake Storage Gen2 account named account1 that contains a container named container1.
`
`You plan to create lifecycle management policy rules for container1.
`
`You need to ensure that you can create rules that will move blobs between access tiers based on when each blob was accessed last.
`
`What should you do first?

- [ ] Configure object replication
- [ ] Create an Azure application
- [x] Enable access time tracking
- [ ] Enable the hierarchical namespace

#### 0045::
`You manage an enterprise data warehouse in Azure Synapse Analytics.
`
`Users report slow performance when they run commonly used queries. Users do not report performance changes for infrequently used queries.
`
`You need to monitor resource utilization to determine the source of the performance issues.
`
`Which metric should you monitor?

- [ ] DWU limit
- [ ] Data IO percentage
- [x] Cache hit percentage
- [ ] CPU percentage

#### 0046::
`You have an Azure data factory named DF1 that contains 10 pipelines.
`
`The pipelines are executed hourly by using a schedule trigger. All activities are executed on an Azure integration runtime.
`
`You need to ensure that you can identify trends in queue times across the pipeline executions and activities The solution must minimize administrative effort.
`
`How should you configure the Diagnostic settings for DF1? 
- [ ] Collect: Pipeline acitivity runs log
- [x] Collect: Pipeline runs log
- [ ] Collect: Trigger runs log
- [ ] Send to: Event hub
- [x] Send to: Log Analytics workspace
- [ ] Send to: storage account

Topic 5
#### 001::
`You need to design a data storage structure for the product sales transactions. The solution must meet the sales transaction dataset requirements.
`What should you include in the solution?
- [x] Table type to store the product sales transactions: Hash
- [ ] Table type to store the product sales transactions: Round-robin
- [ ] Table type to store the product sales transactions: Replicated 
- [ ] When creating the table for sales transactions: Configure a clustered index. 
- [ ] When creating the table for sales transactions: Set the distribution column to product ID.
- [x] When creating the table for sales transactions: Set the distribution column to the sales date.

#### 002::
`You need to ensure that the Twitter feed data can be analyzed in the dedicated SQL pool. The solution must meet the customer sentiment analytics requirements.
`Which three Transact-SQL DDL commands should you run in sequence?
- [1] CREATE EXTERNAL DATA SOURCE
- [-] CREATE EXTERNAL FILE FORMAT
- [2] CREATE EXTERNAL TABLE
- [-] CREATE EXTERNAL TABLE AS SELECT
- [0] CREATE DATABASE SCOPED CREDENTIAL

#### 003::
`You need to design the partitions for the product sales transactions. The solution must meet the sales transaction dataset requirements.
`What should you include in the solution?
- [x] 
`Partition product sales
`transaction data by: Sales date
- [ ] 
`Partition product sales
`transaction data by: Product ID
- [ ] 
`Partition product sales
`transaction data by: Promotion ID
- [x]
`Store product sales
`transactions data in: An Azure Synapse Analytics dedicated SQL pool
- [ ]
`Store product sales
`transactions data in: An Azure Synapse Analytics serveriess SQL pool
- [ ]
`Store product sales
`transactions data in: An Azure Data Lake Storage Gen2 account linked to an Azure Synapse Analytics workspace

#### 004::
`You need to implement the surrogate key for the retail store table. The solution must meet the sales transaction dataset requirements.
`What should you create?
- [x] a table that has an IDENTITY property
- [ ] a system-versioned temporal table
- [ ] a user-defined SEQUENCE object
- [ ] a table that has a FOREIGN KEY constraint

#### 005::
`You need to design an analytical storage solution for the transactional data. The solution must meet the sales transaction dataset requirements.
`What should you include in the solution? 
`
`Planned Changes -
`   - Partition data that contains sales transaction records. Partitions must be designed to provide efficient loads by month. Boundary values must belong to the partition on the right.
`   - Ensure that queries joining and filtering sales transaction records based on product ID complete as quickly as possible.
`   - Implement a surrogate key to account for changes to the retail store addresses.
`   - Ensure that data storage costs and performance are predictable.
`   - Minimize how long it takes to remove old records.
`   
`Transactional Data -
`   - You plan to create a retail store table that will contain the address of each retail store. The table will be   approximately 2 MB. Queries for retail store sales will include the retail store addresses.
`   - You plan to create a promotional table that will contain a promotion ID. The promotion ID will be associated to specific product. The product will be identified by a product ID. The table will be approximately 200 GB.

- [ ] Table type to store retail store data: Hash
- [ ] Table type to store retail store data: Replicated
- [x] Table type to store retail store data: Round-robin
- [x] Table type to store promotional data: Hash
- [ ] Table type to store promotional data: Replicated
- [ ] Table type to store promotional data: Round-robin

#### 006::
`You need to implement an Azure Synapse Analytics database object for storing the sales transactions data. The solution must meet the sales transaction dataset requirements.
`What should you do?
- [ ] Transact-SQL DDL command to use: CREATE EXTERNAL TABLE
- [x] Transact-SQL DDL command to use: CREATE TABLE
- [ ] Transact-SQL DDL command to use: CREATE VIEW
- [ ] Partitioning option to use in the WITH clause of the DDL statement: FORMAT_OPTIONS
- [ ] Partitioning option to use in the WITH clause of the DDL statement: FORMAT_TYPE
- [ ] Partitioning option to use in the WITH clause of the DDL statement: RANGE LEFT FOR VALUES
- [x] Partitioning option to use in the WITH clause of the DDL statement: RANGE RIGHT FOR VALUES

#### 007::
`You need to design a data retention solution for the Twitter feed data records. The solution must meet the customer sentiment analytics requirements.
`Which Azure Storage functionality should you include in the solution?
- [ ] change feed
- [ ] soft delete
- [ ] time-based retention
- [x] lifecycle management

#### 001::
`Which Azure Data Factory components should you recommend using together to import the daily inventory data from the SQL server to Azure Data Lake Storage?

- [ ] Integration runtime type: Azure integration runtime
- [ ] Integration runtime type: Azure-SSIS integration runtime
- [x] Integration runtime type: Self-hosted integration runtime
- [ ] Trigger type: Event-based trigger
- [x] Trigger type: Schedule trigger
- [ ] Trigger type: Tumbling window trigger
- [x] Activity type: Copy activity
- [ ] Activity type: Lookup activity
- [ ] Activity type: Stored procedure activity


#### 001 Topic 7 ::
`You need to implement versioned changes to the integration pipelines. The solution must meet the data integration requirements.
`In which order should you perform the actions?
- [0] Create a repository and a main branch
- [1] Create a feature branch
- [2] Create a pull request
- [3] Merge changes
- [4] Publish changes

Topic 8
#### 001::
`You need to design a data ingestion and storage solution for the Twitter feeds. The solution must meet the customer sentiment analytics requirements.
`What should you include in the solution?

- [x]
`To increase the throughput of ingesting
`                       the Twitter feeds: Configure Event Hubs partitions
- [ ]
`To increase the throughput of ingesting
`                       the Twitter feeds: Enable Auto-Inlate in Event Hubs.
- [ ]
`To increase the throughput of ingesting
`                       the Twitter feeds: Use Event Hubs Dedicated.
- [x] To store the Twitter feed data, use: An Azure Data Lake Storage Gen2 account
- [ ] To store the Twitter feed data, use: An Azure Databricks high concurrency cluster
- [ ] To store the Twitter feed data, use: An Azure General-purpose v2 storage account in the Premium tier


#### 001, Topic 9::
`What should you recommend to prevent users outside the Litware on-premises network from accessing the analytical data store?
- [ ] a server-level virtual network rule
- [ ] a database-level virtual network rule
- [x] a server-level firewall IP rule
- [ ] a database-level firewall IP rule

#### 002::
`What should you recommend using to secure sensitive customer contact information?
- [ ] Transparent Data Encryption (TDE)
- [ ] row-level security
- [x] column-level security
- [ ] data sensitivity labels


#### 001 Topic 10::
`if the real time data load solution to move data from Azure Data Lake Storage Gen2 to Data Lake Gen2 to Azure SQL DB or Synapse Analytics as analytical data store.
`If this way, Power BI and Azure Databricks notebooks will run query against Azure SQL DB or Synapse Analytics.
`
`• Daily inventory data comes from a Microsoft SQL server located on a private network.
`• Stage Inventory data in Azure Data Lake Storage Gen2 before loading the data into the analytical data store.
`• See inventory levels across the stores. Data must be updated as close to real time as possible.
`• Litware employs business analysts who prefer to analyze data by using Microsoft Power BI, and data scientists who prefer analyzing data in Azure Databricks notebooks.
`What should you do to improve high availability of the real-time data processing solution?

- [ ] Deploy a High Concurrency Databricks cluster.
- [ ] 
`Deploy an Azure Stream Analytics job and use an Azure Automation runbook to check the status of the job and to start the job if it stops.
- [ ] Set Data Lake Storage to use geo-redundant storage (GRS).
- [x] 
`Deploy identical Azure Stream Analytics jobs to paired regions in Azure.


#### Plik7°.300-308::
`What should you do to improve high availability of the real-time data processing solution?
`

- [ ] 
`Deploy a High Concurrency Databricks cluster.
- [ ] 
`Deploy an Azure Stream Analytics job and use an Azure Automation runbook to check the status of the job and to start the job if it stops.
- [ ] 
`Set Data Lake Storage to use geo-redundant storage (GRS).
- [x] 
`Deploy identical Azure Stream Analytics jobs to paired regions in Azure.




