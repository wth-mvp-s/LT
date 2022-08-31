##   n90-120


[//] ou je suis le 31.08.2022

#### Qp23.3Topic4Set4question1 ::You are developing an ASP.NET Core Web API web service. The web service uses Azure Application Insights for all telemetry and dependency tracking. The web service reads and writes data to a database other than Microsoft SQL Server.
`You need to ensure that dependency tracking works for calls to the third-party database.
`Which two dependency telemetry properties should you use? Each correct answer presents part of the solution.

- [ ] Telemetry.Context.Cloud.RoleInstance
- [x] Telemetry.Id
- [ ] Telemetry.Name
- [x] Telemetry.Context.Operation.Id
- [ ] Telemetry.Context.Session.Id


#### Qp23.3Topic4Set4question2.A ::You are using Azure Front Door Service.
`You are expecting inbound files to be compressed by using Brotli compression. You discover that inbound XML files are not compressed. The files are 9 megabytes (MB) in size.
`You need to determine the root cause for the issue.
`
`The file MIME type is supported by the service.

- [ ] Yes
- [ ] No


#### Qp23.3Topic4Set4question2.B ::You are using Azure Front Door Service.
`You are expecting inbound files to be compressed by using Brotli compression. You discover that inbound XML files are not compressed. The files are 9 megabytes (MB) in size.
`You need to determine the root cause for the issue.
`
`Edge nodes must be purged of all cache assets.

- [ ] Yes
- [ ] No


#### Qp23.3Topic4Set4question2.C ::You are using Azure Front Door Service.
`You are expecting inbound files to be compressed by using Brotli compression. You discover that inbound XML files are not compressed. The files are 9 megabytes (MB) in size.
`You need to determine the root cause for the issue.
`
`The compression type is supported.

- [ ] Yes
- [ ] No




#### Qp23.3Topic4Set4question3.A ::You are developing an Azure App Service hosted ASP.NET Core web app to deliver video-on-demand streaming media. You enable an Azure Content Delivery
`Network (CDN) Standard for the web endpoint. Customer videos are downloaded from the web app by using the following example URL: http://www.contoso.com/ content.mp4?quality=1
`All media content must expire from the cache after one hour. Customer videos with varying quality must be delivered to the closest regional point of presence
`(POP) node.
`You need to configure Azure CDN caching rules.
`Which options should you use? To answer, select the appropriate options in the answer area.
`
`Caching bahavior

- [ ] Bypass cache
- [ ] Override
- [ ] Set if missing

#### Qp23.3Topic4Set4question3.B ::You are developing an Azure App Service hosted ASP.NET Core web app to deliver video-on-demand streaming media. You enable an Azure Content Delivery
`Network (CDN) Standard for the web endpoint. Customer videos are downloaded from the web app by using the following example URL: http://www.contoso.com/ content.mp4?quality=1
`All media content must expire from the cache after one hour. Customer videos with varying quality must be delivered to the closest regional point of presence
`(POP) node.
`You need to configure Azure CDN caching rules.
`Which options should you use? To answer, select the appropriate options in the answer area.
`
`Cache expiration duration

- [ ] 1 second
- [ ] 1 minute
- [ ] 1 hour
- [ ] 1 day

#### Qp23.3Topic4Set4question3.C ::You are developing an Azure App Service hosted ASP.NET Core web app to deliver video-on-demand streaming media. You enable an Azure Content Delivery
`Network (CDN) Standard for the web endpoint. Customer videos are downloaded from the web app by using the following example URL: http://www.contoso.com/ content.mp4?quality=1
`All media content must expire from the cache after one hour. Customer videos with varying quality must be delivered to the closest regional point of presence
`(POP) node.
`You need to configure Azure CDN caching rules.
`Which options should you use? To answer, select the appropriate options in the answer area.
`
`Query string caching behavior

- [ ] Ignore query strings
- [ ] Bypass caching for query strings
- [ ] Cache every unique URL


#### Qp24.3Topic4Set4question5 ::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Enable Application Request Routing (ARR).
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Qp24.3Topic4Set4question6_?recheck ::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Deploy and configure an Azure Database for PostgreSQL. Update the web applications.
`Does the solution meet the goal?

- [x] Yes
- [ ] No



#### Qp25.3Topic4Set4question9.A_p34 ::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
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



#### Qp25.3Topic4Set4question10_P.34 ::You develop a gateway solution for a public facing news API. The news API back end is implemented as a RESTful service and uses an OpenAPI specification.
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


#### Qp26.3Topic4Set4question13_p35 ::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Deploy and configure Azure Cache for Redis. Update the web applications.
`Does the solution meet the goal?


- [x] Yes
- [ ] No


#### Qp26.3Topic4Set4question16_p35 ::You develop and deploy an ASP.NET web app to Azure App Service. You use Application Insights telemetry to monitor the app.
`You must test the app to ensure that the app is available and responsive from various points around the world and at regular intervals. If the app is not responding, you must send an alert to support staff.
`You need to configure a test for the web app.
`Which two test types can you use? Each correct answer presents a complete solution.



- [ ] integration
- [x] multi-step web
- [x] URL ping
- [ ] unit
- [ ] load



#### Qp27.3Topic4Set4question18_p36 ::You are developing applications for a company. You plan to host the applications on Azure App Services.
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



#### Qp27.3Topic4Set4question19_p.36 ::You develop and add several functions to an Azure Function app that uses the latest runtime host. The functions contain several REST API endpoints secured by using SSL. The Azure Function app runs in a Consumption plan.
`You must send an alert when any of the function endpoints are unavailable or responding too slowly.
`You need to monitor the availability and responsiveness of the functions.
`What should you do?



- [ ] Create a URL ping test.
- [x] Create a timer triggered function that calls TrackAvailability() and send the results to Application Insights.
- [ ] Create a timer triggered function that calls GetMetric("Request Size") and send the results to Application Insights.
- [ ] Add a new diagnostic setting to the Azure Function app. Enable the FunctionAppLogs and Send to Log Analytics options.









































































#### Qp28.Topic5.Set5.question1.A ::You have an application that provides weather forecasting data to external partners. You use Azure API Management to publish APIs.
`You must change the behavior of the API to meet the following requirements:
`✑ Support alternative input parameters
`✑ Remove formatting text from responses
`✑ Provide additional context to back-end services
`Which types of policies should you implement? To answer, drag the policy types to the correct scenarios. Each policy type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Rewrite the request URL to match to the format expected by the web service.

- [ ] Inbound
- [ ] Outbond
- [ ] Backend

#### Qp28.Topic5.Set5.question1.B ::You have an application that provides weather forecasting data to external partners. You use Azure API Management to publish APIs.
`You must change the behavior of the API to meet the following requirements:
`✑ Support alternative input parameters
`✑ Remove formatting text from responses
`✑ Provide additional context to back-end services
`Which types of policies should you implement? To answer, drag the policy types to the correct scenarios. Each policy type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Remove formatting text from responses.

- [ ] Inbound
- [ ] Outbond
- [ ] Backend


#### Qp28.Topic5.Set5.question1.C ::You have an application that provides weather forecasting data to external partners. You use Azure API Management to publish APIs.
`You must change the behavior of the API to meet the following requirements:
`✑ Support alternative input parameters
`✑ Remove formatting text from responses
`✑ Provide additional context to back-end services
`Which types of policies should you implement? To answer, drag the policy types to the correct scenarios. Each policy type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Forward the user ID that is associated with the subscription key for the original request to the back-end service.

- [ ] Inbound
- [ ] Outbond
- [ ] Backend


#### Qp28.Topic5.Set5.question2 ::You are developing an e-commerce solution that uses a microservice architecture.
`You need to design a communication backplane for communicating transactional messages between various parts of the solution. Messages must be communicated in first-in-first-out (FIFO) order.
`What should you use?

- [ ] Azure Storage Queue
- [ ] Azure Event Hub
- [ ] Azure Service Bus
- [ ] Azure Event Grid


#### Qp29.3Topic5Set5question4 ::You are developing an Azure Service application that processes queue data when it receives a message from a mobile application. Messages may not be sent to the service consistently.
`You have the following requirements:
`✑ Queue size must not grow larger than 80 gigabytes (GB).
`✑ Use first-in-first-out (FIFO) ordering of messages.
`✑ Minimize Azure costs.
`You need to implement the messaging solution.
`Solution: Use the .Net API to add a message to an Azure Service Bus Queue from the mobile application. Create an Azure Function App that uses an Azure
`Service Bus Queue trigger.
`Does the solution meet the goal?


- [ ] Yes
- [ ] No


#### Qp29.3Topic5Set5question5 ::You are developing an Azure solution to collect point-of-sale (POS) device data from 2,000 stores located throughout the world. A single device can produce 2 megabytes (MB) of data every 24 hours. Each store location has one to five devices that send data.
`You must store the device data in Azure Blob storage. Device data must be correlated based on a device identifier. Additional stores are expected to open in the future.
`You need to implement a solution to receive the device data.
`Solution: Provision an Azure Notification Hub. Register all devices with the hub.
`Does the solution meet the goal?

- [ ] Yes
- [ ] No



#### Qp29.3Topic5Set5question6 ::You are developing an Azure solution to collect point-of-sale (POS) device data from 2,000 stores located throughout the world. A single device can produce 2 megabytes (MB) of data every 24 hours. Each store location has one to five devices that send data.
`You must store the device data in Azure Blob storage. Device data must be correlated based on a device identifier. Additional stores are expected to open in the future.
`You need to implement a solution to receive the device data.
`Solution: Provision an Azure Service Bus. Configure a topic to receive the device data by using a correlation filter.
`Does the solution meet the goal?

- [ ] Yes
- [ ] No



#### Qp29.3Topic5Set5question7 ::You are developing an Azure solution to collect point-of-sale (POS) device data from 2,000 stores located throughout the world. A single device can produce 2 megabytes (MB) of data every 24 hours. Each store location has one to five devices that send data.
`You must store the device data in Azure Blob storage. Device data must be correlated based on a device identifier. Additional stores are expected to open in the future.
`You need to implement a solution to receive the device data.
`Solution: Provision an Azure Event Grid. Configure event filtering to evaluate the device identifier.
`Does the solution meet the goal?

- [ ] Yes
- [ ] No



#### Qp30.3Topic5Set5question8.A ::You manage several existing Logic Apps.
`You need to change definitions, add new logic, and optimize these apps on a regular basis.
`What should you use? To answer, drag the appropriate tools to the correct functionalities. Each tool may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Edit B2B workflows

- [ ] Logic Apps Designer
- [ ] Code View Editor
- [ ] Entreprise Integration Pack


#### Qp30.3Topic5Set5question8.B ::You manage several existing Logic Apps.
`You need to change definitions, add new logic, and optimize these apps on a regular basis.
`What should you use? To answer, drag the appropriate tools to the correct functionalities. Each tool may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Edit definitions in JSON

- [ ] Logic Apps Designer
- [ ] Code View Editor
- [ ] Entreprise Integration Pack

































