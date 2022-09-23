##   4°_n75-100_septneworder



#### Q15.1? ::You are building a traffic monitoring system that monitors traffic along six highways. The system produces time series analysis-based reports for each highway.
`Data from traffic sensors are stored in Azure Event Hub.
`Traffic data is consumed by four departments. Each department has an Azure Web App that displays the time series-based reports and contains a WebJob that processes the incoming data from Event Hub. All Web Apps run on App Service Plans with three instances.
`Data throughput must be maximized. Latency must be minimized.
`You need to implement the Azure Event Hub.
`Which settings should you use? To answer, select the appropriate options in the answer area.
`
`Number of partitions

- [ ] 3
- [ ] 4
- [x] 6
- [ ] 12


#### Q15.2? ::You are building a traffic monitoring system that monitors traffic along six highways. The system produces time series analysis-based reports for each highway.
`Data from traffic sensors are stored in Azure Event Hub.
`Traffic data is consumed by four departments. Each department has an Azure Web App that displays the time series-based reports and contains a WebJob that processes the incoming data from Event Hub. All Web Apps run on App Service Plans with three instances.
`Data throughput must be maximized. Latency must be minimized.
`You need to implement the Azure Event Hub.
`Which settings should you use? To answer, select the appropriate options in the answer area.
`
`partition Key

- [x] Highway
- [ ] Department
- [ ] Timestamp
- [ ] VM name



#### Q16 ::You are developing a microservices solution. You plan to deploy the solution to a multinode Azure Kubernetes Service (AKS) cluster.
`You need to deploy a solution that includes the following features:
`✑ reverse proxy capabilities
`✑ configurable traffic routing
`✑ TLS termination with a custom certificate
`Which components should you use? To answer, drag the appropriate components to the correct requirements. Each component may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Deploy solution

- [x] Helm
- [ ] Draft
- [ ] Brigade
- [ ] KubeCtl
- [ ] Ingress Controller
- [ ] CoreDNS
- [ ] Virtual Kubelet


#### Q16.2 ::You are developing a microservices solution. You plan to deploy the solution to a multinode Azure Kubernetes Service (AKS) cluster.
`You need to deploy a solution that includes the following features:
`✑ reverse proxy capabilities
`✑ configurable traffic routing
`✑ TLS termination with a custom certificate
`Which components should you use? To answer, drag the appropriate components to the correct requirements. Each component may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`View cluster and external IP addressing. 

- [ ] Helm
- [ ] Draft
- [ ] Brigade
- [x] KubeCtl
- [ ] Ingress Controller
- [ ] CoreDNS
- [ ] Virtual Kubelet



#### Q16.3 ::You are developing a microservices solution. You plan to deploy the solution to a multinode Azure Kubernetes Service (AKS) cluster.
`You need to deploy a solution that includes the following features:
`✑ reverse proxy capabilities
`✑ configurable traffic routing
`✑ TLS termination with a custom certificate
`Which components should you use? To answer, drag the appropriate components to the correct requirements. Each component may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Implement a single, public IP endpoint that is routed to multiple microservices. 

- [ ] Helm
- [ ] Draft
- [ ] Brigade
- [ ] KubeCtl
- [x] Ingress Controller
- [ ] CoreDNS
- [ ] Virtual Kubelet


#### 0016_image  ::You are implementing an order processing system. 
`A point of sale application publishes orders to topics in an Azure Service Bus queue. The Label property for the topic includes the following data:
`¦---Property-------¦-------Description------------------------¦
`¦-------------------------------------------------------------¦
`¦-ShipLocation-----¦-the country/region where ----------------¦
`¦------------------¦-the orderwill be shipped ----------------¦
`¦-------------------------------------------------------------¦
`¦-CorrelationId----¦-a priority value for the order-----------¦
`¦-------------------------------------------------------------¦
`¦-Quantity---------¦-a user-defined field that stores --------¦
`¦------------------¦-the quantity of items in an -------------¦
`¦------------------¦-order------------------------------------¦
`¦-------------------------------------------------------------¦
`¦-AuditedAt--------¦-a user-defined field that records--------¦
`¦------------------¦-the data an order is audited-------------¦
`¦-------------------------------------------------------------¦
`The system has the following requirements for subscriptions:
`
`¦---FutureOrders---¦-This subscription is reserved for future-¦
`¦------------------¦------use and must not receive any orders-¦
`¦-------------------------------------------------------------¦
`¦HighPriorityOrders¦-Handle all high priority orders and------¦
`¦----------------------------------------international orders-¦
`¦-------------------------------------------------------------¦
`¦InternationalOrders¦-Handle orders where the country/region is
`¦-----------------------not United States---------------------¦
`¦-------------------------------------------------------------¦
`¦HighQuantityOrders-¦-Handle only orders with quantyities-----¦
`¦------------------------greater than 100 units---------------¦
`¦-------------------------------------------------------------¦
`¦AllOrders-----------¦-This subscription is used for auditing
`¦purposes. This subscription must receive every single order.
`¦AllOrders has an Action defined that updates the AuditedAt
`¦property to include the data and time it was received by the
`¦subscription. 
`
`
`You need to implement filtering and maximize throughput while evaluating filters.
`Which filter types should you implement?
`
`FutoreOrders

- [x] SQLFilter
- [ ] CorrelationFilter
- [ ] No Filter


#### 0016_image  ::You are implementing an order processing system. 
`A point of sale application publishes orders to topics in an Azure Service Bus queue. The Label property for the topic includes the following data:
`¦---Property-------¦-------Description------------------------¦
`¦-------------------------------------------------------------¦
`¦-ShipLocation-----¦-the country/region where ----------------¦
`¦------------------¦-the orderwill be shipped ----------------¦
`¦-------------------------------------------------------------¦
`¦-CorrelationId----¦-a priority value for the order-----------¦
`¦-------------------------------------------------------------¦
`¦-Quantity---------¦-a user-defined field that stores --------¦
`¦------------------¦-the quantity of items in an -------------¦
`¦------------------¦-order------------------------------------¦
`¦-------------------------------------------------------------¦
`¦-AuditedAt--------¦-a user-defined field that records--------¦
`¦------------------¦-the data an order is audited-------------¦
`¦-------------------------------------------------------------¦
`The system has the following requirements for subscriptions:
`
`¦---FutureOrders---¦-This subscription is reserved for future-¦
`¦------------------¦------use and must not receive any orders-¦
`¦-------------------------------------------------------------¦
`¦HighPriorityOrders¦-Handle all high priority orders and------¦
`¦----------------------------------------international orders-¦
`¦-------------------------------------------------------------¦
`¦InternationalOrders¦-Handle orders where the country/region is
`¦-----------------------not United States---------------------¦
`¦-------------------------------------------------------------¦
`¦HighQuantityOrders-¦-Handle only orders with quantyities-----¦
`¦------------------------greater than 100 units---------------¦
`¦-------------------------------------------------------------¦
`¦AllOrders-----------¦-This subscription is used for auditing
`¦purposes. This subscription must receive every single order.
`¦AllOrders has an Action defined that updates the AuditedAt
`¦property to include the data and time it was received by the
`¦subscription. 
`
`
`You need to implement filtering and maximize throughput while evaluating filters.
`Which filter types should you implement?
`
`HighPriorityOrders

- [ ] SQLFilter
- [x] CorrelationFilter
- [ ] No Filter


#### 0016_image  ::You are implementing an order processing system. 
`A point of sale application publishes orders to topics in an Azure Service Bus queue. The Label property for the topic includes the following data:
`¦---Property-------¦-------Description------------------------¦
`¦-------------------------------------------------------------¦
`¦-ShipLocation-----¦-the country/region where ----------------¦
`¦------------------¦-the orderwill be shipped ----------------¦
`¦-------------------------------------------------------------¦
`¦-CorrelationId----¦-a priority value for the order-----------¦
`¦-------------------------------------------------------------¦
`¦-Quantity---------¦-a user-defined field that stores --------¦
`¦------------------¦-the quantity of items in an -------------¦
`¦------------------¦-order------------------------------------¦
`¦-------------------------------------------------------------¦
`¦-AuditedAt--------¦-a user-defined field that records--------¦
`¦------------------¦-the data an order is audited-------------¦
`¦-------------------------------------------------------------¦
`The system has the following requirements for subscriptions:
`
`¦---FutureOrders---¦-This subscription is reserved for future-¦
`¦------------------¦------use and must not receive any orders-¦
`¦-------------------------------------------------------------¦
`¦HighPriorityOrders¦-Handle all high priority orders and------¦
`¦----------------------------------------international orders-¦
`¦-------------------------------------------------------------¦
`¦InternationalOrders¦-Handle orders where the country/region is
`¦-----------------------not United States---------------------¦
`¦-------------------------------------------------------------¦
`¦HighQuantityOrders-¦-Handle only orders with quantyities-----¦
`¦------------------------greater than 100 units---------------¦
`¦-------------------------------------------------------------¦
`¦AllOrders-----------¦-This subscription is used for auditing
`¦purposes. This subscription must receive every single order.
`¦AllOrders has an Action defined that updates the AuditedAt
`¦property to include the data and time it was received by the
`¦subscription. 
`
`
`You need to implement filtering and maximize throughput while evaluating filters.
`Which filter types should you implement?
`
`InternationalOrders

- [x] SQLFilter
- [ ] CorrelationFilter
- [ ] No Filter


#### 0016_image  ::You are implementing an order processing system. 
`A point of sale application publishes orders to topics in an Azure Service Bus queue. The Label property for the topic includes the following data:
`¦---Property-------¦-------Description------------------------¦
`¦-------------------------------------------------------------¦
`¦-ShipLocation-----¦-the country/region where ----------------¦
`¦------------------¦-the orderwill be shipped ----------------¦
`¦-------------------------------------------------------------¦
`¦-CorrelationId----¦-a priority value for the order-----------¦
`¦-------------------------------------------------------------¦
`¦-Quantity---------¦-a user-defined field that stores --------¦
`¦------------------¦-the quantity of items in an -------------¦
`¦------------------¦-order------------------------------------¦
`¦-------------------------------------------------------------¦
`¦-AuditedAt--------¦-a user-defined field that records--------¦
`¦------------------¦-the data an order is audited-------------¦
`¦-------------------------------------------------------------¦
`The system has the following requirements for subscriptions:
`
`¦---FutureOrders---¦-This subscription is reserved for future-¦
`¦------------------¦------use and must not receive any orders-¦
`¦-------------------------------------------------------------¦
`¦HighPriorityOrders¦-Handle all high priority orders and------¦
`¦----------------------------------------international orders-¦
`¦-------------------------------------------------------------¦
`¦InternationalOrders¦-Handle orders where the country/region is
`¦-----------------------not United States---------------------¦
`¦-------------------------------------------------------------¦
`¦HighQuantityOrders-¦-Handle only orders with quantyities-----¦
`¦------------------------greater than 100 units---------------¦
`¦-------------------------------------------------------------¦
`¦AllOrders-----------¦-This subscription is used for auditing
`¦purposes. This subscription must receive every single order.
`¦AllOrders has an Action defined that updates the AuditedAt
`¦property to include the data and time it was received by the
`¦subscription. 
`
`
`You need to implement filtering and maximize throughput while evaluating filters.
`Which filter types should you implement?
`
`HighQuantityOrders

- [x] SQLFilter
- [ ] CorrelationFilter
- [ ] No Filter


#### 0016_image  [???110voters]::You are implementing an order processing system. 
`A point of sale application publishes orders to topics in an Azure Service Bus queue. The Label property for the topic includes the following data:
`¦---Property-------¦-------Description------------------------¦
`¦-------------------------------------------------------------¦
`¦-ShipLocation-----¦-the country/region where ----------------¦
`¦------------------¦-the orderwill be shipped ----------------¦
`¦-------------------------------------------------------------¦
`¦-CorrelationId----¦-a priority value for the order-----------¦
`¦-------------------------------------------------------------¦
`¦-Quantity---------¦-a user-defined field that stores --------¦
`¦------------------¦-the quantity of items in an -------------¦
`¦------------------¦-order------------------------------------¦
`¦-------------------------------------------------------------¦
`¦-AuditedAt--------¦-a user-defined field that records--------¦
`¦------------------¦-the data an order is audited-------------¦
`¦-------------------------------------------------------------¦
`The system has the following requirements for subscriptions:
`
`¦---FutureOrders---¦-This subscription is reserved for future-¦
`¦------------------¦------use and must not receive any orders-¦
`¦-------------------------------------------------------------¦
`¦HighPriorityOrders¦-Handle all high priority orders and------¦
`¦----------------------------------------international orders-¦
`¦-------------------------------------------------------------¦
`¦InternationalOrders¦-Handle orders where the country/region is
`¦-----------------------not United States---------------------¦
`¦-------------------------------------------------------------¦
`¦HighQuantityOrders-¦-Handle only orders with quantyities-----¦
`¦------------------------greater than 100 units---------------¦
`¦-------------------------------------------------------------¦
`¦AllOrders-----------¦-This subscription is used for auditing
`¦purposes. This subscription must receive every single order.
`¦AllOrders has an Action defined that updates the AuditedAt
`¦property to include the data and time it was received by the
`¦subscription. 
`
`
`You need to implement filtering and maximize throughput while evaluating filters.
`Which filter types should you implement?
`
`AllOrders

- [ ] SQLFilter
- [ ] CorrelationFilter
- [x] No Filter

[//] - 0017_image-order 


#### Q19p14.2 ::You are developing an Azure Cosmos DB solution by using the Azure Cosmos DB SQL API. The data includes millions of documents. Each document may contain hundreds of properties.
`The properties of the documents do not contain distinct values for partitioning. Azure Cosmos DB must scale individual containers in the database to meet the performance needs of the application by spreading the workload evenly across all partitions over time.
`You need to select a partition key.
`Which two partition keys can you use? Each correct answer presents a complete solution.

- [ ] a single property value that does not appear frequently in the documents
- [ ] a value containing the collection name
- [ ] a single property value that appears frequently in the documents
- [x] a concatenation of multiple property values with a random suffix appended
- [x] a hash suffix appended to a property value


#### 0019_image  ::You are developing an Azure-hosted e-commerce web application. 
`The application will use Azure Cosmos DB to store sales orders.
`You are using the latest SDK to manage the sales orders in the database.
`You create a new Azure Cosmos DB instance. 
`You include a valid endpoint and valid authorization key to an appSettings.json file in the code project.
`You are evaluating the following application code:
`
`internal class ManageSalesOrders
`    private statis async Task GenerateSalesOrders()
`code code code 
`
`A database named SalesOrders i screated. The database will include two containers. 

- [x] Yes
- [ ] No


#### 0019_image B ::You are developing an Azure-hosted e-commerce web application. 
`The application will use Azure Cosmos DB to store sales orders.
`You are using the latest SDK to manage the sales orders in the database.
`You create a new Azure Cosmos DB instance. 
`You include a valid endpoint and valid authorization key to an appSettings.json file in the code project.
`You are evaluating the following application code:
`
`internal class ManageSalesOrders
`    private statis async Task GenerateSalesOrders()
`code code code 
`
`Container1 will contain two items.

- [x] Yes
- [ ] No


#### 0019_image C ::You are developing an Azure-hosted e-commerce web application. 
`The application will use Azure Cosmos DB to store sales orders.
`You are using the latest SDK to manage the sales orders in the database.
`You create a new Azure Cosmos DB instance. 
`You include a valid endpoint and valid authorization key to an appSettings.json file in the code project.
`You are evaluating the following application code:
`
`internal class ManageSalesOrders
`    private statis async Task GenerateSalesOrders()
`code code code 
`
`Container2 will contain one items.

- [x] Yes
- [ ] No


#### 0020,a Q19p14.2 ::You develop an Azure solution that uses Cosmos DB.
`The current Cosmos DB container must be replicated and must use a partition key that is optimized for queries.
`You need to implement a change feed processor solution.
`Which change feed processor components should you use?
`
`Store the data from which the change feed is generated.

- [ ] Host
- [ ] Delegate
- [ ] Lease container
- [x] Monitored container


#### 0020.b, Q19p14.2 ::You develop an Azure solution that uses Cosmos DB.
`The current Cosmos DB container must be replicated and must use a partition key that is optimized for queries.
`You need to implement a change feed processor solution.
`Which change feed processor components should you use?
`
`Coordinate processing of the change feed across multiple workers. 

- [ ] Host
- [ ] Delegate
- [x] Lease container
- [ ] Monitored container


#### 0020.c, Q19p14.2 ::You develop an Azure solution that uses Cosmos DB.
`The current Cosmos DB container must be replicated and must use a partition key that is optimized for queries.
`You need to implement a change feed processor solution.
`Which change feed processor components should you use?
`
`Use the change feed processor to listen for changes. 

- [x] Host
- [ ] Delegate
- [ ] Lease container
- [ ] Monitored container


#### 0020.d, Q19p14.2 ::You develop an Azure solution that uses Cosmos DB.
`The current Cosmos DB container must be replicated and must use a partition key that is optimized for queries.
`You need to implement a change feed processor solution.
`Which change feed processor components should you use?
`
`Handle each batch of changes

- [ ] Host
- [x] Delegate
- [ ] Lease container
- [ ] Monitored container



#### 0021_todo [3v]::You are developing a web application that will use Azure Storage. Older data will be less frequently used than more recent data.
`You need to configure data storage for the application. You have the following requirements:
`✑ Retain copies of data for five years.
`✑ Minimize costs associated with storing data that is over one year old.
`✑ Implement Zone Redundant Storage for application data.
`What should you do?
`
`Configure an Azure Storage account

- [ ] Implement Blob Storage
- [ ] Implement Azure Cosmos DB
- [ ] Implement Storage (general purpose v1)
- [x] Implement StorageV2 (general purpose v2)


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



[//] - 0022_image

#### 0023 ::You develop and deploy a web application to Azure App Service. 
`The application accesses data stored in an Azure Storage account. 
`The account contains several containers with several blobs with large amounts of data. 
`You deploy all Azure resources to a single region.
`You need to move the Azure Storage account to the new region. You must copy all data to the new region.
`What should you do first?

- [x] Export the Azure Storage account Azure Resource Manager template
- [ ] Initiate a storage account failover
- [ ] Configure object replication for all blobs
- [ ] Use the AzCopy command line tool
- [ ] Create a new Azure Storage account in the current region
- [ ] Create a new subscription in the current region

#### 0024 ::
`You are developing an application to collect the following telemetry data for delivery drivers: first name, last name, package count, item id, and current location coordinates. The app will store the data in Azure Cosmos DB.
`You need to configure Azure Cosmos DB to query the data.
`Which values should you use? 

- [ ] Azure Cosmos DB API : Gremlin
- [ ] Azure Cosmos DB API : Table API
- [x] Azure Cosmos DB API : Core (SQL)
- [ ] Azure Cosmos DB partition key : first name
- [ ] Azure Cosmos DB partition key : last name
- [ ] Azure Cosmos DB partition key : package count
- [x] Azure Cosmos DB partition key : item id

#### 0025 ::
`You are implementing an Azure solution that uses Azure Cosmos DB and the latest Azure Cosmos DB SDK. 
`You add a change feed processor to a new container instance.
`You attempt to read a batch of 100 documents. 
`The process fails when reading one of the documents.
`The solution must monitor the progress of the change feed processor instance on the new container as the change feed is read. 
`You must prevent the change feed processor from retrying the entire batch when one document cannot be read.
`You need to implement the change feed processor to read the documents.
`Which features should you use? 
`
`Monitor the progress of the change feed processor

- [x] Change feed estimator
- [ ] Dead-letter queue
- [ ] Deployment unit
- [ ] Lease container


#### 0025 B::
`You are implementing an Azure solution that uses Azure Cosmos DB and the latest Azure Cosmos DB SDK. 
`You add a change feed processor to a new container instance.
`You attempt to read a batch of 100 documents. 
`The process fails when reading one of the documents.
`The solution must monitor the progress of the change feed processor instance on the new container as the change feed is read. 
`You must prevent the change feed processor from retrying the entire batch when one document cannot be read.
`You need to implement the change feed processor to read the documents.
`Which features should you use? 
`
`Prevent the change feed processor from retrying the entire batch when one document cannot be read

- [ ] Change feed estimator
- [x] Dead-letter queue
- [ ] Deployment unit
- [ ] Lease container


#### 0026 A::
`You are developing an application that uses a premium block blob storage account. 
`The application will process a large volume of transactions daily. 
`You enable Blob storage versioning.
`You are optimizing costs by automating Azure Blob Storage access tiers. 
`You apply the following policy rules to the storage account. (Line numbers are included for reference only.)
`
`
`Block blobs prefixed with transactions will transition blobs that have not been modified in over 60 days to cool storage, and delete blobs not modified in 365 days

- [ ] Yes 
- [x] No

#### 0026 B::
`You are developing an application that uses a premium block blob storage account. 
`The application will process a large volume of transactions daily. 
`You enable Blob storage versioning.
`You are optimizing costs by automating Azure Blob Storage access tiers. 
`You apply the following policy rules to the storage account. (Line numbers are included for reference only.)
`
`
`Blobs are moved to cool storage if they have not been accessed for 60 days

- [ ] Yes 
- [x] No

#### 0026 C::
`You are developing an application that uses a premium block blob storage account. 
`The application will process a large volume of transactions daily. 
`You enable Blob storage versioning.
`You are optimizing costs by automating Azure Blob Storage access tiers. 
`You apply the following policy rules to the storage account. (Line numbers are included for reference only.)
`
`
`The policy rule tiers previous versions within a container named transactions that are 60 days or older to the cool tier and deletes previous versions that are 365 days or older

- [x] Yes 
- [ ] No

#### 0026 D::
`You are developing an application that uses a premium block blob storage account. 
`The application will process a large volume of transactions daily. 
`You enable Blob storage versioning.
`You are optimizing costs by automating Azure Blob Storage access tiers. 
`You apply the following policy rules to the storage account. (Line numbers are included for reference only.)
`
`
`Blobs will automatically be tired from cool back to hot if accessed again after being tiered to cool

- [x] Yes 
- [ ] No

#### 0027::
`An organization deploys Azure Cosmos DB.
`You need to ensure that the index is updated as items are created, updated, or deleted.
`What should you do?

- [ ] Set the indexing mode to Lazy.
- [ ] Set the value of the automatic property of the indexing policy to False.
- [ ] Set the value of the EnableScanInQuery option to True.
- [x] Set the indexing mode to Consistent.

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

[//] - 0028_todo
[//] - 0029_todo
[//] - 0030_todo
[//] - 0031_todo
[//] - 0032_todo

#### 00001 [100%] ::You are developing a Java application that uses Cassandra to store key and value data. You plan to use a new Azure Cosmos DB resource and the Cassandra
`API in the application. You create an Azure Active Directory (Azure AD) group named Cosmos DB Creators to enable provisioning of Azure Cosmos accounts, databases, and containers.
`The Azure AD group must not be able to access the keys that are required to access the data.
`You need to restrict access to the Azure AD group.
`Which role-based access control should you use?

- [ ] DocumentDB Accounts Contributor
- [ ] Cosmos Backup Operator
- [x] Cosmos DB Operator
- [ ] Cosmos DB Account Reader

#### 0000.2 [67%] ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution: Configure the Azure Web App for the website to allow only authenticated requests and require Azure AD log on.

- [ ] Yes
- [x] No



#### 0000.3 [100%] ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution:
`✑ Create a new Azure AD application. In the application's manifest, set value of the groupMembershipClaims option to All.
`✑ In the website, use the value of the groups claim from the JWT for the user to determine permissions.
`Does the solution meet the goal?

- [x] Yes
- [ ] No


#### 0000.4 [78%] ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution:
`✑ Create a new Azure AD application. In the application's manifest, define application roles that match the required permission levels for the application.
`✑ Assign the appropriate Azure AD group to each role. In the website, use the value of the roles claim from the JWT for the user to determine permissions.
`Does the solution meet the goal?

- [x] Yes
- [ ] No



#### 0000.5.A [100%] ::You are developing an application to securely transfer data between on-premises file systems and Azure Blob storage. The application stores keys, secrets, and certificates in Azure Key Vault. The application uses the Azure Key Vault APIs.
`The application must allow recovery of an accidental deletion of the key vault or key vault objects. Key vault objects must be retained for 90 days after deletion.
`You need to protect the key vault and key vault objects.
`Which Azure Key Vault feature should you use? 
`
`Enable retention period and accidental deletion. 

- [ ] Access policy
- [ ] Purge protection
- [x] Soft delete
- [ ] Shared access signature


#### 0000.5.B [100%] ::You are developing an application to securely transfer data between on-premises file systems and Azure Blob storage. The application stores keys, secrets, and certificates in Azure Key Vault. The application uses the Azure Key Vault APIs.
`The application must allow recovery of an accidental deletion of the key vault or key vault objects. Key vault objects must be retained for 90 days after deletion.
`You need to protect the key vault and key vault objects.
`Which Azure Key Vault feature should you use? 
`
`Enforce retention period and accidental deletion. 

- [ ] Access policy
- [x] Purge protection
- [ ] Soft delete
- [ ] Shared access signature



#### 0000.6 [60%] ::You provide an Azure API Management managed web service to clients. The back-end web service implements HTTP Strict Transport Security (HSTS).
`Every request to the backend service must include a valid HTTP authorization header.
`You need to configure the Azure API Management instance with an authentication policy.
`Which two policies can you use? Each correct answer presents a complete solution.

- [x] Basic Authentication
- [ ] Digest Authentication
- [x] Certificate Authentication
- [ ] OAuth Client Credential Grant

[//] - 0000.7_todo
[//] - 0000.8_todo


#### 0000.9 [81%] ::You have an application that includes an Azure Web app and several Azure Function apps. Application secrets including connection strings and certificates are stored in Azure Key Vault.
`Secrets must not be stored in the application or application runtime environment. Changes to Azure Active Directory (Azure AD) must be minimized.
`You need to design the approach to loading application secrets.
`What should you do?

- [x] Create a single user-assigned Managed Identity with permission to access Key Vault and configure each App Service to use that Managed Identity.
- [ ] Create a single Azure AD Service Principal with permission to access Key Vault and use a client secret from within the App Services to access Key Vault.
- [ ] Create a system assigned Managed Identity in each App Service with permission to access Key Vault.
- [ ] Create an Azure AD Service Principal with Permissions to access Key Vault for each App Service and use a certificate from within the App Services to access Key Vault.


#### 0000.10 [80%]::You are developing a medical records document management website. The website is used to store scanned copies of patient intake forms.
`If the stored intake forms are downloaded from storage by a third party, the contents of the forms must not be compromised.
`You need to store the intake forms according to the requirements.
`Solution:
`1. Create an Azure Key Vault key named skey.
`2. Encrypt the intake forms using the public key portion of skey.
`3. Store the encrypted data in Azure Blob storage.
`Does the solution meet the goal?

- [x] Yes
- [ ] No



#### Qp18.13 [67%]::You are developing a medical records document management website. The website is used to store scanned copies of patient intake forms.
`If the stored intake forms are downloaded from storage by a third party, the contents of the forms must not be compromised.
`You need to store the intake forms according to the requirements.
`Solution:
`1. Create an Azure Cosmos DB database with Storage Service Encryption enabled.
`2. Store the intake forms in the Azure Cosmos DB database.
`Does the solution meet the goal?

- [ ] Yes
- [x] No




