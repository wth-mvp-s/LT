##   4°_150-200

#### 0067::
`You use Azure Stream Analytics to receive Twitter data from Azure Event Hubs and to output the data to an Azure Blob storage account.
`You need to output the count of tweets during the last five minutes every five minutes. Each tweet must only be counted once.
`Which windowing function should you use?
- [ ] a five-minute Sliding window
- [ ] a five-minute Session window
- [ ] a five-minute Hopping window that has a one-minute hop
- [x] a five-minute Tumbling window

#### 0068::
`You are planning a streaming data solution that will use Azure Databricks. 
`The solution will stream sales transaction data from an online store. The solution has the following specifications:
`The output data will contain items purchased, quantity, line total sales amount, and line total tax amount.
`
`✑ Line total sales amount and line total tax amount will be aggregated in Databricks.
`✑ Sales transactions will never be updated. Instead, new rows will be added to adjust a sale.
`You need to recommend an output mode for the dataset that will be processed by using Structured Streaming. The solution must minimize duplicate data.
`What should you recommend?
- [ ] Update
- [ ] Complete
- [x] Append

#### 0069::
`You have an enterprise data warehouse in Azure Synapse Analytics named DW1 on a server named Server1.
`You need to determine the size of the transaction log file for each distribution of DW1.
`What should you do?
- [ ] On DW1, execute a query against the sys.database_files dynamic management view.
- [ ] From Azure Monitor in the Azure portal, execute a query against the logs of DW1.
- [ ] Execute a query against the logs of DW1 by using the Get-AzOperationalInsightsSearchResult PowerShell cmdlet.
- [x] On the master database, execute a query against the sys.dm_pdw_nodes_os_performance_counters dynamic management view.

#### 0070::
`You are designing an anomaly detection solution for streaming data from an Azure IoT hub. The solution must meet the following requirements:
`✑ Send the output to Azure Synapse.
`✑ Identify spikes and dips in time series data.
`✑ Minimize development and configuration effort.
`Which should you include in the solution?
- [ ] Azure Databricks
- [x] Azure Stream Analytics
- [ ] Azure SQL Database

#### 0071::
`A company uses Azure Stream Analytics to monitor devices.
`The company plans to double the number of devices that are monitored.
`You need to monitor a Stream Analytics job to ensure that there are enough processing resources to handle the additional load.
`Which metric should you monitor?
- [ ] Early Input Events
- [ ] Late Input Events
- [x] Watermark delay
- [ ] Input Deserialization Errors

#### 0072::
`You are designing an enterprise data warehouse in Azure Synapse Analytics that will store website traffic analytics in a star schema.
`You plan to have a fact table for website visits. The table will be approximately 5 GB.
`You need to recommend which distribution type and index type to use for the table. The solution must provide the fastest query performance.
`What should you recommend
- [x] Distribution: Hash
- [ ] Distribution: Round robin
- [ ] Distribution: Replicated
- [x] Index: Clustered columnstore
- [ ] Index: Clustered
- [ ] Index: Nonclustered

#### 0073::
`You have an Azure Stream Analytics job.
`You need to ensure that the job has enough streaming units provisioned.
`You configure monitoring of the SU % Utilization metric.
`Which two additional metrics should you monitor? 
- [x] Backlogged Input Events
- [x] Watermark Delay
- [ ] Function Events
- [ ] Out of order Events
- [ ] Late Input Events

#### 0074::
`You have an activity in an Azure Data Factory pipeline. The activity calls a stored procedure in a data warehouse in Azure Synapse Analytics and runs daily.
`You need to verify the duration of the activity when it ran last.
`What should you use?
- [x] activity runs in Azure Monitor
- [ ] Activity log in Azure Synapse Analytics
- [ ] the sys.dm_pdw_wait_stats data management view in Azure Synapse Analytics
- [ ] an Azure Resource Manager template

#### 0075::
`You have an Azure Data Factory pipeline that is triggered hourly.
`The pipeline has had 100% success for the past seven days.
`The pipeline execution fails, and two retries that occur 15 minutes apart also fail. The third failure returns the following error.
`ErrorCode=UserErrorFileNotFound,'Type=Microsoft.DataTransfer.Common.Shared.HybridDeliveryException,Message=ADLS Gen2 operation failed for: Operation returned an invalid status code 'NotFound'. Account: 'contosoproduksouth'. Filesystem: wwi. Path: 
`'BIKES/CARBON/year=2021/month=01/day=10/hour=06'. ErrorCode: 'PathNotFound'. Message: 'The specified path does not exist.'. RequestId: '6d269b78-901f-001b-4924-e7a7bc000000'. TimeStamp: 'Sun, 10 Jan 2021 07:45:05
`What is a possible cause of the error?
- [ ] The parameter used to generate year=2021/month=01/day=10/hour=06 was incorrect.
- [x] From 06:00 to 07:00 on January 10, 2021, there was no data in wwi/BIKES/CARBON.
- [ ] From 06:00 to 07:00 on January 10, 2021, the file format of data in wwi/BIKES/CARBON was incorrect.
- [ ] The pipeline was triggered too early.

#### 0076::
`You have an Azure Synapse Analytics job that uses Scala.
`You need to view the status of the job.
`What should you do?
- [ ] From Synapse Studio, select the workspace. From Monitor, select SQL requests.
- [ ] From Azure Monitor, run a Kusto query against the AzureDiagnostics table.
- [x] From Synapse Studio, select the workspace. From Monitor, select Apache Sparks applications.
- [ ] From Azure Monitor, run a Kusto query against the SparkLoggingEvent_CL table.

#### 0077::
`You have an Azure Data Lake Storage Gen2 account that contains a JSON file for customers. The file contains two attributes named FirstName and LastName.
`You need to copy the data from the JSON file to an Azure Synapse Analytics table by using Azure Databricks. A new column must be created that concatenates the FirstName and LastName values.
`You create the following components:
`✑ A destination table in Azure Synapse
`✑ An Azure Blob storage container
`✑ A service principal
`In which order should you perform the actions? 
- [0] Mount the Data Lake Storage onto DBFS.
- [1] Read the file into a data frame.
- [2] Perform transformations on the data frame.
- [3] Specify a temporary folder to stage the data.
- [4] Write the results to a table in Azure Synapse.

#### 0078::
`You have an Azure data factory named ADF1.
`You currently publish all pipeline authoring changes directly to ADF1.
`You need to implement version control for the changes made to pipeline artifacts. The solution must ensure that you can apply version control to the resources currently defined in the UX Authoring canvas for ADF1.
`Which two actions should you perform?
- [x] From the UX Authoring canvas, select Set up code repository.
- [x] Create a Git repository.
- [ ] Create a GitHub action.
- [ ] Create an Azure Data Factory trigger.
- [ ] From the UX Authoring canvas, select Publish.
- [ ] From the UX Authoring canvas, run Publish All.

#### 0079::
`You have an Azure subscription that contains an Azure Synapse Analytics workspace named workspace1. Workspace1 connects to an Azure DevOps repository named repo1. Repo1 contains a collaboration branch named main and a development branch named branch1. Branch1 contains an Azure Synapse pipeline named pipeline1.
`In workspace1, you complete testing of pipeline1.
`You need to schedule pipeline1 to run daily at 6 AM.
`Which four actions should you perform in sequence?
- [0] Create a schedule trigger.
- [1] Associate the schedule trigger with pipelined.
- [2] Merge the changes from branch into main.
- [3] Publish the contents of main.
- [-] Create a new branch in Repo.
- [-] Switch to Synapse live mode.

#### 0080::
`You have an Azure subscription that contains an Azure Synapse Analytics dedicated SQL pool named Pool1 and an Azure Data Lake Storage account named storage1. Storage1 requires secure transfers.
`You need to create an external data source in Pool1 that will be used to read .orc files in storage1.
`How should you complete the code?

- [x]
`CREATE EXTERNAL DATA SOURCE AzureDataLakestore
`
`WITH
`
`(  Location1 ' abfs://data@newyorktaxidataset.dfs.core.windows.net' ,
`credential = ADLS_credential ,
`
`TYPE - HADOOP
`
`);

- [ ]
`CREATE EXTERNAL DATA SOURCE AzureDataLakestore
`
`WITH
`
`(  Location1 ' abfs://data@newyorktaxidataset.dfs.core.windows.net' ,
`credential = ADLS_credential ,
`
`TYPE - SHARP MAP MANAGER
`
`);

- [ ]
`CREATE EXTERNAL DATA SOURCE AzureDataLakestore
`
`WITH
`
`(  Location1 ' abfss://data@newyorktaxidataset.dfs.core.windows.net' ,
`credential = ADLS_credential ,
`
`TYPE - HADOOP
`
`);

- [ ]
`CREATE EXTERNAL DATA SOURCE AzureDataLakestore
`
`WITH
`
`(  Location1 ' abfss://data@newyorktaxidataset.dfs.core.windows.net' ,
`credential = ADLS_credential ,
`
`TYPE - RDBMS
`
`);

- [ ]
`CREATE EXTERNAL DATA SOURCE AzureDataLakestore
`
`WITH
`
`(  Location1 ' wasb://data@newyorktaxidataset.dfs.core.windows.net' ,
`credential = ADLS_credential ,
`
`TYPE - BLOB_STORAGE
`
`);

- [ ]
`CREATE EXTERNAL DATA SOURCE AzureDataLakestore
`
`WITH
`
`(  Location1 ' wasb://data@newyorktaxidataset.dfs.core.windows.net' ,
`credential = ADLS_credential ,
`
`TYPE - RDBMS
`
`);

- [ ]
`CREATE EXTERNAL DATA SOURCE AzureDataLakestore
`
`WITH
`
`(  Location1 ' wasbs://data@newyorktaxidataset.dfs.core.windows.net' ,
`credential = ADLS_credential ,
`
`TYPE - SHARP MAP MANAGER
`
`);

- [ ]
`CREATE EXTERNAL DATA SOURCE AzureDataLakestore
`
`WITH
`
`(  Location1 ' wasb://data@newyorktaxidataset.dfs.core.windows.net' ,
`credential = ADLS_credential ,
`
`TYPE - HADOOP
`
`);
 
#### 0081::
`You have an Azure subscription that contains an Azure Synapse Analytics dedicated SQL pool named SQLPool1.
`SQLPool1 is currently paused.
`You need to restore the current state of SQLPool1 to a new SQL pool.
`What should you do first?
- [ ] Create a workspace.
- [ ] Create a user-defined restore point.
- [x] Resume SQLPool1.
- [ ] Create a new SQL pool.

#### 0082::
`You are designing an Azure Synapse Analytics workspace.
`You need to recommend a solution to provide double encryption of all the data at rest.
`Which two components should you include in the recommendation?
- [ ] an X.509 certificate
- [x] an RSA key
- [ ] an Azure virtual network that has a network security group (NSG)
- [ ] an Azure Policy initiative
- [x] an Azure key vault that has purge protection enabled

#### 0083::
`You have an Azure Synapse Analytics serverless SQL pool named Pool1 and an Azure Data Lake Storage Gen2 account named storage1. The AllowBlobPublicAccess property is disabled for storage1.
`You need to create an external data source that can be used by Azure Active Directory (Azure AD) users to access storage from Pool1.
`What should you create first?
- [ ] an external resource pool
- [ ] an external library
- [x] database scoped credentials
- [ ] a remote service binding
#### 0084::
`You have an Azure Data Factory pipeline named Pipeline1. Pipeline1 contains a copy activity that sends data to an Azure Data Lake Storage Gen2 account.
`Pipeline1 is executed by a schedule trigger.
`You change the copy activity sink to a new storage account and merge the changes into the collaboration branch.
`After Pipeline1 executes, you discover that data is NOT copied to the new storage account.
`You need to ensure that the data is copied to the new storage account.
`What should you do?
- [x] Publish from the collaboration branch.
- [ ] Create a pull request.
- [ ] Modify the schedule trigger.
- [ ] Configure the change feed of the new storage account.

#### 0085::
`You have an Azure Data Factory pipeline named pipeline1 that is invoked by a tumbling window trigger named Trigger1. Trigger1 has a recurrence of 60 minutes.
`You need to ensure that pipeline1 will execute only if the previous execution completes successfully.
`How should you configure the self-dependency for Trigger1?
- [ ] offset: "-00:01:00" size: "00:01:00"
- [ ] offset: "01:00:00" size: "-01:00:00"
- [ ] offset: "01:00:00" size: "01:00:00"
- [x] offset: "-01:00:00" size: "01:00:00"

#### 0086::
`You have an Azure Synapse Analytics pipeline named Pipeline1 that contains a data flow activity named Dataflow1.
`Pipeline1 retrieves files from an Azure Data Lake Storage Gen 2 account named storage1.
`Dataflow1 uses the AutoResolveIntegrationRuntime integration runtime configured with a core count of 128.
`You need to optimize the number of cores used by Dataflow1 to accommodate the size of the files in storage1.
`What should you configure?
- [ ] To Pipeline1, add: A custom activity
- [x] To Pipeline1, add: A Get Metadata activity
- [ ] To Pipeline1, add: An If Condition acitivity
- [x] For Dataflow1, set the core count by using: Dynamic content
- [ ] For Dataflow1, set the core count by using: Parameters
- [ ] For Dataflow1, set the core count by using: User properties

#### 0087::
`You plan to create an Azure Databricks workspace that has a tiered structure. The workspace will contain the following three workloads:
`✑ A workload for data engineers who will use Python and SQL.
`✑ A workload for jobs that will run notebooks that use Python, Scala, and SQL.
`✑ A workload that data scientists will use to perform ad hoc analysis in Scala and R.
`The enterprise architecture team at your company identifies the following standards for Databricks environments:
`✑ The data engineers must share a cluster.
`✑ The job cluster will be managed by using a request process whereby data scientists and data engineers provide packaged notebooks for deployment to the cluster.
`✑ All the data scientists must be assigned their own cluster that terminates automatically after 120 minutes of inactivity. Currently, there are three data scientists.
`You need to create the Databricks clusters for the workloads.
`Solution: You create a Standard cluster for each data scientist, a High Concurrency cluster for the data engineers, and a Standard cluster for the jobs.
`Does this meet the goal?
- [x] Yes
- [ ] No

#### 0088::
`You plan to create an Azure Databricks workspace that has a tiered structure. The workspace will contain the following three workloads:
`✑ A workload for data engineers who will use Python and SQL.
`✑ A workload for jobs that will run notebooks that use Python, Scala, and SQL.
`✑ A workload that data scientists will use to perform ad hoc analysis in Scala and R.
`The enterprise architecture team at your company identifies the following standards for Databricks environments:
`✑ The data engineers must share a cluster.
`✑ The job cluster will be managed by using a request process whereby data scientists and data engineers provide packaged notebooks for deployment to the cluster.
`✑ All the data scientists must be assigned their own cluster that terminates automatically after 120 minutes of inactivity. Currently, there are three data scientists.
`You need to create the Databricks clusters for the workloads.
`Solution: You create a Standard cluster for each data scientist, a High Concurrency cluster for the data engineers, and a High Concurrency cluster for the jobs.
`Does this meet the goal?
- [ ] Yes
- [x] No

#### 0089::
`You are designing a folder structure for the files in an Azure Data Lake Storage Gen2 account. The account has one container that contains three years of data.
`You need to recommend a folder structure that meets the following requirements:
`✑ Supports partition elimination for queries by Azure Synapse Analytics serverless SQL pools
`✑ Supports fast data retrieval for data from the current month
`✑ Simplifies data security management by department
`Which folder structure should you recommend?
- [x] \Department\DataSource\YYYY\MM\DataFile_YYYYMMDD.parquet
- [ ] \DataSource\Department\YYYYMM\DataFile_YYYYMMDD.parquet
- [ ] \DD\MM\YYYY\Department\DataSource\DataFile_DDMMYY.parquet
- [ ] \YYYY\MM\DD\Department\DataSource\DataFile_YYYYMMDD.parquet

#### 0090::
`You have an Azure subscription that contains an Azure Synapse Analytics dedicated SQL pool named Pool1. Pool1 receives new data once every 24 hours.
`You have the following function.
`create function dbo.udfFtoC(F decimal)
`return decimal
`as
`begin
`return (F - 32) * 5.0/9
`end
`You have the following query.
`select avg date, sensorid, avg_f, dbo.udfFtoC(avg temperature) as avg_c from SensorTemps
`where avg_date = @parameter
`The query is executed once every 15 minutes and the @parameter value is set to the current date.
`You need to minimize the time it takes for the query to return results.
`Which two actions should you perform?
- [ ] Create an index on the avg_f column.
- [x] Convert the avg_c column into a calculated column.
- [ ] Create an index on the sensorid column.
- [x] Enable result set caching.
- [ ] Change the table distribution to replicate.

#### 0091 [chatGPT100%]::
`You need to design a solution that will process streaming data from an Azure Event Hub and output the data to Azure Data Lake Storage. The solution must ensure that analysts can interactively query the streaming data.
`
`What should you use?

- [ ] Azure Stream Analytics and Azure Synapse notebooks
- [x] Structured Streaming in Azure Databricks
- [ ] event triggers in Azure Data Factory
- [ ] Azure Queue storage and read-access geo-redundant storage (RA-GRS)

#### 0092::
`You are creating an Apache Spark job in Azure Databricks that will ingest JSON-formatted data.
`
`You need to convert a nested JSON string into a DataFrame that will contain multiple rows.
`
`Which Spark SQL function should you use?

- [x] explode
- [ ] filter
- [ ] coalesce
- [ ] extract

#### 0093::
`You have an Azure subscription that contains an Azure Databricks workspace. The workspace contains a notebook named Notebook1.
`
`In Notebook1, you create an Apache Spark DataFrame named df_sales that contains the following columns:
`
`• Customer
`• SalesPerson
`• Region
`• Amount
`
`You need to identify the three top performing salespersons by amount for a region named HQ.
`
`How should you complete the query? 
- [x]
`df_sales.filter(col('Region')=='HQ').groupBy(col('SalesPerson'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).orderBy(desc('TotalAmount')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').agg(col('SalesPerson'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).agg(sum('Amount').alias(TotalAmount')).orderBy(col('TotalAmount')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').agg(col('SalesPerson'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).groupBy(col('SalesPerson')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').filter(col('SalesPerson'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).groupBy(col('TotalAmount')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').filter(col('SalesPerson'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).agg(col('SalesPerson')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').groupBy(col('SalesPerson'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).agg(col('SalesPerson')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').groupBy(col('SalesPerson'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).orderBy(desc('TotalAmount')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').groupBy(col('TotalAmount'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).groupBy(col('SalesPerson')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').groupBy(col('TotalAmount'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).filter(col('SalesPerson')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').orderBy(col('TotalAmount'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).agg(col('SalesPerson')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').orderBy(col('TotalAmount'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).orderBy(desc('TotalAmount')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').orderBy(desc('TotalAmount'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).filter(col('SalesPerson')).limit(3)

- [ ]
`df_sales.filter(col('Region')=='HQ').orderBy(desc('TotalAmount'))
`           .agg(sum( ‘Amount *).alias('TotelAmount")).groupBy(col('TotalAmount')).limit(3)



#### 0094::
`You need to schedule an Azure Data Factory pipeline to execute when a new file arrives in an Azure Data Lake Storage Gen2 container.
`
`Which type of trigger should you use?

- [ ] on-demand
- [ ] tumbling window
- [ ] schedule
- [x] storage event

#### 0095::
`You have a project in Azure DevOps that contains a repository named Repo1. Repo1 contains a branch named main.
`
`You create a new Azure Synapse workspace named Workspace1.
`
`You need to create data processing pipelines in Workspace1. The solution must meet the following requirements:
`
`• Pipeline artifacts must be stored in Repo1
`• Source control must be provided for pipeline artifacts.
`• All development must be performed in a feature branch.
`
`Which four actions should you perform in sequence in Synapse Studio?
- [0] Configure a code repository and select Repo 1.
- [1] Create a new branch.
- [2] Create pipeline artifacts and save them in the new branch.
- [3] Create a pull request to merge the contests of the main branch into the new branch.
- [-] Create pipeline artifacts and save them in the main branch.
- [-] Set the main branch as the collaboration branch.

#### 0096::
`You have an Azure subscription that contains an Azure SQL database named DB1 and a storage account named storage1. The storage1 account contains a file named File1.txt. File1.txt contains the names of selected tables in DB1.
`
`You need to use an Azure Synapse pipeline to copy data from the selected tables in DB1 to the files in storage1. The solution must meet the following requirements:
`
`• The Copy activity in the pipeline must be parameterized to use the data in File1.txt to identify the source and destination of the copy.
`• Copy activities must occur in parallel as often as possible.
`
`Which two pipeline activities should you include in the pipeline?
- [ ] Get Metadata
- [x] Lookup
- [x] ForEach
- [ ] If Condition

#### 0097::
`You have an Azure data factory that connects to a Microsoft Purview account. The data factory is registered in Microsoft Purview.
`
`You update a Data Factory pipeline.
`
`You need to ensure that the updated lineage is available in Microsoft Purview.
`
`What should you do first?
- [ ] Disconnect the Microsoft Purview account from the data factory.
- [x] Execute the pipeline.
- [ ] Execute an Azure DevOps build pipeline.
- [ ] Locate the related asset in the Microsoft Purview portal.

#### 0098::
`You have a Microsoft Purview account.
`
`The Lineage view of a CSV file is shown in the following exhibit.
`
`Data catalog > Search results >
`       destfile.csv
`       Azure Blob Storage | Blob
`Edit  Select for bulk edit  Request  access  Refresh  Delete  Share
`Overview    Properties      Schema     Lineage     Contacts    Related
`Search for assets or processes
`
`                       /-----|Copy_XferFolder---------------------------|
`                      /      |Azure Data Factory Copy Activity----------|  
`                     /       |Data factory------------------------------|
` |Percentage-of-a..|/        |Pipeline---PL_COPY_BLOB-------------------|   |Azure Blob Path|                   
` |Azure Blob Path--|         |Select to asset|Open in Azure Data Factory|---|destfile.csv---|       
`                            
`                                                
`   Type: Azure Blob Path
`   Name: percentage-of-americans-living-alone-by-age.csv
`   Qualified name:
`   https://demofilesmmi. blob. core. windows .net/demobiob/source/perce
`    ntage-of-americans-living-alone-by-age.csv
`
`
`How is the data for the lineage populated?

- [ ] manually
- [ ] by scanning data stores
- [x] by executing a Data Factory pipeline

#### 0099::
`You have an Azure subscription that contains a Microsoft Purview account named MP1, an Azure data factory named DF1, and a storage account named storage1. MP1 is configured to scan storage1. DF1 is connected to MP1 and contains a dataset named DS1. DS1 references a file in storage1.
`
`In DF1, you plan to create a pipeline that will process data from DS1.
`
`You need to review the schema and lineage information in MP1 for the data referenced by DS1.
`
`Which two features can you use to locate the information? 
- [x] the search bar in the Microsoft Purview governance portal
- [ ] the Storage browser of storage1 in the Azure portal
- [ ] the search bar in the Azure portal
- [x] the search bar in Azure Data Factory Studio

#### 00100::

`You have an Azure Blob storage account that contains a folder. The folder contains 120,000 files. Each file contains 62 columns.
`
`Each day, 1,500 new files are added to the folder.
`
`You plan to incrementally load five data columns from each new file into an Azure Synapse Analytics workspace.
`
`You need to minimize how long it takes to perform the incremental loads.
`
`What should you use to store the files and in which format?
- [ ] Storage: Multiple blob storage accounts
- [ ] Storage: Multiple containers in the blob storage account
- [x] Storage: Timeslice partitioning in the folders
- [ ] Format: Apache Parquet
- [x] Format: CSV
- [ ] Format: JSON

#### 00101::
`You are batch loading a table in an Azure Synapse Analytics dedicated SQL pool.
`
`You need to load data from a staging table to the target table. The solution must ensure that if an error occurs while loading the data to the target table, all the inserts in that batch are undone.
`
`How should you complete the Transact-SQL code? 
- [x]
`BEGIN DISTRIBUTED TRANSACTION 
`BEGIN TRY
`
` INSERT INTO dbo.Table1 (col1, col2, col3)
` 
` SELECT col1, col2, col3 FROM stage.Table1;
`
`END TRY
`
` BEGIN CATCH
`
` IF @@TRANCOUNT > 0
`
`   BEGIN
`       ROLLBACK TRAN;
`   END
`    END CATCH;
`IF @@ TRANCOUNT >0
`
`BEGIN
`   COMMIT TRAN;
`END

- [ ]
`BEGIN DISTRIBUTED TRANSACTION 
`BEGIN TRY
`
` INSERT INTO dbo.Table1 (col1, col2, col3)
` 
` SELECT col1, col2, col3 FROM stage.Table1;
`
`END TRY
`
` BEGIN CATCH
`
` IF @@TRANCOUNT > 0
`
`   BEGIN
`       COMMIT TRAN;
`   END
`    END CATCH;
`IF @@ TRANCOUNT >0
`
`BEGIN
`   COMMIT TRAN;
`END

- [ ]
`SET RESULT_SET_CACHING ON
`BEGIN TRY
`
` INSERT INTO dbo.Table1 (col1, col2, col3)
` 
` SELECT col1, col2, col3 FROM stage.Table1;
`
`END TRY
`
` BEGIN CATCH
`
` IF @@TRANCOUNT > 0
`
`   BEGIN
`       ROLLBACK TRAN;
`   END
`    END CATCH;
`IF @@ TRANCOUNT >0
`
`BEGIN
`   COMMIT TRAN;
`END

- [ ]
`ROLLBACK TRAN
`BEGIN TRY
`
` INSERT INTO dbo.Table1 (col1, col2, col3)
` 
` SELECT col1, col2, col3 FROM stage.Table1;
`
`END TRY
`
` BEGIN CATCH
`
` IF @@TRANCOUNT > 0
`
`   BEGIN
`       BEGIN TRAN;
`   END
`    END CATCH;
`IF @@ TRANCOUNT >0
`
`BEGIN
`   COMMIT TRAN;
`END

- [ ]
`ROLLBACK TRAN
`BEGIN TRY
`
` INSERT INTO dbo.Table1 (col1, col2, col3)
` 
` SELECT col1, col2, col3 FROM stage.Table1;
`
`END TRY
`
` BEGIN CATCH
`
` IF @@TRANCOUNT > 0
`
`   BEGIN
`       BEGIN DISTRIBUTED TRANSACTION;
`   END
`    END CATCH;
`IF @@ TRANCOUNT >0
`
`BEGIN
`   COMMIT TRAN;
`END

- [ ]
`BEGIN TRAN
`BEGIN TRY
`
` INSERT INTO dbo.Table1 (col1, col2, col3)
` 
` SELECT col1, col2, col3 FROM stage.Table1;
`
`END TRY
`
` BEGIN CATCH
`
` IF @@TRANCOUNT > 0
`
`   BEGIN
`       SET RESLUT_SET_CACHING ON;
`   END
`    END CATCH;
`IF @@ TRANCOUNT >0
`
`BEGIN
`   COMMIT TRAN;
`END

- [ ]
`COMMIT TRAN
`BEGIN TRY
`
` INSERT INTO dbo.Table1 (col1, col2, col3)
` 
` SELECT col1, col2, col3 FROM stage.Table1;
`
`END TRY
`
` BEGIN CATCH
`
` IF @@TRANCOUNT > 0
`
`   BEGIN
`       BEGIN TRAN;
`   END
`    END CATCH;
`IF @@ TRANCOUNT >0
`
`BEGIN
`   COMMIT TRAN;
`END

- [ ]
`SET RESULT_SET-CACHING ON
`BEGIN TRY
`
` INSERT INTO dbo.Table1 (col1, col2, col3)
` 
` SELECT col1, col2, col3 FROM stage.Table1;
`
`END TRY
`
` BEGIN CATCH
`
` IF @@TRANCOUNT > 0
`
`   BEGIN
`       BEGIN TRAN;
`   END
`    END CATCH;
`IF @@ TRANCOUNT >0
`
`BEGIN
`   COMMIT TRAN;
`END


#### 00102::
`You have two Azure SQL databases named DB1 and DB2.
`
`DB1 contains a table named Table1. Table1 contains a timestamp column named LastModifiedOn. LastModifiedOn contains the timestamp of the most recent update for each individual row.
`
`DB2 contains a table named Watermark. Watermark contains a single timestamp column named WatermarkValue.
`
`You plan to create an Azure Data Factory pipeline that will incrementally upload into Azure Blob Storage all the rows in Table1 for which the LastModifiedOn column contains a timestamp newer than the most recent value of the WatermarkValue column in Watermark.
`
`You need to identify which activities to include in the pipeline. The solution must meet the following requirements:
`
`• Minimize the effort to author the pipeline.
`• Ensure that the number of data integration units allocated to the upload operation can be controlled.
`
`What should you identify?
- [ ] To retrieve the watermark value, use: Filter
- [ ] To retrieve the watermark value, use: Get Metadata
- [x] To retrieve the watermark value, use: Lookup
- [x] To perform the upload, use: Copy data
- [ ] To perform the upload, use: Custom
- [ ] To perform the upload, use: Data flow

#### 00103::
`You have an Azure Synapse serverless SQL pool.
`
`You need to read JSON documents from a file by using the OPENROWSET function.
`
`How should you complete the query?
- [x]
`SELECT *
`
`FROM OPENROWSET
`
`(
`
`   BULK
`'https: //sourcedatalake.blob.core.windows.net/public/docs. json',
`
`FORMAT = 'CSV'
`FIELDTERMINATOR = 0x0b' ,
`FIELDQUOTE = '0x0b'
`
`ROWTERMINATOR = '0x0b'
`
`)
`
`WITH (jsondoc nvarchar(max) AS 2sonDocuments

- [ ]
`SELECT *
`
`FROM OPENROWSET
`
`(
`
`   BULK
`'https: //sourcedatalake.blob.core.windows.net/public/docs. json',
`
`FORMAT = 'CSV'
`FIELDTERMINATOR = 0x0b' ,
`FIELDQUOTE = '0x09'
`
`ROWTERMINATOR = '0x0b'
`
`)
`
`WITH (jsondoc nvarchar(max) AS 2sonDocuments

- [ ]
`SELECT *
`
`FROM OPENROWSET
`
`(
`
`   BULK
`'https: //sourcedatalake.blob.core.windows.net/public/docs. json',
`
`FORMAT = 'DELTA'
`FIELDTERMINATOR = 0x0b' ,
`FIELDQUOTE = '0x0c'
`
`ROWTERMINATOR = '0x0b'
`
`)
`
`WITH (jsondoc nvarchar(max) AS 2sonDocuments

- [ ]
`SELECT *
`
`FROM OPENROWSET
`
`(
`
`   BULK
`'https: //sourcedatalake.blob.core.windows.net/public/docs. json',
`
`FORMAT = 'DELTA'
`FIELDTERMINATOR = 0x0b' ,
`FIELDQUOTE = '0x0a'
`
`ROWTERMINATOR = '0x0b'
`
`)
`
`WITH (jsondoc nvarchar(max) AS 2sonDocuments

- [ ]
`SELECT *
`
`FROM OPENROWSET
`
`(
`
`   BULK
`'https: //sourcedatalake.blob.core.windows.net/public/docs. json',
`
`FORMAT = 'JSON'
`FIELDTERMINATOR = 0x0b' ,
`FIELDQUOTE = '0x0b'
`
`ROWTERMINATOR = '0x0b'
`
`)
`
`WITH (jsondoc nvarchar(max) AS 2sonDocuments

- [ ]
`SELECT *
`
`FROM OPENROWSET
`
`(
`
`   BULK
`'https: //sourcedatalake.blob.core.windows.net/public/docs. json',
`
`FORMAT = 'JSON'
`FIELDTERMINATOR = 0x0b' ,
`FIELDQUOTE = '0x09'
`
`ROWTERMINATOR = '0x0b'
`
`)
`
`WITH (jsondoc nvarchar(max) AS 2sonDocuments

- [ ]
`SELECT *
`
`FROM OPENROWSET
`
`(
`
`   BULK
`'https: //sourcedatalake.blob.core.windows.net/public/docs. json',
`
`FORMAT = 'PARQUET'
`FIELDTERMINATOR = 0x0b' ,
`FIELDQUOTE = '0x0c'
`
`ROWTERMINATOR = '0x0b'
`
`)
`
`WITH (jsondoc nvarchar(max) AS 2sonDocuments

- [ ]
`SELECT *
`
`FROM OPENROWSET
`
`(
`
`   BULK
`'https: //sourcedatalake.blob.core.windows.net/public/docs. json',
`
`FORMAT = 'PARQUET'
`FIELDTERMINATOR = 0x0b' ,
`FIELDQUOTE = '0x0a'
`
`ROWTERMINATOR = '0x0b'
`
`)
`
`WITH (jsondoc nvarchar(max) AS 2sonDocuments

#### 00104::
`You use Azure Data Factory to create data pipelines.
`
`You are evaluating whether to integrate Data Factory and GitHub for source and version control.
`
`What are two advantages of the integration? 
- [ ] additional triggers
- [ ] lower pipeline execution times
- [x] the ability to save without publishing
- [x] the ability to save pipelines that have validation issues

#### 00105::
`You have an Azure Synapse Analytics workspace named Workspace1.
`
`You perform the following changes:
`
`• Implement source control for Workspace1.
`• Create a branch named Feature based on the collaboration branch.
`• Switch to the Feature branch.
`• Modify Workspace1.
`
`You need to publish the changes to Azure Synapse.
`
`From which branch should you perform each change?

- [x]
`Create a pull request: Feature
`Publish the changes: Collaboration

- [ ]
`Create a pull request: Collaboration
`Publish the changes: Publish

- [ ]
`Create a pull request: Collaboration
`Publish the changes: Feature

- [ ]
`Create a pull request: Publish
`Publish the changes: Collaboration

- [ ]
`Create a pull request: Publish
`Publish the changes: Feature

- [ ]
`Create a pull request: Feature
`Publish the changes: Publish


#### 001::
`You have an Azure Active Directory (Azure AD) tenant that contains a security group named Group1. You have an Azure Synapse Analytics dedicated SQL pool named dw1 that contains a schema named schema1.
`You need to grant Group1 read-only permissions to all the tables and views in schema1. The solution must use the principle of least privilege.
`Which three actions should you perform in sequence?
- [0] Create a database user in dwi that represents Group1
`and uses the FROM EXTERNAL PROVIDER clause.
- [1] Create a database role named Rolel and grant Rolel
`SELECT permissions to schemal.
- [2] Assign Rolel to the Group1 database user.
- [-] Create a database role named Rolel and grant Rolel
`SELECT permission to dw1
- [-] Assign the Azure role-based access control (Azure
`RBAC) Reader role for dw1 to Group1.

#### 002::
`You have an Azure subscription that contains a logical Microsoft SQL server named Server1. Server1 hosts an Azure Synapse Analytics SQL dedicated pool named Pool1.
`You need to recommend a Transparent Data Encryption (TDE) solution for Server1. The solution must meet the following requirements:
`✑ Track the usage of encryption keys.
`Maintain the access of client apps to Pool1 in the event of an Azure datacenter outage that affects the availability of the encryption keys.
`
`What should you include in the recommendation?
- [ ] To track encryption key usage: Alway Encrypted
- [x] To track encryption key usage: TDE with customer-managed keys
- [ ] To track encryption key usage: TDE with platform-managed keys
- [x] To maintain client app access in the event of a datacenter outage: Create and configure Azure key vaults in two Azure regions.
- [ ] To maintain client app access in the event of a datacenter outage: Enable Advnaced Data Security on Server1 
- [ ] To maintain client app access in the event of a datacenter outage: Implement the client apps by using a Microsoft.NET Framework data provider

#### 003::
`You plan to create an Azure Synapse Analytics dedicated SQL pool.
`You need to minimize the time it takes to identify queries that return confidential information as defined by the company's data privacy regulations and the users who executed the queues.
`Which two components should you include in the solution? 
- [x] sensitivity-classification labels applied to columns that contain confidential information
- [ ] resource tags for databases that contain confidential information
- [x] audit logs sent to a Log Analytics workspace
- [ ] dynamic data masking for columns that contain confidential information

#### 004::
`You are designing an enterprise data warehouse in Azure Synapse Analytics that will contain a table named Customers. Customers will contain credit card information.
`You need to recommend a solution to provide salespeople with the ability to view all the entries in Customers. The solution must prevent all the salespeople from viewing or inferring the credit card information.
`What should you include in the recommendation?
- [ ] data masking
- [ ] Always Encrypted
- [x] column-level security
- [ ] row-level security

#### 005::
`You develop data engineering solutions for a company.
`A project requires the deployment of data to Azure Data Lake Storage.
`You need to implement role-based access control (RBAC) so that project members can manage the Azure Data Lake Storage resources.
`Which three actions should you perform? 
- [x] Create security groups in Azure Active Directory (Azure AD) and add project members.
- [ ] Configure end-user authentication for the Azure Data Lake Storage account.
- [x] Assign Azure AD security groups to Azure Data Lake Storage.
- [ ] Configure Service-to-service authentication for the Azure Data Lake Storage account.
- [x] Configure access control lists (ACL) for the Azure Data Lake Storage account.

#### 006::
`You have an Azure Data Factory version 2 (V2) resource named Df1. Df1 contains a linked service.
`You have an Azure Key vault named vault1 that contains an encryption key named key1.
`You need to encrypt Df1 by using key1.
`What should you do first?
- [ ] Add a private endpoint connection to vault1.
- [ ] Enable Azure role-based access control on vault1.
- [x] Remove the linked service from Df1.
- [ ] Create a self-hosted integration runtime.

#### 007::
`You are designing an Azure Synapse Analytics dedicated SQL pool.
`You need to ensure that you can audit access to Personally Identifiable Information (PII).
`What should you include in the solution?
- [ ] column-level security
- [ ] dynamic data masking
- [ ] row-level security (RLS)
- [x] sensitivity classifications

#### 008::
`You have an Azure subscription that contains an Azure Data Lake Storage account. The storage account contains a data lake named DataLake1.
`You plan to use an Azure data factory to ingest data from a folder in DataLake1, transform the data, and land the data in another folder.
`You need to ensure that the data factory can read and write data from any folder in the DataLake1 file system. The solution must meet the following requirements:
`✑ Minimize the risk of unauthorized user access.
`✑ Use the principle of least privilege.
`✑ Minimize maintenance effort.
`How should you configure access to the storage account for the data factory?
- [x]
`Use Azure Active Directory (Azure AD) to authenticate by using a managed identify

- [ ]
`Use Azure Active Directory (Azure AD) to authenticate by using a a stored access policy

- [ ]
`Use a shared access signature (SAS) to authenticate by using a managed identify

- [ ]
`Use a shared access signature (SAS) to authenticate by using an Authorization header

- [ ]
`Use a shared key to authenticate by using an Authorization header

- [ ]
`Use a shared access signature (SAS) to authenticate by using a stored access policy

#### 009::
`You are designing an Azure Synapse Analytics dedicated SQL pool.
`Groups will have access to sensitive data in the pool as shown in the following table.
`|Name------|Enhanced access---------------------|
`|Executives|No access to sensitive data---------|
`|Analysts--|Access to in-region sensitive data--|
`|Engineers-|Access to all numeric sensitive data|
`You have policies for the sensitive data. The policies vary be region as shown in the following table.
`|Region-|Data considered sensitive----------------------------------|
`|RegionA|Financial,Personally Identifiable Information (PII)--------|
`|RegionB|Financial,Personally Identifiable Information (PII),medical|
`|RegionC|Financial,medical------------------------------------------|
`
`You have policies for the sensitive data. The policies vary be region as shown in the following table.
`|Name--------|Sensitive data|Description----------------------------|
`|CardOnFile--|Financial-----|Debit/credit card number for charges---|
`|Height------|Medical-------|Patient's height in cm-----------------|
`|ContactEmail|PII-----------|Email address for secure communications|
`You are designing dynamic data masking to maintain compliance.
- [x] 
`Analysts in RegionA require dynamic data
`masking rules for [Patients RegionA].: Yes
- [ ] 
`Analysts in RegionA require dynamic data
`masking rules for [Patients RegionA].: No
- [ ] 
`Engineers in RegionC require a dynamic data
`masking rule for [Patients_RegionA], [Height]: Yes
- [x] 
`Engineers in RegionC require a dynamic data
`masking rule for [Patients_RegionA], [Height]: No
- [x] 
`Engineers in RegionB require a dynamic data
`masking rule for [Patients_RegionB], [Height]: Yes
- [ ] 
`Engineers in RegionB require a dynamic data
`masking rule for [Patients_RegionB], [Height]: No

#### 0010::
`You have an Azure Synapse Analytics SQL pool named Pool1 on a logical Microsoft SQL server named Server1.
`You need to implement Transparent Data Encryption (TDE) on Pool1 by using a custom key named key1.
`Which five actions should you perform in sequence?
- [0] Assign a managed identity to Server1.
- [1] Create an Azure key Vault and grant the managed identity permissions to the key vault
- [2] Add key1 to the Azure key vault
- [3] Configure key1 as the TDE protector for Server1.
- [4] Enable TDE on Pool1.

#### 0011::
`You have a data warehouse in Azure Synapse Analytics.
`You need to ensure that the data in the data warehouse is encrypted at rest.
`What should you enable?
- [ ] Advanced Data Security for this database
- [x] Transparent Data Encryption (TDE)
- [ ] Secure transfer required
- [ ] Dynamic Data Masking

