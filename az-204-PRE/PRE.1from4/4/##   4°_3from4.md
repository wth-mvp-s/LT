
##   4°_3from4


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

#### 0029 A ::
`You are developing a solution to store documents in Azure Blob storage. Customers upload documents to multiple containers. Documents consist of PDF, CSV,
`Microsoft Office format and plain text files.
`The solution must process millions of documents across hundreds of containers. The solution must meet the following requirements:
`✑ Documents must be categorized by a customer identifier as they are uploaded to the storage account.
`✑ Allow filtering by the customer identifier.
`✑ Allow searching of information contained within a document
`✑ Minimize costs.
`You create and configure a standard general-purpose v2 storage account to support the solution.
`You need to implement the solution.
`What should you implement?
`
`Search and filter by customer identifier

- [ ] Azure Cognitive Search
- [x] Azure Blob index tags
- [ ] Azure Blob inventory policy
- [ ] Azure Blob metadata

#### 0029 B ::
`You are developing a solution to store documents in Azure Blob storage. Customers upload documents to multiple containers. Documents consist of PDF, CSV,
`Microsoft Office format and plain text files.
`The solution must process millions of documents across hundreds of containers. The solution must meet the following requirements:
`✑ Documents must be categorized by a customer identifier as they are uploaded to the storage account.
`✑ Allow filtering by the customer identifier.
`✑ Allow searching of information contained within a document
`✑ Minimize costs.
`You create and configure a standard general-purpose v2 storage account to support the solution.
`You need to implement the solution.
`What should you implement?
`
`Search information inside documents

- [x] Azure Cognitive Search
- [ ] Azure Blob index tags
- [ ] Azure Blob inventory policy
- [ ] Azure Blob metadata


#### 0030 A::
`You are developing a web application by using the Azure SDK. The web application accesses data in a zone-redundant BlockBlobStorage storage account. 
`The application must determine whether the data has changed since the application last read the data. Update operations must use the latest data changes when writing data to the storage account.
`You need to implement the update operations.
`Which values should you use?
`
`HTTP Header value

- [x] ETag
- [ ] Last Modified
- [ ] VersionId

#### 0030 B::
`You are developing a web application by using the Azure SDK. The web application accesses data in a zone-redundant BlockBlobStorage storage account. 
`The application must determine whether the data has changed since the application last read the data. Update operations must use the latest data changes when writing data to the storage account.
`You need to implement the update operations.
`Which values should you use?
`
`Conditional header

- [x] If-Match
- [ ] If-Modified-Since
- [ ] If-None-Match


#### 0031::
`An organization deploys a blob storage account. Users take multiple snapshots of the blob storage account over time.
`You need to delete all snapshots of the blob storage account. You must not delete the blob storage account itself.
`How should you complete the code segment?

- [ ] 
`Delete (Azure.Storage.Blobs.Models.DeleteSnapshotsOption
`snapshotsOption = Azure.Storage.Blobs.Models.DeleteIfExists.IncludeSnapshots)

- [ ] 
`Delete (Azure.Storage.Blobs.Models.DeleteSnapshotsOption
`snapshotsOption = Azure.Storage.Blobs.Models.DeleteSnapshotsOption.None)

- [ ] 
`Delete (Azure.Storage.Blobs.Models.DeleteSnapshotsOption
`snapshotsOption = Azure.Storage.Blobs.Models.WithSnapShot.OnlySnapshots)

- [x] 
`Delete (Azure.Storage.Blobs.Models.DeleteSnapshotsOption
`snapshotsOption = Azure.Storage.Blobs.Models.DeleteSnapshotsOption.OnlySnapshots)

#### 0032::
`An organization deploys a blob storage account. Users take multiple snapshots of the blob storage account over time.
`You need to delete all snapshots of the blob storage account. You must not delete the blob storage account itself.
`How should you complete the code segment?

- [ ] delete_blob (delete_conteiner = False)
- [x] delete_blob (delete_snapshots = Only)
- [ ] delete_blob (delete_snapshots = Include)
- [ ] delete_blob (snapshot_blob = Only)
- [ ] delete_blob (snapshot_present = Include)

