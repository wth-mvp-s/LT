##   10°_n250-275_septneworder




#### Q10.1 ::You are developing an Azure solution 


#### Q10.1 ::
`Question
`
`You need to support the message processing for the ocean transport workflow.
`Which four actions should you perform in sequence?

- [x] 
`Create an integration account in the Azure portal. 
`Link the Logic App to the integration account. 
`Add partners schemas, certificates, maps and agrements. 
`Create a custom connector for the Logic App. 

- [ ] 
`Create an integration account in the Azure portal. 
`Link the Logic App to the integration account. 
`Update the Logic App to use the partners, schemas, certificates, maps and agrements
`Create a custom connector for the Logic App. 

- [ ] 
`Create an integration account in the Azure portal. 
`Link the custom connector to the Logic App. 
`Add partners schemas, certificates, maps and agrements. 
`Create a custom connector for the Logic App. 


- [ ] 
`Create a custom connector for the Logic App. 
`Link the Logic App to the integration account. 
`Add partners schemas, certificates, maps and agrements. 
`Create an integration account in the Azure portal. 

- [ ] 
`Create an integration account in the Azure portal. 
`Add partners schemas, certificates, maps and agrements. 
`Link the Logic App to the integration account. 
`Create a custom connector for the Logic App. 



#### Q10.2 ::
`Issues -
`
`Windows Server 2016 VM - The VM shows high network `latency, jitter, and high CPU utilization. The VM is `critical and "has not been backed up in the past. The VM `must enable `a quick restore from a 7-day snapshot "to `include in-place restore of disks in case of failure.
`
`Shipping website and REST APIs - The following error `message displays while you are testing `the website: `Failed to load http://test-shippingapi.wideworldimporters.`com/: No `'Access-Control-Allow-Origin' header is present `on the requested resource. Origin 'http://`test.`wideworldimporters.com/' is therefore not allowed access.
`
`Question
`You need to support the requirements for the Shipping `Logic App.
`What should you use?

- [ ] Azure Active Directory Application Proxy
- [ ] Site-to-Site (S2S) VPN connection
- [x] On-premises Data Gateway
- [ ] Point-to-Site (P2S) VPN connection

#### Q10.3 [100%]::
`Question
`
`You need to configure the integration for Azure Service Bus and Azure `Event Grid.
`How should you complete the CLI statement? 

- [x] 
`az eventgrid event-subscription create-source-resource-id $topicid --name
`$name --endpoint-type servicebucqueue --endpoint $endpoint

- [ ] 
`az eventgrid event-subscription create-source-resource-id $topicid --name
`$name --endpoint-type eventhub --endpoint $endpoint

- [ ] 
`az eventgrid queue create-source-resource-id $topicid --name
`$name --endpoint-type eventhub --endpoint $endpoint

- [ ] 
`az servicebus topic create-source-resource-id $topicid --name
`$name --endpoint-type webhook --endpoint $endpoint

- [ ] 
`az servicebus event-subscription create-source-resource-id $topicid --name
`$name --endpoint-type webhook --endpoint $endpoint




#### Q10.4 [100%]::
`
`Issues -
`
`Corporate website -
`While testing the site, the following error message `displays:
`CryptographicException: The system cannot find the file `specified.
`
`Function app -
`You perform local testing for the RequestUserApproval `function. The following error message displays:
`'Timeout value of 00:10:00 exceeded by function: `RequestUserApproval'
`The same error message displays when you test the `function 
`in an Azure development environment when you run the `following Kusto query:
`
`FunctionAppLogs -
`| where FunctionName = = "RequestUserApproval"
`
`Logic app -
`You test the Logic app in a development environment. The `following error message displays:
`'400 Bad Request'
`Troubleshooting of the error shows an HttpTrigger action `to call the RequestUserApproval function.
`
`Question
`You need to ensure that all messages from Azure Event `Grid are processed.
`What should you use?

- [ ] Azure Event Grid topic
- [ ] Azure Service Bus topic
- [x] Azure Service Bus queue
- [ ] Azure Storage queue   
- [ ] Azure Logic App custom connector

#### Q10.5 ::
`Question
`
`You need to add code at line EG15 in EventGridController.cs to ensure that the Log policy applies to all services.
`How should you complete the code?


- [x] 
`if {
`    @event[ "data" ][ status ].ToString() == "Succeded"
`    &&
`    @event["data"]["operationName"].ToString() == "Microsoft.Web/sites/write"
`}

- [ ] 
`if {
`    @event[ "data" ][ status ].ToString() == "Succeded"
`    &&
`    @event["data"]["eventType"].ToString() == "Microsoft.Web/sites/write"
`}


- [ ] 
`if {
`    @event[ "data" ][ status ].ToString() == "Succeded"
`    &&
`    @event["data"]["resourceProvider"].ToString() == "Microsoft.Web/sites/write"
`}


- [ ] 
`if {
`    @event[ "data" ][ topic ].ToString() == "Succeded"
`    &&
`    @event["data"]["operationName"].ToString() == "Microsoft.Web/sites/write"
`}


- [ ] 
`if {
`    @event[ "data" ][ topic ].ToString() == "eventType"
`    &&
`    @event["data"]["status"].ToString() == "Microsoft.Web/sites/write"
`}

#### Q10.6 ::
`Question
`
`You need to insert code at line LE03 of LoginEvent.cs to ensure that all authentication events are processed correctly.
`How should you complete the code?

- [x] 
`public string id (get; set;)
`public string eventType (get; set;)
`public string dataVersion (get; set;)

- [ ] 
`public string id (get; set;)
`public string dataVersion (get; set;)
`public string metadataVersion (get; set;)

- [ ] 
`public string id (get; set;)
`public string eventType (get; set;)
`public string metadataVersion (get; set;)

- [ ] 
`public string dataVersion (get; set;)
`public string eventType (get; set;)
`public string metadataVersion (get; set;)

- [ ] 
`public string metadataVersion (get; set;)
`public string dataVersion (get; set;)
`public string eventType (get; set;)


#### Q10.7 ::
`Question
`
`You need to implement the Log policy.
`How should you complete the EnsureLogging method in EventGridController.cs?


- [x] 
`var client = new WebSiteManagementClient(. . .);
`var id = ParseResourceID(resource); 
`var appsetting = new StringDictionary(name: "properties",
`properties: new Dictionary<string,string>{
`    {"DIAGNOSTICS_AZUREBLOBCONTAINERSASURL",BlobStoreAccountSAS("logdrop")},
`    {"DIAGNOSTICS_AZUREBLOBRETENTIONINDAYS","15"}
`});
`client.WebApps.UpdateApplicationSetting(
`    id.resourceGroup,
`    id.name, appSettings);

- [ ] 
`var client = new WebSiteManagementClient(. . .);
`var id = ParseResourceID(resource); 
`var appsetting = new StringDictionary(name: "properties",
`properties: new Dictionary<string,string>{
`    {"DIAGNOSTICS_AZUREBLOBCONTAINERSASURL",BlobStoreAccountSAS("logdrop")},
`    {"DIAGNOSTICS_AZUREBLOBRETENTIONINDAYS","30"}
`});
`client.WebApps.UpdateApplicationSetting(
`    id.resourceGroup,
`    id.name, appSettings);

- [ ] 
`var client = new WebSiteManagementClient(. . .);
`var id = ParseResourceID(resource); 
`var appsetting = new StringDictionary(name: "properties",
`properties: new Dictionary<string,string>{
`    {"DIAGNOSTICS_AZUREBLOBCONTAINERSASURL",BlobStoreAccountSAS("logdrop")},
`    {"DIAGNOSTICS_AZUREBLOBRETENTIONINDAYS","30"}
`});
`client.WebApps.UploadLoggingSettings(
`    id.resourceGroup,
`    id.name, appSettings);


- [ ] 
`var client = new WebSiteManagementClient(. . .);
`var id = ParseResourceID(resource); 
`var appsetting = new StringDictionary(name: "properties",
`properties: new Dictionary<string,string>{
`    {"DIAGNOSTICS_AZUREBLOBCONTAINERSASURL",BlobStoreAccountSAS("logs")},
`    {"DIAGNOSTICS_AZUREBLOBRETENTIONINDAYS","15"}
`});
`client.WebApps.UploadLoggingSettings(
`    id.resourceGroup,
`    id.name, appSettings);

#### Q10.8 ::
`Notification latency -
`Users report that anomaly detection emails can sometimes `arrive several minutes after an anomaly is detected.
`
`
`Question
`You need to resolve a notification latency issue.
`Which two actions should you perform? Each correct answer `presents part of the solution.

- [x] Set Always On to true.
- [x] Ensure that the Azure Function is using an App Service plan.
- [ ] Set Always On to false.
- [ ] Ensure that the Azure Function is set to use a consumption plan.


#### 9 ::
`Question
`
`You need to ensure that validation testing is triggered per the requirements.
`How should you complete the code segment?

1. ImagePushed
2. repository
3. topic

- [x]
`var event = getEvent(); 
`if (event.eventType ==='ImagePushed')
`    && event.data.target.repository === 'contentanalysisservice'
`    && event.topic.contains('contosoimages'))
`    {
`        startValidationTesting(); 
`    }


- [ ]
`var event = getEvent(); 
`if (event.eventType ==='ImagePushed')
`    && event.data.target.repository === 'contentanalysisservice'
`    && event.service.contains('contosoimages'))
`    {
`        startValidationTesting(); 
`    }


- [ ]
`var event = getEvent(); 
`if (event.eventType ==='ImagePushed')
`    && event.data.target.service === 'contentanalysisservice'
`    && event.topic.contains('contosoimages'))
`    {
`        startValidationTesting(); 
`    }



- [ ]
`var event = getEvent(); 
`if (event.eventType ==='RepositoryUpdated')
`    && event.data.target.service === 'contentanalysisservice'
`    && event.imageCollection.contains('contosoimages'))
`    {
`        startValidationTesting(); 
`    }

- [ ]
`var event = getEvent(); 
`if (event.eventType ==='ImagePushed')
`    && event.data.target.aci === 'contentanalysisservice'
`    && event.topic.contains('contosoimages'))
`    {
`        startValidationTesting(); 
`    }

#### Q10 ::
`Requirements -
`
`Costs -
`You must minimize costs for all Azure services.
`
`Security -
`You have the following security requirements:
`Any web service accessible over the Internet must be `protected from cross site scripting attacks.
`All websites and services must use SSL from a valid root `certificate authority.
`Azure Storage access keys must only be stored in memory `and must be available only to the service.
`All Internal services must only be accessible from `internal Virtual Networks (VNets).
`All parts of the system must support inbound and outbound `traffic restrictions.
`All service calls must be authenticated by using Azure AD.
`
`Issues -
`Users of the ContentUploadService report that they `occasionally see HTTP 502 responses on specific pages.
`
`Question
`You need to deploy the CheckUserContent Azure Function. `The solution must meet the security and cost requirements.
`Which hosting model should you use?

- [ ] Premium plan
- [x] App Service plan
- [ ] Consumption plan


#### 11 ::
`Question
`
`You need to deploy a new version of the LabelMaker application to ACR.
`Which three actions should you perform in sequence?

- [x] 
`Build a new application image by using dockerfile.
`Create an alias of the image with the fully qualified path to the registry.
`Log in to the registry and push image.

- [ ] 
`Build a new application image by using dockerfile.
`Create an alias of the image with the fully qualified path to the registry.
`Download the image to your local computer.

- [ ] 
`Create an allias of the image with a new build number.
`Create an alias of the image with the fully qualified path to the registry.
`Log in to the registry and push image.

- [ ] 
`Download the image to your local computer.
`Create an alias of the image with the fully qualified path to the registry.
`Log in to the registry and push image.

- [ ] 
`Build a new application image by using dockerfile.
`Create an allias of the image with a new build number.
`Log in to the registry and push image.

- [ ] 
`Log in to the registry and push image.
`Create an alias of the image with the fully qualified path to the registry.
`Download the image to your local computer.
`Build a new application image by using dockerfile.


####  12::
`Question
`You need to access data from the user claim object in the `e-commerce web app.
`What should you do first?

- [ ] Write custom code to make a Microsoft Graph API call from the e-commerce web app.
- [ ] Assign the Contributor RBAC role to the e-commerce web app by using the Resource Manager create role assignment API.
- [x] Update the e-commerce web app to read the HTTP request header values.
- [ ] Using the Azure CLI, enable Cross-origin resource sharing (CORS) from the e-commerce checkout API to the e-commerce web app.


#### 13 ::
`Retail store locations -
`Azure Functions must process data immediately when data is uploaded to Blob storage. Azure Functions must update Azure Cosmos DB by using native SQL language queries.
`
`Delivery services -
`Store service telemetry data in Azure Cosmos DB by using an Azure Function. Data must include an item id, the delivery vehicle license plate, vehicle package capacity, and current vehicle location coordinates.
`Store delivery driver profile information in Azure Active Directory (Azure AD) by using an Azure Function called from the corporate website.
`
`Question
`
`You need to implement the retail store location Azure Function.
`How should you configure the solution?
`Configuration - Value

- [ ] Binding : Blob storage
- [x] Binding : Azure Cosmos DB
- [ ] Binding : Event Grid
- [ ] Binding : HTTP
- [ ] Binding Direction : Input
- [x] Binding Direction : Output
- [x] Trigger : Blob storage
- [ ] Trigger : Azure Cosmos DB
- [ ] Trigger : Event Grid
- [ ] Trigger : HTTP


#### 14 ::
`Requirements -
`
`Corporate website -
`Minimize costs for data storage and hosting.
`Implement native GitHub workflows for continuous integration and continuous deployment (CI/CD).
`Distribute the website content globally for local use.
`Implement monitoring by using Application Insights and availability web tests including SSL certificate validity and custom header value verification.
`The website must have 99.95 percent uptime.
`
`Retail store locations -
`Azure Functions must process data immediately when data is uploaded to Blob storage. Azure Functions must update Azure Cosmos DB by using native SQL language queries.
`Audit store sale transaction information nightly to validate data, process sales financials, and reconcile inventory.
`
`Delivery services -
`Store service telemetry data in Azure Cosmos DB by using an Azure Function. Data must include an item id, the delivery vehicle license plate, vehicle package capacity, and current vehicle location coordinates.
`Store delivery driver profile information in Azure Active Directory (Azure AD) by using an Azure Function called from the corporate website.
`
`Inventory services -
`The company has contracted a third-party to develop an API for inventory processing that requires access to a specific blob within the retail store storage account for three months to include read-only access to the data.
`
`Issues -
`
`Retail Store Locations -
`You must perform a point-in-time restoration of the retail store location data due to an unexpected and accidental deletion of data.
`Azure Cosmos DB queries from the Azure Function exhibit high Request Unit (RU) usage and contain multiple, complex queries that exhibit high point read latency for large items as the function app is scaling.
`
`Question
`
`You need to implement the corporate website.
`How should you configure the solution?
`
`Azure Configuration

- [ ] Plan : Free
- [x] Plan : Standard
- [ ] Plan : Premium
- [ ] Plan : Isolated
- [x] Service : App Service Web App
- [ ] Service : App Service Static Web App
- [ ] Service : App Function App
- [ ] Service : App Blob Storage

#### 15 ::
`Issues -
`
`Retail Store Locations -
`You must perform a point-in-time restoration of the retail store location data due to an unexpected and accidental deletion of data.
`Azure Cosmos DB queries from the Azure Function exhibit high Request Unit (RU) usage and contain multiple, complex queries that exhibit high point read latency for large items `as the function app is scaling.
`
`Question
`You need to implement a solution to resolve the retail store location data issue.
`Which three Azure Blob features should you enable? Each correct answer presents part of the solution.
`NOTE: Each correct selection is worth one point.

- [x] Soft delete
- [x] Change feed
- [ ] Snapshots
- [x] Versioning
- [ ] Object replication
- [ ] Immutability


#### 16 ::
`Requirements -
`
`User agreements -
`When a user submits content, they must agree to a user agreement. The agreement allows employees of Contoso, Ltd. to review content, store cookies on user devices, and track `user's IP addresses.
`Information regarding agreements is used by multiple divisions within Contoso, Ltd.
`User responses must not be lost and must be available to all parties regardless of individual service uptime. The volume of agreements is expected to be in the millions per `hour.
`
`Question
`You need to store the user agreements.
`Where should you store the agreement after it is completed?

- [ ] Azure Storage queue
- [x] Azure Event Hub
- [ ] Azure Service Bus topic
- [ ] Azure Event Grid topic





#### 17 ::
`Requirements -
`
`ContentAnalysisService -
`The company's data science group built ContentAnalysisService which accepts user generated content as a string and returns a probable value for inappropriate content. Any values over a specific threshold must be reviewed by an employee of Contoso, Ltd.
`You must create an Azure Function named CheckUserContent to perform the content checks.
`
`Question
`
`You need to implement the bindings for the CheckUserContent function.
`How should you complete the code segment?

- [x] 
`public static class CheckUserContent
`{
`    [FunctionName("CheckUserContent")]
`    public static void Run([BlobTrigger("userContent/{name}")] string content,
`    [Blob("userContent/{name}", FileAccess.Write)] Stream output
`    {
`        ...
`    }


- [ ] 
`public static class CheckUserContent
`{
`    [FunctionName("CheckUserContent")]
`    public static void Run([Table("content","userContent","{name}")] string content,
`    [Table("userContent/{name}", FileAccess.Write)] Stream output
`    {
`        ...
`    }


- [ ] 
`public static class CheckUserContent
`{
`    [FunctionName("CheckUserContent")]
`    public static void Run([CosmosDBTrigger("content","userContent")]string content,
`    [CosmosDB("content","userContent")] Stream output
`    {
`        ...
`    }

- [ ] 
`public static class CheckUserContent
`{
`    [FunctionName("CheckUserContent")]
`    public static void Run([QueueTrigger("userContent")] string content,
    [Queue("userContent")] Stream output
`    {
`        ...
`    }





#### 18 ::
`The main web application for the social networking website loads user uploaded content from blob storage.
`You are developing a solution to monitor uploaded data for inappropriate content. The following process occurs when users upload content by using the SPA:
`* Messages are sent to ContentUploadService.
`* Content is processed by ContentAnalysisService.
`
`
`Monitoring -
`An alert must be raised if the ContentUploadService uses more than 80 percent of available CPU cores.
`Issues -
`Users of the ContentUploadService report that they occasionally see HTTP 502 responses on specific pages.
`
`Question
`You need to configure the ContentUploadService deployment.
`Which two actions should you perform? Each correct answer presents part of the solution.

- [x] Add the following markup to line CS23: type: Private
- [ ] Add the following markup to line CS24: osType: Windows
- [x] Add the following markup to line CS24: osType: Linux
- [ ] Add the following markup to line CS23: type: Public





#### Q.19 ::
`Requirements -
`
`Data must be replicated to a secondary region and three availability zones.
`
`Question
`
`You need to configure the Account Kind, Replication, and Access tier options for the corporate website's Azure Storage account.
`How should you complete the configuration?


- [x] Account kind : StorageV2 (general purpose v2)
- [ ] Account kind : Storage (general purpose v1)
- [ ] Account kind : BlobStorage
- [ ] Replication : Locally-redundant storage (LRS) 
- [ ] Replication : Zone-redundant storage (ZRS) 
- [ ] Replication : Geo-redundant storage (GRS) 
- [ ] Replication : Read-access-geo-redundant storage (RA-GRS) 
- [x] Replication : Geo-zone-redundant storage (GZRS) 
- [ ] Replication : Read-access geo-zone-redundant storage (RA-GZRS) 
- [x] Access tier (default) : cool
- [ ] Access tier (default) : Hot
