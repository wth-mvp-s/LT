##   7°_n175-200_septneworder

[//] - 0020_new
[//] - 0021_new


#### 0000.23 [100%] ::You are developing an ASP.NET Core Web API web service. The web service uses Azure Application Insights for all telemetry and dependency tracking. The web service reads and writes data to a database other than Microsoft SQL Server.
`You need to ensure that dependency tracking works for calls to the third-party database.
`Which two dependency telemetry properties should you use? Each correct answer presents part of the solution.

- [ ] Telemetry.Context.Cloud.RoleInstance
- [x] Telemetry.Id
- [ ] Telemetry.Name
- [x] Telemetry.Context.Operation.Id
- [ ] Telemetry.Context.Session.Id


#### 0000.23 [highly-voted%] ::You are using Azure Front Door Service.
`You are expecting inbound files to be compressed by using Brotli compression. You discover that inbound XML files are not compressed. The files are 9 megabytes (MB) in size.
`You need to determine the root cause for the issue.
`
`The file MIME type is supported by the service.

- [x] Yes
- [ ] No


#### Qp23.3Topic4Set4question2.B ::You are using Azure Front Door Service.
`You are expecting inbound files to be compressed by using Brotli compression. You discover that inbound XML files are not compressed. The files are 9 megabytes (MB) in size.
`You need to determine the root cause for the issue.
`
`Edge nodes must be purged of all cache assets.

- [ ] Yes
- [x] No


#### Qp23.3Topic4Set4question2.C ::You are using Azure Front Door Service.
`You are expecting inbound files to be compressed by using Brotli compression. You discover that inbound XML files are not compressed. The files are 9 megabytes (MB) in size.
`You need to determine the root cause for the issue.
`
`The compression type is supported.

- [x] Yes
- [ ] No



#### Qp23.3Topic4Set4question3.A [highly-voted%]::You are developing an Azure App Service hosted ASP.NET Core web app to deliver video-on-demand streaming media. You enable an Azure Content Delivery
`Network (CDN) Standard for the web endpoint. Customer videos are downloaded from the web app by using the following example URL: http://www.contoso.com/ content.mp4?quality=1
`All media content must expire from the cache after one hour. Customer videos with varying quality must be delivered to the closest regional point of presence
`(POP) node.
`You need to configure Azure CDN caching rules.
`Which options should you use? To answer, select the appropriate options in the answer area.
`
`Caching bahavior

- [ ] Bypass cache
- [x] Override
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
- [x] 1 hour
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
- [x] Cache every unique URL

[//] - 0025_image
[//] - 0026_new
[//] - 0026_image
[//] - 0028_new
[//] - 0029_new
[//] - 0030_new
[//] - 0031_new
[//] - 0032_new


#### Qp29.new_p.39 [most-voted]::You are developing an Azure solution to collect point-of-sale (POS) device data from 2,000 stores located throughout the world. A single device can produce 2 megabytes (MB) of data every 24 hours. Each store location has one to five devices that send data.
`You must store the device data in Azure Blob storage. Device data must be correlated based on a device identifier. Additional stores are expected to open in the future.
`You need to implement a solution to receive the device data.
`Solution: Provision an Azure Service Bus. Configure a topic to receive the device data by using a correlation filter.
`Does the solution meet the goal?

- [ ] Yes
- [x] No



#### Qp29.3Topic5Set5question7 [100%]::You are developing an Azure solution to collect point-of-sale (POS) device data from 2,000 stores located throughout the world. A single device can produce 2 megabytes (MB) of data every 24 hours. Each store location has one to five devices that send data.
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





#### Qp30.3Topic5Set5question8.C ::You manage several existing Logic Apps.
`You need to change definitions, add new logic, and optimize these apps on a regular basis.
`What should you use? To answer, drag the appropriate tools to the correct functionalities. Each tool may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Visually add functionality

- [x] Logic Apps Designer
- [ ] Code View Editor
- [ ] Entreprise Integration Pack




#### Qp30.3Topic5Set5question9 ::A company is developing a solution that allows smart refrigerators to send temperature information to a central location.
`The solution must receive and store messages until they can be processed. You create an Azure Service Bus instance by providing a name, pricing tier, subscription, resource group, and location.
`You need to complete the configuration.
`Which Azure CLI or PowerShell command should you run?


- [ ]

```az servicebus queue create
`  --resource-group fridge-rg
`  --namespace-name fridge-ns
`  --name fridge-q
```

- [ ] 
`  ```New-AzureRmResourceGroup
`  -Name fridge-rg
`  -Location fridge-loc

- [x]
`  ```az servicebus namespace create
`  --resource-group fridge-rg
`  --name fridge-ns
`  --location fridge-loc
`  ```
- [ ]
`  ```connectionString-$)az serviceBus namespace authorization-rule keys list
`  --resource-group fridge-rg
`  --fridge-ns fridge-ns
`  --query primaryConnectionString -output tsv)
`  ```



#### Qp30.3Topic5Set5question11 ::A company is developing a solution that allows smart refrigerators to send temperature information to a central location.
`The solution must receive and store messages until they can be processed. You create an Azure Service Bus instance by providing a name, pricing tier, subscription, resource group, and location.
`You need to complete the configuration.
`Which Azure CLI or PowerShell command should you run?


- [ ]
```az group create
`  --name fridge-rg
`  --location fridge-loc
```

- [ ] 
`  ```New-AzureRmServiceBusNamespace
`  -ResourceGroupName fridge-rg
`  -NamespaceName fridge-ns
`  -Location fridge-loc

- [x]
`  ```New-AzureRmServiceBusQueue
`  -ResourceGroupName fridge-rg
`  -NamespaceName fridge-ns
`  -Name fridge-q
`  -EnablePartitioning $False
`  ```
- [ ]
`  ```az servicebus namespace create
`  --resource-group fridge-rg
`  --name fridge-rg
`  --location fridge-loc
`  ```


#### Qp29.3Topic5Set5question4 ::You are developing an Azure Service application that processes queue data when it receives a message from a mobile application. Messages may not be sent to the service consistently.
`You have the following requirements:
`✑ Queue size must not grow larger than 80 gigabytes (GB).
`✑ Use first-in-first-out (FIFO) ordering of messages.
`✑ Minimize Azure costs.
`You need to implement the messaging solution.
`Solution: Use the .Net API to add a message to an Azure Service Bus Queue from the mobile application. Create an Azure Function App that uses an Azure Service Bus Queue trigger.
`Does the solution meet the goal?


- [ ] Yes
- [ ] No


#### Qp33.3Topic5Set5question22 [10voters]::You are developing an Azure Service application that processes queue data when it receives a message from a mobile application. Messages may not be sent to the service consistently.
`You have the following requirements:
`✑ Queue size must not grow larger than 80 gigabytes (GB).
`✑ Use first-in-first-out (FIFO) ordering of messages.
`✑ Minimize Azure costs.
`You need to implement the messaging solution.
`Solution: Use the .Net API to add a message to an Azure Storage Queue from the mobile application. Create an Azure Function App that uses an Azure Storage Queue trigger.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

[//] - 0008_new
[//] - 0008_todo


#### Qp31.3Topic5Set5question15 [7voters]::You are developing an Azure messaging solution.
`You need to ensure that the solution meets the following requirements:
`✑ Provide transactional support.
`✑ Provide duplicate detection.
`✑ Store the messages for an unlimited period of time.
`Which two technologies will meet the requirements? Each correct answer presents a complete solution.

- [x] Azure Service Bus Topic
- [x] Azure Service Bus Queue
- [ ] Azure Storage Queue
- [ ] Azure Event Hub


#### Qp32.3Topic5Set5question16.A [highly-voted]::You need to configure back-end authentication for the API Management service instance.
`Which target and gateway credential type should you use? To answer, drag the appropriate values to the correct parameters. Each value may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Configuration parameter: Target

- [ ] Azure Ressource
- [x] HTTP(s) endpoint
- [ ] Basic
- [ ] Client cert

#### Qp32.3Topic5Set5question16.B::You need to configure back-end authentication for the API Management service instance.
`Which target and gateway credential type should you use? To answer, drag the appropriate values to the correct parameters. Each value may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Configuration parameter: Getaway credentials

- [ ] Azure Ressource
- [ ] HTTP(s) endpoint
- [ ] Basic
- [x] Client cert



#### Qp32.3Topic5Set5question17.A::You are creating an app that uses Event Grid to connect with other services. Your app's event data will be sent to a serverless function that checks compliance.
`This function is maintained by your company.
`You write a new event subscription at the scope of your resource. The event must be invalidated after a specific period of time.
`You need to configure Event Grid.
`
`WebHook event delivery

- [x] ValidationCode handshake
- [ ] ValidationURL handshake
- [ ] JWT token


#### Qp32.3Topic5Set5question17.B::You are creating an app that uses Event Grid to connect with other services. Your app's event data will be sent to a serverless function that checks compliance.
`This function is maintained by your company.
`You write a new event subscription at the scope of your resource. The event must be invalidated after a specific period of time.
`You need to configure Event Grid.
`
`Topic publishing


- [x] SAS tokens
- [ ] Key authentication
- [ ] Management Access Control

[//] - 0013_todo


#### Qp32.3Topic5Set5question19::You are developing a solution that will use Azure messaging services.
`You need to ensure that the solution uses a publish-subscribe model and eliminates the need for constant polling.
`What are two possible ways to achieve the goal? Each correct answer presents a complete solution.

- [x] Service Bus
- [ ] Event Hub
- [x] Event Grid
- [ ] Queue

#### Qp33.3Topic5Set5question20::A company is implementing a publish-subscribe (Pub/Sub) messaging component by using Azure Service Bus. You are developing the first subscription application.
`In the Azure portal you see that messages are being sent to the subscription for each topic. You create and initialize a subscription client object by supplying the correct details, but the subscription application is still not consuming the messages.
`You need to ensure that the subscription client processes all messages.
`Which code segment should you use?

- [ ] await subscriptionClient.AddRuleAsync(new RuleDescription(RuleDescription.DefaultRuleName, new TrueFilter()));
- [ ] subscriptionClient = new SubscriptionClient(ServiceBusConnectionString, TopicName, SubscriptionName);
- [ ] await subscriptionClient.CloseAsync();
- [x] subscriptionClient.RegisterMessageHandler(ProcessMessagesAsync, messageHandlerOptions);


#### Qp33.3Topic5Set5question21 [???]::You are developing an Azure Service application that processes queue data when it receives a message from a mobile application. Messages may not be sent to the service consistently.
`You have the following requirements:
`✑ Queue size must not grow larger than 80 gigabytes (GB).
`✑ Use first-in-first-out (FIFO) ordering of messages.
`✑ Minimize Azure costs.
`You need to implement the messaging solution.
`Solution: Use the .Net API to add a message to an Azure Storage Queue from the mobile application. Create an Azure VM that is triggered from Azure Storage Queue events.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Qp33.3Topic5Set5question22 [?]::You are developing an Azure Service application that processes queue data when it receives a message from a mobile application. Messages may not be sent to the service consistently.
`You have the following requirements:
`✑ Queue size must not grow larger than 80 gigabytes (GB).
`✑ Use first-in-first-out (FIFO) ordering of messages.
`✑ Minimize Azure costs.
`You need to implement the messaging solution.
`Solution: Use the .Net API to add a message to an Azure Service Bus Queue from the mobile application. Create an Azure Windows VM that is triggered from Azure Service Bus Queue.
`Does the solution meet the goal?

- [ ] Yes
- [x] No