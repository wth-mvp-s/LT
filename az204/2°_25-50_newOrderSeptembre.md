##   2°_25-50_newOrderSeptembre

#### 0031, [67%] ::You are developing an application that applies a set of governance policies for internal and external services, as well as for applications.
`You develop a stateful ASP.NET Core 2.1 web application named PolicyApp and deploy it to an Azure App Service Web App. 
`The PolicyApp reacts to events from Azure Event Grid and performs policy actions based on those events.
`You have the following requirements:
`✑ Authentication events must be used to monitor users when they sign in and sign out.
`✑ All authentication events must be processed by PolicyApp.
`✑ Sign outs must be processed as fast as possible.
`What should you do?

- [ ] Create a new Azure Event Grid subscription for all authentication events. Use the subscription to process sign-out events.
- [ ] Create a separate Azure Event Grid handler for sign-in and sign-out events.
- [ ] Create separate Azure Event Grid topics and subscriptions for sign-in and sign-out events. 
- [x] Add a subject prefix to sign-out events. Create an Azure Event Grid subscription. Configure the subscription to use the subjectBeginsWith filter.



#### 0032, Q1. ::You are developing a C++ application that compiles to a native application named process.exe. 
`The application accepts images as input and returns images in one of the following image formats: GIF, PNG, or JPEG.
`You must deploy the application as an Azure Function.
`You need to configure the function and host json files.
`How should you complete the json files?
`
`function.json
`{
`   ----------------
    "direction":"out"
    "name":"result"
    
`}

- [x] "type":"http"
- [ ] "platform":"gcm"
- [ ] "datatype":"stream"
- [ ] "path":"process.exe"


#### 0032, Q1. ::You are developing a C++ application that compiles to a native application named process.exe. 
`The application accepts images as input and returns images in one of the following image formats: GIF, PNG, or JPEG.
`You must deploy the application as an Azure Function.
`You need to configure the function and host json files.
`How should you complete the json files?
`
`host.json
`----------------
`     "defaultExecutablePath":"process.exe"
`},
`"enableForwardingHttpRequest":false
`}
- [x] "customHandler":{"description":{
- [ ] "languageWorker":{"path":{
- [ ] "extensions":{"worker":{
- [ ] "extensionBundle":{


#### 0032, Q1. ::You are developing a C++ application that compiles to a native application named process.exe. 
`The application accepts images as input and returns images in one of the following image formats: GIF, PNG, or JPEG.
`You must deploy the application as an Azure Function.
`You need to configure the function and host json files.
`How should you complete the json files?
`
`
`host.json
`"customHandler":{"description":{
`     "defaultExecutablePath":"process.exe"
`},
`   ---------- 

- [ ] "enableForwardingHttpRequest":true
- [x] "enableForwardingHttpRequest":false




#### 0033, Q1. [ok]::You are implementing a software as a service (SaaS) ASP.NET Core web service that will run as an Azure Web App. The web service will use an on-premises SQL Server database for storage. The web service also includes a WebJob that processes data updates. Four customers will use the web service. 
`✑ Each instance of the WebJob processes data for a single customer and must run as a singleton instance.
`✑ Each deployment must be tested by using deployment slots prior to serving production data.
`✑ Azure costs must be minimized.
`✑ Azure resources must be located in an isolated network.
`You need to configure the App Service plan for the Web App.
`Number of VM instances

- [ ] 2
- [x] 4
- [ ] 8 
- [ ] 16 


#### 0033, Q1.2. ::You are implementing a software as a service (SaaS) ASP.NET Core web service that will run as an Azure Web App. The web service will use an on-premises SQL Server database for storage. The web service also includes a WebJob that processes data updates. Four customers will use the web service. 
`✑ Each instance of the WebJob processes data for a single customer and must run as a singleton instance.
`✑ Each deployment must be tested by using deployment slots prior to serving production data.
`✑ Azure costs must be minimized.
`✑ Azure resources must be located in an isolated network.
`You need to configure the App Service plan for the Web App.
`Pricing tier

- [x] Isolated
- [ ] Standard
- [ ] Premium
- [ ] Consumption


#### 0034, Q2. ::You are a developer for a software as a service (SaaS) company that uses an Azure Function to process orders. The Azure Function currently runs on an Azure
`Function app that is triggered by an Azure Storage queue.
`You are preparing to migrate the Azure Function to Kubernetes using Kubernetes-based Event Driven Autoscaling (KEDA).
`You need to configure Kubernetes Custom Resource Definitions (CRD) for the Azure Function.
`Which CRDs should you configure? To answer, drag the appropriate CRD types to the correct locations. Each CRD type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Azure Function code

- [ ] Secret
- [x] Deployment
- [ ] ScaledObject
- [ ] TriggerAuthentication


#### 0034, Q2.2 ::You are a developer for a software as a service (SaaS) company that uses an Azure Function to process orders. The Azure Function currently runs on an Azure
`Function app that is triggered by an Azure Storage queue.
`You are preparing to migrate the Azure Function to Kubernetes using Kubernetes-based Event Driven Autoscaling (KEDA).
`You need to configure Kubernetes Custom Resource Definitions (CRD) for the Azure Function.
`Which CRDs should you configure? To answer, drag the appropriate CRD types to the correct locations. Each CRD type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Polling interval

- [ ] Secret
- [ ] Deployment
- [x] ScaledObject
- [ ] TriggerAuthentication

#### 0034, Q2.3 [ok]::You are a developer for a software as a service (SaaS) company that uses an Azure Function to process orders. The Azure Function currently runs on an Azure
`Function app that is triggered by an Azure Storage queue.
`You are preparing to migrate the Azure Function to Kubernetes using Kubernetes-based Event Driven Autoscaling (KEDA).
`You need to configure Kubernetes Custom Resource Definitions (CRD) for the Azure Function.
`Which CRDs should you configure? To answer, drag the appropriate CRD types to the correct locations. Each CRD type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Azure Storage connection string

- [x] Secret
- [ ] Deployment
- [ ] ScaledObject
- [ ] TriggerAuthentication

#### 0035::
`You are creating a CLI script that creates an Azure web app and related services in Azure App Service. The web app uses the following variables:
`
`$gitrepo : https://github.com/Consos/webapp
`$webappname : Webapp1103
`
`You need to automatically deploy code from GitHub to the newly created web app.
`How should you complete the script? 

- [x]
`az group create --location westeurope --nameResourceGroup
`az appservice plan create --name $webappname --resource-group myRessourceGroup --sku FREE
`az webapp create --name $webappname --resource-group myResourceGroup
`--plan $webappname
`az webapp deployment source config --name $webappname
--resource-group myResourceGroup --repo-url $gitrepo --branch master --manual-integration


- [ ]
`az group create --location westeurope --nameResourceGroup
`az appapp --name $webappname --resource-group myRessourceGroup --sku FREE
`az webapp create --name $webappname --resource-group myResourceGroup
`--plan $webappname
`az webapp deployment source config --name $webappname
--resource-group myResourceGroup --repo-url $gitrepo --branch master --manual-integration

- [ ]
`az group create --location westeurope --nameResourceGroup
`az appservice plan create --name $webappname --resource-group myRessourceGroup --sku FREE
`az group delete --name $webappname --resource-group myResourceGroup
`--plan $webappname
`az webapp deployment source config --name $webappname
--resource-group myResourceGroup --repo-url $gitrepo --branch master --manual-integration


- [ ]
`az group create --location westeurope --nameResourceGroup
`az appservice plan create --name $webappname --resource-group myRessourceGroup --sku FREE
`az webapp create --name $webappname --resource-group myResourceGroup
`git clone $gitrepo
`az webapp deployment source config --name $webappname
--resource-group myResourceGroup --repo-url $gitrepo --branch master --manual-integration


- [ ]
`az group create --location westeurope --nameResourceGroup
`az appservice plan create --name $webappname --resource-group myRessourceGroup --sku FREE
`az webapp create --name $webappname --resource-group myResourceGroup
`--plan $webappname
`az webapp source config --name $webappname
--resource-group myResourceGroup --repo-url $gitrepo --branch master --manual-integration


- [ ]
`az group create --location westeurope --nameResourceGroup
`az appservice plan create --name $webappname --resource-group myRessourceGroup --sku FREE
`az webapp create --name $webappname --resource-group myResourceGroup
`--plan $webappname
`az webapp deployment source config --name $webappname
--resource-group myResourceGroup git clone $gitrepo



#### 0036, Q4. [?]4QuestionPareil::You develop a software as a service (SaaS) offering to manage photographs. Users upload photos to a web service which then stores the photos in Azure
`Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Trigger the photo processing from Blob storage events.
`Does the solution meet the goal?

- [ ] Yes
- [x] No



#### 0025, Q5. ::You develop and deploy an Azure App Service API app to a Windows-hosted deployment slot named Development. You create additional deployment slots named Testing and Production. You enable auto swap on the Production deployment slot.
`You need to ensure that scripts run and resources are available before a swap operation occurs.
`Solution: Update the web.config file to include the applicationInitialization configuration element. Specify custom initialization actions to run the scripts.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 0026, Q6. ::You develop and deploy an Azure App Service API app to a Windows-hosted deployment slot named Development. You create additional deployment slots named Testing and Production. You enable auto swap on the Production deployment slot.
`You need to ensure that scripts run and resources are available before a swap operation occurs.
`Solution: Enable auto swap for the Testing slot. Deploy the app to the Testing slot.
`Does the solution meet the goal?

- [x] Yes
- [ ] No



#### 0027, Q7. ::You develop and deploy an Azure App Service API app to a Windows-hosted deployment slot named Development. You create additional deployment slots named Testing and Production. You enable auto swap on the Production deployment slot.
`You need to ensure that scripts run and resources are available before a swap operation occurs.
`Solution: Disable auto swap. Update the app with a method named statuscheck to run the scripts. Re-enable auto swap and deploy the app to the Production slot.
`Does the solution meet the goal?

- [x] No
- [ ] Yes


#### 0028, Q8.4QuestionPareil::You develop a software as a service (SaaS) offering to manage photographs. Users upload photos to a web service which then stores the photos in Azure Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Convert the Azure Storage account to a BlockBlobStorage storage account.
`Does the solution meet the goal?

- [ ] Yes
- [x] No



#### 0029, Q9. ::You are developing an Azure Web App. You configure TLS mutual authentication for the web app.
`You need to validate the client certificate in the web app. To answer, select the appropriate options in the answer area.
`Client certificate location

- [x] HTTP request header
- [ ] Client cookie
- [ ] HTTP message body
- [ ] URL query string

 
#### 0029, Q9.2 ::You are developing an Azure Web App. You configure TLS mutual authentication for the web app.
`You need to validate the client certificate in the web app. To answer, select the appropriate options in the answer area.
`Encoding type

- [ ] HTTP
- [ ] URL
- [ ] Unicode
- [x] Base64

#### 00 ::
`You are developing a Docker/Go using Azure App Service Web App for Containers. You plan to run the container in an App Service on Linux. You identify a
`Docker container image to use.
`None of your current resource groups reside in a location that supports Linux. You must minimize the number of resource groups required.
`You need to create the application and perform an initial deployment.
`Which three Azure CLI commands should you use to develop the solution?

- [x] 
`az group create
`az appservice plan create
`az webapp create

- [ ] 
`az appservice plan create
`az webapp create
`az group create

- [ ] 
`az group create
`az appservice plan create
`az webapp update

- [ ] 
`az webapp create
`az group create
`az group update
  
- [ ] 
`az group create
`az group update
`az webapp update
`az webapp create
`az appservice plan create

[//] 0041 todo: image
[//] 0042 todo: image



#### 0043, Q13 ::You develop a website. You plan to host the website in Azure. You expect the website to experience high traffic volumes after it is published.
`You must ensure that the website remains available and responsive while minimizing cost.
`You need to deploy the website.
`What should you do?

- [ ] Deploy the website to a virtual machine. Configure the virtual machine to automatically scale when the CPU load is high.
- [ ] Deploy the website to an App Service that uses the Shared service tier. Configure the App Service plan to automatically scale when the CPU load is high.
- [ ] Deploy the website to a virtual machine. Configure a Scale Set to increase the virtual machine instance count when the CPU load is high.
- [x] Deploy the website to an App Service that uses the Standard service tier. Configure the App Service plan to automatically scale when the CPU load is high.


[//] 0044 todo: selectOrder
[//] 0045 todo: selectOrder



#### 0056, Q16.p10 ::You develop an HTTP triggered Azure Function app to process Azure Storage blob data. The app is triggered using an output binding on the blob.
`The app continues to time out after four minutes. The app must process the blob data.
`You need to ensure the app does not time out and processes the blob data.
`Solution: Use the Durable Function async pattern to process the blob data.
`Does the solution meet the goal?

- [x] Yes
- [ ] No


#### 00, Q17 ::You develop an HTTP triggered Azure Function app to process Azure Storage blob data. The app is triggered using an output binding on the blob.
`The app continues to time out after four minutes. The app must process the blob data.
`You need to ensure the app does not time out and processes the blob data.
`Solution: Pass the HTTP trigger payload into an Azure Service Bus queue to be processed by a queue trigger function and return an immediate HTTP success response.
`Does the solution meet the goal?

- [x] Yes
- [ ] No




#### 00, Q18 ::You develop an HTTP triggered Azure Function app to process Azure Storage blob data. The app is triggered using an output binding on the blob.
`The app continues to time out after four minutes. The app must process the blob data.
`You need to ensure the app does not time out and processes the blob data.
`Solution: Configure the app to use an App Service hosting plan and enable the Always On setting.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 00, Q19 ::You develop a software as a service (SaaS) offering to manage photographs. Users upload photos to a web service which then stores the photos in Azure
`Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Move photo processing to an Azure Function triggered from the blob upload.
`Does the solution meet the goal?

- [x] Yes
- [ ] No


#### 00, Q20 ::You are developing an application that uses Azure Blob storage.
`The application must read the transaction logs of all the changes that occur to the blobs and the blob metadata in the storage account for auditing purposes. The changes must be in the order in which they occurred, include only create, update, delete, and copy operations and be retained for compliance reasons.
`You need to process the transaction logs asynchronously.
`What should you do?

- [ ] Process all Azure Blob storage events by using Azure Event Grid with a subscriber Azure Function app.
- [x] Enable the change feed on the storage account and process all changes for available events.
- [ ] Process all Azure Storage Analytics logs for successful blob events.
- [ ] Use the Azure Monitor HTTP Data Collector API and scan the request body for successful blob events.

#### Q21 ::
`You plan to create a Docker image that runs an ASP.NET Core application named ContosoApp. You have a setup script named setupScript.ps1 and a series of application files including ContosoApp.dll.
`You need to create a Dockerfile document that meets the following requirements:
`✑ Call setupScripts.ps1 when the container is built.
`✑ Run ContosoApp.dll when the container starts.
`The Dockerfile document must be created in the same folder where ContosoApp.dll and setupScript.ps1 are stored.
`Which five commands should you use to develop the solution?

- [x]
`FROM microsoft/aspnetcore:latest
`WORKDIR /apps.ContosoApp
`COPY ./.
`RUN powershell ./setupScript.psl
`CMD ["dotnet", "ContosoApp.dll"]


- [ ]
`CMD ["dotnet", "ContosoApp.dll"]
`FROM microsoft/aspnetcore:latest
`COPY ./.
`WORKDIR /apps.ContosoApp
`RUN powershell ./setupScript.psl


- [ ]
`CMD ["dotnet", "ContosoApp.dll"]
`FROM microsoft/aspnetcore:latest
`COPY ./.
`RUN powershell ./setupScript.psl
`WORKDIR /apps.ContosoApp


- [ ]
`RUN powershell ./setupScript.psl
`FROM microsoft/aspnetcore:latest
`WORKDIR /apps.ContosoApp
`COPY ./.
`CMD ["dotnet", "ContosoApp.dll"]


- [ ]
`CMD ["dotnet", "ContosoApp.dll"]
`COPY ./.
`WORKDIR /apps.ContosoApp
`FROM microsoft/aspnetcore:latest
`RUN powershell ./setupScript.psl
 
- [ ]
`FROM microsoft/aspnetcore:latest
`WORKDIR /apps.ContosoApp
`CMD ["dotnet", "ContosoApp.dll"]
`COPY ./.
`RUN powershell ./setupScript.psl



#### Q22 ::You are developing an Azure Function App that processes images that are uploaded to an Azure Blob container.
`Images must be processed as quickly as possible after they are uploaded, and the solution must minimize latency. You create code to process images when the
`Function App is triggered.
`You need to configure the Function App.
`What should you do?

- [ ] Use an App Service plan. Configure the Function App to use an Azure Blob Storage input trigger.
- [ ] Use a Consumption plan. Configure the Function App to use an Azure Blob Storage trigger.
- [ ] Use a Consumption plan. Configure the Function App to use a Timer trigger.
- [x] Use an App Service plan. Configure the Function App to use an Azure Blob Storage trigger.
- [ ] Use a Consumption plan. Configure the Function App to use an Azure Blob Storage input trigger.

#### Q23 ::
`You are configuring a new development environment for a Java application.
`The environment requires a Virtual Machine Scale Set (VMSS), several storage accounts, and networking components.
`The VMSS must not be created until the storage accounts have been successfully created and an associated load balancer and virtual network is configured.
`How should you complete the Azure Resource Manager template? 


- [x]
`"resources":[
`    {
`        "apiVersion":"2016-01-01",
`        "type":"Microsoft.Storage/storageAccounts",
`        "name":[concat(copyIndex(),'storage', uniqueString(resourceGroup().id))]",
`        "location":"[resourceGroup().location]",
`        ...
`        "sku":{
`            "name":"Standard_LSR"
`        },
`        "kind":"Storage",
`        "properties":{},
`        "copy":{
`            "name":"storagesetup",
`            "count":3
`        }
`    },
`    {
`        "apiVersion":"2015-06-15",
`        "type":"Microsoft.Compute/virtualMachines",
`        "name":[concat('VM', uniqueString(resourceGroup().id))]",
`        "dependsOn":[
`            "variables('loadBalanceName')]",
`            "variables('virtualNetworkName')]",
`            "storagesetup",
`        ],
`        . . .
`    }
`],
`"outputs": {}


- [ ]
`"resources":[
`    {
`        "apiVersion":"2016-01-01",
`        "type":"Microsoft.Storage/storageAccounts",
`        "name":[concat(dependsOn(),'storage', uniqueString(resourceGroup().id))]",
`        "location":"[resourceGroup().location]",
`        ...
`        "sku":{
`            "name":"Standard_LSR"
`        },
`        "kind":"Storage",
`        "properties":{},
`        "copyIndex":{
`            "name":"storagesetup",
`            "count":3
`        }
`    },
`    {
`        "apiVersion":"2015-06-15",
`        "type":"Microsoft.Compute/virtualMachines",
`        "name":[concat('VM', uniqueString(resourceGroup().id))]",
`        "dependsOn":[
`            "variables('loadBalanceName')]",
`            "variables('virtualNetworkName')]",
`            "storagesetup",
`        ],
`        . . .
`    }
`],
`"outputs": {}


- [ ]
`"resources":[
`    {
`        "apiVersion":"2016-01-01",
`        "type":"Microsoft.Storage/storageAccounts",
`        "name":[concat(copyIndex(),'storage', uniqueString(resourceGroup().id))]",
`        "location":"[resourceGroup().location]",
`        ...
`        "sku":{
`            "name":"Standard_LSR"
`        },
`        "kind":"Storage",
`        "properties":{},
`        "dependsOn":{
`            "name":"storagesetup",
`            "count":3
`        }
`    },
`    {
`        "apiVersion":"2015-06-15",
`        "type":"Microsoft.Compute/virtualMachines",
`        "name":[concat('VM', uniqueString(resourceGroup().id))]",
`        "copy":[
`            "variables('loadBalanceName')]",
`            "variables('virtualNetworkName')]",
`            "storagesetup",
`        ],
`        . . .
`    }
`],
`"outputs": {}

- [ ]
`"resources":[
`    {
`        "apiVersion":"2016-01-01",
`        "type":"Microsoft.Storage/storageAccounts",
`        "name":[concat(copy(),'storage', uniqueString(resourceGroup().id))]",
`        "location":"[resourceGroup().location]",
`        ...
`        "sku":{
`            "name":"Standard_LSR"
`        },
`        "kind":"Storage",
`        "properties":{},
`        "copyIndex":{
`            "name":"storagesetup",
`            "count":3
`        }
`    },
`    {
`        "apiVersion":"2015-06-15",
`        "type":"Microsoft.Compute/virtualMachines",
`        "name":[concat('VM', uniqueString(resourceGroup().id))]",
`        "dependsOn":[
`            "variables('loadBalanceName')]",
`            "variables('virtualNetworkName')]",
`            "storagesetup",
`        ],
`        . . .
`    }
`],
`"outputs": {}


- [ ]
`"resources":[
`    {
`        "apiVersion":"2016-01-01",
`        "type":"Microsoft.Storage/storageAccounts",
`        "name":[concat(copy(),'storage', uniqueString(resourceGroup().id))]",
`        "location":"[resourceGroup().location]",
`        ...
`        "sku":{
`            "name":"Standard_LSR"
`        },
`        "kind":"Storage",
`        "properties":{},
`        "copyIndex":{
`            "name":"storagesetup",
`            "count":3
`        }
`    },
`    {
`        "apiVersion":"2015-06-15",
`        "type":"Microsoft.Compute/virtualMachines",
`        "name":[concat('VM', uniqueString(resourceGroup().id))]",
`        "priority":[
`            "variables('loadBalanceName')]",
`            "variables('virtualNetworkName')]",
`            "storagesetup",
`        ],
`        . . .
`    }
`],
`"outputs": {}

#### Q24.A ::
`log.Info($"Processing Order: {myQueueItem.Id}")
`log.Info($"Queue Insertion Time: {myQueueItem.InsertionTime}")
`log.Info($"Queue Expiration Time: {myQueueItem.ExpirationTime}")
`tableBinding.Add(JsonConvert.DeserializeObject<Order>(myQueueItem.AsString))
`
`The code will log the time that the order was processed from the queue.

- [ ] Yes
- [x] No
#### Q24.B ::
`log.Info($"Processing Order: {myQueueItem.Id}")
`log.Info($"Queue Insertion Time: {myQueueItem.InsertionTime}")
`log.Info($"Queue Expiration Time: {myQueueItem.ExpirationTime}")
`tableBinding.Add(JsonConvert.DeserializeObject<Order>(myQueueItem.AsString))
`
`When the ProcessOrders function fails, the function will retry up to five times for a given order, including the first try.

- [x] Yes
- [ ] No
#### Q24.C ::
`log.Info($"Processing Order: {myQueueItem.Id}")
`log.Info($"Queue Insertion Time: {myQueueItem.InsertionTime}")
`log.Info($"Queue Expiration Time: {myQueueItem.ExpirationTime}")
`tableBinding.Add(JsonConvert.DeserializeObject<Order>(myQueueItem.AsString))
`
`When there are multiple orders in the queue, a batch of orders will be retrieved from the queue and the ProcessOrders function will run multiple instances concurrently to process the orders.


- [x] Yes
- [ ] No
#### Q24.D ::
`log.Info($"Processing Order: {myQueueItem.Id}")
`log.Info($"Queue Insertion Time: {myQueueItem.InsertionTime}")
`log.Info($"Queue Expiration Time: {myQueueItem.ExpirationTime}")
`tableBinding.Add(JsonConvert.DeserializeObject<Order>(myQueueItem.AsString))
`
`The ProcessOrders function will output the order to an Orders table in Azure Table Storage. 

- [x] Yes
- [ ] No


#### Q25 ::You are developing a solution for a hospital to support the following use cases:
`✑ The most recent patient status details must be retrieved even if multiple users in different locations have updated the patient record.
`✑ Patient health monitoring data retrieved must be the current version or the prior version.
`✑ After a patient is discharged and all charges have been assessed, the patient billing record contains the final charges.
`You provision a Cosmos DB NoSQL database and set the default consistency level for the database account to Strong. You set the value for Indexing Mode to Consistent.
`You need to minimize latency and any impact to the availability of the solution. You must override the default consistency level at the query level to meet the required consistency guarantees for the scenarios.
`Which consistency levels should you implement? To answer, drag the appropriate consistency levels to the correct requirements. Each consistency level may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Return the most recent patient status.

- [x] Strong
- [ ] Bounded Staleness
- [ ] Consistent Prefix
- [ ] Eventual


#### Q25.2 ::You are developing a solution for a hospital to support the following use cases:
`✑ The most recent patient status details must be retrieved even if multiple users in different locations have updated the patient record.
`✑ Patient health monitoring data retrieved must be the current version or the prior version.
`✑ After a patient is discharged and all charges have been assessed, the patient billing record contains the final charges.
`You provision a Cosmos DB NoSQL database and set the default consistency level for the database account to Strong. You set the value for Indexing Mode to Consistent.
`You need to minimize latency and any impact to the availability of the solution. You must override the default consistency level at the query level to meet the required consistency guarantees for the scenarios.
`Which consistency levels should you implement? To answer, drag the appropriate consistency levels to the correct requirements. Each consistency level may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Return health monitoring data that is no less than one version behind

- [ ] Strong
- [x] Bounded Staleness
- [ ] Consistent Prefix
- [ ] Eventual


#### Q25.3 ::You are developing a solution for a hospital to support the following use cases:
`✑ The most recent patient status details must be retrieved even if multiple users in different locations have updated the patient record.
`✑ Patient health monitoring data retrieved must be the current version or the prior version.
`✑ After a patient is discharged and all charges have been assessed, the patient billing record contains the final charges.
`You provision a Cosmos DB NoSQL database and set the default consistency level for the database account to Strong. You set the value for Indexing Mode to Consistent.
`You need to minimize latency and any impact to the availability of the solution. You must override the default consistency level at the query level to meet the required consistency guarantees for the scenarios.
`Which consistency levels should you implement? To answer, drag the appropriate consistency levels to the correct requirements. Each consistency level may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`After patient is charged and all charges are assessed, retrieve the correct billing data with the final charges. 

- [ ] Strong
- [ ] Bounded Staleness
- [ ] Consistent Prefix
- [x] Eventual


#### Q26 ::The development environment requires several software development kits (SDKs) and third-party components to support application development across the organization. You install and customize the deployed virtual machine (VM) for your development team. The customized VM must be saved to allow provisioning of a new team member development environment.
`You need to save the customized VM for future provisioning.
`Which tools or services should you use? To answer, select the appropriate options in the answer area.
`
`Generalize the VM.

- [x] Azure PowerShell
- [ ] Visual Studio command prompt
- [ ] Azure Migrate
- [ ] Azure Backup


#### Q26.2 ::The development environment requires several software development kits (SDKs) and third-party components to support application development across the organization. You install and customize the deployed virtual machine (VM) for your development team. The customized VM must be saved to allow provisioning of a new team member development environment.
`You need to save the customized VM for future provisioning.
`Which tools or services should you use? To answer, select the appropriate options in the answer area.
`
`Store images.

- [x] Azure Blob Storage
- [ ] Azure Data Lake Storage
- [ ] Azure File Storage
- [ ] Azure Table Storage




#### Q29 ::You are preparing to deploy a website to an Azure Web App from a GitHub repository. The website includes static content generated by a script.
`You plan to use the Azure Web App continuous deployment feature.
`You need to run the static generation script before the website starts serving traffic.
What are two possible ways to achieve this goal?


- [ ] Add the path to the static content generation tool to WEBSITE_RUN_FROM_PACKAGE setting in the host.json file.
- [x] Add a PreBuild target in the websites csproj project file that runs the static content generation script.
- [ ] Create a file named run.cmd in the folder /run that calls a script which generates the static content and deploys the website.
- [x] Create a file named .deployment in the root of the repository that calls a script which generates the static content and deploys the website.


#### Q30 ::
`You are developing an application to use Azure Blob storage. You have configured Azure Blob storage to include change feeds.
`A copy of your storage account must be created in another region. Data must be copied from the current storage account to the new storage account directly between the storage servers.
`You need to create a copy of the storage account in another region and copy the data.
`In which order should you perform the actions?

- [x]
`Create a new templete deployment.
`Export a Resource Manager templete.
`Modify the templete by changing the storage account name and region
`Deploy the templete to create a new storage account in the target region.
`Use AZCopy to copy the data to the new storage account


- [ ]
`Create a new templete deployment.
`Export a Resource Manager templete.
`Modify the templete by changing the storage account name and region
`Use AZCopy to copy the data to the new storage account
`Deploy the templete to create a new storage account in the target region.


- [ ]
`Create a new templete deployment.
`Export a Resource Manager templete.
`Deploy the templete to create a new storage account in the target region.
`Modify the templete by changing the storage account name and region
`Use AZCopy to copy the data to the new storage account


- [ ]
`Export a Resource Manager templete.
`Create a new templete deployment.
`Modify the templete by changing the storage account name and region
`Deploy the templete to create a new storage account in the target region.
`Use AZCopy to copy the data to the new storage account


- [ ]
`Use AZCopy to copy the data to the new storage account
`Deploy the templete to create a new storage account in the target region.
`Export a Resource Manager templete.
`Create a new templete deployment.
`Modify the templete by changing the storage account name and region