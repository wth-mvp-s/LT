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
The company plans to double the number of devices that are monitored.
`You need to monitor a Stream Analytics job to ensure that there are enough processing resources to handle the additional load.
`Which metric should you monitor?
- [ ] Early Input Events
- [ ] Late Input Events
- [x] Watermark delay
- [ ] Input Deserialization Errors

#### 0072::
`You are designing an enterprise data warehouse in Azure Synapse Analytics that will store website traffic analytics in a star schema.
You plan to have a fact table for website visits. The table will be approximately 5 GB.
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
- [4] Write the results to a table in Azure Synapse.
- [3] Specify a temporary folder to stage the data.
- [1] Read the file into a data frame.
- [2]Perform transformations on the data frame.

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
- [-] Create a new branch in Repo.
- [2]Merge the changes from branch into main.
- [1] Associate the schedule trigger with pipelined.
- [-] Switch to Synapse live mode.
- [0] Create a schedule trigger.
- [3] Publish the contents of main.

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
`You have an Azure Synapse Analytics serverless SQL pool named Pool1 and an Azure Data Lake Storage Gen2 account named storage1. The
AllowBlobPublicAccess property is disabled for storage1.
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
- [ ] To Pipetine1, add: A custom activity
- [x] To Pipetine1, add: A Get Metadata activity
- [ ] To Pipetine1, add: An If Condition acitivity
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
Solution: You create a Standard cluster for each data scientist, a High `Concurrency cluster for the data engineers, and a Standard cluster for the jobs.
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
`select avg date, sensorid, avg_f, ddo.udfFtoC(avg temperature) as avg_c from SensorTesps
`where avg_date = @parameter
`The query is executed once every 15 minutes and the @parameter value is set to the current date.
`You need to minimize the time it takes for the query to return results.
`Which two actions should you perform?
- [ ] Create an index on the avg_f column.
- [x] Convert the avg_c column into a calculated column.
- [ ] Create an index on the sensorid column.
- [x] Enable result set caching.
- [ ] Change the table distribution to replicate.

#### 0091::
`You need to design a solution that will process streaming data from an Azure Event Hub and output the data to Azure Data Lake Storage. The solution must ensure that analysts can interactively query the streaming data.

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

#### 0094::
`You need to schedule an Azure Data Factory pipeline to execute when a new file arrives in an Azure Data Lake Storage Gen2 container.
`
`Which type of trigger should you use?

- [ ] on-demand
- [ ] tumbling window
- [ ] schedule
- [ ] storage event

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
- [-] Create pipeline artifacts and save them in the main branch.
- [-] Set the main branch as the collaboration branch.
- [3] Create a pull request to merge the contests of the main branch into the new branch.
- [2] Create pipeline artifacts and save them in the new branch.
- [1] Create a new branch.
- [0] Configure a code repository and select Repo 1.

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
`                                           |Copy_XferFolder---------------------------|
`                                           |Azure Data Factory Copy Activity----------|  
`                                           |Data factory------------------------------|
`                                           |Pipeline----------------------------------|                            |Azure Blob Path|                
`                                           |Select to asset|Open in Azure Data Factory|                            |destfile.csv---|
`|Percentage-of-a..|                                                
`   Type: Azure Blob Path
`
`   Name: percentage-of-americans-living-alone-by-age.csv
`
`   Qualified name:
`
`   https://demofilesmmi. blob. core. windows .net/demobiob/source/perce
    ntage-of-americans-living-alone-by-age.csv


`How is the data for the lineage populated?

- [ ] manually
- [ ] by scanning data stores
- [ ] by executing a Data Factory pipeline

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


 

