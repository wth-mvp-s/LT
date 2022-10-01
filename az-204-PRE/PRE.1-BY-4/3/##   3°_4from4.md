
##   3°_4from4


#### 24  Q5100, 8 ::You are developing an Azure solution to collect point-of-sale (POS) device data from 2,000 stores located throughout the world. A single device can produce 2 megabytes (MB) of data every 24 hours. Each store location has one to five devices that send data.
`You must store the device data in Azure Blob storage. Device data must be correlated based on a device identifier. Additional stores are expected to open in the future.
`You need to implement a solution to receive the device data.
`Solution: Provision an Azure Event Grid. Configure the machine identifier as the partition key and enable capture.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 25  5200, Q9 ::You develop Azure solutions.
`A .NET application needs to receive a message each time an Azure virtual machine finishes processing data. The messages must NOT persist after being processed by the receiving application.
`You need to implement the .NET object that will receive the messages.
`Which object should you use?

- [x] QueueClient
- [ ] SubscriptionClient
- [ ] TopicClient
- [ ] CloudQueueClient

#### 26 ::
`You are maintaining an existing application that uses an Azure Blob GPv1 Premium storage account. Data older than three months is rarely used.
`Data newer than three months must be available immediately. Data older than a year must be saved but does not need to be available immediately.
`You need to configure the account to support a lifecycle management rule that moves blob data to archive storage for data not modified in the last year.
`Which three actions should you perform in sequence?

- [x] 
`Upgrade the storage account to GPv2
`Copy the data to be archived to a Standard GPv2 storage account and then delete the data from the original storage account
`Change the storage account access tier from hot to cool

- [ ] 
`Upgrade the storage account to GPv2
`Change the storage account access tier from hot to cool


- [ ] 
`Create a new GPv2 Standard account and set its default access tier to cool
`Copy the data to be archived to a Standard GPv2 storage account and then delete the data from the original storage account
`Change the storage account access tier from hot to cool
 
- [ ] 
`Upgrade the storage account to GPv2
`Change the storage account access tier from hot to cool
`Copy the data to be archived to a Standard GPv2 storage account and then delete the data from the original storage account
 
- [ ] 
`Upgrade the storage account to GPv2
`Create a new GPv2 Standard account and set its default access tier to cool
`Change the storage account access tier from hot to cool
`Copy the data to be archived to a Standard GPv2 storage account and then delete the data from the original storage account

#### 27  5400, Q11 ::You develop Azure solutions.
`You must connect to a No-SQL globally-distributed database by using the .NET API.
`You need to create an object to configure and execute requests in the database.
`Which code segment should you use?

- [ ] new Container(EndpointUri, PrimaryKey);
- [ ] new Database(EndpointUri, PrimaryKey);
- [x] new CosmosClient(EndpointUri, PrimaryKey);




#### 28  5500Q12 ::You have an existing Azure storage account that stores large volumes of data across multiple containers.
`You need to copy all data from the existing storage account to a new storage account. The copy process must meet the following requirements:
`✑ Automate data movement.
`✑ Minimize user input required to perform the operation.
`✑ Ensure that the data movement process is recoverable.
`What should you use?

- [x] AzCopy
- [ ] Azure Storage Explorer
- [ ] Azure portal
- [ ] .NET Storage Client Library

#### 29 ::
`You are developing a web service that will run on Azure virtual machines that use Azure Storage. You configure all virtual machines to use managed identities.
`You have the following requirements:
`✑ Secret-based authentication mechanisms are not permitted for accessing an Azure Storage account.
`✑ Must use only Azure Instance Metadata Service endpoints.
`You need to write code to retrieve an access token to access Azure Storage. 

- [x]
``var url = "http://169.254.169.254/metadata/identity/oauth2/token";
`var queryString = "...";
`var client = new HttpClient();
`var response = await client.GetAsync(url + queryString);
`var payload = await response.Content.ReadAsStringAsync(); 
`return JsonConvert.DeserializeObject<Dictionary<string, string>>(payload);  


- [ ]
``var url = "http://169.254.169.254/metadata/identity/oauth2/token";
`var queryString = "...";
`var client = new HttpClient();
`var response = await client.GetAsync(url + queryString);
`var payload = await response.Content.ReadAsStringAsync(); 
`return new NetworkCredential("Azure", payload);


- [ ]
``var url = "http://169.254.169.254/metadata/identity/oauth2/token";
`var queryString = "...";
`var client = new HttpClient();
`var response = await client.GetAsync(url + queryString);
`var payload = await response.Content.ReadAsStringAsync(); 
`return new MultipartContent(payload)


- [ ]
``var url = "http://169.254.169.254/metadata/identity/oauth2/token";
`var queryString = "...";
`var client = new HttpClient();
`var response = await client.GetAsync(url + queryString);
`var payload = await response.Content.ReadAsStringAsync(); 
`return XDocument.Parse(payload)

- [ ]
``var url = "http://localhost/metadata/identity/oauth2/token";
`var queryString = "...";
`var client = new HttpClient();
`var response = await client.GetAsync(url + queryString);
`var payload = await response.Content.ReadAsStringAsync(); 
`return JsonConvert.DeserializeObject<Dictionary<string, string>>(payload);  

#### 30 ::
`You are developing a new page for a website that uses Azure Cosmos DB for data storage. The feature uses documents that have the following format:
`
`"name":"John",
`"city": "Seattle"
`
`You must display data for the new page in a specific order. You create the following query for the page:
`
`SELECT *
`FROM People p
`ORDER BY p.name, p.city DESC
`
`You need to configure a Cosmos DB policy to support the query.
`How should you configure the policy?

- [x]
`{
`    "automatic":true, 
`    "ngMode": "Consistent",
`    "IncludedPath":[
`        {
`            "path": "/*",
`        }
`    ], "excludedPath": [
`        "compositeIndexes": [
`            {
`                "path": "/name", "order": "descending"
`            },
`            {
`                "path": "/city", "order": "descending"
            
- [ ]
`{
`    "automatic":true, 
`    "ngMode": "Consistent",
`    "IncludedPath":[
`        {
`            "path": "/*",
`        }
`    ], "excludedPath": [
`        "sortOrder": [
`            {
`                "path": "/name", "order": "descending"
`            },
`            {
`                "path": "/city", "order": "descending"


- [ ]
`{
`    "automatic":true, 
`    "ngMode": "Consistent",
`    "IncludedPath":[
`        {
`            "path": "/*",
`        }
`    ], "excludedPath": [
`        "compositeIndexes": [
`            {
`                "path": "/name", "order": "descending"
`            },
`            {
`                "path": "/city", "order": "ascending"
            
- [ ]
`{
`    "automatic":true, 
`    "ngMode": "Consistent",
`    "IncludedPath":[
`        {
`            "path": "/*",
`        }
`    ], "excludedPath": [
`        "orderBy": [
`            {
`                "path": "/name", "order": "descending"
`            },
`            {
`                "path": "/city", "order": "descending"

