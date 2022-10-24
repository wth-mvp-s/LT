##   2°_all1234

#### 0017 ::
`You run a charity event that involves posting photos of people wearing sunglasses on Twitter.
`You need to ensure that you only retweet photos that meet the following requirements:
`✑ Include one or more faces.
`✑ Contain at least one person wearing sunglasses.
`What should you use to analyze the images?


- [ ] the Verify operation in the Face service 
- [x] the Detect operation in the Face service
- [ ] the Describe Image operation in the Computer Vision service
- [ ] the Analyze Image operation in the Computer Vision service



#### 0018 ::
`When you design an AI system to assess whether loans should be approved, the factors used to make the decision should be explainable.
`This is an example of which Microsoft guiding principle for responsible AI?

- [x] transparency
- [ ] inclusiveness
- [ ] fairness
- [ ] privacy and security


#### 0019::
`Providing an explanation of the outcome of a credit loan application is an example of the Microsoft transparency principle for responsible AI. 

- [x] Yes
- [ ] No


#### 0019::
`A triage bot that prioritizes insurance claims based on injuries is an example of the Microsoft reliability and safety principle for responsible AI.

- [ ] Yes
- [x] No


#### 0019::
Àn AI solution is offered at different prices for diffirent sales territories is an example of the Microsoft inclusiveness principle for responsible AI. 

- [ ] Yes
- [x] No


#### 0020 ::
`Match the principles of responsible AI to appropriate requirements.
`
`The system must not discriminate based on gender, race

- [x] Fairness
- [ ] Privacy and security
- [ ] Reliability and safety
- [ ] Transparency



#### 0020 ::
`Match the principles of responsible AI to appropriate requirements.
`
`Personal data must be visible only to approve

- [ ] Fairness
- [x] Privacy and security
- [ ] Reliability and safety
- [ ] Transparency


#### 0020 ::
`Match the principles of responsible AI to appropriate requirements.
`
`Automated decision-making processes must be recorded so that approved users can identify why a decision was made 

- [ ] Fairness
- [ ] Privacy and security
- [ ] Reliability and safety
- [x] Transparency






























#### 0021::
`You plan to deploy an Azure Machine Learning model as a service that will be used by client applications.
`Which three processes should you perform in sequence before you deploy the model?

- [x]
`data preparation
`model training
`model evaluation


- [ ]
`data encryption
`model training
`model evaluation

- [ ]
`data preparation
`model retraining
`model evaluation

- [ ]
`data preparation
`model evaluation
`model training

- [ ]
`data encryption
`model training
`model evaluation

#### 0022 ::
`You are building an AI-based app.
`You need to ensure that the app uses the principles for responsible AI.
`Which two principles should you follow? 

- [ ] Implement an Agile software development methodology
- [x] Implement a process of AI model validation as part of the software review process
- [x] Establish a risk governance committee that includes members of the legal team, members of the risk management team, and a privacy officer
- [ ] Prevent the disclosure of the use of AI-based algorithms for automated decision making


#### 0023 ::
`According to Microsoft's ______ principle of responsible AI, AI system should NOT reflect biases from the data sets that are used to train the systems. 

- [ ] accountability
- [x] fairness
- [ ] inclusiveness
- [ ] transparency


#### 0024 ::
`According to Microsoft's _____ principle of responsible AI, AI system should NOT reflect biases from the data sets that are used to train the systems. 

- [ ] accountability
- [x] fairness
- [ ] inclusiveness
- [ ] transparency






























#### 0025::

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
`az webapp create --name $webappname --resource-group myResourceGroup
`az appservice plan create --name $webappname --resource-group myRessourceGroup --sku FREE
`az group create --location westeurope --nameResourceGroup
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

#### xx? ::

[//] unfinished

`#/bin/bash
`appName="FourthCoffeePublicWeb$random"
`location="WestUS"
`dockerHubContainerPath="FourthCoffee/publicweb:v1"
`fqdn="http://fourthcoffee.com">www.fourthcoffee.com
`
`az webapp create
`--name $appName
`--plan AppServiceLinuxDockerPlan
`fourthCoffeePublicWebResourceGroup
`
`az webapp config container set
`--docker-custom-image-name
`$dockerHubContainerPath
`--name $appName
`--resource-group
`fourthCoffeePublicWebResourceGroup
`
`az webapp config hostname add
`webapp-name $appName
`resource-group
fourthCoffeePublicWebResourceGroup \
`hostname $fqdn


#### xx? ::
`You are developing a serverless Java application on Azure. You create a new Azure Key Vault to work with secrets from a new Azure Functions application.
`The application must meet the following requirements:
`✑ Reference the Azure Key Vault without requiring any changes to the Java code.
`✑ Dynamically add and remove instances of the Azure Functions host based on the number of incoming application events.
`✑ Ensure that instances are perpetually warm to avoid any cold starts.
`✑ Connect to a VNet.
`✑ Authentication to the Azure Key Vault instance must be removed if the Azure Function application is deleted.
`You need to grant the Azure Functions application access to the Azure Key Vault.
`Which three actions should you perform in sequence? 


- [x] 
`Create the Azure Function app with a Premium plan type.
`Create a system-assigned managed identity for the application.
`Create an access policy in Azure Key Vault for the application identity.


- [ ] 
`Create the Azure Function app with a Premium plan type.
`Create a system-assigned managed identity for the application.
`Create the Azure Function app with a Consumption plan type.


- [ ] 
`Create the Azure Function app with a Premium plan type.
`Create a system-assigned managed identity for the application.
`Create an SSL certification in Azure Key Vault for the application identity.


- [ ] 
`Create the Azure Function app with a Premium plan type.
`Create a user-assigned managed identity for the application.
`Create an access policy in Azure Key Vault for the application identity.


- [ ] 
`Create the Azure Function app with a Consumption plan type.
`Create a user-assigned managed identity for the application.
`Create an access policy in Azure Key Vault for the application identity.





#### 0043, Q13 ::You develop a website. You plan to host the website in Azure. You expect the website to experience high traffic volumes after it is published.
`You must ensure that the website remains available and responsive while minimizing cost.
`You need to deploy the website.
`What should you do?

- [ ] Deploy the website to a virtual machine. Configure the virtual machine to automatically scale when the CPU load is high.
- [ ] Deploy the website to an App Service that uses the Shared service tier. Configure the App Service plan to automatically scale when the CPU load is high.
- [ ] Deploy the website to a virtual machine. Configure a Scale Set to increase the virtual machine instance count when the CPU load is high.
- [x] Deploy the website to an App Service that uses the Standard service tier. Configure the App Service plan to automatically scale when the CPU load is high.


####  ::
`A company is developing a Java web app. The web app code is hosted in a GitHub repository located at https://github.com/Contoso/webapp.
`The web app must be evaluated before it is moved to production. You must deploy the initial code release to a deployment slot named staging.
`You need to create the web app and deploy the code.
`How should you complete the commands?

- [ ]
`gitrepo=https://github.com/Contoso/webapp
`webappname=businesswebapp
`resourcegroupname=BusinessAppResourceGroup
`az group create --location centralus --name $resourcegroupname
`az appservice plan create --name $webappname --resource-group $resourcegroupname --sku S3
`az webapp create --name $webappname --resource-group $resourcegroupname --plan $webappname
`az webapp deployment source create --name $webappname --resource-group $resourcegroupname --slot staging
`az webapp deployment slot config --name $webappname --resource-group $resourcegroupname \ --slot staging --repo-url $gitrepo --branch master --manual-integration


- [x]
`gitrepo=https://github.com/Contoso/webapp
`webappname=businesswebapp
`resourcegroupname=BusinessAppResourceGroup
`az group create --location centralus --name $resourcegroupname
`az appservice plan create --name $webappname --resource-group $resourcegroupname --sku S3
`az webapp create --name $webappname --resource-group $resourcegroupname --plan $webappname
`az webapp deployment slot create --name $webappname --resource-group $resourcegroupname --slot staging
`az webapp deployment source config --name $webappname --resource-group $resourcegroupname \ --slot staging --repo-url $gitrepo --branch master --manual-integration


- [ ]
`gitrepo=https://github.com/Contoso/webapp
`webappname=businesswebapp
`resourcegroupname=BusinessAppResourceGroup
`az group create --location centralus --name $resourcegroupname
`az webapp deployment source create --name $webappname --resource-group $resourcegroupname --sku S3
`az webapp create --name $webappname --resource-group $resourcegroupname --plan $webappname
`az webapp deployment slot create --name $webappname --resource-group $resourcegroupname --slot staging
`az appservice plan config --name $webappname --resource-group $resourcegroupname \ --slot staging --repo-url $gitrepo --branch master --manual-integration


- [ ]
`gitrepo=https://github.com/Contoso/webapp
`webappname=businesswebapp
`resourcegroupname=BusinessAppResourceGroup
`az webapp deployment source create --location centralus --name $resourcegroupname
`az appservice plan create --name $webappname --resource-group $resourcegroupname --sku S3
`az webapp create --name $webappname --resource-group $resourcegroupname --plan $webappname
`az webapp deployment slot create --name $webappname --resource-group $resourcegroupname --slot staging
`az group config --name $webappname --resource-group $resourcegroupname \ --slot staging --repo-url $gitrepo --branch master --manual-integration


- [ ]
`gitrepo=https://github.com/Contoso/webapp
`webappname=businesswebapp
`resourcegroupname=BusinessAppResourceGroup
`az group create --location centralus --name $resourcegroupname
`az webapp create --name $webappname --resource-group $resourcegroupname --sku S3
`az appservice plan create --name $webappname --resource-group $resourcegroupname --plan $webappname
`az webapp deployment slot create --name $webappname --resource-group $resourcegroupname --slot staging
`az webapp deployment source config --name $webappname --resource-group $resourcegroupname \ --slot staging --repo-url $gitrepo --branch master --manual-integration


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