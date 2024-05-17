replicated

round-robin

hash distributed

.........................................

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

# Azure Synapse Analytics
    known as SQL Data Warehouse
    parallel bdd sql 
    data distribution types : 
        round robin - evenly 
        hash - best perf for join, aggregation
        replicate - on each compute node, full copy. for dimension table in star schema
    fact - infos about events like renting 