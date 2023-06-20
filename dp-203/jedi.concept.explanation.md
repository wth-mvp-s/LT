# Azure Cosmos DB
    globally distributed, 
    multi-model database service
        does not serve as a reference data source

# Azure IoT Hub
    central message hub between IoT vs devices it manages
        does not serve as a reference data source.
# Azure Blob Storage 
>>>     Reference data is stored in Azure Blob Storage 
            used to perform lookups or join data to the incoming events
                This feature is used in scenarios where the incoming data stream needs to be augmented or looked up against a static dataset.
>>> JEDI when speaking about tools and service
>>> why would you need one or another 
# Azure Stream Analytics
>>>     supports SQL-like language for transformation
# Azure Databricks
>>>     built-in support for Java (and Scala, Python, R, and SQL)
            You are planning a solution to aggregate streaming data that   originates in Apache Kafka and is output to Azure Data Lake Storage Gen2. The developers who will implement the stream processing solution use Java.


#   IMPORTANT CONCEPTS
##      PARTITION
            Partitioning in the context of databases is a technique that divides a large database or table into smaller, more manageable parts called partitions. Each partition can be managed and accessed independently. This division is typically based on different characteristics of the data, such as the date a record was created (time-based partitioning), geographical location (list partitioning), or a range of values in a column (range partitioning).

        Here are some key benefits of partitioning:

            Improved Query Performance: Since each partition is smaller than the whole database, queries that only need to access certain partitions can run faster because they have less data to scan.

            Manageability: By partitioning a large table into smaller ones, tasks such as backups, indexing, and updates can be performed on individual partitions rather than the entire table, making these operations faster and less likely to impact overall system performance.

            Availability: If a problem or a failure affects a specific partition, the other partitions can remain online and accessible, limiting the impact of the issue.

            For example, in the context of your previous question, a sales data table could be partitioned by month, with each partition containing sales data for a particular month. At the beginning of each month, the oldest partition (containing data older than 36 months) could be quickly removed to keep the data within a 36-month window.

            It's important to note that the choice to partition data should be carefully considered, as there are also costs and complexities associated with this strategy. It's best suited for large databases where the benefits of partitioning would outweigh these considerations.

##  DISTRIBUTION
        In the context of databases, particularly distributed databases, data distribution refers to the way data is spread across different nodes or physical locations. It's a method of storing different pieces of data in different places to improve performance, availability, and resilience.

        In Azure Synapse Analytics, distribution is used to determine how the rows of a table are spread across the distributions when the table is created. The distribution chosen can significantly impact query performance.

        There are three types of distributions:

            1. Round Robin Distribution:

                Round Robin distribution distributes the rows evenly across all nodes, one after another.

                Node 1: A, D, G
                Node 2: B, E, H
                Node 3: C, F
            2. Hash Distributed:

                Hash distribution distributes the rows based on the value of a hash function applied to a specific column (let's say a column that categorizes our data into three categories: Cat, Dog, Fish).

                Node 1 (Cat): A, D, G
                Node 2 (Dog): B, E, H
                Node 3 (Fish): C, F
            3. Replicate Distribution:

                Replicate distribution creates a full copy of the table on every node.

                Node 1: A, B, C, D, E, F, G, H
                Node 2: A, B, C, D, E, F, G, H
                Node 3: A, B, C, D, E, F, G, H





# Azure Stream Analytics
    real-time analytics and complex event-processing engine
    used to analyze and visualize streaming data in real-time.
        - can ingest data from Azure Event Hubs
        - perform analytics on it using a SQL-like language
        - output the data to various sources like another Event Hub
        
        has built-in geospatial functions, which can be used to determine whether a point (like a GPS position) is within a specified polygon (like the expected area for each vehicle).

##          Streaming Data: 
            tweet, IoT, Stock market data, Web server logs
            
            description
                real-time continuously generated, small sizes (e.g. sensor data) generated constantly and in large volumes. 
            
            characteristics
                velocity, 
                volume, 
                variety.

##          # Reference Data (lookup data) 
            Product information, Customer information, Geographical data
            
            characteristics
                static or slowly changing, can be used to augment or enrich the streaming data
                context to the streaming data
                

# Windows
     No window would imply processing each event individually
     
     Session windows group events that arrive at similar times
     
     Tumbling windows are fixed-sized, non-overlapping, and contiguous time intervals

     Hopping window hops forward in time by a fixed period. This means that if you have a Hopping window size of one minute, and it hops every 30 seconds, it can cover the events within the desired 30 seconds time frame, ensuring a quicker response to the event.



Read-access geo-redundant storage (RA-GRS): This option provides the highest level of data durability by replicating your data to a secondary geographic location (hence "geo-redundant"). The "read-access" part means that not only is your data copied to a secondary location, but it's also available for read access if the primary location becomes unavailable. This is why it's the correct choice for ensuring availability for read workloads during an outage in the primary region, while still keeping costs relatively low.

Geo-redundant storage (GRS): This is similar to RA-GRS in that it replicates your data to a secondary geographic location. The difference, however, is that with GRS, the data in the secondary location isn't available for read access if the primary location becomes unavailable. You can only access the data in the secondary location if Microsoft initiates a failover from the primary to secondary location.

Zone-redundant storage (ZRS): ZRS replicates your data across multiple datacenters in the same region (or across regions in some cases). However, if an entire region experiences an outage (which is the scenario specified in the question), ZRS wouldn't ensure that the data is available for read workloads in a secondary region.

Locally-redundant storage (LRS): LRS replicates your data within the same data center. It doesn't replicate the data to another region, so it wouldn't help if an outage occurs in the primary region.