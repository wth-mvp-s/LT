Indexing 

In SQL Server two type of B-tree (clustered and non clustered)
    in sql we have 
    both clustered and non-clustered indexes in SQL Server (and in many other database management systems) are implemented using a variant of the B-tree data structure, specifically a type of B-tree called a B+ tree.

    In a B+ tree, all the data is stored at the leaf nodes, and the internal nodes are used to guide the search. This makes B+ trees well-suited for storage systems like databases that need to read and write large blocks of data at once.

    For a clustered index, the data rows themselves are stored at the leaf nodes of the B+ tree in the order of the index key. The index key is usually, but not necessarily, the primary key of the table. Because the data rows themselves are in the B+ tree, there can be only one clustered index per table.

    For a non-clustered index, the leaf nodes of the B+ tree do not contain the data rows themselves. Instead, they contain the index keys and pointers to the data rows. This means that you can have multiple non-clustered indexes per table, each with a different key. However, because there's an extra level of indirection (the pointer), accessing data through a non-clustered index can be slightly less efficient than accessing it through a clustered index.

- Columnstore Indexes: Columnstore indexes store data in a column-wise format, unlike traditional rowstore indexes. This type of index is designed for data warehousing workloads where queries often involve aggregates computed over large amounts of data.
- Full-text Indexes: Full-text indexes in SQL Server support complex word-processing operations for a text query, such as word inflection, thesaurus and noise words, or word proximity. They are useful for queries that perform linguistic searches on text data.
- Spatial Indexes: SQL Server supports spatial indexes for spatial data, which can be used to optimize queries involving spatial data.
- XML Indexes: XML indexes can be used in SQL Server to optimize queries over XML data.

    Storing Data in XML:
        Flexibility: XML allows you to store complex, hierarchical data structures that don't fit neatly into a traditional column-based schema.
        Self-Describing: XML is self-describing, meaning the structure and meaning of the data can be embedded within the XML itself, making it more human-readable and self-contained.
        Extensibility: XML allows for easy addition of new elements or attributes to the data structure without modifying the table schema.
        Data Consistency: If the data structure evolves over time, using XML can make it easier to handle backward compatibility and accommodate changes.
        Querying: SQL Server provides powerful XML querying capabilities, allowing you to retrieve, filter, and transform XML data using XPath or XQuery.

- Filtered Indexes: A filtered index is a non-clustered index with a filter predicate. The index includes only the rows that satisfy the predicate.
- Hash Indexes: Hash indexes are used with memory-optimized tables in SQL Server, they are optimized for equality-based lookups.

with  primary key , an index on the primary key column is automatically created. on many but not all for FK too, 
    For example, in PostgreSQL, an index is automatically created for primary key constraints, but not for foreign key constraints. In MySQL, both primary and foreign key constraints lead to automatic index creation.

index can include NULL, handles them differently

composite index. (multi column)

low high cardinality, numbers of unique values
    LC bitmap, clustered  
    HC b-tree, hash index


