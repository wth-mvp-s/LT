##   666°_all_solutions

#### 0000.20 [83%]::You develop Azure solutions.
`You must grant a virtual machine (VM) access to specific resource groups in Azure Resource Manager.
`You need to obtain an Azure Resource Manager access token.
`Solution: Run the Invoke-RestMethod cmdlet to make a request to the local managed identity for Azure resources endpoint.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

#### 0000.16 [100%]::You develop Azure solutions.
`You must grant a virtual machine (VM) access to specific resource groups in Azure Resource Manager.
`You need to obtain an Azure Resource Manager access token.
`Solution: Use an X.509 certificate to authenticate the VM with Azure Resource Manager.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 0000.17 [100%]::You develop Azure solutions.
`You must grant a virtual machine (VM) access to specific resource groups in Azure Resource Manager.
`You need to obtain an Azure Resource Manager access token.
`Solution: Use the Reader role-based access control (RBAC) role to authenticate the VM with Azure Resource Manager.
`Does the solution meet the goal?

- [ ] Yes
- [x] No




















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

#### 0000.13 [11] ::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Enable Application Request Routing (ARR).
`Does the solution meet the goal?

- [ ] Yes
- [x] No
























#### 0018, Q18. [100%]::You are configuring a web app that delivers streaming video to users. 
`The application makes use of continuous integration and deployment. 
`You need to ensure that the application is highly available and that the users' streaming experience is constant. 
`You also want to configure the application to store data in a geographic location that is nearest to the user. 
`
`Solution: You include the use of an Azure Content Delivery Network (CDN) in your design. 

- [x] Yes
- [ ] No



















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

#### 5  Q33 ::You develop and deploy an Azure App Service API app to a Windows-hosted deployment slot named Development. You create additional deployment slots named Testing and Production. You enable auto swap on the Production deployment slot.
`You need to ensure that scripts run and resources are available before a swap operation occurs.
`Solution: Update the app with a method named statuscheck to run the scripts. Update the app settings for the app. Set the
`WEBSITE_SWAP_WARMUP_PING_PATH and WEBSITE_SWAP_WARMUP_PING_STATUSES with a path to the new method and appropriate response codes.
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

#### 00, Q18 ::You develop an HTTP triggered Azure Function app to process Azure Storage blob data. The app is triggered using an output binding on the blob.
`The app continues to time out after four minutes. The app must process the blob data.
`You need to ensure the app does not time out and processes the blob data.
`Solution: Configure the app to use an App Service hosting plan and enable the Always On setting.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### 14  Q0042,  ::You develop an HTTP triggered Azure Function app to process Azure Storage blob data. The app is triggered using an output binding on the blob.
`The app continues to time out after four minutes. The app must process the blob data.
`You need to ensure the app does not time out and processes the blob data.
`Solution: Update the functionTimeout property of the host.json project file to 10 minutes.

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

#### 0036, Q4. [?]4QuestionPareil::You develop a software as a service (SaaS) offering to manage photographs. Users upload photos to a web service which then stores the photos in Azure
`Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Trigger the photo processing from Blob storage events.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### 0028, Q8.4QuestionPareil::You develop a software as a service (SaaS) offering to manage photographs. Users upload photos to a web service which then stores the photos in Azure Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Convert the Azure Storage account to a BlockBlobStorage storage account.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### 4 4QuestionPareil::You develop a software as a service (SaaS) offering to manage photographs. 
`Users upload photos to a web service which then stores the photos in Azure Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution: Create an Azure Function app that uses the Consumption hosting model and that is triggered from the blob upload.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### 10  Q0038,  4QuestionPareil::You develop a software as a service (SaaS) offering to manage photographs. 
`Users upload photos to a web service which then stores the photos in Azure
`Storage Blob storage. The storage account type is General-purpose V2.
`When photos are uploaded, they must be processed to produce and save a mobile-friendly version of the image. The process to produce a mobile-friendly version of the image must start in less than one minute.
`You need to design the process that starts the photo processing.
`Solution:  Use the Azure Blob Storage change feed to trigger photo processing.
`Does the solution meet the goal?

- [ ] Yes
- [x] No








































#### 0000.4 [78%] ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution:
`✑ Create a new Azure AD application. In the application's manifest, define application roles that match the required permission levels for the application.
`✑ Assign the appropriate Azure AD group to each role. In the website, use the value of the roles claim from the JWT for the user to determine permissions.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

#### 0000.2 [67%] ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution: Configure the Azure Web App for the website to allow only authenticated requests and require Azure AD log on.

- [ ] Yes
- [x] No



#### 0000.3 [100%] ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution:
`✑ Create a new Azure AD application. In the application's manifest, set value of the groupMembershipClaims option to All.
`✑ In the website, use the value of the groups claim from the JWT for the user to determine permissions.
`Does the solution meet the goal?

- [x] Yes
- [ ] No


#### 0000.19 ::You develop Azure solutions.
`You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution:
`✑ Configure and use Integrated Windows Authentication in the website.
`✑ In the website, query Microsoft Graph API to load the groups to which the user is a member.
`Does the solution meet the goal?

- [ ] Yes
- [x] No




















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

#### 0000.28 [100%]::You are developing an Azure App Service REST API.
`The API must be called by an Azure App Service web app. The API must retrieve and update user profile information stored in Azure Active Directory (Azure AD).
`You need to configure the API to make the updates.
`Which two tools should you use? Each correct answer presents part of the solution.


- [x] Microsoft Graph API
- [x] Microsoft Authentication Library (MSAL)
- [ ] Azure API Management
- [ ] Microsoft Azure Security Center
- [ ] Microsoft Azure Key Vault SDK

#### 15_Qp32 [0%]::You develop a solution that uses Azure Virtual Machines (VMs).
`The VMs contain code that must access resources in an Azure resource group. You grant the VM access to the resource group in Resource Manager.
`You need to obtain an access token that uses the VM's system-assigned managed identity.
`Which two actions should you perform?


- [x] From the code on the VM, call Azure Resource Manager using an access token.
- [ ] Use PowerShell on a remote machine to make a request to the local managed identity for Azure resources endpoint.
- [x] Use PowerShell on the VM to make a request to the local managed identity for Azure resources endpoint.
- [ ] From the code on the VM, call Azure Resource Manager using a SAS token.
- [ ] From the code on the VM, generate a user delegation SAS token.

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

