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





#### Qp26.3Topic4Set4question13_p35 ::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Deploy and configure Azure Cache for Redis. Update the web applications.
`Does the solution meet the goal?


- [x] Yes
- [ ] N










































































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



#### Qp29.new_p.39 ::You are developing an Azure solution to collect point-of-sale (POS) device data from 2,000 stores located throughout the world. A single device can produce 2 megabytes (MB) of data every 24 hours. Each store location has one to five devices that send data.
`You must store the device data in Azure Blob storage. Device data must be correlated based on a device identifier. Additional stores are expected to open in the future.
`You need to implement a solution to receive the device data.
`Solution: Provision an Azure Service Bus. Configure a topic to receive the device data by using a correlation filter.
`Does the solution meet the goal?

- [ ] Yes
- [x] No



#### Qp29.3Topic5Set5question7 ::You are developing an Azure solution to collect point-of-sale (POS) device data from 2,000 stores located throughout the world. A single device can produce 2 megabytes (MB) of data every 24 hours. Each store location has one to five devices that send data.
`You must store the device data in Azure Blob storage. Device data must be correlated based on a device identifier. Additional stores are expected to open in the future.
`You need to implement a solution to receive the device data.
`Solution: Provision an Azure Event Grid. Configure event filtering to evaluate the device identifier.
`Does the solution meet the goal?

- [ ] Yes
- [x] No



#### Qp30.3Topic5Set5question8.A_100% ::You manage several existing Logic Apps.
`You need to change definitions, add new logic, and optimize these apps on a regular basis.
`What should you use? To answer, drag the appropriate tools to the correct functionalities. Each tool may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Edit B2B workflows

- [ ] Logic Apps Designer
- [ ] Code View Editor
- [x] Entreprise Integration Pack


#### Qp30.3Topic5Set5question8.B ::You manage several existing Logic Apps.
`You need to change definitions, add new logic, and optimize these apps on a regular basis.
`What should you use? To answer, drag the appropriate tools to the correct functionalities. Each tool may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Edit definitions in JSON

- [ ] Logic Apps Designer
- [x] Code View Editor
- [ ] Entreprise Integration Pack

































