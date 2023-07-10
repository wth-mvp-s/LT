
with  primary key , an index on the primary key column is automatically created. on many but not all for FK too, 
    For example, in PostgreSQL, an index is automatically created for primary key constraints, but not for foreign key constraints. In MySQL, both primary and foreign key constraints lead to automatic index creation.

index can include NULL, handles them differently

composite index. (multi column)

low high cardinality, numbers of unique values
    LC bitmap, clustered  
    HC b-tree, hash index


