article.index.md




not just for searching. It is beneficial when: Sorting, Join operations, Grouping, Foreign Key lookups


Indexing 

In SQL Server two type of B-tree (clustered and non clustered)
    in sql we have 
    both clustered and non-clustered indexes in SQL Server (and in many other database management systems) are implemented using a variant of the B-tree data structure, specifically a type of B-tree called a B+ tree.

    In a B+ tree, all the data is stored at the leaf nodes, and the internal nodes are used to guide the search. This makes B+ trees well-suited for storage systems like databases that need to read and write large blocks of data at once.

    For a clustered index, the data rows themselves are stored at the leaf nodes of the B+ tree in the order of the index key. The index key is usually, but not necessarily, the primary key of the table. Because the data rows themselves are in the B+ tree, there can be only one clustered index per table.

    For a non-clustered index, the leaf nodes of the B+ tree do not contain the data rows themselves. Instead, they contain the index keys and pointers to the data rows. This means that you can have multiple non-clustered indexes per table, each with a different key. However, because there's an extra level of indirection (the pointer), accessing data through a non-clustered index can be slightly less efficient than accessing it through a clustered index.

B minus tree
    The B-minus tree, on the other hand, is a variation of the B tree where non-leaf nodes only contain pointers to child nodes, and the key values are stored only in the leaf nodes. It is a different structure than the B+ tree used for clustered indexes.

     In a B- tree, non-leaf nodes do not contain key values, only pointers to child nodes.

        The B- tree is typically used in scenarios where there are strict memory limitations and a small number of keys per node. It is more suitable for in-memory data structures or scenarios where the tree needs to be stored entirely in memory.

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


sandbox
Generate your test data: You can manually create your test data, but with the volume you're speaking of, it might be easier to use a tool or write a script to generate it. There are many data generation tools available online, such as Mockaroo, GenerateData.com, etc.

Searching: 
    title, author, or ISBN
    library card number or patron name
sort
    overdue books by the date they were due 
    title
    author
join 
    list of books checked out with a list of patron contact information
Grouping
    for categorizing data
        book by genre
        patrons by the city they live in. This can help the librarian make decisions, such as which types of books to order more of.

Foreign Key Lookups: In a database context, foreign keys are used to link records in different tables. In a library, one use case might be linking a checkout record to a specific book and patron. The checkout record may have a book_id field and a patron_id field which are the "foreign keys". When a librarian wants to see who has checked out a specific book, they would use these foreign keys to lookup the information in the patron table and the books table.

