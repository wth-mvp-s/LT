##   3°_n50-75-septneworderd



#### Q29. ::You are preparing to deploy an Azure virtual machine (VM)-based application.
`The VMs that run the application have the following requirements:
`✑ When a VM is provisioned the firewall must be automatically configured before it can access Azure resources.
`✑ Supporting services must be installed by using an Azure PowerShell script that is stored in Azure Storage.
`You need to ensure that the requirements are met.
`Which features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` Firewall configuration

- [x] Run Command
- [ ] Serial console
- [ ] Hybrid Runbook Worker
- [ ] Custom Script Extension


#### Q29.2 ::You are preparing to deploy an Azure virtual machine (VM)-based application.
`The VMs that run the application have the following requirements:
`✑ When a VM is provisioned the firewall must be automatically configured before it can access Azure resources.
`✑ Supporting services must be installed by using an Azure PowerShell script that is stored in Azure Storage.
`You need to ensure that the requirements are met.
`Which features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` Supporting service script

- [ ] Run Command
- [ ] Serial console
- [ ] Hybrid Runbook Worker
- [x] Custom Script Extension


[//] 3000,  todo: mulitselect todo
[//] 3100,  todo: mulitselect todo



#### Q32 4QuestionPareil::You develop a software as a service (SaaS) offering to manage photographs. 
`Users upload photos to a web service which then stores the photos in Azure Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Create an Azure Function app that uses the Consumption hosting model and that is triggered from the blob upload.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### Q33 ::You develop and deploy an Azure App Service API app to a Windows-hosted deployment slot named Development. You create additional deployment slots named Testing and Production. You enable auto swap on the Production deployment slot.
`You need to ensure that scripts run and resources are available before a swap operation occurs.
`Solution: Update the app with a method named statuscheck to run the scripts. Update the app settings for the app. Set the
`WEBSITE_SWAP_WARMUP_PING_PATH and WEBSITE_SWAP_WARMUP_PING_STATUSES with a path to the new method and appropriate response codes.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

[//] 3400,  todo: image to text  todo


#### Q35 ::You are developing an Azure Function app.
`The app must meet the following requirements:
`✑ Enable developers to write the functions by using the Rust language.
`✑ Declaratively connect to an Azure Blob Storage account.
`You need to implement the app.
`Which Azure Function app features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Enable developers to write the functions by using the Rust language. 


- [x] Custom handler
- [ ] Extension budle
- [ ] Trigger
- [ ] Runtime
- [ ] Policy
- [ ] Hosting plan


#### Q35.2 ::You are developing an Azure Function app.
`The app must meet the following requirements:
`✑ Enable developers to write the functions by using the Rust language.
`✑ Declaratively connect to an Azure Blob Storage account.
`You need to implement the app.
`Which Azure Function app features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Declaratively connect to an Azure Blob Storage account. 


- [ ] Custom handler
- [x] Extension budle
- [ ] Trigger
- [ ] Runtime
- [ ] Policy
- [ ] Hosting plan


[//] 3600,  todo: image to text  todo

#### Q37 ::You are developing a web app that is protected by Azure Web Application Firewall (WAF). All traffic to the web app is routed through an Azure Application
`Gateway instance that is used by multiple web apps. The web app address is contoso.azurewebsites.net.
`All traffic must be secured with SSL. The Azure Application Gateway instance is used by multiple web apps.
`You need to configure the Azure Application Gateway for the web app.
`Which two actions should you perform? Each correct answer presents part of the solution.


- [x] In the Azure Application Gateway's HTTP setting, enable the Use for App service setting.
- [ ] Convert the web app to run in an Azure App service environment (ASE).
- [ ] Add an authentication certificate for contoso.azurewebsites.net to the Azure Application Gateway.
- [x] In the Azure Application Gateway's HTTP setting, set the value of the Override backend path option to contoso22.azurewebsites.net.


#### Q0038,  4QuestionPareil::You develop a software as a service (SaaS) offering to manage photographs. 
`Users upload photos to a web service which then stores the photos in Azure
`Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution:  Use the Azure Blob Storage change feed to trigger photo processing.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### Q0039, new ::You are developing a web application that runs as an Azure Web App. The web application stores data in Azure SQL Database and stores files in an Azure Storage account. 
`The web application makes HTTP requests to external services as part of normal operations.
`The web application is instrumented with Application Insights. The external services are OpenTelemetry compliant.
`You need to ensure that the customer ID of the signed in user is associated with all operations throughout the overall system.
`What should you do?

- [x] Add the customer ID for the signed in user to the CorrelationContext in the web application
- [ ] On the current SpanContext, set the TraceId to the customer ID for the signed in user
- [ ] Set the header Ocp-Apim-Trace to the customer ID for the signed in user
- [ ] Create a new SpanContext with the TraceFlags value set to the customer ID for the signed in user

[//] 4000,  todo: mulitselect todo
[//] 4100,  todo: selectOrder

#### Q0042,  ::You develop an HTTP triggered Azure Function app to process Azure Storage blob data. The app is triggered using an output binding on the blob.
`The app continues to time out after four minutes. The app must process the blob data.
`You need to ensure the app does not time out and processes the blob data.
`Solution: Update the functionTimeout property of the host.json project file to 10 minutes.

- [ ] Yes
- [x] No

[//] 4300,  todo: mulitselect todo

#### Q0044,  ::You are developing an Azure Durable Function to manage an online ordering process.
`The process must call an external API to gather product discount information.
`You need to implement the Azure Durable Function.
`Which Azure Durable Function types should you use? Each correct answer presents part of the solution.


- [x] Orchestrator
- [x] Entity
- [ ] Client
- [ ] Activity

[//] 4500,  todo: mulitselect todo

[//] 4600,  todo: image to text  todo


#### Q4700 ::You are building a website that uses Azure Blob storage for data storage. You configure Azure Blob storage lifecycle to move all blobs to the archive tier after 30 days.
`Customers have requested a service-level agreement (SLA) for viewing data older than 30 days.
`You need to document the minimum SLA for data recovery.
`Which SLA should you use?


- [ ] at least two days
- [x] between one and 15 hours
- [ ] at least one day
- [ ] between zero and 60 minutes

[//] 4700,  todo: mulitselect todo

[//] 4800,  todo: mulitselect todo
[//] 4900,  todo: mulitselect todo
[//] 5000 todo: selectOrder


#### Q5100, 8 ::You are developing an Azure solution to collect point-of-sale (POS) device data from 2,000 stores located throughout the world. A single device can produce 2 megabytes (MB) of data every 24 hours. Each store location has one to five devices that send data.
`You must store the device data in Azure Blob storage. Device data must be correlated based on a device identifier. Additional stores are expected to open in the future.
`You need to implement a solution to receive the device data.
`Solution: Provision an Azure Event Grid. Configure the machine identifier as the partition key and enable capture.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 5200, Q9 ::You develop Azure solutions.
`A .NET application needs to receive a message each time an Azure virtual machine finishes processing data. The messages must NOT persist after being processed by the receiving application.
`You need to implement the .NET object that will receive the messages.
`Which object should you use?

- [x] QueueClient
- [ ] SubscriptionClient
- [ ] TopicClient
- [ ] CloudQueueClient

[//] 5300 todo: selectOrder


#### 5400, Q11 ::You develop Azure solutions.
`You must connect to a No-SQL globally-distributed database by using the .NET API.
`You need to create an object to configure and execute requests in the database.
`Which code segment should you use?

- [ ] new Container(EndpointUri, PrimaryKey);
- [ ] new Database(EndpointUri, PrimaryKey);
- [x] new CosmosClient(EndpointUri, PrimaryKey);




#### 5500Q12 ::You have an existing Azure storage account that stores large volumes of data across multiple containers.
`You need to copy all data from the existing storage account to a new storage account. The copy process must meet the following requirements:
`✑ Automate data movement.
`✑ Minimize user input required to perform the operation.
`✑ Ensure that the data movement process is recoverable.
`What should you use?

- [x] AzCopy
- [ ] Azure Storage Explorer
- [ ] Azure portal
- [ ] .NET Storage Client Library

[//] 5600, 00,  todo: mulitselect todo
[//] 5700,  todo: image to text  todo
