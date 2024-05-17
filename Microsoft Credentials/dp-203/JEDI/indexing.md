
INDEXING

    specific choice of index type depends on the specific workload and usage patterns.


    specifically designed for columnstore databases
        
        NONCLUSTERED COLUMNSTORE
            index stores each column's data in a separate set of disk pages
                
            for 
                best for large amounts of data and queries that perform aggregations across large datasets.

            supported by
                Azure Synapse Analytics (SQL Data Warehouse)
                Azure SQL Database    
        
        
        
        CLUSTERED COLUMNSTORE
              ideal for large fact tables 
              
              
              Fact tables contain the quantitative or factual data about a business

              Sale_ID	Product_ID	Time_ID	Customer_ID	Location_ID	Total_Sale	Quantity_Sold	Discount
                1	1001	T1	C1	L1	$100	5	$10
                2	1002	T2	C2	L2	$150	10	$20
                3	1003	T3	C3	L3	$120	8	$15

                                    for queries perform a full scan of all data. These indexes can offer high compression and performance benefits for such workloads.
    
            supported by
                Azure Synapse Analytics (SQL Data Warehouse)
                Azure SQL Database    

    traditional row-based indexes
        NONCLUSTERED
            form of B-tree indexes

            Improves query performance for specific queries involving filtering or joining on specific columns.

        CLUSTERED
            Determines the physical order of data in a table, useful when frequently querying or sorting data based on a specific column.


# pour les dev

    - on peux indexer tout, juste string and binary can be ineficient

    in SQL server TEXT, NTEXT, IMAGE are not indexable, those types are deprecated, recommended to use VARCHAR(MAX), VARBINARY(MAX)

        Trade-Offs: take up space, slow INSERT, UPDATE, DELETE, because the database server must keep the index updated. 

Certain complex data types, like XML and spatial data types (GEOMETRY and GEOGRAPHY), have their own special types of indexes (XML indexes and spatial indexes, respectively).


 [20, 30]
       /    |    \
[10] [21, 25] [31, 40, 50]