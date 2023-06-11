# topics dp203
>>>>>>>>>>>>>>>>>>>>>>>>>>>
0806.1127
tumbling window
worth to know - which trigger schoul be used - seperate file for this type of questions
polybase to load data
draw images order questiuons

plik for this king of questions : `Which type of trigger should you use?

rysunki tumbling azura data factory
- azure databrick
- azure stream analytics
- azure synapse analytics
- azure sql database

>>>>>>>>>>>>>>><<<<0906.1002>>>>

- 

>>>>>>>>>>>>>>>>>


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

 # TABLE TYPE: 
    Replicated table - for small dimension tables,  used frequently in join operations. 
        fully copied to each compute node, and therefore are best suited 
        (Retail Store Data: Given that the retail store table is relatively small (approximately 2MB), )

    Hash table - Hash distributed tables in Azure Synapse Analytics distribute the rows according to a hash function on a specified column, which provides for distributed joins and group by operations, and it is ideal for large fact tables. (Promotional Data: Considering the size of the promotional data table (200 GB))

    round-robin - : transient data, quick load, or No clear distribution key or data evenly distributed across all compute nodes for balance but no obvious column to choose for hash distribution, round-robin is an appropriate choice.

        Small or medium sized tables: For smaller tables where the overhead of managing the hash function isn't worth the potential performance gain, round-robin distribution can be beneficial.

# Commands
sys.dm_pdw_nodes_db_partition_stats - can be used to evaluate data skew. returns statistics
    - hes to be run in the context of a dedicated SQL pool.
DBCC CHECKALLOC - SQL Server cmd, to checks disk space allocation structures
                - does not provide information about data distribution in Synapse Analytics.
                - cannot be run on the built-in pool in Synapse Studio.


dedicated SQL pool = distributed
built-in = on-demand or serverless

Dynamic Management Views (DMVs) build in SQLServer, Performance Metrics, Index Usage Statistics, Session and Connection Information

A surrogate key - unique barcode for the book in the library 

Azure Stream Analytics offers different types of windowing functions: 
    Sliding Window: result for every content window changes.
    Session Window: 
    Hopping Window: overlaps, hops by a fixed duration.
    Tumbling Window: each counted once, many fixed-sized, non-overlapping
        tumbling, falling over uncontrolably

    overlapping - falling in more then one windows

Azure Stream Analytics - designed to analyze streaming data in real time. 
        integrates seamlessly - Azure IoT Hub & Synapse

Azure Synapse Analytics
    Sensitivity classifications - audit access to Personally Identifiable Information (PII). 
    data masking - hiding the actual data values from certain users.
    
## abreviation
ACL - access control lists