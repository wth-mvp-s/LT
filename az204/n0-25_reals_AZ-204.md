##   n0-25_reals_AZ-204


#### Q1. You are implementing a software as a service (SaaS) ASP.NET Core web service that will run as an Azure Web App. The web service will use an on-premises SQL Server database for storage. The web service also includes a WebJob that processes data updates. Four customers will use the web service. 
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


#### Q1.2. You are implementing a software as a service (SaaS) ASP.NET Core web service that will run as an Azure Web App. The web service will use an on-premises SQL Server database for storage. The web service also includes a WebJob that processes data updates. Four customers will use the web service. 
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

#### Q2. You are a developer for a software as a service (SaaS) company that uses an Azure Function to process orders. The Azure Function currently runs on an Azure
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


#### Q2.2 You are a developer for a software as a service (SaaS) company that uses an Azure Function to process orders. The Azure Function currently runs on an Azure
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

#### Q2.3 You are a developer for a software as a service (SaaS) company that uses an Azure Function to process orders. The Azure Function currently runs on an Azure
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



#### Q4. You develop a software as a service (SaaS) offering to manage photographs. Users upload photos to a web service which then stores the photos in Azure
`Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Trigger the photo processing from Blob storage events.
`Does the solution meet the goal?

- [ ] Yes
- [x] No




#### Q5. You develop and deploy an Azure App Service API app to a Windows-hosted deployment slot named Development. You create additional deployment slots named Testing and Production. You enable auto swap on the Production deployment slot.
`You need to ensure that scripts run and resources are available before a swap operation occurs.
`Solution: Update the web.config file to include the applicationInitialization configuration element. Specify custom initialization actions to run the scripts.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Q6. You develop and deploy an Azure App Service API app to a Windows-hosted deployment slot named Development. You create additional deployment slots named Testing and Production. You enable auto swap on the Production deployment slot.
`You need to ensure that scripts run and resources are available before a swap operation occurs.
`Solution: Enable auto swap for the Testing slot. Deploy the app to the Testing slot.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Q7. You develop and deploy an Azure App Service API app to a Windows-hosted deployment slot named Development. You create additional deployment slots named Testing and Production. You enable auto swap on the Production deployment slot.
`You need to ensure that scripts run and resources are available before a swap operation occurs.
`Solution: Disable auto swap. Update the app with a method named statuscheck to run the scripts. Re-enable auto swap and deploy the app to the Production slot.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### Q8. You develop a software as a service (SaaS) offering to manage photographs. Users upload photos to a web service which then stores the photos in Azure Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Convert the Azure Storage account to a BlockBlobStorage storage account.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Q9. You are developing an Azure Web App. You configure TLS mutual authentication for the web app.
`You need to validate the client certificate in the web app. To answer, select the appropriate options in the answer area.
`Client certificate location

- [x] HTTP request header
- [ ] Client cookie
- [ ] HTTP message body
- [ ] URL query string

 
#### Q9.2 You are developing an Azure Web App. You configure TLS mutual authentication for the web app.
`You need to validate the client certificate in the web app. To answer, select the appropriate options in the answer area.
`Encoding type

- [ ] HTTP
- [ ] URL
- [ ] Unicode
- [x] Base64


#### Q13 You develop a website. You plan to host the website in Azure. You expect the website to experience high traffic volumes after it is published.
`You must ensure that the website remains available and responsive while minimizing cost.
`You need to deploy the website.
`What should you do?

- [ ] Deploy the website to a virtual machine. Configure the virtual machine to automatically scale when the CPU load is high.
- [ ] Deploy the website to an App Service that uses the Shared service tier. Configure the App Service plan to automatically scale when the CPU load is high.
- [ ] Deploy the website to a virtual machine. Configure a Scale Set to increase the virtual machine instance count when the CPU load is high.
- [x] Deploy the website to an App Service that uses the Standard service tier. Configure the App Service plan to automatically scale when the CPU load is high.










































#### Q16 You develop an HTTP triggered Azure Function app to process Azure Storage blob data. The app is triggered using an output binding on the blob.
`The app continues to time out after four minutes. The app must process the blob data.
`You need to ensure the app does not time out and processes the blob data.
`Solution: Use the Durable Function async pattern to process the blob data.
`Does the solution meet the goal?

- [x] Yes
- [ ] No


#### Q17 You develop an HTTP triggered Azure Function app to process Azure Storage blob data. The app is triggered using an output binding on the blob.
`The app continues to time out after four minutes. The app must process the blob data.
`You need to ensure the app does not time out and processes the blob data.
`Solution: Pass the HTTP trigger payload into an Azure Service Bus queue to be processed by a queue trigger function and return an immediate HTTP success response.
`Does the solution meet the goal?

- [x] Yes
- [ ] No




#### Q18 You develop an HTTP triggered Azure Function app to process Azure Storage blob data. The app is triggered using an output binding on the blob.
`The app continues to time out after four minutes. The app must process the blob data.
`You need to ensure the app does not time out and processes the blob data.
`Solution: Configure the app to use an App Service hosting plan and enable the Always On setting.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### Q19 You develop a software as a service (SaaS) offering to manage photographs. Users upload photos to a web service which then stores the photos in Azure
`Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Move photo processing to an Azure Function triggered from the blob upload.
`Does the solution meet the goal?

- [x] Yes
- [ ] No



#### Q20 You are developing an application that uses Azure Blob storage.
`The application must read the transaction logs of all the changes that occur to the blobs and the blob metadata in the storage account for auditing purposes. The changes must be in the order in which they occurred, include only create, update, delete, and copy operations and be retained for compliance reasons.
`You need to process the transaction logs asynchronously.
`What should you do?

- [ ] Process all Azure Blob storage events by using Azure Event Grid with a subscriber Azure Function app.
- [x] Enable the change feed on the storage account and process all changes for available events.
- [ ] Process all Azure Storage Analytics logs for successful blob events.
- [ ] Use the Azure Monitor HTTP Data Collector API and scan the request body for successful blob events.



#### Q22 You are developing an Azure Function App that processes images that are uploaded to an Azure Blob container.
`Images must be processed as quickly as possible after they are uploaded, and the solution must minimize latency. You create code to process images when the
`Function App is triggered.
`You need to configure the Function App.
`What should you do?

- [ ] Use an App Service plan. Configure the Function App to use an Azure Blob Storage input trigger.
- [ ] Use a Consumption plan. Configure the Function App to use an Azure Blob Storage trigger.
- [ ] Use a Consumption plan. Configure the Function App to use a Timer trigger.
- [x] Use an App Service plan. Configure the Function App to use an Azure Blob Storage trigger.
- [ ] Use a Consumption plan. Configure the Function App to use an Azure Blob Storage input trigger.




#### Q25 You are developing a solution for a hospital to support the following use cases:
`✑ The most recent patient status details must be retrieved even if multiple users in different locations have updated the patient record.
`✑ Patient health monitoring data retrieved must be the current version or the prior version.
`✑ After a patient is discharged and all charges have been assessed, the patient billing record contains the final charges.
`You provision a Cosmos DB NoSQL database and set the default consistency level for the database account to Strong. You set the value for Indexing Mode to
Consistent.
`You need to minimize latency and any impact to the availability of the solution. You must override the default consistency level at the query level to meet the required consistency guarantees for the scenarios.
`Which consistency levels should you implement? To answer, drag the appropriate consistency levels to the correct requirements. Each consistency level may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Return the most recent patient status.

- [x] Strong
- [ ] Bounded Staleness
- [ ] Consistent Prefix
- [ ] Eventual


#### Q25.2 You are developing a solution for a hospital to support the following use cases:
`✑ The most recent patient status details must be retrieved even if multiple users in different locations have updated the patient record.
`✑ Patient health monitoring data retrieved must be the current version or the prior version.
`✑ After a patient is discharged and all charges have been assessed, the patient billing record contains the final charges.
`You provision a Cosmos DB NoSQL database and set the default consistency level for the database account to Strong. You set the value for Indexing Mode to
Consistent.
`You need to minimize latency and any impact to the availability of the solution. You must override the default consistency level at the query level to meet the required consistency guarantees for the scenarios.
`Which consistency levels should you implement? To answer, drag the appropriate consistency levels to the correct requirements. Each consistency level may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Return health monitoring data that is no less than one version behind

- [ ] Strong
- [x] Bounded Staleness
- [ ] Consistent Prefix
- [ ] Eventual


#### Q25.3 You are developing a solution for a hospital to support the following use cases:
`✑ The most recent patient status details must be retrieved even if multiple users in different locations have updated the patient record.
`✑ Patient health monitoring data retrieved must be the current version or the prior version.
`✑ After a patient is discharged and all charges have been assessed, the patient billing record contains the final charges.
`You provision a Cosmos DB NoSQL database and set the default consistency level for the database account to Strong. You set the value for Indexing Mode to
Consistent.
`You need to minimize latency and any impact to the availability of the solution. You must override the default consistency level at the query level to meet the required consistency guarantees for the scenarios.
`Which consistency levels should you implement? To answer, drag the appropriate consistency levels to the correct requirements. Each consistency level may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`After patient is charged and all charges are assessed, retrieve the correct billing data with the final charges. 

- [ ] Strong
- [ ] Bounded Staleness
- [ ] Consistent Prefix
- [x] Eventual




#### Q26 The development environment requires several software development kits (SDKs) and third-party components to support application development across the organization. You install and customize the deployed virtual machine (VM) for your development team. The customized VM must be saved to allow provisioning of a new team member development environment.
`You need to save the customized VM for future provisioning.
`Which tools or services should you use? To answer, select the appropriate options in the answer area.
`
`Generalize the VM.

- [x] Azure PowerShell
- [ ] Visual Studio command prompt
- [ ] Azure Migrate
- [ ] Azure Backup


#### Q26.2 The development environment requires several software development kits (SDKs) and third-party components to support application development across the organization. You install and customize the deployed virtual machine (VM) for your development team. The customized VM must be saved to allow provisioning of a new team member development environment.
`You need to save the customized VM for future provisioning.
`Which tools or services should you use? To answer, select the appropriate options in the answer area.
`
`Store images.

- [x] Azure Blob Storage
- [ ] Azure Data Lake Storage
- [ ] Azure File Storage
- [ ] Azure Table Storage



#### Q27 You are preparing to deploy a website to an Azure Web App from a GitHub repository. The website includes static content generated by a script.
`You plan to use the Azure Web App continuous deployment feature.
`You need to run the static generation script before the website starts serving traffic.
What are two possible ways to achieve this goal? Each correct answer presents a complete solution.


- [ ] Add the path to the static content generation tool to WEBSITE_RUN_FROM_PACKAGE setting in the host.json file.
- [x] Add a PreBuild target in the websites csproj project file that runs the static content generation script.
- [ ] Create a file named run.cmd in the folder /run that calls a script which generates the static content and deploys the website.
- [x] Create a file named .deployment in the root of the repository that calls a script which generates the static content and deploys the website.