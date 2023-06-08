##   3°.0806.0942

#### 0017::
`You are designing an Azure Stream Analytics solution that will analyze Twitter data.
`You need to count the tweets in each 10-second window. The solution must ensure that each tweet is counted only once.
Solution: You use a hopping window that uses a hop size of 5 seconds and a window size 10 seconds.
`Does this meet the goal?
- [ ] Yes
- [x] No

#### 0018::
`You are building an Azure Stream Analytics job to identify how much time a user spends interacting with a feature on a webpage.
`The job receives events based on user actions on the webpage. Each row of data represents an event. Each event has a type of either 'start' or 'end'.
`You need to calculate the duration between start and end events.
`How should you complete the query?
- [x]
`SELECT
`   [user],
`   feature,
`   DATEDIFF(
`       second
`       LAST (Time) OVER (PARTITION BY [user], feature LIMIT DURATION(hour, 1) WHEN Event = 'start'),
`       Time) as duration
`FROM input TIMESTAMP BY Time
`WHERE
`Event = 'end'

- [ ]
`SELECT
`   [user],
`   feature,
`   DATEPART(
`       second
`       LAST (Time) OVER (PARTITION BY [user], feature LIMIT DURATION(hour, 1) WHEN Event = 'start'),
`       Time) as duration
`FROM input TIMESTAMP BY Time
`WHERE
`Event = 'end'

- [ ]
`SELECT
`   [user],
`   feature,
`   DATEDIFF(
`       second
`       ISFIRTS (Time) OVER (PARTITION BY [user], feature LIMIT DURATION(hour, 1) WHEN Event = 'start'),
`       Time) as duration
`FROM input TIMESTAMP BY Time
`WHERE
`Event = 'end'

- [ ]
`SELECT
`   [user],
`   feature,
`   DATEPART(
`       second
`       TOPONE (Time) OVER (PARTITION BY [user], feature LIMIT DURATION(hour, 1) WHEN Event = 'start'),
`       Time) as duration
`FROM input TIMESTAMP BY Time
`WHERE
`Event = 'end'

- [ ]
`SELECT
`   [user],
`   feature,
`   DATEADD(
`       second
`       TOPONE (Time) OVER (PARTITION BY [user], feature LIMIT DURATION(hour, 1) WHEN Event = 'start'),
`       Time) as duration
`FROM input TIMESTAMP BY Time
`WHERE
`Event = 'end'

- [ ]
`SELECT
`   [user],
`   feature,
`   DATEPART(
`       second
`       ISFIRST (Time) OVER (PARTITION BY [user], feature LIMIT DURATION(hour, 1) WHEN Event = 'start'),
`       Time) as duration
`FROM input TIMESTAMP BY Time
`WHERE
`Event = 'end'

- [ ]
`SELECT
`   [user],
`   feature,
`   DATEDADD(
`       second
`       LAST (Time) OVER (PARTITION BY [user], feature LIMIT DURATION(hour, 1) WHEN Event = 'start'),
`       Time) as duration
`FROM input TIMESTAMP BY Time
`WHERE
`Event = 'end'

#### 0019::
`You are creating an Azure Data Factory data flow that will ingest data from a CSV file, cast columns to specified types of data, and insert the data into a table in an
`Azure Synapse Analytic dedicated SQL pool. The CSV file contains three columns named username, comment, and date.
`The data flow already contains the following:
`✑ A source transformation.
`✑ A Derived Column transformation to set the appropriate types of data.
`✑ A sink transformation to land the data in the pool.
`You need to ensure that the data flow meets the following requirements:
`✑ All valid rows must be written to the destination table.
`✑ Truncation errors in the comment column must be avoided proactively.
`✑ Any rows containing comment values that will cause truncation errors upon insert must be written to a file in blob storage.
`Which two actions should you perform? 
- [x] To the data flow, add a sink transformation to write the rows to a file in blob storage.
- [x] To the data flow, add a Conditional Split transformation to separate the rows that will cause truncation errors.
- [ ] To the data flow, add a filter transformation to filter out rows that will cause truncation errors.
- [ ]  Add a select transformation to select only the rows that will cause truncation errors.

#### 0020::
`You need to create an Azure Data Factory pipeline to process data for the following three departments at your company: Ecommerce, retail, and wholesale. The solution must ensure that data can also be processed for the entire company.
`How should you complete the Data Factory data flow script?
- [x]
`CleanData
`   split(
`           dept== 'ecommerce', dept=='retail',
`           dept== 'wholesale'
`               disjoint: false
`   ) ~> SplitByDept@ (  ecommerce, retail, wholesale, all )

- [ ]
`CleanData
`   split(
`           all, ecommerce, retail, wholesale
`                  dept=='ecommerce', dept=='retail',
`                   dept=='wholesale'
`   ) ~> SplitByDept@ ( dept=='ecommerce', dept==
                       'wholesale', dept=='retail')
                
- [ ]
`CleanData
`   split(
`           all, ecommerce, retail, wholesale
`                  dept==ecommerce', dept=='retail',
`                  dept=='wholesale'
`   ) ~> SplitByDept@ ( disjoint: false)
- [ ]
`CleanData
`   split(
`           all, ecommerce, retail, wholesale
`                  dept=='ecommerce', dept=='retail',
`                   dept=='wholesale'
`   ) ~> SplitByDept@ ( disjoint: true)

- [ ]
`CleanData
`   split(
`           all, ecommerce, retail, wholesale
`                  dept=='ecommerce', dept=='retail',
`                   dept=='wholesale'
`   ) ~> SplitByDept@ ( ecommerce, retail, wholesale, all)

- [ ]
`CleanData
`   split(
`           all, ecommerce, retail, wholesale
`                  dept=='ecommerce', dept==
                   'wholesale', dept=='retail'
`   ) ~> SplitByDept@ (dept=='ecommerce', dept=='retail',
`                     dept=='wholesale )

- [ ]
`CleanData
`   split(
`           all, ecommerce, retail, wholesale
`                  dept=='ecommerce', dept==
                   'wholesale', dept=='retail'
`   ) ~> SplitByDept@ ( disjoint: false)

- [ ]
`CleanData
`   split(
`           all, ecommerce, retail, wholesale
`                  dept=='ecommerce', dept==
                   'wholesale', dept=='retail'
`   ) ~> SplitByDept@ ( disjoint: true)

- [ ]
`CleanData
`   split(
`           all, ecommerce, retail, wholesale
`                  dept=='ecommerce', dept==
                   'wholesale', dept=='retail'
`   ) ~> SplitByDept@ ( ecommerce, retail, wholesale, all)

- [ ]
`CleanData
`   split(
`           all, ecommerce, retail, wholesale
`                  disjoint: false
`                       dept=='ecommerce', dept=='retail',
`                     dept=='wholesale
`   ) ~> SplitByDept@ (dept=='ecommerce', dept==
                      'wholesale', dept=='retail')

#### 0021::
`You have an Azure Data Lake Storage Gen2 account that contains a JSON file for customers. The file contains two attributes named FirstName and LastName.
`You need to copy the data from the JSON file to an Azure Synapse Analytics table by using Azure Databricks. A new column must be created that concatenates the FirstName and LastName values.
`You create the following components:
`✑ A destination table in Azure Synapse
`✑ An Azure Blob storage container
`✑ A service principal
`Which five actions should you perform in sequence next in is Databricks notebook?
- [0] Mount the Data Lake Storage onto DBF:
- [4] Write the results to a table in Azure Synapse.
- [-] Perform transformations on the file.
- [3] Specify a temporary folder to stage the data.
- [-] Write the results to Data Lake Storage.
- [1] Read the file into a data frame.
- [-] Drop the data frame.
- [2] Perform transformations on the data frame.

#### 0022::

`You build an Azure Data Factory pipeline to move data from an Azure Data Lake Storage Gen2 container to a database in an Azure Synapse Analytics dedicated
`SQL pool.
`Data in the container is stored in the following folder structure.
/in/{YYYY}/{MM}/{DD}/{HH}/{mm}
`The earliest folder is /in/2021/01/01/00/00. The latest folder is /in/2021/01/15/01/45.
`You need to configure a pipeline trigger to meet the following requirements:
`✑ Existing data must be loaded.
`✑ Data must be loaded every 30 minutes.
`✑ Late-arriving data of up to two minutes must be included in the load for the time at which the data should have arrived.
`How should you configure the pipeline trigger?

- [ ] Type: Event
- [ ] Type: On-demand
- [ ] Type: Schedule
- [x] Type: Tumbling window
- [ ] Additional properties: Prefix: /in/, Event: Blob created
- [ ] Additional properties: Recurrence: 30 minutes, Start time: 2021-01-01T00:00
- [x] Additional properties: Recurrence: 30 minutes, Start time: 2021-01-01T00:00, Delay: 2 minutes
- [ ] Additional properties: Recurrence: 32 minutes, Start time: 2021-01-15T01:45

#### 0023::
`You are designing a near real-time dashboard solution that will visualize streaming data from remote sensors that connect to the internet. The streaming data must be aggregated to show the average value of each 10-second interval. The data will be discarded after being displayed in the dashboard.
`The solution will use Azure Stream Analytics and must meet the following requirements:
`✑ Minimize latency from an Azure Event hub to the dashboard.
`✑ Minimize the required storage.
`✑ Minimize development effort.
`What should you include in the solution?
- [x] Azure Stream Analytics input type: Azure Event Hub
- [ ] Azure Stream Analytics input type: Azure SQL Database
- [ ] Azure Stream Analytics input type: Azure Stream Analitycs
- [ ] Azure Stream Analytics input type: Microsoft Power BI
- [ ] Azure Stream Analytics output typ: Azure Event Hub
- [ ] Azure Stream Analytics output typ: Azure SQL Database
- [ ] Azure Stream Analytics output typ: Azure Stream Analitycs
- [x] Azure Stream Analytics output typ: Microsoft Power BI
- [ ] Aggregation query location: Azure Event Hub
- [ ] Aggregation query location: Azure SQL Database
- [x] Aggregation query location: Azure Stream Analitycs
- [ ] Aggregation query location:Microsoft Power BI

#### 0024::
`You have an Azure Stream Analytics job that is a Stream Analytics project solution in Microsoft Visual Studio. The job accepts data generated by IoT devices in the JSON format.
`You need to modify the job to accept data generated by the IoT devices in the Protobuf format.
`Which three actions should you perform from Visual Studio on sequence?
- [-] Change the Event Serialization Format to Protobuf in
the input json file of the job and reference the DLL.
- [0] Add an Azure Stream Analytics Custom Deserializer
Project (.NET) project to the solution.
- [1] Add .NET deserializer code for Protobuf to the
custom deserializer project.
- [-] Add .NET deserializer code for Protobuf to the
Stream
- [2] Add an Azure Stream Analytics Application project
to the solution

#### 0025::
`You have an Azure Storage account and a data warehouse in Azure Synapse Analytics in the UK South region.
`You need to copy blob data from the storage account to the data warehouse by using Azure Data Factory. The solution must meet the following requirements:
`✑ Ensure that the data remains in the UK South region at all times.
`✑ Minimize administrative effort.
`Which type of integration runtime should you use?
- [x] Azure integration runtime
- [ ] Azure-SSIS integration runtime
- [ ] Self-hosted integration runtime

#### 0026::
`You have an Azure SQL database named Database1 and two Azure event hubs named HubA and HubB. The data consumed from each source is shown in the following table.
`|Source---|Data-------------------|
`|Database1|Driver's name----------|
`|---------|Driver's license number|
`|HubA-----|Rider route------------|
`|---------|Ride distance----------|
`|---------|Ride duration----------|
`|HubB-----|Ride fare--------------|
`|---------|Ride payment-----------|
`You need to implement Azure Stream Analytics to calculate the average fare per mile by driver.
`How should you configure the Stream Analytics input for each source?
- [x] HubA: Stream
- [ ] HubA: Reference
- [x] HubB: Stream
- [ ] HubB: Reference
- [ ] Database1: Stream
- [x] Database2: Reference

#### 0027::
`You have an Azure Stream Analytics job that receives clickstream data from an Azure event hub.
`You need to define a query in the Stream Analytics job. The query must meet the following requirements:
`✑ Count the number of clicks within each 10-second window based on the country of a visitor.
`✑ Ensure that each click is NOT counted more than once.
`How should you define the Query?
- [ ] SELECT Country, Avg(*) AS Average FROM ClickStream TIMESTAMP BY CreatedAt GROUP BY Country, SlidingWindow(second, 10)
- [x] SELECT Country, Count(*) AS Count FROM ClickStream TIMESTAMP BY CreatedAt GROUP BY Country, TumblingWindow(second, 10)
- [ ] SELECT Country, Avg(*) AS Average FROM ClickStream TIMESTAMP BY CreatedAt GROUP BY Country, HoppingWindow(second, 10, 2)
- [ ] SELECT Country, Count(*) AS Count FROM ClickStream TIMESTAMP BY CreatedAt GROUP BY Country, SessionWindow(second, 5, 10)

#### 0028::
`You are building an Azure Analytics query that will receive input data from Azure IoT Hub and write the results to Azure Blob storage.
`You need to calculate the difference in the number of readings per sensor per hour.
`How should you complete the query?
- [x]
`SELECT sensorId,
`       growth = reading - LAG (reading) OVER (PARTITION BY sensorId LIMIT DURATION (hour,1))
`FROM input
- [ ]
`SELECT sensorId,
`       growth = reading - LAG (reading) OVER (PARTITION BY sensorId OFFSET (hour,1))
`FROM input

- [ ]
`SELECT sensorId,
`       growth = reading - LAST (reading) OVER (PARTITION BY sensorId LIMIT DURATION (hour,1))
`FROM input


- [ ]
`SELECT sensorId,
`       growth = reading - LEAD (reading) OVER (PARTITION BY sensorId WHEN (hour,1))
`FROM input       

- [ ]
`SELECT sensorId,
`       growth = reading - LAST (reading) OVER (PARTITION BY sensorId wHEN (hour,1))
`FROM input

- [ ]
`SELECT sensorId,
`       growth = reading - LEAD (reading) OVER (PARTITION BY sensorId LIMIT DURATION (hour,1))
`FROM input

#### 0029::
`You need to schedule an Azure Data Factory pipeline to execute when a new file arrives in an Azure Data Lake Storage Gen2 container.
`Which type of trigger should you use?
- [ ] on-demand
- [ ] tumbling window
- [ ] schedule
- [x]  event

#### 0030::
`You have two Azure Data Factory instances named ADFdev and ADFprod. ADFdev connects to an Azure DevOps Git repository.
`You publish changes from the main branch of the Git repository to ADFdev.
`You need to deploy the artifacts from ADFdev to ADFprod.
`What should you do first?
- [ ] From ADFdev, modify the Git configuration.
- [ ] From ADFdev, create a linked service.
- [x] From Azure DevOps, create a release pipeline.
- [ ] From Azure DevOps, update the main branch.

#### 0031::
`You are developing a solution that will stream to Azure Stream Analytics. The solution will have both streaming data and reference data.
`Which input type should you use for the reference data?
- [ ] Azure Cosmos DB
- [x] Azure Blob storage
- [ ] Azure IoT Hub
- [ ] Azure Event Hubs

#### 0032::
`You are designing an Azure Stream Analytics job to process incoming events from sensors in retail environments.
`You need to process the events to produce a running average of shopper counts during the previous 15 minutes, calculated at five-minute intervals.
`Which type of window should you use?
- [ ] snapshot
- [ ] tumbling
- [x] hopping
- [ ] sliding

#### 0033::
`You are designing a monitoring solution for a fleet of 500 vehicles. Each vehicle has a GPS tracking device that sends data to an Azure event hub once per minute.
`You have a CSV file in an Azure Data Lake Storage Gen2 container. The file maintains the expected geographical area in which each vehicle should be.
`You need to ensure that when a GPS position is outside the expected area, a message is added to another event hub for processing within 30 seconds. The solution must minimize cost.
`What should you include in the solution?
- [ ] Service: An Azure Synapse Analytics Apache Spark pool
- [ ] Service: An Azure Synapse Analytics serverless SQL pool
- [ ] Service: Azure Data Factory
- [x] Service: Azure Stream Analitycs
- [x] Window: Hopping
- [ ] Window: No window
- [ ] Window: Session
- [ ] Window: Tumbling
- [ ] Analisys type: Event pattert matching
- [ ] Analisys type: Lagged record comparison
- [x] Analisys type: Point within polygon
- [ ] Analisys type: Polygon overlap

#### 0034::
`You are designing an Azure Databricks table. The table will ingest an average of 20 million streaming events per day.
`You need to persist the events in the table for use in incremental load pipeline jobs in Azure Databricks. The solution must minimize storage costs and incremental load times.
`What should you include in the solution?
- [ ] Partition by DateTime fields.
- [x] Sink to Azure Queue storage.
- [ ] Include a watermark column.
- [ ] Use a JSON format for physical data storage.

#### 0035::
`You have a self-hosted integration runtime in Azure Data Factory.
`The current status of the integration runtime has the following configurations:
`✑ Status: Running
`✑ Type: Self-Hosted
`✑ Version: 4.4.7292.1
`✑ Running / Registered Node(s): 1/1
`✑ High Availability Enabled: False
`✑ Linked Count: 0
`✑ Queue Length: 0
`✑ Average Queue Duration. 0.00s
`The integration runtime has the following node details:
`✑ Name: X-M
`✑ Status: Running
`✑ Version: 4.4.7292.1
`✑ Available Memory: 7697MB
`✑ CPU Utilization: 6%
`✑ Network (In/Out): 1.21KBps/0.83KBps
`✑ Concurrent Jobs (Running/Limit): 2/14
`✑ Role: Dispatcher/Worker
`✑ Credential Status: In Sync

- [ ]
`If the X-M node becomes unavailable, all
`                   execute pipelines will: fail until the node comes back online
`The number of concurrent jobs and the
`CPU usage indicate that the Concurrent
` Jobs (Running/Limit) value should be: lowered

- [ ]
`If the X-M node becomes unavailable, all
`                   execute pipelines will: fail until the node comes back online
`The number of concurrent jobs and the
`CPU usage indicate that the Concurrent
` Jobs (Running/Limit) value should be: raised

- [ ]
`If the X-M node becomes unavailable, all
`                   execute pipelines will: switch to another integration runtime
`The number of concurrent jobs and the
`CPU usage indicate that the Concurrent
` Jobs (Running/Limit) value should be: lowered

- [ ]
`If the X-M node becomes unavailable, all
`                   execute pipelines will: switch to another integration runtime
`The number of concurrent jobs and the
`CPU usage indicate that the Concurrent
` Jobs (Running/Limit) value should be: raised

- [ ]
`If the X-M node becomes unavailable, all
`                   execute pipelines will: exceed the CPU limit 
`The number of concurrent jobs and the
`CPU usage indicate that the Concurrent
` Jobs (Running/Limit) value should be: raised

- [ ]
`If the X-M node becomes unavailable, all
`                   execute pipelines will: exceed the CPU limit 
`The number of concurrent jobs and the
`CPU usage indicate that the Concurrent
` Jobs (Running/Limit) value should be: left as is

#### 0036::
`You have an Azure Databricks workspace named workspace1 in the Standard pricing tier.
`You need to configure workspace1 to support autoscaling all-purpose clusters. The solution must meet the following requirements:
`✑ Automatically scale down workers when the cluster is underutilized for three minutes.
`✑ Minimize the time it takes to scale to the maximum number of workers.
`✑ Minimize costs.
`What should you do first?
- [ ] Enable container services for workspace1.
- [x] Upgrade workspace1 to the Premium pricing tier.
- [ ] Set Cluster Mode to High Concurrency.
- [ ] Create a cluster policy in workspace1.

#### 0037::
`You are designing an Azure Stream Analytics solution that will analyze Twitter data.
`You need to count the tweets in each 10-second window. The solution must ensure that each tweet is counted only once.
`Solution: You use a tumbling window, and you set the window size to 10 seconds.
`Does this meet the goal?
- [x] Yes
- [ ] No

#### 0038::

`You are designing an Azure Stream Analytics solution that will analyze Twitter data.
`You need to count the tweets in each 10-second window. The solution must ensure that each tweet is counted only once.
`Solution: You use a session window that uses a timeout size of 10 seconds.
`Does this meet the goal?
- [x] Yes
- [ ] No

#### 0039:
`You use Azure Stream Analytics to receive data from Azure Event Hubs and to output the data to an Azure Blob Storage account.
`You need to output the count of records received from the last five minutes every minute.
`Which windowing function should you use?
- [ ] Session
- [ ] Tumbling
- [ ] Sliding
- [x] Hopping


#### 0040::
`You configure version control for an Azure Data Factory instance as shown in the following exhibit.
`Connections                Git repository
`Linked services            Git repository information associated with your data factory. CI/CD best practices
`Integration runtimes       Setting  Disconnect
`Source control                 Repository type         Azure DevOps Git
`Git configuration          
`ARM template                   Azure DevOps Account    CONTOSO
`Parameterization template                     
`Author                         Project name            Data
`Triggers
`Global parameters             Repository branch        main
`Security
`Customer managed key          Publish branch           adf_publish
`Managed private endpoints     
`                              Root folder              / 
- [x] 
`Azure Resource Manager (ARM) templates for the pipeline assets are
                                        stored in adf_publish
`A Data Factory Azure Resource Manager (ARM) template named
`              Contososales can be found in /dwh_batchet/adf_publish/contososales

- [ ] 
`Azure Resource Manager (ARM) templates for the pipeline assets are
                                        stored in adf_publish
`A Data Factory Azure Resource Manager (ARM) template named
`              Contososales can be found in /main

- [ ] 
`Azure Resource Manager (ARM) templates for the pipeline assets are
                                        stored in adf_publish
`A Data Factory Azure Resource Manager (ARM) template named
`              Contososales can be found in /

- [ ] 
`Azure Resource Manager (ARM) templates for the pipeline assets are
                                        stored in main
`A Data Factory Azure Resource Manager (ARM) template named
`              Contososales can be found in /dwh_batchet/adf_publish/contososales

- [ ] 
`Azure Resource Manager (ARM) templates for the pipeline assets are
                                        stored in main
`A Data Factory Azure Resource Manager (ARM) template named
`              Contososales can be found in /contososales

- [ ] 
`Azure Resource Manager (ARM) templates for the pipeline assets are
                                        stored in /
`A Data Factory Azure Resource Manager (ARM) template named
`              Contososales can be found in /main

- [ ] 
`Azure Resource Manager (ARM) templates for the pipeline assets are
                                        stored in adf_publish
`A Data Factory Azure Resource Manager (ARM) template named
`              Contososales can be found in /

- [ ] 
`Azure Resource Manager (ARM) templates for the pipeline assets are
                                        stored in Parameterization template
`A Data Factory Azure Resource Manager (ARM) template named
`              Contososales can be found in /dwh_batchet/adf_publish/contososales

- [ ] 
`Azure Resource Manager (ARM) templates for the pipeline assets are
                                        stored in Parameterization template
`A Data Factory Azure Resource Manager (ARM) template named
`              Contososales can be found in /main

#### 0041::
`You are designing an Azure Stream Analytics solution that receives instant messaging data from an Azure Event Hub.
`You need to ensure that the output from the Stream Analytics job counts the number of messages per time zone every 15 seconds.
`How should you complete the Stream Analytics query?
- [x]
`Select TimeZone, count (*) AS MessageCount
`
`From MessageStream TIMESPAMP BY CreatedAt
`GROUP BY TimeZone, TUMBLINGWINDOW (second,15)

- [ ]
`Select TimeZone, count (*) AS MessageCount
`
`From MessageStream TIMESPAMP BY CreatedAt
`GROUP BY TimeZone, HOPPINGWINDOW (second,15)

- [ ]
`Select TimeZone, count (*) AS MessageCount
`
`From MessageStream TIMESPAMP BY CreatedAt
`GROUP BY TimeZone, SESSIONWINDOW (second,15)

- [ ]
`Select TimeZone, count (*) AS MessageCount
`
`From MessageStream LAST CreatedAt
`GROUP BY TimeZone, TUMBLINGWINDOW (second,15)

- [ ]
`Select TimeZone, count (*) AS MessageCount
`
`From MessageStream LAST CreatedAt
`GROUP BY TimeZone, SLIDINGWINDOW (second,15)

- [ ]
`Select TimeZone, count (*) AS MessageCount
`
`From MessageStream OVER CreatedAt
`GROUP BY TimeZone, SLIDINGWINDOW (second,15)

- [ ]
`Select TimeZone, count (*) AS MessageCount
`
`From MessageStream OVER CreatedAt
`GROUP BY TimeZone, HOPPINGWINDOW (second,15)

- [ ]
`Select TimeZone, count (*) AS MessageCount
`
`From MessageStream SYSTEM.TIMESTAMP() CreatedAt
`GROUP BY TimeZone, SLIDINGWINDOW (second,15)

- [ ]
`Select TimeZone, count (*) AS MessageCount
`
`From MessageStream OVER CreatedAt
`GROUP BY TimeZone, TUMBLINGWINDOW (second,15)

#### 0042::
`You have an Azure Data Factory instance named ADF1 and two Azure Synapse Analytics workspaces named WS1 and WS2.
`ADF1 contains the following pipelines:
`✑ P1: Uses a copy activity to copy data from a nonpartitioned table in a dedicated SQL pool of WS1 to an Azure Data Lake Storage Gen2 account
`✑ P2: Uses a copy activity to copy data from text-delimited files in an Azure Data Lake Storage Gen2 account to a nonpartitioned table in a dedicated SQL pool of WS2
`You need to configure P1 and P2 to maximize parallelism and performance.
`Which dataset settings should you configure for the copy activity if each pipeline?

- [ ] P1: Set the Copy method to Bulk insert
- [x] P1: Set the Copy method to PolyBase
- [ ] P1: Set the Isolation level to Repeatable read
- [ ] P1: Set the Partition option to Dymanic range
- [x] P2: Set the Copy method to Bulk insert
- [ ] P2: Set the Copy method to PolyBase
- [ ] P2: Set the Isolation level to Repeatable read
- [ ] P2: Set the Partition option to Dymanic range

#### 0043::
`You have an Azure Storage account that generates 200,000 new files daily. 
`The file names have a format of 
`{YYYY}/{MM}/{DD}/{HH}/{CustomerID}.csv.
`You need to design an Azure Data Factory solution that will load new data from the storage account to an Azure Data Lake once hourly. The solution must minimize load times and costs.
`How should you configure the solution?
- [ ] Load methodology: Full Load
- [x] Load methodology: Incremental Load
- [ ] Load methodology: Load individual files as they arrive
- [ ] Trigger: Fixed schedule
- [ ] Trigger: New file
- [x] Trigger: Tumbling window

#### 0044::
`You plan to create an Azure Databricks workspace that has a tiered structure. The workspace will contain the following three workloads:
`✑ A workload for data engineers who will use Python and SQL.
`✑ A workload for jobs that will run notebooks that use Python, Scala, and SQL.
`✑ A workload that data scientists will use to perform ad hoc analysis in Scala and R.
`The enterprise architecture team at your company identifies the following standards for Databricks environments:
`✑ The data engineers must share a cluster.
`✑ The job cluster will be managed by using a request process whereby data scientists and data engineers provide packaged notebooks for deployment to the cluster.
`✑ All the data scientists must be assigned their own cluster that terminates automatically after 120 minutes of inactivity. Currently, there are three data scientists.
`You need to create the Databricks clusters for the workloads.
`Solution: You create a Standard cluster for each data scientist, a Standard cluster for the data engineers, and a High Concurrency cluster for the jobs.
`Does this meet the goal?
- [ ] Yes
- [x] No

#### 0045::
`You have the following Azure Data Factory pipelines:
`✑ Ingest Data from System1
`✑ Ingest Data from System2
`✑ Populate Dimensions
`✑ Populate Facts
`Ingest Data from System1 and Ingest Data from System2 have no dependencies. Populate Dimensions must execute after Ingest Data from System1 and Ingest
`Data from System2. Populate Facts must execute after Populate Dimensions pipeline. All the pipelines must execute every eight hours.
`What should you do to schedule the pipelines for execution?
- [ ] Add an event trigger to all four pipelines.
- [ ] Add a schedule trigger to all four pipelines.
- [x] Create a patient pipeline that contains the four pipelines and use a schedule trigger.
- [ ] Create a patient pipeline that contains the four pipelines and use an event trigger.

#### 0046::
`You are responsible for providing access to an Azure Data Lake Storage Gen2 account.
`Your user account has contributor access to the storage account, and you have the application ID and access key.
`You plan to use PolyBase to load data into an enterprise data warehouse in Azure Synapse Analytics.
`You need to configure PolyBase to connect the data warehouse to storage account.
`Which three components should you create in sequence?

- [1] a database scoped credential
- [0] an asymmetric key
- [2] an external data source
- [-] a database encryption key
- [-] an external file format

#### 0047::
`You are monitoring an Azure Stream Analytics job by using metrics in Azure.
`You discover that during the last 12 hours, the average watermark delay is consistently greater than the configured late arrival tolerance.
`What is a possible cause of this behavior?
- [ ] Events whose application timestamp is earlier than their arrival time by more than five minutes arrive as inputs.
- [ ] There are errors in the input data.
- [ ] The late arrival policy causes events to be dropped.
- [ ] The job lacks the resources to process the volume of incoming data.

#### 0048::
`You are building an Azure Stream Analytics job to retrieve game data.
You need to ensure that the job returns the highest scoring record for each five-minute time interval of each game.
`How should you complete the Stream Analytics query?
- [x]
`SELECT TopOne() OVER(PARTITION BY Game ORDER BY Score Desc) as HighestScore
`FROM input TIMESTAMP BY CreatedAt
`GROUP BY Hopping(minute,5)

- [ ]
`SELECT TopOne() OVER(PARTITION BY Game ORDER BY Score Desc) as HighestScore
`FROM input TIMESTAMP BY CreatedAt
`GROUP BY Game

- [ ]
`SELECT Collect(Score) as HighestScore
`FROM input TIMESTAMP BY CreatedAt
`GROUP BY Windows(TumblingWindow(minute,5),Hopping(minute,5))

- [ ]
`SELECT Collect(Score) as HighestScore
`FROM input TIMESTAMP BY CreatedAt
`GROUP BY Game

- [ ]
`SELECT CollectTop(1) OVER(ORDER BY Score Desc) as HighestScore
`FROM input TIMESTAMP BY CreatedAt
`GROUP BY Windows(TumblingWindow(minute,5),Hopping(minute,5))

- [ ]
`SELECT CollectTop(1) OVER(ORDER BY Score Desc) as HighestScore
`FROM input TIMESTAMP BY CreatedAt
`GROUP BY Tumbling(minute,5)

- [ ]
`SELECT Game, MAX(Score) as HighestScore
`FROM input TIMESTAMP BY CreatedAt
`GROUP BY Hopping(minute,5)

- [ ]
`SELECT Game, MAX(Score) as HighestScore
`FROM input TIMESTAMP BY CreatedAt
`GROUP BY Tumbling(minute,5)

#### 0049::
`You need to design a daily process to ingest incremental data from the staging zone, transform the data by executing an R script, and then insert the transformed data into a data warehouse in Azure Synapse Analytics.
`Solution: You use an Azure Data Factory schedule trigger to execute a pipeline that copies the data to a staging table in the data warehouse, and then uses a stored procedure to execute the R script.
`Does this meet the goal?
- [ ] Yes
- [x] No

#### 0050::
`You plan to create an Azure Databricks workspace that has a tiered structure. The workspace will contain the following three workloads:
`✑ A workload for data engineers who will use Python and SQL.
`✑ A workload for jobs that will run notebooks that use Python, Scala, and SQL.
`✑ A workload that data scientists will use to perform ad hoc analysis in Scala and R.
`The enterprise architecture team at your company identifies the following standards for Databricks environments:
`✑ The data engineers must share a cluster.
`✑ The job cluster will be managed by using a request process whereby data scientists and data engineers provide packaged notebooks for deployment to the cluster.
`✑ All the data scientists must be assigned their own cluster that terminates automatically after 120 minutes of inactivity. Currently, there are three data scientists.
`You need to create the Databricks clusters for the workloads.
`Solution: You create a High Concurrency cluster for each data scientist, a High Concurrency cluster for the data engineers, and a Standard cluster for the jobs.
`Does this meet the goal?
- [ ] Yes
- [x] No

#### 0051::
`You are designing an Azure Databricks cluster that runs user-defined local processes.
`You need to recommend a cluster configuration that meets the following requirements:
`✑ Minimize query latency.
`✑ Maximize the number of users that can run queries on the cluster at the same time.
`✑ Reduce overall costs without compromising other requirements.
Which cluster type should you recommend?
- [ ] Standard with Auto Termination
- [x] High Concurrency with Autoscaling
- [ ] High Concurrency with Auto Termination
- [ ] Standard with Autoscaling

#### 0052::
`You are building an Azure Data Factory solution to process data received from Azure Event Hubs, and then ingested into an Azure Data Lake Storage Gen2 container.
`The data will be ingested every five minutes from devices into JSON files. 
`The files have the following naming pattern.
`/{deviceType}/in/{YYYY}/{MM}/{DD}/{HH}/{deviceID}_{YYYY}{MM}{DD}HH}{mm}.json
`You need to prepare the data for batch data processing so that there is one dataset per hour per deviceType. The solution must minimize read times.
`How should you configure the sink for the copy activity?


- [ ] Parameter: @pipeline(),TriggerTime 
- [ ] Parameter: @pipeline(),TriggerType
- [ ] Parameter: @trigger().outputs.windowStartTime
- [x] Parameter: @trigger().startTime
- [ ] Naming pattern: /{devicelD}/out/{YYYY}/{MM}/{DD}/{HH}.json
- [ ] Naming pattern: /{YYYY}/{MM}/{DD}/{deviceType}.json
- [ ] Naming pattern: /{YYYY}/{MM}/{DD}/{HH}.json
- [x] Naming pattern: /{YYYY}/{MM}/{DD}/{HH}_{deviceType}.json
- [ ] Copy behavior: Add dynamic content
- [x] Copy behavior: Flatten hierarchy
- [ ] Copy behavior: Merge files

#### 0053::
`You are designing an Azure Data Lake Storage Gen2 structure for telemetry data from 25 million devices distributed across seven key geographical regions. Each minute, the devices will send a JSON payload of metrics to Azure Event Hubs.
`You need to recommend a folder structure for the data. The solution must meet the following requirements:
`✑ Data engineers from each region must be able to build their own pipelines for the data of their respective region only.
`✑ The data must be processed at least once every 15 minutes for inclusion in Azure Synapse Analytics serverless SQL pools.
`How should you recommend completing the structure?
- [x]
`/raw/{regionID}/{YYYY}/{MM}/{DD}/{HH}/{mm}/{deviceID}.json
- [ ]
`/{regionID}/{deviceID}/{YYYY}/{MM}/{DD}/{HH}/{mm}/{deviceID}.json
- [ ]
`/{regionID}/raw/{deviceID}/{HH}/{mm}/{YYYY}/{MM}/{DD}/{HH}/{mm}.json
- [ ]
`/{mm}/{HH}/{DD}/{MM}/{YYYY}/raw/{regionID}/{regionID}/{deviceID}.json
- [ ]
`/{deviceID}/{YYYY}/{MM}/{DD}/{HH}/{mm}/{YYYY}/{MM}/{DD}/{HH}.json
- [ ]
`/{YYYY}/{MM}/{DD}/{HH}/{mm}/{YYYY}/{MM}/{DD}/{HH}/{mm}/{HH}/{DD}/{MM}/{YYYY}.json
- [ ]
`/raw/{deviceID}/{regionID}/raw/raw/{regionID}.json
- [ ]
`/{regionID}/{deviceID}/{YYYY}/{MM}/{DD}{HH}/{deviceID}.json

#### 0054::
`You are implementing an Azure Stream Analytics solution to process event data from devices.
`The devices output events when there is a fault and emit a repeat of the event every five seconds until the fault is resolved. The devices output a heartbeat event every five seconds after a previous event if there are no faults present.
`A sample of the events is shown in the following table.
`|DeviceID------------|EventType---------------|EventTime------------|
`|78cc5hnt9-w357-684r-|HeartBeat---------------|2020-12-01T19:00.000Z|
`|w4fr-kr16h6p9874e---|------------------------|---------------------|
`|78cc5hnt9-w357-684r-|HeartBeat---------------|2020-12-01T19:05.000Z|
`|w4fr-kr16h6p9874e---|------------------------|---------------------|
`|78cc5hnt9-w357-684r-|TemperatureSensorFault--|2020-12-01T19:07.000Z|
`|w4fr-kr16h6p9874e---|------------------------|---------------------|
`You need to calculate the uptime between the faults.
`How should you complete the Stream Analytics SQL query?
- [x]
`SELECT
`DeviceID,
`
`MIN(EventTime) as StartTime,
`
`MAX (EventTime) as EndTime,
`
`DATEDIFE (second, MIN(EventTime), MAX(EventTime)) AS duratio
`
FROM input TIMESTAMP BY EventTime
`WHERE EventType='HeartBeat'
`GROUP BY
`
`DeviceID
`
`,TumblingWindow(second,5)

- [ ]
`SELECT
`DeviceID,
`
`MIN(EventTime) as StartTime,
`
`MAX (EventTime) as EndTime,
`
`DATEDIFE (second, MIN(EventTime), MAX(EventTime)) AS duratio
`
FROM input TIMESTAMP BY EventTime
`WHERE EventType='HeartBeat'
`GROUP BY
`
`DeviceID
`
`HAVING DATEDIFF(second, MIN(EventTime), MAX(EventTime)) > 5

- [ ]
`SELECT
`DeviceID,
`
`MIN(EventTime) as StartTime,
`
`MAX (EventTime) as EndTime,
`
`DATEDIFE (second, MIN(EventTime), MAX(EventTime)) AS duratio
`
FROM input TIMESTAMP BY EventTime
`WHERE LAG(EventType, 1) OVER (LIMIT DURATION(second,5)) <> EventType
`GROUP BY
`
`DeviceID
`
`HAVING DATEDIFF(second, MIN(EventTime), MAX(EventTime)) > 5

- [ ]
`SELECT
`DeviceID,
`
`MIN(EventTime) as StartTime,
`
`MAX (EventTime) as EndTime,
`
`DATEDIFE (second, MIN(EventTime), MAX(EventTime)) AS duratio
`
FROM input TIMESTAMP BY EventTime
`WHERE IsFirst(second,5) = 1
`GROUP BY
`
`DeviceID
`
`,TumblingWindow(second,5)

- [ ]
`SELECT
`DeviceID,
`
`MIN(EventTime) as StartTime,
`
`MAX (EventTime) as EndTime,
`
`DATEDIFE (second, MIN(EventTime), MAX(EventTime)) AS duratio
`
FROM input TIMESTAMP BY EventTime
`WHERE IsFirst(second,5) = 1
`GROUP BY
`
`DeviceID
`
`,SessionWindow(second, 5, 50000) OVER (PARTITION BY DevicelD)

#### 0055::
`You are creating a new notebook in Azure Databricks that will support R as the primary language but will also support Scala and SQL.
`Which switch should you use to switch between languages?
- [x] %<language>
- [ ]  @<Language >
- [ ]  \\[<language >]
- [ ]  \\(<language >)

#### 0056::
`You have an Azure Data Factory pipeline that performs an incremental load of source data to an Azure Data Lake Storage Gen2 account.
`Data to be loaded is identified by a column named LastUpdatedDate in the source table.
`You plan to execute the pipeline every four hours.
`You need to ensure that the pipeline execution meets the following requirements:
`✑ Automatically retries the execution when the pipeline run fails due to concurrency or throttling limits.
`✑ Supports backfilling existing data in the table.
`Which type of trigger should you use?
- [ ] event
- [ ] on-demand
- [ ] schedule
- [x] tumbling window

#### 0057::
`You are designing a solution that will copy Parquet files stored in an Azure Blob storage account to an Azure Data Lake Storage Gen2 account.
`The data will be loaded daily to the data lake and will use a folder structure of {Year}/{Month}/{Day}/.
`You need to design a daily Azure Data Factory data load to minimize the data transfer between the two accounts.
`Which two configurations should you include in the design?
- [x] Specify a file naming pattern for the destination.
- [ ] Delete the files in the destination before loading the data.
- [x] Filter by the last modified date of the source files.
- [ ] Delete the source files after they are copied.

#### 0058::
`You plan to build a structured streaming solution in Azure Databricks. The solution will count new events in five-minute intervals and report only events that arrive during the interval. The output will be sent to a Delta Lake table.
`Which output mode should you use?
- [ ] update
- [ ] complete
- [x] append

#### 0059::
`You have an Azure Synapse Analytics dedicated SQL pool that contains a table named Table1.
`You have files that are ingested and loaded into an Azure Data Lake Storage Gen2 container named container1.
`You plan to insert data from the files in container1 into Table1 and transform the data. Each row of data in the files will produce one row in the serving layer of
Table1.
`You need to ensure that when the source data files are loaded to container1, the DateTime is stored as an additional column in Table1.
Solution: In an Azure Synapse Analytics pipeline, you use a data flow that contains a Derived Column transformation.
`Does this meet the goal?
- [x] Yes
- [ ] No

#### 0060::
`You have an Azure Synapse Analytics dedicated SQL pool that contains a table named Table1.
You have files that are ingested and loaded into an Azure Data Lake Storage Gen2 container named container1.
`You plan to insert data from the files in container1 into Table1 and transform the data. Each row of data in the files will produce one row in the serving layer of
Table1.
`You need to ensure that when the source data files are loaded to container1, the DateTime is stored as an additional column in Table1.
`Solution: You use a dedicated SQL pool to create an external table that has an additional DateTime column.
`Does this meet the goal?
- [ ] Yes
- [x] No

#### 0061::
`You have an Azure Synapse Analytics dedicated SQL pool that contains a table named Table1.
You have files that are ingested and loaded into an Azure Data Lake Storage Gen2 container named container1.
`You plan to insert data from the files in container1 into Table1 and transform the data. Each row of data in the files will produce one row in the serving layer of
Table1.
`You need to ensure that when the source data files are loaded to container1, the DateTime is stored as an additional column in Table1.
Solution: You use an Azure Synapse Analytics serverless SQL pool to create an external table that has an additional DateTime column.
`Does this meet the goal?
- [x] Yes
- [ ] No

#### 0062::
`You have an Azure Synapse Analytics dedicated SQL pool that contains a table named Table1.
`You have files that are ingested and loaded into an Azure Data Lake Storage Gen2 container named container1.
`You plan to insert data from the files in container1 into Table1 and transform the data. Each row of data in the files will produce one row in the serving layer of
Table1.
`You need to ensure that when the source data files are loaded to container1, the DateTime is stored as an additional column in Table1.
`Solution: In an Azure Synapse Analytics pipeline, you use a Get Metadata activity that retrieves the DateTime of the files.
`Does this meet the goal?
- [ ] Yes
- [x] No

#### 0063::
`You have an Azure Data Lake Storage account that contains a staging zone.
`You need to design a daily process to ingest incremental data from the staging zone, transform the data by executing an R script, and then insert the transformed data into a data warehouse in Azure Synapse Analytics.
`Solution: You use an Azure Data Factory schedule trigger to execute a pipeline that executes an Azure Databricks notebook, and then inserts the data into the data warehouse.
`Does this meet the goal?
- [x] Yes
- [ ] No

#### 0064::
`You have an Azure Data Lake Storage account that contains a staging zone.
`You need to design a daily process to ingest incremental data from the staging zone, transform the data by executing an R script, and then insert the transformed data into a data warehouse in Azure Synapse Analytics.
`Solution: You use an Azure Data Factory schedule trigger to execute a pipeline that executes mapping data flow, and then inserts the data into the data warehouse.
`Does this meet the goal?
- [ ] Yes
- [x] No

#### 0065::
`You have an Azure Data Lake Storage account that contains a staging zone.
`You need to design a daily process to ingest incremental data from the staging zone, transform the data by executing an R script, and then insert the transformed data into a data warehouse in Azure Synapse Analytics.
`Solution: You schedule an Azure Databricks job that executes an R notebook, and then inserts the data into the data warehouse.
`Does this meet the goal?
- [x] Yes
- [ ] No

#### 0066::
`You plan to create an Azure Data Factory pipeline that will include a mapping data flow.
`You have JSON data containing objects that have nested arrays.
`You need to transform the JSON-formatted data into a tabular dataset. The dataset must have one row for each item in the arrays.
`Which transformation method should you use in the mapping data flow?
- [ ] new branch
- [ ] unpivot
- [ ] alter row
- [x] flatten















