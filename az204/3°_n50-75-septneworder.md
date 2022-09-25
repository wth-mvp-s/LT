##   3°_n50-75-septneworderd



#### 1.A  Q29. ::You are preparing to deploy an Azure virtual machine (VM)-based application.
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


#### 1.B  Q29.2 ::You are preparing to deploy an Azure virtual machine (VM)-based application.
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


#### 2::
`A company is developing a Node.js web app. The web app code is hosted in a GitHub repository located at https://github.com/TailSpinToys/webapp.
`The web app must be reviewed before it is moved to production. You must deploy the initial code release to a deployment slot named review.
`You need to create the web app and deploy the code.

- [x]
`$gitrepo="https://github.com/TailSpinToys/webapp"
`$webappname="TailSpinToysWeb"
`$location="WestUS2"
`New-AzResourceGroup -Name myResourceGroup -Location $location
`New-AzAppServicePlan -Name $webappname -Location $location -ResourceGroupName myResourceGroup -Tier Standard
`New-AzWebApp -Name $webappname -Location $location -AppServicePlan $webappname -ResourceGroupName myResourceGroup
`New-AzWebAppSlot -Name $webappname -ResourceGroupName myResourceGroup -Slot review


- [ ]
`$gitrepo="https://github.com/TailSpinToys/webapp"
`$webappname="TailSpinToysWeb"
`$location="WestUS2"
`New-AzResourceGroup -Name myResourceGroup -Location $location
`New-AzWebApp -Name $webappname -Location $location -ResourceGroupName myResourceGroup -Tier Standard
`New-AzAppServicePlan -Name $webappname -Location $location -AppServicePlan $webappname -ResourceGroupName myResourceGroup
`New-AzWebAppSlot -Name $webappname -ResourceGroupName myResourceGroup -Slot review


- [ ]
`$gitrepo="https://github.com/TailSpinToys/webapp"
`$webappname="TailSpinToysWeb"
`$location="WestUS2"
`New-AzAppServicePlan -Name myResourceGroup -Location $location
`New-AzResourceGroup -Name $webappname -Location $location -ResourceGroupName myResourceGroup -Tier Standard
`New-AzWebApp -Name $webappname -Location $location -AppServicePlan $webappname -ResourceGroupName myResourceGroup
`New-AzWebAppSlot -Name $webappname -ResourceGroupName myResourceGroup -Slot review

- [ ]
`$gitrepo="https://github.com/TailSpinToys/webapp"
`$webappname="TailSpinToysWeb"
`$location="WestUS2"
`New-AzResourceGroup -Name myResourceGroup -Location $location
`New-AzAppServicePlan -Name $webappname -Location $location -ResourceGroupName myResourceGroup -Tier Standard
`New-AzWebAppSlot -Name $webappname -Location $location -AppServicePlan $webappname -ResourceGroupName myResourceGroup
`New-AzWebApp -Name $webappname -ResourceGroupName myResourceGroup -Slot review

#### Q 3::
`You are developing an application that needs access to an Azure virtual machine (VM).
`The access lifecycle for the application must be associated with the VM service instance.
`You need to enable managed identity for the VM.
`How should you complete the PowerShell segment?

- [x]
`$vm = Get-AzVM -ResourceGroupName "ContosoRG" -Name "ContosoVM"
`Update-AzVM -ResourceGrouopName "ContosoRG" -VM $vm -IdentityId: $SystemAssigned


- [ ]
`$vm = Get-AzVM -ResourceGroupName "ContosoRG" -Name "ContosoVM"
`Update-AzVM -ResourceGrouopName "ContosoRG" -VM $vm -IdentityId: $UserAssigned
 
- [ ]
`$vm = Get-AzVM -ResourceGroupName "ContosoRG" -Name "ContosoVM"
`Update-AzVM -ResourceGrouopName "ContosoRG" -VM $vm -AssignIdentity: $SystemAssigned

- [ ]
`$vm = Get-AzVM -ResourceGroupName "ContosoRG" -Name "ContosoVM"
`Update-AzVM -ResourceGrouopName "ContosoRG" -VM $vm -AssignIdentity: $UserAssigned


#### 4 4QuestionPareil::You develop a software as a service (SaaS) offering to manage photographs. 
`Users upload photos to a web service which then stores the photos in Azure Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Create an Azure Function app that uses the Consumption hosting model and that is triggered from the blob upload.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 5  Q33 ::You develop and deploy an Azure App Service API app to a Windows-hosted deployment slot named Development. You create additional deployment slots named Testing and Production. You enable auto swap on the Production deployment slot.
`You need to ensure that scripts run and resources are available before a swap operation occurs.
`Solution: Update the app with a method named statuscheck to run the scripts. Update the app settings for the app. Set the
`WEBSITE_SWAP_WARMUP_PING_PATH and WEBSITE_SWAP_WARMUP_PING_STATUSES with a path to the new method and appropriate response codes.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

#### 6.A  ::
`$source = New-AzScheduledQueryRuleSource -Query "Heartbeat" | where TimeGenerated > ago(1h)
`$schedule = New-AzScheduledQueryRuleSchedule -FrequencyInMinutes 60 -TimeWindowInMinutes 60
`$triggerCondition = New-AzScheduledQueryRuleTriggerCondition -ThresholdOperator "LessThan" -Threshold 5
`
`A log alert is created that sends an email when the CPU percentage is above 60 percent for five minutes.

- [ ] Yes
- [x] No

#### 6.B  ::
A log alert is created that sends an email when the number of virtual machines heartbeats in the past hour is less than five.

- [x] Yes
- [ ] No

#### 6.C  ::
The log alert is scheduled to run every two hours. 
- [ ] Yes
- [x] No



#### 7.A  Q35 ::You are developing an Azure Function app.
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


#### 7.B  Q35.2 ::You are developing an Azure Function app.
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


#### 8::
`You are developing an ASP.NET Core web application. You plan to deploy the application to Azure Web App for Containers.
`The application needs to store runtime diagnostic data that must be persisted across application restarts.

- [x]
`WEBSITES_ENABLE_APP_SERVICE_STORAGE : true
`DIAGDATA : /home


- [x]
`WEBSITES_ENABLE_APP_SERVICE_STORAGE : true
`DIAGDATA : /local

- [ ]
`DOTNET_HOSTING_OPTIMIZATION_CACHE : true
`DIAGDATA : /home

- [ ]
`LOCALAPPDATA : true
`DIAGDATA : /home 

- [ ]
`WEBSITE_LOCALCACHE_ENABLED : true
`DIAGDATA : /home

- [ ]
`WEBSITES_ENABLE_APP_SERVICE_STORAGE : true
`DIAGDATA : D:\home

#### 9  Q37 ::You are developing a web app that is protected by Azure Web Application Firewall (WAF). All traffic to the web app is routed through an Azure Application
`Gateway instance that is used by multiple web apps. The web app address is contoso.azurewebsites.net.
`All traffic must be secured with SSL. The Azure Application Gateway instance is used by multiple web apps.
`You need to configure the Azure Application Gateway for the web app.
`Which two actions should you perform? Each correct answer presents part of the solution.


- [x] In the Azure Application Gateway's HTTP setting, enable the Use for App service setting.
- [ ] Convert the web app to run in an Azure App service environment (ASE).
- [ ] Add an authentication certificate for contoso.azurewebsites.net to the Azure Application Gateway.
- [x] In the Azure Application Gateway's HTTP setting, set the value of the Override backend path option to contoso22.azurewebsites.net.


#### 10  Q0038,  4QuestionPareil::You develop a software as a service (SaaS) offering to manage photographs. 
`Users upload photos to a web service which then stores the photos in Azure
`Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution:  Use the Azure Blob Storage change feed to trigger photo processing.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 11  Q0039, new ::You are developing a web application that runs as an Azure Web App. The web application stores data in Azure SQL Database and stores files in an Azure Storage account. 
`The web application makes HTTP requests to external services as part of normal operations.
`The web application is instrumented with Application Insights. The external services are OpenTelemetry compliant.
`You need to ensure that the customer ID of the signed in user is associated with all operations throughout the overall system.
`What should you do?

- [x] Add the customer ID for the signed in user to the CorrelationContext in the web application
- [ ] On the current SpanContext, set the TraceId to the customer ID for the signed in user
- [ ] Set the header Ocp-Apim-Trace to the customer ID for the signed in user
- [ ] Create a new SpanContext with the TraceFlags value set to the customer ID for the signed in user

#### 12,  ::
`You are developing an Azure Function App. You develop code by using a language that is not supported by the Azure Function App host. The code language supports HTTP primitives.
`You must deploy the code to a production Azure Function App environment.
`You need to configure the app for deployment.

- [x] Publish : Code
- [ ] Publish : Docker Container
- [ ] Runtime stack : Node.js
- [ ] Runtime stack : Python
- [ ] Runtime stack : PowerShell Core
- [x] Runtime stack : Custom Handler
- [ ] Version : 14 LTS
- [ ] Version : 7.0
- [x] Version : custom


#### 13,  ::
`You provision virtual machines (VMs) as development environments.
`One VM does not start. The VM is stuck in a Windows update process. You attach the OS disk for the affected VM to a recovery VM.
`You need to correct the issue.
`In which order should you perform the actions?

- [x] 
`Run the following command at an elevated command prompt:
`dism /image:\ /get=packages > c:\temp\Patch.txt
`Open C:\temp\Patch.txt file and locate the update that is in a pending state
`Run the following command at an elevated command prompt: 
`dism /Image:<Attached OS disks>:\ /Remove
`Package /PackageName:<package name to delete>
`Detach the OS disk and recreate the VM

- [ ] 
`Run the following command at an elevated command prompt:
`dism /Image:<Attached OS disks>:\ /Remove
`Run the following command at an elevated command prompt: 
`Open C:\temp\Patch.txt file and locate the update that is in a pending state
`dism /image:\ /get=packages > c:\temp\Patch.txt
`Package /PackageName:<package name to delete>
`Detach the OS disk and recreate the VM

- [ ] 
`dism /image:\ /get=packages > c:\temp\Patch.txt
`Open C:\temp\Patch.txt file and locate the update that is in a pending state
`Run the following command at an elevated command prompt:
`Run the following command at an elevated command prompt: 
`dism /Image:<Attached OS disks>:\ /Remove
`Package /PackageName:<package name to delete>
`Detach the OS disk and recreate the VM

- [ ] 
`Run the following command at an elevated command prompt:
`dism /image:\ /get=packages > c:\temp\Patch.txt
`Open C:\temp\Patch.txt file and locate the update that is in a pending state
`Run the following command at an elevated command prompt: 
`dism /Image:<Attached OS disks>:\ /Remove
`Detach the OS disk and recreate the VM
`Package /PackageName:<package name to delete>
 
- [ ] 
`dism /image:\ /get=packages > c:\temp\Patch.txt
`Run the following command at an elevated command prompt:
`Open C:\temp\Patch.txt file and locate the update that is in a pending state
`Run the following command at an elevated command prompt: 
`dism /Image:<Attached OS disks>:\ /Remove
`Package /PackageName:<package name to delete>
`Detach the OS disk and recreate the VM


#### 14  Q0042,  ::You develop an HTTP triggered Azure Function app to process Azure Storage blob data. The app is triggered using an output binding on the blob.
`The app continues to time out after four minutes. The app must process the blob data.
`You need to ensure the app does not time out and processes the blob data.
`Solution: Update the functionTimeout property of the host.json project file to 10 minutes.

- [ ] Yes
- [x] No

[//] -
#### 15  ::

- [ ]


#### 16  Q0044,  ::You are developing an Azure Durable Function to manage an online ordering process.
`The process must call an external API to gather product discount information.
`You need to implement the Azure Durable Function.
`Which Azure Durable Function types should you use? Each correct answer presents part of the solution.


- [x] Orchestrator
- [x] Entity
- [ ] Client
- [ ] Activity

#### 17 ::
`You are authoring a set of nested Azure Resource Manager templates to deploy multiple Azure resources.
`The templates must be tested before deployment and must follow recommended practices.
`You need to validate and test the templates before deployment.

- [x] Determine wheather the templates follow recommended practices. : Azure Resource Manager test toolkit
- [ ] Determine wheather the templates follow recommended practices. : Azure Deployment Manager
- [ ] Determine wheather the templates follow recommended practices. : Templayement function
- [x] Test and validate changes that templetes will make to the environment : What-if operation
- [ ] Test and validate changes that templetes will make to the environment : User-defined function
- [ ] Test and validate changes that templetes will make to the environment : Template function


#### 18.A::
`AcquireLeaseAsync(null)
`06:var dst = container.GetBlockBlobReference(src.Name)
`
`finally{
`    await src.BreakLeaseAsync(new Timespan(0))
`
`The code creates an infinite lease

- [x] Yes
- [ ] No
#### 18.B::
`AcquireLeaseAsync(null)
`06:var dst = container.GetBlockBlobReference(src.Name)
`
`finally{
`    await src.BreakLeaseAsync(new Timespan(0))
`
`The code at line 06 always creates a new blob

- [ ] Yes
- [x] No

#### 18.C::
`AcquireLeaseAsync(null)
`06:var dst = container.GetBlockBlobReference(src.Name)
`
`finally{
`    await src.BreakLeaseAsync(new Timespan(0))
`
`The finally block releases the lease

- [x] Yes
- [ ] No

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
