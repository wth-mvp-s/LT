##   8°_all1234

#### 1 ::
`You are developing a REST web service. Customers will access the service by using an Azure API Management instance.
`The web service does not correctly handle conflicts. Instead of returning an HTTP status code of 409, the service returns a status code of 500. The body of the status message contains only the word conflict.
`You need to ensure that conflicts produce the correct response.
`How should you complete the policy?

- [ ] 
`<when-error>
`   <base/> 
`       <choose> 
`           <when codition="@context.Response.StatusCode == 500
`            && context.LastError.Message.Contains("conflict = ")"> 
`<return-response>
`   <set-status>
`</return-response>
` </when>
` <otherwise/>
` </choose>
`<when-error>


- [ ] 
`<on-error>
`   <base/> 
`       <choose> 
`           <when codition="@context.Response.StatusCode == 500
`            && context.LastError.Message.Contains("conflict = ")"> 
`<return-response>
`   <override-status>
`</return-response>
` </when>
` <otherwise/>
` </choose>
`<on-error>



- [ ] 
`<on-error>
`   <base/> 
`       <choose> 
`           <when codition="@server.Response.StatusCode == 500
`            && server.LastError.Message.Contains("conflict = ")"> 
`<return-response>
`   <set-status>
`</return-response>
` </when>
` <otherwise/>
` </choose>
`<on-error>


- [x] 
`<on-error>
`   <base/> 
`       <choose> 
`           <when codition="@context.Response.StatusCode == 500
`            && context.LastError.Message.Contains("conflict = ")"> 
`<return-response>
`   <set-status>
`</return-response>
` </when>
` <otherwise/>
` </choose>
`<on-error>

- [ ] 
`<set-status>
`   <base/> 
`       <choose> 
`           <when codition="@on-error.Response.StatusCode == 500
`            && context.LastError.Message.Contains("conflict = ")"> 
`<return-response>
`   <override-status>
`</return-response>
` </when>
` <otherwise/>
` </choose>
`<set-status>

#### 2 ::


- [x] 
`var endpoint = "..."
`var payload =  "..."
`var request = new HttpRequestMessage(HttpMethod.Post, endpoint);
`request.Header.Add("X-WNS-Type", "wns/raw"); 
`request.Header.Add("ServiceBusNotification-Format", "windows"); 
`request.Context - new StringContent(payload, Encoding.UTF8, "application/octet-stream");
`var client = new HttpClient();
`await client.SendAsync(request); 


- [ ] 
`var endpoint = "..."
`var payload =  "..."
`var request = new HttpRequestMessage(HttpMethod.Post, endpoint);
`request.Header.Add("X-WNS-Type", "wns/raw"); 
`request.Header.Add("ServiceBusNotification-Format", "windowsphone"); 
`request.Context - new StringContent(payload, Encoding.UTF8, "application/octet-stream");
`var client = new HttpClient();
`await client.SendAsync(request); 


- [ ] 
`var endpoint = "..."
`var payload =  "..."
`var request = new HttpRequestMessage(HttpMethod.Post, endpoint);
`request.Header.Add("X-WNS-Type", "wns/raw"); 
`request.Header.Add("ServiceBusNotification-Format", "windows"); 
`request.Context - new StringContent(payload, Encoding.UTF8, "application/json");
`var client = new HttpClient();
`await client.SendAsync(request); 



- [ ] 
`var endpoint = "..."
`var payload =  "..."
`var request = new HttpRequestMessage(HttpMethod.Post, endpoint);
`request.Header.Add("X-WNS-Type", "wns/raw"); 
`request.Header.Add("ServiceBusNotification-Format", "application/octet-stream"); 
`request.Context - new StringContent(payload, Encoding.UTF8, "application/json");
`var client = new HttpClient();
`await client.SendAsync(request); 


#### 3. Qp20.3Topic5Set5question25 [59%]::You are developing an Azure solution to collect point-of-sale (POS) device data from 2,000 stores located throughout the world. A single device can produce 2 megabytes (MB) of data every 24 hours. Each store location has one to five devices that send data.
`You must store the device data in Azure Blob storage. Device data must be correlated based on a device identifier. Additional stores are expected to open in the future.
`You need to implement a solution to receive the device data.
`Solution: Provision an Azure Event Hub. Configure the machine identifier as the partition key and enable capture.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 4.A 0021_todo ::You are developing an Azure solution to collect inventory data from thousands of stores located around the world. Each store location will send the inventory data hourly to an Azure Blob storage account for processing.
`The solution must meet the following requirements:
`✑ Begin processing when data is saved to Azure Blob storage.
`✑ Filter data based on store location information.
`✑ Trigger an Azure Logic App to process the data for output to Azure Cosmos DB.
`✑ Enable high availability and geographic distribution.
`✑ Allow 24-hours for retries.
`✑ Implement an exponential back off data processing.
`You need to configure the solution.
`
`Event Source

- [ ] Azure Event Hub
- [ ] Azure Event Grid
- [ ] Azure Service Bus
- [x] Azure Blob Storage
- [ ] Azure App Service
- [ ] Azure Logic App 

#### 4.B 0019_todo ::You are developing an Azure solution to collect inventory data from thousands of stores located around the world. Each store location will send the inventory data hourly to an Azure Blob storage account for processing.
`The solution must meet the following requirements:
`✑ Begin processing when data is saved to Azure Blob storage.
`✑ Filter data based on store location information.
`✑ Trigger an Azure Logic App to process the data for output to Azure Cosmos DB.
`✑ Enable high availability and geographic distribution.
`✑ Allow 24-hours for retries.
`✑ Implement an exponential back off data processing.
`You need to configure the solution.
`
`Event Receiver

- [ ] Azure Event Hub
- [x] Azure Event Grid
- [ ] Azure Service Bus
- [ ] Azure Blob Storage
- [ ] Azure App Service
- [ ] Azure Logic App 

#### 4.C 0019_todo ::You are developing an Azure solution to collect inventory data from thousands of stores located around the world. Each store location will send the inventory data hourly to an Azure Blob storage account for processing.
`The solution must meet the following requirements:
`✑ Begin processing when data is saved to Azure Blob storage.
`✑ Filter data based on store location information.
`✑ Trigger an Azure Logic App to process the data for output to Azure Cosmos DB.
`✑ Enable high availability and geographic distribution.
`✑ Allow 24-hours for retries.
`✑ Implement an exponential back off data processing.
`You need to configure the solution.
`
`Event Handler

- [ ] Azure Event Hub
- [ ] Azure Event Grid
- [ ] Azure Service Bus
- [ ] Azure Blob Storage
- [ ] Azure App Service
- [x] Azure Logic App 

#### 5 [100%]::You are creating an app that will use CosmosDB for data storage. The app will process batches of relational data.
`You need to select an API for the app.
`Which API should you use? 

- [ ] MongoDB API
- [ ] Table API
- [x] SQL API
- [ ] Cassandra API

#### 6::
`You are developing a .NET application that communicates with Azure Storage.
`A message must be stored when the application initializes.
`You need to implement the message.
`How should you complete the code segment?

- [x] 
`CloudStorageAccount storageAccount = CloudStorageAccount.Parse
`(CloudConfigurationManager.GetSetting ("StorageConnectionString"));
`CloudQueueClient pVar1 = storageAccount.CreateCloudQueueClient(); 
`CloudQueue pVar2 = pVar1.GetQueueReference("contoso-storage")
`try
`{
`    await pVar2.CreateIfNotExistsAsync();
`}
`catch (StorageException x)
`{
`    throw;
`}
`CloudQueueMessage cloudQueueMessage = new CloudQueueMessage("App Launch: <iUserID>");
`await pVar2.AddMessageAsync(cloudQueueMessage);


- [ ] 
`CloudStorageAccount storageAccount = CloudStorageAccount.Parse
`(CloudConfigurationManager.GetSetting ("StorageConnectionString"));
`CloudQueueClient pVar1 = storageAccount.CreateCloudQueueClient(); 
`CloudQueueClient pVar2 = pVar1.CreateCloudQueueClient("contoso-storage")
`try
`{
`    await pVar2.CreateIfNotExistsAsync();
`}
`catch (StorageException x)
`{
`    throw;
`}
`CloudQueueMessage cloudQueueMessage = new CloudQueueMessage("App Launch: <iUserID>");
`await pVar2.AddMessageAsync(cloudQueueMessage);

- [ ] 
`CloudStorageAccount storageAccount = CloudStorageAccount.Parse
`(CloudConfigurationManager.GetSetting ("StorageConnectionString"));
`CloudTableClient pVar1 = storageAccount.CreateCloudTableClient(); 
`CloudTableClient pVar2 = pVar1.CreateCloudTableClient("contoso-storage")
`try
`{
`    await pVar2.CreateIfNotExistsAsync();
`}
`catch (StorageException x)
`{
`    throw;
`}
`CloudQueueMessage cloudQueueMessage = new CloudQueueMessage("App Launch: <iUserID>");
`await pVar2.AddMessageAsync(cloudQueueMessage);

- [ ] 
`CloudStorageAccount storageAccount = CloudStorageAccount.Parse
`(CloudConfigurationManager.GetSetting ("StorageConnectionString"));
`CloudQueue pVar1 = storageAccount.GetQueueReference(); 
`CloudQueue pVar2 = pVar1.GetQueueReference("contoso-storage")
`try
`{
`    await pVar2.CreateIfNotExistsAsync();
`}
`catch (StorageException x)
`{
`    throw;
`}
`CloudQueueMessage cloudQueueMessage = new CloudQueueMessage("App Launch: <iUserID>");
`await pVar2.AddMessageAsync(cloudQueueMessage);

- [ ] 
`CloudStorageAccount storageAccount = CloudStorageAccount.Parse
`(CloudConfigurationManager.GetSetting ("StorageConnectionString"));
`CloudTable pVar1 = storageAccount.GetTableReference(); 
`CloudTable pVar2 = pVar1.GetTableReference("contoso-storage")
`try
`{
`    await pVar2.CreateIfNotExistsAsync();
`}
`catch (StorageException x)
`{
`    throw;
`}
`CloudQueueMessage cloudQueueMessage = new CloudQueueMessage("App Launch: <iUserID>");
`await pVar2.AddMessageAsync(cloudQueueMessage);


#### 7 ::
`A software as a service (SaaS) company provides document management services. The company has a service that consists of several Azure web apps. All
`Azure web apps run in an Azure App Service Plan named PrimaryASP.
`You are developing a new web service by using a web app named ExcelParser. The web app contains a third-party library for processing Microsoft Excel files.
`The license for the third-party library stipulates that you can only run a single instance of the library.
`You need to configure the service.
`How should you complete the script?

- [x] 
`Set-AzAppServicePlan '
`    -ResourceGroupName $rg '
`    -Name "PrimaryASP" '
`    PerSiteScalling $true
`$app = Get-AzWebApp '
`    -ResourceGroupName $rg '
`    -name "ExcelParser"
`    $app.SiteConfig.NumberOfWorkers = 1
`Set-AzWebApp $app

- [ ] 
`Set-AzAppServicePlan '
`    -ResourceGroupName $rg '
`    -Name "PrimaryASP" '
`    NumberOfSites 1
`$app = Get-AzWebApp '
`    -ResourceGroupName $rg '
`    -name "ExcelParser"
`    $app.NumberOfSites 1
`Set-AzWebApp $app

- [ ] 
`Set-AzAppServicePlan '
`    -ResourceGroupName $rg '
`    -Name "PrimaryASP" '
`    PerSiteScalling $true
`$app = Get-AzWebApp '
`    -ResourceGroupName $rg '
`    -name "ExcelParser"
`    $app.TargetWorkerCount = 1
`Set-AzWebApp $app


- [ ] 
`Set-AzAppServicePlan '
`    -ResourceGroupName $rg '
`    -Name "PrimaryASP" '
`    MaxNumberOfWorkers = 1
`$app = Get-AzWebApp '
`    -ResourceGroupName $rg '
`    -name "ExcelParser"
`    $app.SiteConfig.NumberOfWorkers = 1
`Set-AzWebApp $app

#### 8.A- Qp25. ::You have an application that provides weather forecasting data to external partners. You use Azure API Management to publish APIs.
`You must change the behavior of the API to meet the following requirements:
`✑ Support alternative input parameters
`✑ Remove formatting text from responses
`✑ Provide additional context to back-end services
`Which types of policies should you implement? 
`
`Support alternative input parameters.

- [x] Inbound
- [ ] Outbond
- [ ] Backend


#### 8.B- Qp25.Topic5.Set5.question1.B ::You have an application that provides weather forecasting data to external partners. You use Azure API Management to publish APIs.
`You must change the behavior of the API to meet the following requirements:
`✑ Support alternative input parameters
`✑ Remove formatting text from responses
`✑ Provide additional context to back-end services
`Which types of policies should you implement? 
`
`Remove formatting text from responses.

- [ ] Inbound
- [x] Outbond
- [ ] Backend




#### 8.C- Qp25.Topic5.Set5.question1.B ::You have an application that provides weather forecasting data to external partners. You use Azure API Management to publish APIs.
`You must change the behavior of the API to meet the following requirements:
`✑ Support alternative input parameters
`✑ Remove formatting text from responses
`✑ Provide additional context to back-end services
`Which types of policies should you implement?
`
`Provide additional context to back-end service.

- [ ] Inbound
- [ ] Outbond
- [x] Backend



#### 9.Qp26.Topic5.Set5.question2 [100%]::You are developing an e-commerce solution that uses a microservice architecture.
`You need to design a communication backplane for communicating transactional messages between various parts of the solution. Messages must be communicated in first-in-first-out (FIFO) order.
`What should you use?

- [ ] Azure Storage Queue
- [ ] Azure Event Hub
- [x] Azure Service Bus
- [ ] Azure Event Grid


#### 10::
`A company backs up all manufacturing data to Azure Blob Storage. Admins move blobs from hot storage to archive tier storage every month.
You must automatically move blobs to Archive tier after they have not been modified within 180 days. The path for any item that is not archived must be placed in an existing queue. This `operation must be performed automatically once a month. You set the value of TierAgeInDays to -180.
`How should you configure the Logic App?

- [x]
`              [Reccurence]
`              [Condition]
`[When there are message in a queue][Tier blob]
`               [list blobs 2]


- [ ]
`              [Reccurence]
`              [Condition]
`[When there are message in a queue][Tier blob]
`               [Insert Entity]


- [ ]
`              [Reccurence]
`              [Condition]
`[Tier blob][When there are message in a queue]
`               [list blobs 2]

- [ ]
`        [Put a message on a queue]
`              [Condition]
`[When there are message in a queue][Tier blob]
`               [list blobs 2]


#### 11.Qp28.Topic5.Set5.question2 [100%]::You are developing an Azure Service application that processes queue data when it receives a message from a mobile application. Messages may not be sent to the service consistently.
`You have the following requirements:
`✑ Queue size must not grow larger than 80 gigabytes (GB).
`✑ Use first-in-first-out (FIFO) ordering of messages.
`✑ Minimize Azure costs.
`You need to implement the messaging solution.
`Solution: Use the .Net API to add a message to an Azure Service Bus Queue from the mobile application. 
`Create an Azure Function App that uses an Azure Service Bus Queue trigger.
`Does the solution meet the goal?

- [x] Yes
- [ ] No



#### 12.Qp29 [100%]::You are developing an Azure solution to collect point-of-sale (POS) device data from 2,000 stores located throughout the world. A single device can produce 2 megabytes (MB) of data every 24 hours. Each store `location has one to five devices that send data.
`You must store the device data in Azure Blob storage. Device data must be correlated based on a device identifier. Additional stores are expected to open in the future.
`You need to implement a solution to receive the device data.
`Solution: Provision an Azure Notification Hub. Register all devices with the hub.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### 13.Qp30 [100%]::You are building a loyalty program for a major snack producer. When customers buy a snack at any of 100 participating retailers the event is recorded in Azure
`Event Hub. Each retailer is given a unique identifier that is used as the primary identifier for the loyalty program.
`Retailers must be able to be added or removed at any time. Retailers must only be able to record sales for themselves.
`You need to ensure that retailers can record sales.
`What should you do?

- [x] Use publisher policies for retailers.
- [ ] Create a partition for each retailer.
- [ ] Define a namespace for each retailer.


#### 14.A_Qp30 [100%]::You develop and deploy a web app to Azure App Service in a production environment. You scale out the web app to four instances and configure a staging slot to support changes.
`You must monitor the web app in the environment to include the following requirements:
`✑ Increase web app availability by re-routing requests away from instances with error status codes and automatically replace instances if they remain in an error state after one hour.
`✑ Send web server logs, application logs, standard output, and standard error messaging to an Azure Storage blob account.
`You need to configure Azure App Service.
`Which values should you use?
`
`Increase availability


- [ ] Health check
- [ ] Diagnostic setting
- [ ] Deployment slot
- [x] Autoscale rule
- [ ] Zone redundency

#### 14.B_Qp30 [100%]::You develop and deploy a web app to Azure App Service in a production environment. You scale out the web app to four instances and configure a staging slot to support changes.
`You must monitor the web app in the environment to include the following requirements:
`✑ Increase web app availability by re-routing requests away from instances with error status codes and automatically replace instances if they remain in an error state after one hour.
`✑ Send web server logs, application logs, standard output, and standard error messaging to an Azure Storage blob account.
`You need to configure Azure App Service.
`Which values should you use?
`
`Send logs


- [ ] Health check
- [x] Diagnostic setting
- [ ] Deployment slot
- [ ] Autoscale rule
- [ ] Zone redundency


#### 15_Qp32 [0%]::You develop a solution that uses Azure Virtual Machines (VMs).
`The VMs contain code that must access resources in an Azure resource group. You grant the VM access to the resource group in Resource Manager.
`You need to obtain an access token that uses the VM's system-assigned managed identity.
`Which two actions should you perform?


- [x] From the code on the VM, call Azure Resource Manager using an access token.
- [ ] Use PowerShell on a remote machine to make a request to the local managed identity for Azure resources endpoint.
- [x] Use PowerShell on the VM to make a request to the local managed identity for Azure resources endpoint.
- [ ] From the code on the VM, call Azure Resource Manager using a SAS token.
- [ ] From the code on the VM, generate a user delegation SAS token.


#### 16_Qp33 [0%]::You are developing a road tollway tracking application that sends tracking events by using Azure Event Hubs using premium tier.
`Each road must have a throttling policy uniquely assigned.
`You need to configure the event hub to allow for per-road throttling.
`What should you do?


- [ ] Use a unique consumer group for each road.
- [ ] Ensure each road stores events in a different partition.
- [ ] Ensure each road has a unique connection string.
- [x] Use a unique application group for each road.


#### 17_Qp34 [0%]::You develop and deploy an ASP.NET Core application that connects to an Azure Database for MySQL instance.
`Connections to the database appear to drop intermittently and the application code does not handle the connection failure.
`You need to handle the transient connection errors in code by implementing retries.
`What are three possible ways to achieve this goal?


- [ ] Close the database connection and immediately report an error.
- [ ] Disable connection pooling and configure a second Azure Database for MySQL instance.
- [x] Wait five seconds before repeating the connection attempt to the database.
- [x] Set a maximum number of connection attempts to 10 and report an error on subsequent connections.
- [x] Increase connection repeat attempts exponentially up to 120 seconds.

#### 18_Qp35 [0%]::You are building a B2B web application that uses Azure B2B collaboration for authentication. Paying customers authenticate to Azure B2B using federation.
`The application allows users to sign up for trial accounts using any email address.
`When a user converts to a paying customer, the data associated with the trial should be kept, but the user must authenticate using federation.
`You need to update the user in Azure Active Directory (Azure AD) when they convert to a paying customer.
`Which Graph API parameter is used to change authentication from one-time passcodes to federation?


- [x] resetRedemption
- [ ] Status
- [ ] userFlowType
- [ ] invitedUser


#### 19_Q_QC.1 [0%]::
`Issues -
`
`Shipping website and REST APIs -The following error message displays while you are testing the website: 
`Failed to load http://test-shippingapi.wideworldimporters.com/: No 'Access-Control-Allow-Origin' header is present on the requested resource. Origin 'http://test.wideworldimporters.com/' is therefore not allowed access.
`
`Question
`You need to configure Azure CDN for the Shipping web site.
`Which configuration options should you use?


- [ ] 
`Tier : Standard
`Profile Akamai
`Optimization : general web delivery

- [ ] 
`Tier : Premium
`Profile : Microsoft
`Optimization : large file download

- [ ] 
`Tier : Standard
`Profile : Akamai
`Optimization : large file download

- [x] 
`Tier : Standard
`Profile : Akamai
`Optimization : dynamic site acceleraiton

- [ ] 
`Tier : Standard
`Profile : Akamai
`Optimization : general web delivery

- [ ] 
`Tier : Standard
`Profile : Microsoft
`Optimization : dynamic site acceleraiton

- [ ] 
`Tier : Standard
`Profile : Akamai
`Optimization : video-on-demand media streaming








#### 20 []::
`Issues -
`
`Windows Server 2016 VM -
`The VM shows high network latency, jitter, and high CPU utilization. The VM is critical and has not been backed up in the past. The VM must enable a quick restore from a 7-day snapshot to include in-place restore of disks in case of failure.
`
`Shipping website and REST APIs -
`The following error message displays while you are testing the website:
`Failed to load http://test-shippingapi.wideworldimporters.com/: No 'Access-Control-Allow-Origin' header is present on the requested resource. Origin 'http://test.wideworldimporters.com/' is therefore not allowed access.
`
`Question
`
`You need to correct the VM issues.
`Which tools should you use? 


- [ ] Backup and Restore Azure Site Recovery
- [x] Backup and Restore Azure Backup
- [ ] Backup and Restore Azure Data Box
- [ ] Backup and Restore Azure Migrate
- [ ] Performance Azure Network Watcher
- [ ] Performance Azure Traffic Manager
- [ ] Performance ExpressRoute
- [x] Performance Accelerated Networking

#### 21 []::
`Question
`
`You need to add code at line PC32 in Processing.cs to implement the GetCredentials method in the Processing class.
`How should you complete the code?

- [x] 
`var tp = new AzureServiceTokenProvider()
`var t = new TokenCredential(await tp.GetAccessTokenAsync(". . ."))
`return new StorageCredentials(t); 

- [ ] 
`var tp = new StringTokenProvider("storage", "msi")
`var t = new TokenCredential(await tp.GetAccessTokenAsync(". . ."))
`return new StorageCredentials(t); 

- [ ] 
`var tp = new MSITokenProvider(". . . ", null)
`var t = new TokenCredential(await tp.GetAccessTokenAsync(". . ."))
`return new StorageCredentials(t); 

- [ ] 
`var tp = new MSITokenProvider(". . . ", null)
`var t = new TokenCredential(await tp.GetAuthenticationHeaderAsync(CancellationToken.None))
`return new StorageCredentials(t); 

- [ ] 
`var tp = new AzureServiceTokenProvider()
`var t = new TokenCredential(await tp.GetAuthenticationHeaderAsync(CancellationToken.None))
`return new StorageCredentials(t); 


#### 22 [voters]::
`Question
`
`You need to ensure disaster recovery requirements are met.
`What code should you add at line PC16?

- [x] 
`var copyOptions = new CopyOptions {}; 
`var context = new SingleTransferContext = (source, destination) => Task.FromResult(true);
`context.ShouldOverwriteCallbackAsync = (source, destination) => Task.FromResult(true);
`await TransferManager.CopyAsync(blob), isServiceCopy: false
`context: context, options: copyOptions); 


- [ ] 
`var copyOptions = new CopyOptions {}; 
`var context = new DirectoryTransferContext = (source, destination) => Task.FromResult(true);
`context.ShouldTransferCallbackAsync = (source, destination) => Task.FromResult(true);
`await TransferManager.CopyAsync(blob), isServiceCopy: false
`context: context, options: copyOptions); 

- [ ] 
`var copyOptions = new CopyOptions {}; 
`var context = new SingleTransferContext = (source, destination) => Task.FromResult(true);
`context.ShouldTransferCallbackAsync = (source, destination) => Task.FromResult(true);
`await TransferManager.CopyAsync(blob), isServiceCopy: false
`context: context, options: copyOptions); 


- [ ] 
`var copyOptions = new CopyOptions {}; 
`var context = new DirectoryTransferContext = (source, destination) => Task.FromResult(true);
`context.ShouldOverwriteCallbackAsync = (source, destination) => Task.FromResult(true);
`await TransferManager.CopyAsync(blob), isServiceCopy: false
`context: context, options: copyOptions); 


- [ ] 
`var copyOptions = new CopyOptions {}; 
`var context = new DirectoryTransferContext = (source, destination) => Task.FromResult(true);
`context.ShouldTransferCallbackAsync = (source, destination) => Task.FromResult(true);
`await TransferManager.CopyAsync(blob), isServiceCopy: true
`context: context, options: copyOptions); 



#### 23 [0%]::
`Requirements. Data -
`
`Order data is stored as nonrelational JSON and must be queried using SQL.
`Changes to the Order data must reflect immediately across all partitions. 
`All reads to the Order data must fetch the most recent writes.
`
`Question
`
`You need to configure Azure Cosmos DB.
`Which settings should you use?

- [x] Consistency Level Strong
- [ ] Consistency Level Bounded-staleness
- [ ] Consistency Level Session
- [ ] Consistency Level Eventual
- [x] API SQL 
- [ ] API MongoDB
- [ ] API Graph
- [ ] API Table

#### 24 [0%]::
`Question
`Order.json
`{
`    "id":1
`    "customers":[
`        {
`            "familyName":"Doe",
`            "givenName":"John",
`            "customerid":5
`        }
`    ],
`    "line_items":[
`        {
`            "fulfillable_quantity":1,
`            "id":6,
`            "price":"199.99",
`            "product_id":7513594,
`            "quentity":1,
`            "requires_shipping":true, 
`            "sku":"SFC-342-N",
`            "title":"Surface Go",
`            "vendor":"Microsoft",
`            "name":"Surface Go - 8GB",
`            "taxable":true, 
`            "tax_lines":[
`                {
`                    "title": "State Tax",
`                    "price":"3.98",
`                    "rate":0.06
`                }
`            ],
`            "total_discount":"5.00",
`            "discount_allocation":[
`                {
`                    "amount":"5.00",
`                    "discount_application_index":2 
`                }
`            ]
`        }
`    ]
`}
`
`You need to retrieve all order line items from Order.json and sort the data alphabetically by the city.
`How should you complete the code?


- [x] 
`SELECT li.id AS lineitemid, li.price
`FROM Orders o
`JOIN li IN o.line_items
`ORDER BY o.adress.city ASC

- [ ] 
`SELECT li.id AS lineitemid, li.price
`FROM LineItems li
`JOIN o IN li.line_items
`ORDER BY li.adress.city ASC

- [ ] 
`SELECT li.id AS lineitemid, li.price
`FROM LineItems li
`JOIN o IN o.adress
`ORDER BY o.city ASC

- [ ] 
`SELECT li.id AS lineitemid, li.price
`FROM LineItems li
`JOIN o IN o.adress
`ORDER BY li.city ASC



#### 25 [0%]::
`Delivery services -
`Store service telemetry data in Azure Cosmos DB by using an Azure Function. Data must include an item id, the delivery vehicle license plate, vehicle package capacity, and current vehicle location coordinates.
`Store delivery driver profile information in Azure Active Directory (Azure AD) by using an Azure Function called from the corporate website.
`
`Security -
`All Azure Functions must centralize management and distribution of configuration data for different environments and geographies, encrypted by using a company-provided RSA-HSM key.
`Authentication and authorization must use Azure AD and services must use managed identities where possible.
`
`Question
`
`You need to implement the Azure Function for delivery driver profile information.
`Which configurations should you use? To answer, select the appropriate options in the answer area.


- [ ] Code library Microsoft Authentication Library (MSAL)
- [ ] API Microsoft Graph
- [ ] Code library Microsoft Azure Key Vault SDK
- [ ] API Azure Active Directory Graph
- [x] Code library Azure Identity library
- [x] API Key Vault



#### 26 [0%]::
`Issues -
`
`Retail Store Locations -
`You must perform a point-in-time restoration of the retail store location data due to an unexpected and accidental deletion of data.
`Azure Cosmos DB queries from the Azure Function exhibit high Request Unit (RU) usage and contain multiple, complex queries that exhibit high point read latency for large items as the function app is scaling.
`
`Question
`You need to grant access to the retail store location data for the inventory service development effort.
`What should you use?


- [ ] Azure AD access token
- [ ] Azure RBAC role
- [x] Shared access signature (SAS) token
- [ ] Azure AD ID token
- [ ] Azure AD refresh token




#### 27 [0%]::
`Question
`
`You need to reliably identify the delivery driver profile information.
`How should you configure the system?
`
`Delivery services -
`Store service telemetry data in Azure Cosmos DB by using an Azure Function. Data must include an item id, the delivery vehicle license plate, vehicle package capacity, and current vehicle location coordinates.
`Store delivery driver profile information in Azure Active Directory (Azure AD) by using an Azure Function called from the corporate website.
`
`Security -
`All Azure Functions must centralize management and distribution of configuration data for different environments and geographies, encrypted by using a company-provided RSA-HSM key.
`Authentication and authorization must use Azure AD and services must use managed identities where possible.

- [x] 
`JSON web token (JWT) type ID
`Payload claim value oid

- [ ] 
`JSON web token (JWT) type ID
`Payload claim value idp

- [ ] 
`JSON web token (JWT) type ID
`Payload claim value aud

- [ ] 
`JSON web token (JWT) type Refresh
`Payload claim value aud

- [ ] 
`JSON web token (JWT) type Access
`Payload claim value idp


#### 28 [0%]::
`Requirements -
`
`Security -
`All Azure Functions must centralize management and distribution of configuration data for different environments and geographies, encrypted by using a company-provided RSA-HSM key.
`Authentication and authorization must use Azure AD and services must use managed identities where possible.
`
`You need to secure the Azure Functions to meet the security requirements.
`Which two actions should you perform?


- [x] Store the RSA-HSM key in Azure Key Vault with soft-delete and purge-protection features enabled.
- [ ] Store the RSA-HSM key in Azure Blob storage with an immutability policy applied to the container.
- [ ] Create a free tier Azure App Configuration instance with a new Azure AD service principal.
- [x] Create a standard tier Azure App Configuration instance with an assigned Azure AD managed identity.
- [ ] Store the RSA-HSM key in Azure Cosmos DB. Apply the built-in policies for customer-managed keys and allowed locations.


#### 29_Q [0%]::
`Question
`
`You need to add markup at line AM04 to implement the ContentReview role.
`How should you complete the markup?

- [x] 
`"AppRoles": [
`    {
`        "allowedMemberTypes":[
`            "User"
`        ],
`        "displayName":"ContentReviewer",
`        "id": "e1c2ade8-98f8-45fd-aa4a-6d24b512c22a",
`        "isEnabled": true, 
`        "value": ContentReviewer
`    }
`]
- [ ] 
`"AppRoles": [
`    {
`        "allowedMemberTypes":[
`            "Application"
`        ],
`        "displayName":"ContentReviewer",
`        "id": "e1c2ade8-98f8-45fd-aa4a-6d24b512c22a",
`        "isEnabled": true, 
`        "value": ContentReviewer
`    }
`]
- [ ] 
`"AppRoles": [
`    {
`        "allowedMemberTypes":[
`            "User"
`        ],
`        "displayName":"ContentReviewer",
`        "id": "e1c2ade8-98f8-45fd-aa4a-6d24b512c22a",
`        "isEnabled": true, 
`        "User": ContentReviewer
`    }
`]
- [ ] 
`"AppRoles": [
`    {
`        "allowedMemberTypes":[
`            "role"
`        ],
`        "displayName":"ContentReviewer",
`        "id": "e1c2ade8-98f8-45fd-aa4a-6d24b512c22a",
`        "isEnabled": true, 
`        "value": ContentReviewer
`    }
`]
- [ ] 
`"AppRoles": [
`    {
`        "allowedAccountTypes":[
`            "User"
`        ],
`        "displayName":"ContentReviewer",
`        "id": "e1c2ade8-98f8-45fd-aa4a-6d24b512c22a",
`        "isEnabled": true, 
`        "value": ContentReviewer
`    }
`]






#### 30_Qp35 [0%]::
`Question
`
`You need to add code at line AM09 to ensure that users can review content using `ContentAnalysisService.
`How should you complete the code?

- [ ] "allowPublicClient":true
- [ ] "oauth2Permissions":["login"]
- [ ] "oauth2AllowUrlPathMatching":true
- [x] "oauth2AllowIdTokenImplicitFlow":true

- [x] "oauth2AllowImplicitFlow":true
- [ ] "oauth2RequiredPostResponse":true
- [ ] "preAuthorisedPostResponse":["SPA"]
- [ ] "knownClientApplications":["ContentAnalysisService"]
