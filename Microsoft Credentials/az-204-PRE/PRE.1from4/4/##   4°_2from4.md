
##   4°_2from4

#### Q.17 ::
Your company has several websites that use a company logo image. You use Azure Content Delivery Network (CDN) to store the static image.
You need to determine the correct process of how the CDN and the Point of Presence (POP) server will distribute the image and list the items in the correct order.
In which order do the actions occur? 

- [x] 
`A user requests the image from the CDN URL. The DNS routes the requests to the best performing POP location.
`If no edge servers in the POP have the image in cache, the POP requests the file from the origin server
`The origin server returns the logo image to an edge server in the POP. An edge server in the POP caches the logo image and returns the image to the client. 
`Subsequent requests for the file may be directed to the same POP using the CDN logo image URL. The POP edge server returns the file from cache if the TTL has not expired. 

- [ ] 
`A user requests the image from the CDN URL. The DNS routes the requests to the best performing POP location.
`The origin server returns the logo image to an edge server in the POP. An edge server in the POP caches the logo image and returns the image to the client. 
`If no edge servers in the POP have the image in cache, the POP requests the file from the origin server
`Subsequent requests for the file may be directed to the same POP using the CDN logo image URL. The POP edge server returns the file from cache if the TTL has not expired. 

- [ ] 
`The origin server returns the logo image to an edge server in the POP. An edge server in the POP caches the logo image and returns the image to the client. 
`If no edge servers in the POP have the image in cache, the POP requests the file from the origin server
`Subsequent requests for the file may be directed to the same POP using the CDN logo image URL. The POP edge server returns the file from cache if the TTL has not expired. 
`A user requests the image from the CDN URL. The DNS routes the requests to the best performing POP location.

- [ ] 
`If no edge servers in the POP have the image in cache, the POP requests the file from the origin server
`A user requests the image from the CDN URL. The DNS routes the requests to the best performing POP location.
`Subsequent requests for the file may be directed to the same POP using the CDN logo image URL. The POP edge server returns the file from cache if the TTL has not expired. 
`The origin server returns the logo image to an edge server in the POP. An edge server in the POP caches the logo image and returns the image to the client. 


#### Q19p14.2 ::You are developing an Azure Cosmos DB solution by using the Azure Cosmos DB SQL API. The data includes millions of documents. Each document may contain hundreds of properties.
`The properties of the documents do not contain distinct values for partitioning. Azure Cosmos DB must scale individual containers in the database to meet the performance needs of the application by spreading the workload evenly across all partitions over time.
`You need to select a partition key.
`Which two partition keys can you use?

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



#### 0022 A::
`A company develops a series of mobile games. All games use a single leaderboard service.
`You have the following requirements:
`✑ Code must be scalable and allow for growth.
`✑ Each record must consist of a playerId, gameId, score, and time played.
`✑ When users reach a new high score, the system will save the new score using the SaveScore function below.
`Each game is assigned an Id based on the series title.
`
`You plan to store customer information in Azure Cosmos DB. The following data already exists in the database:
`----------------------------------------------
`-PartitionKey-|-RowKey-|-Email
`Harp----------|-Walter-|-wharp@contoso.com
`Smith---------|-Steve--|-ssmith@contoso.com
`Smith---------|-Jeff---|-jsmith@contoso.com
`
`SaveScore will work with Cosmos DB.

- [x] Yes
- [ ] No


#### 0022 B::
`A company develops a series of mobile games. All games use a single leaderboard service.
`You have the following requirements:
`✑ Code must be scalable and allow for growth.
`✑ Each record must consist of a playerId, gameId, score, and time played.
`✑ When users reach a new high score, the system will save the new score using the SaveScore function below.
`Each game is assigned an Id based on the series title.
`
`You plan to store customer information in Azure Cosmos DB. The following data already exists in the database:
`----------------------------------------------
`-PartitionKey-|-RowKey-|-Email
`Harp----------|-Walter-|-wharp@contoso.com
`Smith---------|-Steve--|-ssmith@contoso.com
`Smith---------|-Jeff---|-jsmith@contoso.com
`
`SaveScore will update and replace a record if one already exists with the same playerId and gameId.


- [ ] Yes
- [x] No



#### 0022 C::
`A company develops a series of mobile games. All games use a single leaderboard service.
`You have the following requirements:
`✑ Code must be scalable and allow for growth.
`✑ Each record must consist of a playerId, gameId, score, and time played.
`✑ When users reach a new high score, the system will save the new score using the SaveScore function below.
`Each game is assigned an Id based on the series title.
`
`You plan to store customer information in Azure Cosmos DB. The following data already exists in the database:
`----------------------------------------------
`-PartitionKey-|-RowKey-|-Email
`Harp----------|-Walter-|-wharp@contoso.com
`Smith---------|-Steve--|-ssmith@contoso.com
`Smith---------|-Jeff---|-jsmith@contoso.com
`
`Leader board data for the game will be automatically partitioned using gameId.

- [ ] Yes
- [x] No


#### 0022 D::
`A company develops a series of mobile games. All games use a single leaderboard service.
`You have the following requirements:
`✑ Code must be scalable and allow for growth.
`✑ Each record must consist of a playerId, gameId, score, and time played.
`✑ When users reach a new high score, the system will save the new score using the SaveScore function below.
`Each game is assigned an Id based on the series title.
`
`You plan to store customer information in Azure Cosmos DB. The following data already exists in the database:
`----------------------------------------------
`-PartitionKey-|-RowKey-|-Email
`Harp----------|-Walter-|-wharp@contoso.com
`Smith---------|-Steve--|-ssmith@contoso.com
`Smith---------|-Jeff---|-jsmith@contoso.com
`
`Save Score will store the values for the gameId and playerId parameters in the database. 

- [x] Yes
- [ ] No







