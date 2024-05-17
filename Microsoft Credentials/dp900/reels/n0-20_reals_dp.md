##   n0-20_reals_dp


#### Q1. Descriptive analytics tells you 

- [ ] what is most likely to occur in the future. 
- [x] what occured in the past. 
- [ ] which actions you can perform to affect outcomes
- [ ] why sometimes occured in the past

#### Q2. Normalization involves eliminating relationships between database tables. 

- [ ] Yes
- [x] No

#### Q2. Normalization a database reduces data redundency. 

- [x] Yes
- [ ] No

#### Q2. Normalization improves data integrity. 

- [x] Yes
- [ ] No

#### Q3. An extract, transform, and load (ETL) process requires

- [ ] A matching schema in the data source and the data target. 
- [x] a target data store powerful enough to transform data. 
- [ ] data that is fully processed before being loaded to the target data store
- [ ] that the data target be a relational database

#### Q4. In batch processing, 

- [ ] data is always inserted one row at a time. 
- [ ] data is processed in real-time. 
- [x] latency is expected. 
- [ ] processing can only execute serially. 

































#### Q5. Transcribing audio files is an example of ...... analytics. 
- [x] cognitive
- [ ] descriptive
- [ ] predictive
- [ ] prescriptive

#### Q6. .... Why did sales increase last month? 
- [ ] Cognitive
- [x] Diagnostic
- [ ] Descriptive
- [ ] Predictive
- [ ] Prescriptive


#### Q6. .... How do I allocate my budget to buy diffirent inventory items? 
- [ ] Cognitive
- [ ] Diagnostic
- [ ] Descriptive
- [ ] Predictive
- [x] Prescriptive

#### Q6. .... Which people are mentioned in a company's business documents? 
- [ ] Cognitive
- [ ] Diagnostic
- [x] Descriptive
- [ ] Predictive
- [ ] Prescriptive

#### Q7. You have the following JSON document.
`"customer" : {
`    "first name" : "Ben",
`    "last name" : "Smith", 
`    "address" : {
`        "line1" : "161 Azure Ln",
`        "line2" : "Palo Alto",
`        "Zip code" : "54762"
`    }, 
`    "social media" : [
`        {
`            "service" : "twitter", 
`            "handle" : "@bensmith"
`        },
`        {
`            "service" : "LinkedIn", 
`            "handle" : "bensmith"
`        }
`    ],
`    "phone numbers" : [
`        {
`        "type" : "mobile", 
`        "number" : "555-555-555"
`        }
`    ]
`}
`
`Customer is 

- [ ] a nasted array
- [ ] a nasted object
- [x] a root object

#### Q7. You have the following JSON document.
`"customer" : {
`    "first name" : "Ben",
`    "last name" : "Smith", 
`    "address" : {
`        "line1" : "161 Azure Ln",
`        "line2" : "Palo Alto",
`        "Zip code" : "54762"
`    }, 
`    "social media" : [
`        {
`            "service" : "twitter", 
`            "handle" : "@bensmith"
`        },
`        {
`            "service" : "LinkedIn", 
`            "handle" : "bensmith"
`        }
`    ],
`    "phone numbers" : [
`        {
`        "type" : "mobile", 
`        "number" : "555-555-555"
`        }
`    ]
`}
`
`Address is 

- [ ] a nasted array
- [x] a nasted object
- [ ] a root object

#### Q7. You have the following JSON document.
`"customer" : {
`    "first name" : "Ben",
`    "last name" : "Smith", 
`    "address" : {
`        "line1" : "161 Azure Ln",
`        "line2" : "Palo Alto",
`        "Zip code" : "54762"
`    }, 
`    "social media" : [
`        {
`            "service" : "twitter", 
`            "handle" : "@bensmith"
`        },
`        {
`            "service" : "LinkedIn", 
`            "handle" : "bensmith"
`        }
`    ],
`    "phone numbers" : [
`        {
`        "type" : "mobile", 
`        "number" : "555-555-555"
`        }
`    ]
`}
`
`Social media is 

- [x] a nasted array
- [ ] a nasted object
- [ ] a root object

#### Q8. You are reviewing the data model shown in the following exhibit.
`Customer                                 Product
`Key: CustomerID                          Key: ProductID                                     
`Foreign Keys: None___             _______Foreign Keys: None
`                     |            |
`                         Sales
`                    Key: SalesID
`                    ForeignKeys: CustomerID, ProductID, SalesPersonID, WarehouseID
`                      |           |
`    SalesPerson________            _________Warehouse
`    Key: SalesPersonID                      Key: WarehouseID
`    ForeignKeys: None                       ForeignKeys: None      
`
`The Data model is a 

- [ ] transactional model
- [x] star schema
- [ ] snowflakeschema

#### Q8. You are reviewing the data model shown in the following exhibit.
`Customer                                 Product
`Key: CustomerID                          Key: ProductID                                     
`Foreign Keys: None___             _______Foreign Keys: None
`                     |            |
`                         Sales
`                    Key: SalesID
`                    ForeignKeys: CustomerID, ProductID, SalesPersonID, WarehouseID
`                      |           |
`    SalesPerson________            _________Warehouse
`    Key: SalesPersonID                      Key: WarehouseID
`    ForeignKeys: None                       ForeignKeys: None      
`
`Customer is a 

- [ ] fact
- [x] dimension
- [ ] bridge











































#### Q9. The massively parallel processing (MPP) engine of Azure Synapse Analytics
 
- [x] distributes processing across compute nodes. 
- [ ] distributes processing across control nodes. 
- [ ] redirects client connections across compute nodes. 
- [ ] redirects client connections across control nodes. 

#### Q10. _______ is an object associated with a table that sorts and stores the data rows in the table based on their key values. 

- [x] A cluster index
- [ ] A FileTable
- [ ] A foreign key
- [ ] A stored procedure

#### Q11. A relational database is appropriate for scenarios that involve a high volume of

- [ ] changes to relationships between entities
- [ ] geographically distributed writes
- [x] transactional writes
- [ ] writes that have varying data structures

#### Q12. Batch processing can output data to a file store

- [x] Yes
- [ ] No

#### Q12. Batch processing can output data to a relational database

- [ ] Yes
- [x] No

#### Q12. Batch processing can output data to a NoSQL database

- [ ] Yes
- [x] No



#### Q13. Your company plans to load data from a customer relationship management (CRM) system to a data warehouse by using an extract, load, and transform (ELT) process. Where does data processing occur for each stage of the ELT process? To answer, drag the appropriate locations to the correct stages. Each location may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`Extract:

- [ ] An in-memory data integration tool 
- [x] The CRM system
- [ ] The data warehouse

#### Q13. Your company plans to load data from a customer relationship management (CRM) system to a data warehouse by using an extract, load, and transform (ELT) process. Where does data processing occur for each stage of the ELT process? To answer, drag the appropriate locations to the correct stages. Each location may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`Load:

- [ ] An in-memory data integration tool 
- [ ] The CRM system
- [x] The data warehouse

#### Q13. Your company plans to load data from a customer relationship management (CRM) system to a data warehouse by using an extract, load, and transform (ELT) process. Where does data processing occur for each stage of the ELT process? To answer, drag the appropriate locations to the correct stages. Each location may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`Transform:

- [ ] An in-memory data integration tool 
- [ ] The CRM system
- [x] The data warehouse

#### Q14. A visualisation that shows a university's current student enrollment versus the maximum capacity is an example of _____ analytics. 

- [ ] cognitive
- [x] descriptive
- [ ] predictive 
- [ ] prescriptive

#### Q15. A chart of colored, nested rectangles that displays individual data points represented by the size and color of a relative rectangle

- [ ] Key influencer
- [ ] Scatter
- [x] Treemap


#### Q15. A chart that displays the major contributors of a selected result or value

- [x] Key influencer
- [ ] Scatter
- [ ] Treemap

#### Q15. A chart that shows the relationship between two numerical values

- [ ] Key influencer
- [x] Scatter
- [ ] Treemap

#### Q16. You need to create an Azure Storage account. Data in the account must replicate outside the Azure region automatically. Which two types of replication can you use for the storage account? Each correct answer presents a complete solution.

- [ ]  zone-redundant storage (ZRS)
- [x] read-access geo-redundant storage (RA-GRS)
- [ ] locally-redundant storage (LRS)
- [x] geo-redundant storage (GRS)

#### Q17. Platform as a service (PaaS) database offerings in Azure require less setup and configuration effort than infrastructure as a service (IaaS) database offerings.

- [x] Yes
- [ ] No


#### Q17. Platform as a service (PaaS) database offerings in Azure provide administrators with the ability to control and update tha operating system version. 

- [x] Yes
- [ ] No


#### Q17. All relation and non-relational platform as a service (PaaS) database offerings in Azure can be paused to reduce costs. 

- [ ] Yes
- [x] No

#### Q18. Which statement is an example of Data Manipulation Language (DML)?

- [ ] REVOKE
- [ ] DISABLE
- [x] INSERT
- [ ] GRANT

#### Q19. You have a SQL query that combines customer data and order data. The query includes calculated columns. You need to create a database object that would allow other users to rerun the same SQL query. What should you create?

- [ ] an index
- [x] a view
- [ ] a scalar function
- [ ] a table

#### Q20. A key/value data store is optimized for 

- [ ] enforcing constraints
- [x] simple lookups
- [ ] table joins
- [ ] transactions
