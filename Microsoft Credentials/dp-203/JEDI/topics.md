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
 

#  dynamic management view
# Commands
    built-in pool = serverless 
                    (not on premise)
        
     dedicated SQL pool = data is distributed, parallel processing.

    command DBCC PDW_SHOWSPACEUSED and the dynamic management view sys.dm_pdw_nodes_db_partition_stats are specific to DEDICATED SQL pools, and they provide information about the data distribution and storage in the pool, which is related to the architecture of the dedicated SQL pool. Using these commands on the built-in pool won't work because the built-in pool doesn't distribute data across distributions in the same way.

    When deciding whether to connect to the built-in pool or a dedicated SQL pool, you should consider the type of operation you want to perform and the pool's architecture. 
    
    CONNECT TO A DEDICATED SQL POOL WHEN YOU NEED TO WORK WITH THE DISTRIBUTED DATA, 
        such as when you want to check the data skew. 
        
    CONNECT TO THE BUILT-IN POOL FOR AD-HOC QUERIES OR WHEN YOU DON'T NEED TO DEAL WITH DISTRIBUTED DATA.

sys.dm_pdw_nodes_db_partition_stats
    - can be used to evaluate data skew. returns statistics
    - can to be run in the context of a dedicated SQL pool.

sys.dm_pdw_node_status
    health status of the nodes in a Synapse SQL data warehouse. 
    useful for monitoring and diagnostics of the SQL data warehouse nodes, it doesn't provide specific information about data skew in a table. 

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
star schema :: 

//
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
please provide explanation, why if correct, this was the correct choice, 
 explaining meaning of other options too
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
which fragment from the question indicate the choosen answer is correct if is correct 

# cost

1.0050
 the goal now is to enhance workspace security and business continuity capabilities. The Premium tier for Azure Databricks offers advanced security features, such as role-based access control, as well as enhanced business continuity features. 

    Enhanced Security:

        Role-Based Access Control (RBAC): This allows you to set granular permissions at the workspace level, notebook level, and cluster level, providing more control over who can access and perform operations in your Databricks environment. This is only available in the Premium tier.

        Audit Logs: Premium tier provides access to audit logs, which allows you to monitor activities within your Databricks workspace. Audit logs record details about workspace activities, like who created or modified a cluster, notebook, job, and so on. This can help you keep track of changes and investigate potential security incidents.

        Private Link: This is a feature that helps to isolate your Databricks workspace from public internet. It provides secure and private connectivity between your Databricks workspace and your Azure Virtual Network (VNet), ensuring your data is not exposed to the public internet. This feature is only available in the Premium tier.

    Enhanced Business Continuity:

        High Concurrency Clusters: Premium tier supports high concurrency clusters which can handle numerous simultaneous users and jobs without interference. This can be important for business continuity because it allows many users to work simultaneously without affecting each other's work.

        Databricks Runtime for Machine Learning (ML): This is a preconfigured Databricks runtime environment that contains multiple popular machine learning libraries. This can enable faster development and deployment of ML models, and help ensure that your analytics operations continue smoothly.

        Jobs ACLs: This feature allows you to control who can view, edit, and execute jobs. This not only enhances security but also provides control over the execution of jobs, which is critical for business continuity.

        dans un sommaire, qui concerne la presentation au sujet de dp-203, ou je commence par parler de certif, et quel benefice de le faire pour un dev, puis je list des services, je me concentre sur 4 le plus important pour moi, puis je list quelques notions technique important , puis je liste les concepts equivalent dans mon metier, a la fin, que ce que je peux dire, pour resumer et finir, de maniere drole, en restant dans lunivers marvel , etc , 