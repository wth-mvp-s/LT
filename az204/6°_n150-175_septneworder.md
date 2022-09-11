##   6°_n150-175_septneworder


[//] - 0042_image-todo
[//] - 0043_image-todo


#### 0044_new ::You manage a data processing application that receives requests from an Azure Storage queue.
`You need to manage access to the queue. You have the following requirements:
`✑ Provide other applications access to the Azure queue.
`✑ Ensure that you can revoke access to the queue without having to regenerate the storage account keys.
`✑ Specify access at the queue level and not at the storage account level.
`Which type of shared access signature (SAS) should you use?

- [x] Service SAS with a stored access policy    
- [ ] Account SAS    
- [ ] User Delegation SAS    
- [ ] Service SAS with ad hoc SAS    

[//] - 0045_new-todo


#### 0046_new [1]::You are building a web application that uses the Microsoft identity platform for user authentication.
`You are implementing user identification for the web application.
`You need to retrieve a claim to uniquely identify a user.
`Which claim type should you use?

- [ ] aud
- [ ] nonce
- [x] oid
- [ ] idp

#### 0047_new [1]::You are developing an Azure Function that calls external APIs by providing an access token for the API. The access token is stored in a secret named token in an Azure Key Vault named mykeyvault.
`You need to ensure the Azure Function can access to the token. Which value should you store in the Azure Function App configuration?

- [ ] KeyVault:mykeyvault;Secret:token
- [ ] App:Settings:Secret:mykeyvault:token
- [ ] AZUREKVCONNSTR_ https://mykeyveult.vault.ezure.net/secrets/token/
- [x] @Microsoft.KeyVault(SecretUri=https://mykeyvault.vault.azure.net/secrets/token/)



#### 0048_new [4voters]::A company maintains multiple web and mobile applications. Each application uses custom in-house identity providers as well as social identity providers.
`You need to implement single sign-on (SSO) for all the applications.
`What should you do?

- [x] Use Azure Active Directory B2C (Azure AD B2C) with custom policies.
- [ ] Use Azure Active Directory B2B (Azure AD B2B) and enable external collaboration.
- [ ] Use Azure Active Directory B2C (Azure AD B2C) with user flows.
- [ ] Use Azure Active Directory B2B (Azure AD B2B).


#### 0049_new [1]::You develop a Python application for image rendering that uses GPU resources to optimize rendering processes. You deploy the application to an Azure
`Container Instances (ACI) Linux container.
`The application requires a secret value to be passed when the container is started. The value must only be accessed from within the container.
`You need to pass the secret value.
`What are two possible ways to achieve this goal?

- [x] Create an environment variable Set the secureValue property to the secret value.
- [ ] Add the secret value to the container image. Use a managed identity.
- [ ] Add the secret value to the application code Set the container startup command.
- [ ] Add the secret value to an Azure Blob storage account. Generate a SAS token.
- [x] Mount a secret volume containing the secret value in a secrets file.



#### 0050_new [1]::You are developing a user portal for a company.
`You need to create a report for the portal that lists information about employees who are subject matter experts for a specific topic. 
`You must ensure that administrators have full control and consent over the data.
`Which technology should you use?

- [x] Microsoft Graph data connect
- [ ] Microsoft Graph API
- [ ] Microsoft Graph connectors

[//] - 0051_image-todo
[//] - 0052_image-todo

[//] - 0053_image



#### 0000.2 [11] ::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Enable Application Request Routing (ARR).
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 0000.3 [most_voted]::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Deploy and configure an Azure Database for PostgreSQL. Update the web applications.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

[//] - 0004_image
[//] - 0005_image
[//] - 0006_image


#### Qp25.3Topic4Set4question9.A_p34 [???]::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` Which pages visited by users most often correlate to a product purchase?

- [x] Users
- [ ] Funnels
- [ ] Impact
- [ ] Retention
- [ ] User Flows



#### Qp25.3Topic4Set4question9.B ::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` How does load time of the product display page affect a user's decision to purchase a product?

- [ ] Users
- [ ] Funnels
- [x] Impact
- [ ] Retention
- [ ] User Flows

#### Qp25.3Topic4Set4question9.C ::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` Which events most influence a user's decision to continue to use the application? 

- [ ] Users
- [ ] Funnels
- [ ] Impact
- [x] Retention
- [ ] User Flows


#### Qp25.3Topic4Set4question9.D ::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` Are there places in the application that users often perform repetitive actions? 

- [ ] Users
- [ ] Funnels
- [ ] Impact
- [ ] Retention
- [x] User Flows


#### Qp25.3Topic4Set4question10_P.34 [most_voted]::You develop a gateway solution for a public facing news API. The news API back end is implemented as a RESTful service and uses an OpenAPI specification.
`You need to ensure that you can access the news API by using an Azure API Management service instance.
`Which Azure PowerShell command should you run?

- [x] Import-AzureRmApiManagementApi -Context $ApiMgmtContext -SpecificationFormat "Swagger" -SpecificationPath $SwaggerPath -Path $Path
- [ ] New-AzureRmApiManagementBackend -Context $ApiMgmtContext-Url $Url -Protocol http
- [ ] New-AzureRmApiManagement -ResourceGroupName $ResourceGroup -Name $Name ג€"Location $Location -Organization $Org -AdminEmail $AdminEmail
- [ ] New-AzureRmApiManagementBackendProxy -Url $ApiUrl


#### Qp25.3Topic4Set4question11 ::You are creating a hazard notification system that has a single signaling server which triggers audio and visual alarms to start and stop.
`You implement Azure Service Bus to publish alarms. Each alarm controller uses Azure Service Bus to receive alarm signals as part of a transaction. Alarm events must be recorded for audit purposes. Each transaction record must include information about the alarm type that was activated.
`You need to implement a reply trail auditing solution.
`Which two actions should you perform? Each correct answer resents part of the solution.

- [x] Assign the value of the hazard message SessionID property to the ReplyToSessionId property.
- [ ] Assign the value of the hazard message MessageId property to the DevileryCount property.
- [ ] Assign the value of the hazard message SessionID property to the SequenceNumber property.
- [x] Assign the value of the hazard message MessageId property to the CorrelationId property.
- [ ] Assign the value of the hazard message SequenceNumber property to the DeliveryCount property.
- [ ] Assign the value of the hazard message MessageId property to the SequenceNumber property.


#### Qp25.3Topic4Set4question12 ::You are developing an Azure function that connects to an Azure SQL Database instance. The function is triggered by an Azure Storage queue.
`You receive reports of numerous System.InvalidOperationExceptions with the following message:
ג€Timeout expired. The timeout period elapsed prior to obtaining a connection from the pool. `This may have occurred because all pooled connections were in use and max pool size was reached.ג€
`You need to prevent the exception.
`What should you do?

- [x] In the host.json file, decrease the value of the batchSize option
- [ ] Convert the trigger to Azure Event Hub
- [ ] Convert the Azure Function to the Premium plan
- [ ] In the function.json file, change the value of the type option to queueScaling



#### Qp26.3Topic4Set4question13_p35 [100%]::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Deploy and configure Azure Cache for Redis. Update the web applications.
`Does the solution meet the goal?


- [x] Yes
- [ ] No


[//] - 0011_image
[//] - 0012_image


#### Qp26.3Topic4Set4question16_p35 ::You develop and deploy an ASP.NET web app to Azure App Service. You use Application Insights telemetry to monitor the app.
`You must test the app to ensure that the app is available and responsive from various points around the world and at regular intervals. If the app is not responding, you must send an alert to support staff.
`You need to configure a test for the web app.
`Which two test types can you use? Each correct answer presents a complete solution.



- [ ] integration
- [x] multi-step web
- [x] URL ping
- [ ] unit
- [ ] load


[//] - 0014_image


#### Qp27.3Topic4Set4question18_p36 [most_voted]::You are developing applications for a company. You plan to host the applications on Azure App Services.
`The company has the following requirements:
`✑ Every five minutes verify that the websites are responsive.
`✑ Verify that the websites respond within a specified time threshold. Dependent requests such as images and JavaScript files must load properly.
`✑ Generate alerts if a website is experiencing issues.
`✑ If a website fails to load, the system must attempt to reload the site three more times.
`You need to implement this process with the least amount of effort.
`What should you do?



- [ ] Create a Selenium web test and configure it to run from your workstation as a scheduled task.
- [x] Set up a URL ping test to query the home page.
- [ ] Create an Azure function to query the home page.
- [ ] Create a multi-step web test to query the home page.
- [ ] Create a Custom Track Availability Test to query the home page.



#### Qp27.3Topic4Set4question19_p.36 [most_voted]::You develop and add several functions to an Azure Function app that uses the latest runtime host. The functions contain several REST API endpoints secured by using SSL. The Azure Function app runs in a Consumption plan.
`You must send an alert when any of the function endpoints are unavailable or responding too slowly.
`You need to monitor the availability and responsiveness of the functions.
`What should you do?



- [ ] Create a URL ping test.
- [x] Create a timer triggered function that calls TrackAvailability() and send the results to Application Insights.
- [ ] Create a timer triggered function that calls GetMetric("Request Size") and send the results to Application Insights.
- [ ] Add a new diagnostic setting to the Azure Function app. Enable the FunctionAppLogs and Send to Log Analytics options.

[//] - 0017_image
[//] - 0018_image
[//] - 0019_image





