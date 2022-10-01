#### 0000.20 [83%]::You develop Azure solutions.
`You must grant a virtual machine (VM) access to specific resource groups in Azure Resource Manager.
`You need to obtain an Azure Resource Manager access token.
`Solution: Run the Invoke-RestMethod cmdlet to make a request to the local managed identity for Azure resources endpoint.
`Does the solution meet the goal?

- [x] Yes
- [ ] No


#### 21 Qp26.3Topic4Set4question13_p35 [100%]::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Deploy and configure Azure Cache for Redis. Update the web applications.
`Does the solution meet the goal?


- [x] Yes
- [ ] No

#### 0000.14 [most_voted]::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Deploy and configure an Azure Database for PostgreSQL. Update the web applications.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

#### 0018, Q18. [100%]::You are configuring a web app that delivers streaming video to users. 
`The application makes use of continuous integration and deployment. 
`You need to ensure that the application is highly available and that the users' streaming experience is constant. 
`You also want to configure the application to store data in a geographic location that is nearest to the user. 
`
`Solution: You include the use of an Azure Content Delivery Network (CDN) in your design. 

- [x] Yes
- [ ] No

#### 0026, Q6. ::You develop and deploy an Azure App Service API app to a Windows-hosted deployment slot named Development. You create additional deployment slots named Testing and Production. You enable auto swap on the Production deployment slot.
`You need to ensure that scripts run and resources are available before a swap operation occurs.
`Solution: Enable auto swap for the Testing slot. Deploy the app to the Testing slot.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

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

#### 00, Q19 ::You develop a software as a service (SaaS) offering to manage photographs. Users upload photos to a web service which then stores the photos in Azure
`Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Move photo processing to an Azure Function triggered from the blob upload.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

#### 5  Q33 ::You develop and deploy an Azure App Service API app to a Windows-hosted deployment slot named Development. You create additional deployment slots named Testing and Production. You enable auto swap on the Production deployment slot.
`You need to ensure that scripts run and resources are available before a swap operation occurs.
`Solution: Update the app with a method named statuscheck to run the scripts. Update the app settings for the app. Set the
`WEBSITE_SWAP_WARMUP_PING_PATH and WEBSITE_SWAP_WARMUP_PING_STATUSES with a path to the new method and appropriate response codes.
`Does the solution meet the goal?

- [x] Yes
- [ ] No