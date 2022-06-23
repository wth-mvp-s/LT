##   n0-25_reals_AZ-204


#### Q1. You are implementing a software as a service (SaaS) ASP.NET Core web service that will run as an Azure Web App. The web service will use an on-premises SQL Server database for storage. The web service also includes a WebJob that processes data updates. Four customers will use the web service. 
`✑ Each instance of the WebJob processes data for a single customer and must run as a singleton instance.
`✑ Each deployment must be tested by using deployment slots prior to serving production data.
`✑ Azure costs must be minimized.
`✑ Azure resources must be located in an isolated network.
`You need to configure the App Service plan for the Web App.
`Number of VM instances

- [ ] 2
- [ ] 4
- [ ] 8 
- [ ] 16 


#### Q1.2. You are implementing a software as a service (SaaS) ASP.NET Core web service that will run as an Azure Web App. The web service will use an on-premises SQL Server database for storage. The web service also includes a WebJob that processes data updates. Four customers will use the web service. 
`✑ Each instance of the WebJob processes data for a single customer and must run as a singleton instance.
`✑ Each deployment must be tested by using deployment slots prior to serving production data.
`✑ Azure costs must be minimized.
`✑ Azure resources must be located in an isolated network.
`You need to configure the App Service plan for the Web App.
`Pricing tier

- [ ] Isolated
- [ ] Standard
- [ ] Premium
- [ ] Consumption

#### Q2. You are a developer for a software as a service (SaaS) company that uses an Azure Function to process orders. The Azure Function currently runs on an Azure
`Function app that is triggered by an Azure Storage queue.
`You are preparing to migrate the Azure Function to Kubernetes using Kubernetes-based Event Driven Autoscaling (KEDA).
`You need to configure Kubernetes Custom Resource Definitions (CRD) for the Azure Function.
`Which CRDs should you configure? To answer, drag the appropriate CRD types to the correct locations. Each CRD type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Secret
- [ ] Azure Function Code
- [x] Polling Interval
- [ ] Azure Storage connection string


#### Q2.2 You are a developer for a software as a service (SaaS) company that uses an Azure Function to process orders. The Azure Function currently runs on an Azure
`Function app that is triggered by an Azure Storage queue.
`You are preparing to migrate the Azure Function to Kubernetes using Kubernetes-based Event Driven Autoscaling (KEDA).
`You need to configure Kubernetes Custom Resource Definitions (CRD) for the Azure Function.
`Which CRDs should you configure? To answer, drag the appropriate CRD types to the correct locations. Each CRD type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Deployment

- [ ] Azure Function Code
- [x] Polling Interval
- [ ] Azure Storage connection string

#### Q2.3 You are a developer for a software as a service (SaaS) company that uses an Azure Function to process orders. The Azure Function currently runs on an Azure
`Function app that is triggered by an Azure Storage queue.
`You are preparing to migrate the Azure Function to Kubernetes using Kubernetes-based Event Driven Autoscaling (KEDA).
`You need to configure Kubernetes Custom Resource Definitions (CRD) for the Azure Function.
`Which CRDs should you configure? To answer, drag the appropriate CRD types to the correct locations. Each CRD type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`ScaledObject

- [ ] Azure Function Code
- [x] Polling Interval
- [ ] Azure Storage connection string



#### Q2.4 You are a developer for a software as a service (SaaS) company that uses an Azure Function to process orders. The Azure Function currently runs on an Azure
`Function app that is triggered by an Azure Storage queue.
`You are preparing to migrate the Azure Function to Kubernetes using Kubernetes-based Event Driven Autoscaling (KEDA).
`You need to configure Kubernetes Custom Resource Definitions (CRD) for the Azure Function.
`Which CRDs should you configure? To answer, drag the appropriate CRD types to the correct locations. Each CRD type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`TriggerAuthentication

- [ ] Azure Function Code
- [x] Polling Interval
- [ ] Azure Storage connection string

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
9