##   667_WTF

#### 0028::
`You are developing a .Net web application that stores data in Azure Cosmos DB. 
`The application must use the Core API and allow millions of reads and writes.
`The Azure Cosmos DB account has been created with multiple write regions enabled. 
`The application has been deployed to the East US2 and Central US regions.
`You need to update the application to support multi-region writes.
`What are two possible ways to achieve this goal? 

- [ ] Update the ConnectionPolicy class for the Cosmos client and populate the PreferredLocations property based on the geo-proximity of the application.
- [ ] Update Azure Cosmos DB to use the Strong consistency level. Add indexed properties to the container to indicate region.
- [x] Update the ConnectionPolicy class for the Cosmos client and set the UseMultipleWriteLocations property to true.
- [x] Create and deploy a custom conflict resolution policy.
- [ ] Update Azure Cosmos DB to use the Session consistency level. Send the SessionToken property value from the FeedResponse object of the write action to the end-user by using a cookie.


#### 0021_todo B [3v]::You are developing a web application that will use Azure Storage. Older data will be less frequently used than more recent data.
`You need to configure data storage for the application. You have the following requirements:
`✑ Retain copies of data for five years.
`✑ Minimize costs associated with storing data that is over one year old.
`✑ Implement Zone Redundant Storage for application data.
`What should you do?
`
`Configure data retention

- [ ] Snapshot blobs and move them to the archive tier
- [x] Set a lifecycle management policy to move blobs to the cool tier
- [ ] Use AzCopy to copy the data to an on-premises device for backup
- [ ] Set a lifecycle management policy to move blobs to the archive tier


#### Q9.10::
`Security -
`All SSL certificates and credentials must be stored in Azure Key Vault.
`File access must restrict access by IP, protocol, and Azure AD rights.
`All user accounts and processes must receive only those privileges which are essential to perform their intended function.
`Issues -
`
`Logic app -
`You test the Logic app in a development environment. The following error message displays:
`'400 Bad Request'
`Troubleshooting of the error shows an HttpTrigger action to call the RequestUserApproval function.
`
`Question
`
`You need to correct the Azure Logic app error message.

- [x] authentication level : anonymous
- [ ] authentication level : function
- [ ] authentication level : admin
- [x] managed identity : system-assigned
- [ ] managed identity : user-assigned

#### Q9.28::
`Retail store locations -
`Azure Functions must process data immediately when data is ploaded to Blob storage. Azure Functions must update Azure Cosmos DB by using native SQL language queries.
`
`Question
`
`You need to implement event routing for retail store location data.

- [x] Source : Azure Blob Storage
- [ ] Source : Azure Event Grid
- [ ] Source : Azure Service Bus
- [ ] Source : Azure Event Hub
- [x] Receiver : Azure Event Grid
- [ ] Receiver : Azure Event Hub
- [ ] Receiver : Azure Service Bus
- [ ] Receiver : Azure Blob Storage
- [x] Handler : Azure Function App
- [ ] Handler : Azure Logic App
- [ ] Handler : Azure Event Grid
- [ ] Handler : Azure Blob Storage



#### Q9.4 ::
`Shipping Function app -
`Implement secure function endpoints by using app-level security and include Azure Active Directory (Azure AD).
`
`Shipping website -
`Use Azure Content Delivery Network (CDN) and ensure maximum performance for dynamic content while minimizing latency and costs.
`
`Issues -
`
`Shipping website and REST APIs -
`The following error message displays while you are testing the website:
`Failed to load http://test-shippingapi.wideworldimporters.com/: No 'Access-Control-Allow-Origin' header is present on the requested resource. Origin 'http://test.wideworldimporters.com/' is therefore not allowed access.
`
`Question
`
`You need to secure the Shipping Function app.
`How should you configure the app?

- [ ] Authorization level : Function
- [x] Authorization level : Anonymous
- [ ] Authorization level : Admin
- [x] User claims : JSON Web Token (JWT)
- [ ] User claims : Shared Access Signature (SAS) token
- [ ] User claims : API Key
- [ ] Trigger type : blob
- [x] Trigger type : HTTP
- [ ] Trigger type : queue
- [ ] Trigger type : timer



#### Q9.8::
`Requirements -
`
`Corporate website -
`Communications and content must be secured by using SSL.
`Communications must use HTTPS.
`Data must be replicated to a secondary region and three availability zones.
`Data storage costs must be minimized.
`
`Issues -
`
`Corporate website -
`While testing the site, the following error message displays:
`CryptographicException: The system cannot find the file specified.
`
`Function app -
`You perform local testing for the RequestUserApproval function. The following error message displays:
`'Timeout value of 00:10:00 exceeded by function: RequestUserApproval'
`The same error message displays when you test the function in an Azure development environment when you run the following Kusto query:
`
`FunctionAppLogs -
`| where FunctionName = = "RequestUserApproval"
`
`Logic app -
`You test the Logic app in a development environment. The following error message displays:
`'400 Bad Request'
`Troubleshooting of the error shows an HttpTrigger action to call the RequestUserApproval function.
`
`Question
`
`You need to configure API Management for authentication.

- [ ] Policy : Check HTTP header
- [ ] Policy : Restrict caller IPs
- [ ] Policy : Limit call rate by key
- [x] Policy : Validate JWT
- [x] Policy section : Inbound
- [ ] Policy section : Outbound



#### Q9.19::
`Security -
`All SSL certificates and credentials must be stored in Azure Key Vault.
`File access must restrict access by IP, protocol, and Azure AD rights.
`All user accounts and processes must receive only those privileges which are essential to perform their intended function.
`
`Compliance -
`Auditing of the file updates and transfers must be enabled to comply with General Data Protection Regulation (GDPR). The file updates must be read-only, stored in the order in which they occurred, include only create, update, delete, and copy operations, and be retained for compliance reasons.
`
`Question
`
`You need to configure security and compliance for the corporate website files.
`Which Azure Blob storage settings should you use?

- [ ] Restrict file access : role-based access control (RBAC)
- [ ] Restrict file access : managed identity
- [x] Restrict file access : shared access signature (SAS) token
- [ ] Restrict file access : connection string
- [ ] Enable file auditing : access tier
- [x] Enable file auditing : change feed
- [ ] Enable file auditing : blob indexer
- [ ] Enable file auditing : storage account type

#### Q9.15::
`Issues -
`
`Retail Store Locations -
`You must perform a point-in-time restoration of the retail store location data due to an unexpected and accidental deletion of data.
`Azure Cosmos DB queries from the Azure Function exhibit high Request Unit (RU) usage and contain multiple, complex queries that exhibit high point read latency for large items as the function app is scaling.
`
`Question
`
`You need to audit the retail store sales transactions.
`What are two possible ways to achieve the goal?

- [ ] Update the retail store location data upload process to include blob index tags. Create an Azure Function to process the blob index tags and filter by store location.
- [x] Process the change feed logs of the Azure Blob storage account by using an Azure Function. Specify a time range for the change feed data.
- [ ] Enable blob versioning for the storage account. Use an Azure Function to process a list of the blob versions per day.
- [ ] Process an Azure Storage blob inventory report by using an Azure Function. Create rule filters on the blob inventory report.
- [x] Subscribe to blob storage events by using an Azure Function and Azure Event Grid. Filter the events by store location.

