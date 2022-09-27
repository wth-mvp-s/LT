
##   8°_2from4



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






