# topics dp203

tumbling window
worth to know - which trigger schoul be used - seperate file for this type of questions
polybase to load data
draw images order questiuons

plik for this king of questions : `Which type of trigger should you use?

rysunki tumbling azura data factory
- azure databrick
        Sink to Azure Queue storage: To persist the events in the table for use in      incremental load pipeline jobs in Azure Databricks while minimizing storage costs and incremental load times
- azure stream analytics
- azure synapse analytics
- azure sql database

# Incremental load
    refers to the process of updating a target system with only the changes or new data since the last load, rather than reloading the entire dataset. 

# Flatten hierarchy
    copy behavior, you ensure that the data from the source files is copied to the sink files without retaining the original folder hierarchy. This helps in minimizing read times as it avoids unnecessary directory traversal during batch processing.

same but if it was to give the definition for a child 

ChatGPT
Sure, I'll try to simplify the definitions:

Azure Data Factory: It's like a big moving truck that can also sort your toys (data) while moving them.

Pipeline Authoring Changes: It's like changing the steps in a game to make it more fun or easier to play.

UX Authoring Canvas: It's like a digital drawing board where you design how a game (or app) will look and work.

Azure Synapse Analytics serverless SQL pool: It's like a magic computer that can answer questions about lots of things (data) at once without needing to be always on.

Azure Data Lake Storage Gen2 account: It's a huge toy box (storage) where you can put all kinds of toys (data) and find them easily when you need them.

Apache Spark job: It's like a group of workers (computers) who can all work on a big puzzle (data) at the same time to solve it faster.

DataFrame: It's like a big chart or table that helps you understand and organize information better.

Data Warehouse: It's a giant library of facts (data) where you can go to learn things or answer questions.

Microsoft Purview account.
Databricks clusters
SQL pool
Azure Data Factory pipeline
azure databrick
a service principal
dbfs
data frame


# //
Azure Data Factory: Data integration service, enabling data movement and transformation.

Pipeline Authoring Changes: Updates to pipeline structure, improving data workflow configuration.

UX Authoring Canvas: User interface for pipeline design, enhancing user interaction and ease of use.

Azure Synapse Analytics serverless SQL pool: On-demand data querying service, providing flexible, large-scale data analysis.

Azure Data Lake Storage Gen2 account: Scalable data storage solution, facilitating big data analytics.

Apache Spark job: Distributed data processing task, enabling high-speed data analytics.

DataFrame: Tabular data structure, providing convenient data manipulation.

Data Warehouse: Large-scale data storage system, facilitating data analysis and reporting.
//
azure data factory
pipeline authoring changes
UX Authoring canvas
Azure Synapse Analytics serverless SQL pool
Azure Data Lake Storage Gen2 account
Apache Spark job
DataFrame 
data warehouse

//
surrogate key
order point
sql
apache spark analysis
dwu pourcentage metric
purview


partition in event hub, is a lane of stream, 32 par default

 DBCC PDW_SHOWSPACEUSED:: space utilization statistics 

 # Azure Synapse Analytics
    known as SQL Data Warehouse
    parallel bdd sql 
    data distribution types : 
        round robin - evenly 
        hash - best perf for join, aggregation
        replicate - on each compute node, full copy. for dimension table in star schema
    fact - infos about events like renting 

##  Azure Synapse Analytics ACTIONS ON THE DATA
    aggregate:  group columns and function like sum, count, min, max
                not suitable for detecting changes
    derived column: modify or create new column

    surrogate key: generate unique id for each row

    Assert- check validity
    cast - convert column to a diff type

    alter row - upsert based on the comparison result
 # TABLE TYPE: 
    Replicated table - for small dimension tables,  used frequently in join operations. 
        fully copied to each compute node, and therefore are best suited 
        (Retail Store Data: Given that the retail store table is relatively small (approximately 2MB), )


            Common.Date: Replicated
                Replicated tables are fully copied to each compute node in the system, ensuring that data can be queried locally, which provides great query performance.
                Since the "Common.Date" table is small (only 7,300 rows) and is updated only once a year, the replicated distribution is a good choice. It allows fast joins with other tables and doesn't cause much network overhead because of the table's small size.


    Hash table - Hash distributed tables in Azure Synapse Analytics distribute the rows according to a hash function on a specified column, which provides for distributed joins and group by operations, and it is ideal for large fact tables. (Promotional Data: Considering the size of the promotional data table (200 GB))

            Marketing.WebSessions: Hash
                Hash distributed tables distribute the rows according to the hash value of a single column, which is referred to as the "distribution column". Hash distribution is a good choice for large tables that are often joined with other tables on the distribution column, and can lead to significant performance improvements.
                In this case, the "Marketing.WebSessions" table is large (1.5 billion rows) and is updated hourly. Hash distribution will help improve the query performance by allowing Synapse to perform the joins locally when queried with the distribution key.

    round-robin - : transient data, quick load, or No clear distribution key or data evenly distributed across all compute nodes for balance but no obvious column to choose for hash distribution, round-robin is an appropriate choice.

        Small or medium sized tables: For smaller tables where the overhead of managing the hash function isn't worth the potential performance gain, round-robin distribution can be beneficial.

            Staging.WebSessions: Round-robin
                Round-robin distributed tables distribute the data evenly across all the distributions, but without any regard to the values in the rows. This provides a quick way to load data into the table but might lead to slower query performance compared to hash-distributed tables, especially when joining on non-distribution columns.
                Since the "Staging.WebSessions" table is used for staging and is truncated and filled every hour, round-robin distribution can maximize the performance of data loading operations as it ensures an even data distribution without needing to compute a hash value.
# index choice 
    Nonclustered Columnstore: Best for large tables and analytical queries involving aggregations and filtering on specific columns.

    Clustered Columnstore: Ideal for LARGE FACT TABLES in data warehousing scenarios, offering high compression and excellent performance for analytical workloads.

    Nonclustered: Improves query performance for specific queries involving filtering or joining on specific columns.

    Clustered: Determines the physical order of data in a table, useful when frequently querying or sorting data based on a specific column.

# Commands
    built-in pool = serverless 
                    (not on premise)
        
     dedicated SQL pool = data is distributed, parallel processing.

    command DBCC PDW_SHOWSPACEUSED and the dynamic management view sys.dm_pdw_nodes_db_partition_stats are specific to DEDICATED SQL pools, and they provide information about the data distribution and storage in the pool, which is related to the architecture of the dedicated SQL pool. Using these commands on the built-in pool won't work because the built-in pool doesn't distribute data across distributions in the same way.

    When deciding whether to connect to the built-in pool or a dedicated SQL pool, you should consider the type of operation you want to perform and the pool's architecture. 
    
    CONNECT TO A DEDICATED SQL POOL WHEN YOU NEED TO WORK WITH THE DISTRIBUTED DATA, 
        such as when you want to check the data skew. 
        
    CONNECT TO THE BUILT-IN POOL FOR AD-HOC QUERIES OR WHEN YOU DON'T NEED TO DEAL WITH DISTRIBUTED DATA.

sys.dm_pdw_nodes_db_partition_stats - can be used to evaluate data skew. returns statistics
    - hes to be run in the context of a dedicated SQL pool.
DBCC CHECKALLOC - SQL Server cmd, to checks disk space allocation structures
                - does not provide information about data distribution in Synapse Analytics.
                - cannot be run on the built-in pool in Synapse Studio.
sys.dm_pdw_nodes_tran_database_transactions 
    you can identify transactions that have been rolled back and investigate any issues or performance problems associated with them.

dedicated SQL pool = distributed
built-in = on-demand or serverless


Dynamic Management Views (DMVs) 
    build in SQLServer, Performance Metrics, Index Usage Statistics, Session and Connection Information

A surrogate key - unique barcode for the book in the library 

#   Windows
    Azure Stream Analytics offers different types of windowing functions: 
    Sliding Window: result for every content window changes.
    
    Session Window: group events together based on a defined session timeout, which detects gaps in the event stream. It combines events that occur within a specified timeout into a single session. 

    Hopping Window: overlaps, allows you to define a fixed size and a hop size. 
                        In your use case, you need to ensure that whenever a vehicle's GPS position is outside the expected area, an alert message is processed within 30 seconds. The continuous and possibly overlapping checks of a Hopping window would serve your purpose better by preventing the loss of an alert if it falls on the boundary of a window.

                        With a Tumbling window, if a GPS position update is received just after a window's end, the alert will only be processed in the next window, potentially delaying the alert beyond your 30-second limit. With a Hopping window, the overlapping window ensures such edge cases are included and processed promptly. Hence, Hopping window is a more suitable choice for your scenario.

    Tumbling Window: each counted once, many fixed-sized, non-overlapping
                        segments the data into non-overlapping fixed-size windows, and each tweet will be counted only once within its corresponding 10-second window.
        tumbling, falling over uncontrolably

    overlapping - falling in more then one windows

Azure Stream Analytics - designed to analyze streaming data in real time. 
        integrates seamlessly - Azure IoT Hub & Synapse

Azure Synapse Analytics
    Sensitivity classifications - audit access to Personally Identifiable Information (PII). 
    data masking - hiding the actual data values from certain users.
    
    Get Metadata - activity in an Azure Synapse Analytics pipeline
        is used to retrieve metadata about files, such as file size, file type, or file modified date. It does not perform any data transformation or enable adding additional columns to a table.


## abreviation
ACL - access control lists
upsert - "update" OR "insert".
    Insert a new record if it doesn't exist, or
    Update the existing record if it already exists.
assert - zapewniac, defendre
Truncation::adjust data to column size, and dispose it between them if necessary
sink :: destination, target