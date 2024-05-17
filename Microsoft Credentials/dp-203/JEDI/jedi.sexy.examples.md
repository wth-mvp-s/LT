

# PARAMETRES A PREDNRE EN COMPTE: 
INDEXING
    NONCLUSTERED COLUMNSTORE
    CLUSTERED COLUMNSTORE
    NONCLUSTERED
    CLUSTERED
    ROUND-ROBIN
    HASH
    REPLICATE
PARTITION
OPTIMIZING FILES 
COPING BEHAVIOR
    FLATTEN HIERARCHY
CHOOSING MOST SUITABLE TRIGGER, SCHEDULING
WINDOWS
    HOPPING
    TUMBLING
    SESSION
CHOOSING MOST SUITABLE TOOL FOR TRANSFORMING DATA
    DATA TOOLS ACTIONS
        AGGREGATE
        DERIVED COLUMN
        SURROGATE KEY
        ASSERT
        CAST
        ALTERROW
DATA REDUNDENCY



# when to use premium pricing tier

        `You have an Azure Databricks workspace named workspace1 in the Standard pricing tier.
    `You need to configure workspace1 to support autoscaling all-purpose clusters. The solution must meet the following requirements:
    `✑ Automatically scale down workers when the cluster is underutilized for three minutes.
    `✑ Minimize the time it takes to scale to the maximum number of workers.
    `✑ Minimize costs.
    `What should you do first?
    - [ ] Enable container services for workspace1.
    - [ ] Upgrade workspace1 to the Premium pricing tier.
    - [ ] Set Cluster Mode to High Concurrency.
    - [ ] Create a cluster policy in workspace1.

        Autoscaling is a feature that's only available for Premium tier workspaces in Azure Databricks. Autoscaling allows clusters to automatically scale up or down based on the workload, thereby meeting the requirements stated in the problem:

        Automatically scale down workers when the cluster is underutilized for three minutes.
        Minimize the time it takes to scale to the maximum number of workers.
        Therefore, before you can configure autoscaling, you must first upgrade your workspace to the Premium pricing tier.

        Note that while creating a cluster policy can be a part of managing and enforcing rules for cluster configurations, it is not the first step to enable autoscaling. Similarly, enabling container services and setting Cluster Mode to High Concurrency are not directly related to the autoscaling requirement.

# Azure Synapse Analytics
        You have a SQL pool in Azure Synapse.
`You plan to load data from Azure Blob storage to a staging table. Approximately 1 million rows of data will be loaded daily. The table will be truncated before each daily load.
`You need to create the staging table. The solution must minimize how long it takes to load the data to the staging table.
`How should you configure the table?



>>>>>>>>>>>>>>>>>>>> about data negineers work 
    The configuration options for creating a table in Azure Synapse Analytics are primarily aimed at maximizing query performance and minimizing the data load time.

    In this scenario, the chosen configuration is Hash distribution, Clustered columnstore indexing, and Date partitioning. Let's analyze each aspect:

    Distribution: Hash: This is generally the best option when you have a large amount of data and a predictable query workload that often filters or joins on a particular column. It can help minimize data movement between nodes, which can improve query performance.

    Indexing: Clustered Columnstore: This type of index is highly recommended for large fact tables in Azure Synapse Analytics due to its high compression rate, which results in cost-effective storage and improved query performance. It's excellent for large tables and allows for storing more data in memory, leading to improved performance for analytics queries.

    Partitioning: Date: Since the data has a date aspect (it's loaded daily), partitioning the data on the date can significantly improve query performance. It allows the system to skip over data that doesn't apply to a particular query, leading to faster processing times.

    Now, as for the question about Clustered Indexing:

    Indexing: Clustered: A clustered index is more optimal for OLTP workloads where there are frequent single row lookup queries, as the rows are stored physically on the disk in the order of the index. However, for a data warehousing workload like in this scenario, where large amounts of data are loaded and queried, a columnstore index would be a better choice because of its high compression rate and the way it optimizes column-wise querying, which is more common in analytical queries.

        - [x] Distribution: Hash
        - [ ] Distribution: Replicated
        - [ ] Distribution: Round-robin
        - [ ] Indexing: Clustered
        - [x] Indexing: Clustered columnstore
        - [ ] Indexing: Heap
        - [x] Partitioning: Date
        - [ ] Partitioning: None