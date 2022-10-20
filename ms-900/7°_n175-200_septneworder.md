##   7°_all_1234

#### 0020_new [1voter] ::You develop and deploy an Azure App Service web app. The app is deployed to multiple regions and uses Azure Traffic Manager. Application Insights is enabled for the app.
`You need to analyze app uptime for each month.
`Which two solutions will achieve the goal?

- [ ] Azure Monitor logs
- [x] Application Insights alerts
- [ ] Azure Monitor metrics
- [x] Application Insights web tests


#### 0021_new [2voter] ::You develop and deploy an Azure App Service web app. The web app accesses data in an Azure SQL database.
`You must update the web app to store frequently used data in a new Azure Cache for Redis Premium instance.
`You need to implement the Azure Cache for Redis features.
`Which feature should you implement? 
`
`Create a data structure for storing collection of relared items

- [ ] horizontal partitioning
- [ ] channel
- [ ] list
- [x] set


#### 0021_new [2voter] ::You develop and deploy an Azure App Service web app. The web app accesses data in an Azure SQL database.
`You must update the web app to store frequently used data in a new Azure Cache for Redis Premium instance.
`You need to implement the Azure Cache for Redis features.
`Which feature should you implement? 
`
`Create a data structure for the most recent accessed cache items

- [ ] horizontal partitioning
- [ ] channel
- [x] list
- [ ] set


#### 0021_new [2voter] ::You develop and deploy an Azure App Service web app. The web app accesses data in an Azure SQL database.
`You must update the web app to store frequently used data in a new Azure Cache for Redis Premium instance.
`You need to implement the Azure Cache for Redis features.
`Which feature should you implement? 
`
`Send messages through a high-performance publisher/subscriber mechanism

- [ ] horizontal partitioning
- [x] channel
- [ ] list
- [x] set




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

#### 0025::
`You are developing an ASP.NET Core time sheet application that runs as an Azure Web App. Users of the application enter their time sheet information on the first day of every month.
`The application uses a third-party web service to validate data.
`The application encounters periodic server errors due to errors that result from calling a third-party web server. Each request to the third-party server has the same chance of failure.
`You need to configure an Azure Monitor alert to detect server errors unrelated to the third-party service. You must minimize false-positive alerts.
`How should you complete the Azure Resource Manager template?


- [x]
`"type":"Microsoft.Insights/metricAlerts",
`"properties":{
`    "criteria":{
`        "odata.type":". . .",
`        "allof":{
`            "criterionType":"DynamicThresholdCriterion",
`            "metricName":"Http5xx",
`            "alertSensitivity":"Low"


- [ ]
`"type":"Microsoft.Insights/metricAlerts",
`"properties":{
`    "criteria":{
`        "odata.type":". . .",
`        "allof":{
`            "criterionType":"SingleResourceMultipleMetricCriteria",
`            "metricName":"Http5xx",
`            "alertSensitivity":"Low"
 
- [ ]
`"type":"Microsoft.Insights/metricAlerts",
`"properties":{
`    "criteria":{
`        "odata.type":". . .",
`        "allof":{
`            "criterionType":"DynamicThresholdCriterion",
`            "metricName":"Http5xx",
`            "alertSensitivity":"High"


- [ ]
`"type":"Microsoft.Insights/metricAlerts",
`"properties":{
`    "criteria":{
`        "odata.type":". . .",
`        "allof":{
`            "criterionType":"SingleResourceMultipleMetricCriteria",
`            "metricName":"Http5xx",
`            "alertSensitivity":"Hight"


- [ ]
`"type":"Microsoft.Insights/metricAlerts",
`"properties":{
`    "criteria":{
`        "odata.type":". . .",
`        "allof":{
`            "criterionType":"DynamicThresholdCriterion",
`            "metricName":"Http4xx",
`            "alertSensitivity":"Low"


#### 0026_new ::You are developing a web application that uses Azure Cache for Redis. You anticipate that the cache will frequently fill and that you will need to evict keys.
`You must configure Azure Cache for Redis based on the following predicted usage pattern: A small subset of elements will be accessed much more often than the rest.
`You need to configure the Azure Cache for Redis to optimize performance for the predicted usage pattern.
`Which two eviction policies will achieve the goal?

- [ ] noeviction
- [x] allkeys-lru
- [x] volatile-lru
- [ ] allkeys-random
- [ ] volatile-ttl
- [ ] volatile-random


#### 0027::
`An organization has web apps hosted in Azure.
`The organization wants to track events and telemetry data in the web apps by using Application Insights.
`You need to configure the web apps for Application Insights.
`Which three actions should you perform in sequence?

- [x] 
`Create an Application insights resource
`Copy the connection string
`Configure the Azure App Service SDK for the app

- [ ] 
`Create an Application insights resource
`Configure the Azure App Service SDK for the app
`Copy the connection string

- [ ] 
`Create an Azure machine Learning workspace
`Copy the connection string
`Configure the Azure App Service SDK for the app


- [ ] 
`Configure the Azure App Service SDK for the app
`Configure the Application insights SDK in the app
`Copy the connection string
`Create an Application insights resource


#### 0028_new [?]::An organization hosts web apps in Azure. The organization uses Azure Monitor.
`You discover that configuration changes were made to some of the web apps.
`You need to identify the configuration changes.
`Which Azure Monitor log should you review?

- [ ] AppServiceAppLogs
- [x] AppServiceEnvironmentPlatformlogs
- [ ] AppServiceConsoleLogs
- [ ] AppServiceAuditLogs

#### 0029_new [?]::You develop and deploy an Azure App Service web app to a production environment. You enable the Always On setting and the Application Insights site extensions.
`You deploy a code update and receive multiple failed requests and exceptions in the web app.
`You need to validate the performance and failure counts of the web app in near real time.
`Which Application Insights tool should you use?

- [ ] Profiler
- [ ] Smart Detection
- [x] Live Metrics Stream
- [ ] Application Map
- [ ] Snapshot Debugger


#### 0030_new a [?]::You deploy an ASP.NET web app to Azure App Service.
`You must monitor the web app by using Application Insights.
`You need to configure Application Insights to meet the requirements.
`Which feature should you use? 
`
`Automatically warn you of potential performance problems and failure anomalies in the web app. 

- [x] Smart Detection
- [ ] Snapshot Debugger
- [ ] Profiler
- [ ] Multi-step test


#### 0030_new b [?]::You deploy an ASP.NET web app to Azure App Service.
`You must monitor the web app by using Application Insights.
`You need to configure Application Insights to meet the requirements.
`Which feature should you use? 
`
`Automatically collect the state of the source code and variables when an exception is thrown in the web app. 

- [ ] Smart Detection
- [x] Snapshot Debugger
- [ ] Profiler
- [ ] Multi-step test


#### 0030_new c [?]::You deploy an ASP.NET web app to Azure App Service.
`You must monitor the web app by using Application Insights.
`You need to configure Application Insights to meet the requirements.
`Which feature should you use? 
`
`Capture performance traces of the web app without negatively affecting users of the web app. 

- [ ] Smart Detection
- [ ] Snapshot Debugger
- [x] Profiler
- [ ] Multi-step test


#### 0031_new c [2?]::You are building a web application that performs image analysis on user photos and returns metadata containing objects identified. 
`The image analysis is very costly in terms of time and compute resources. 
`You are planning to use Azure Redis Cache so duplicate uploads do not need to be reprocessed.
`In case of an Azure data center outage, metadata loss must be kept to a minimum.
`You need to configure the Azure Redis cache instance.
`Which two actions should you perform? 

- [ ] Configure Azure Redis with AOF persistence.
- [x] Configure Azure Redis with RDB persistence.
- [ ] Configure second storage account for persistence.
- [x] Set backup frequency to the minimum value.


#### 0032_new c [????]::You are developing an Azure-based web application. 
`The application goes offline periodically to perform offline data processing. While the application is offline, numerous Azure Monitor alerts fire which result in the on-call developer being paged.
`The application must always log when the application is offline for any reason.
`You need to ensure that the on-call developer is not paged during offline processing.
`What should you do?

- [ ] Add Azure Monitor alert processing rules to suppress notifications.
- [ ] Disable Azure Monitor Service Health Alerts during offline processing.
- [ ] Create an Azure Monitor Metric Alert.
- [x] Build an Azure Monitor action group that suppresses the alerts.



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


#### Qp33.question 7  [10voters]::You are developing an Azure Service application that processes queue data when it receives a message from a mobile application. Messages may not be sent to the service consistently.
`You have the following requirements:
`✑ Queue size must not grow larger than 80 gigabytes (GB).
`✑ Use first-in-first-out (FIFO) ordering of messages.
`✑ Minimize Azure costs.
`You need to implement the messaging solution.
`Solution: Use the .Net API to add a message to an Azure Storage Queue from the mobile application. 
`Create an Azure Function App that uses an Azure Storage Queue trigger.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### 0008::
`You develop software solutions for a mobile delivery service. You are developing a mobile app that users can use to order from a restaurant in their area. The app uses the following workflow:
`1. A driver selects the restaurants for which they will deliver orders.
`2. Orders are sent to all available drivers in an area.
`3. Only orders for the selected restaurants will appear for the driver.
`4. The first driver to accept an order removes it from the list of available orders.
`You need to implement an Azure Service Bus solution.
`Which three actions should you perform in sequence?

- [x] 
`Create a Single Service Bus Namespace.
`Create a Service Bus topic for each restaurant for which a driver can receive message.
`Create a Service Bus subscription for each restaurant for which a driver can receive orders.

- [ ] 
`Create a Single Service Bus Namespace.
`Create a Single Service Bus topic.
`Create a Service Bus subscription for each restaurant for which a driver can receive orders.


- [ ] 
`Create a Single Service Bus topic.
`Create a Service Bus Namespace for each restaurant for which a driver can receive messages. 
`Create a Single Service Bus subscription.
`Create a Service Bus subscription for each restaurant for which a driver can receive orders.
`Create a Single Service Bus Namespace.
`Create a Service Bus topic for each restaurant for which a driver can receive message.

#### 0009_todo A. ::You develop a news and blog content app for Windows devices.
`A notification must arrive on a user's device when there is a new article available for them to view.
`You need to implement push notifications.
`How should you complete the code segment?
`
`
`string notificationHubName = "contoso_hub";
`string notificationHubConnection = "connection_string";
`--------- hub = 
`NotificationHubClient . CreateClientConnectionString
`(notificationHubConnection, notificationHubName);
`string windowsToastPayload = 
`@"<toast><visual><binding template=""ToastText01""><text id=""1"">" +
`@"New item to view" + @"</Text></binding></visual></toast>";
`try
`{
`var result = 
`await hub SendWindowsNativeNotificationAsync.(windowsToastPayload)
`}
`catch (System.Exception ex)
`{
`...    
`}

- [x] NotificationHubClient
- [ ] NotificationHubClientSettings
- [ ] NotificationHubJob
- [ ] NotificationDetails

#### 0009_todo B. ::You develop a news and blog content app for Windows devices.
`A notification must arrive on a user's device when there is a new article available for them to view.
`You need to implement push notifications.
`How should you complete the code segment?
`
`
`string notificationHubName = "contoso_hub";
`string notificationHubConnection = "connection_string";
`NotificationHubClient hub = 
`---------------- . CreateClientConnectionString
`(notificationHubConnection, notificationHubName);
`string windowsToastPayload = 
`@"<toast><visual><binding template=""ToastText01""><text id=""1"">" +
`@"New item to view" + @"</Text></binding></visual></toast>";
`try
`{
`var result = 
`await hub SendWindowsNativeNotificationAsync.(windowsToastPayload)
`}
`catch (System.Exception ex)
`{
`...    
`}

- [x] NotificationHubClient
- [ ] NotificationHubClientSettings
- [ ] NotificationHubJob
- [ ] NotificationDetails


#### 0009_todo C. ::You develop a news and blog content app for Windows devices.
`A notification must arrive on a user's device when there is a new article available for them to view.
`You need to implement push notifications.
`How should you complete the code segment?
`
`
`string notificationHubName = "contoso_hub";
`string notificationHubConnection = "connection_string";
`NotificationHubClient hub = 
`NotificationHubClient . ----------------
`(notificationHubConnection, notificationHubName);
`string windowsToastPayload = 
`@"<toast><visual><binding template=""ToastText01""><text id=""1"">" +
`@"New item to view" + @"</Text></binding></visual></toast>";
`try
`{
`var result = 
`await hub SendWindowsNativeNotificationAsync.(windowsToastPayload)
`}
`catch (System.Exception ex)
`{
`...    
`}

- [x] GetInstallation
- [ ] CreateClientFromConnectionString
- [ ] CreateOrUpdateInstallation
- [ ] PatchInstallation


#### 0009_todo D. ::You develop a news and blog content app for Windows devices.
`A notification must arrive on a user's device when there is a new article available for them to view.
`You need to implement push notifications.
`How should you complete the code segment?
`
`
`string notificationHubName = "contoso_hub";
`string notificationHubConnection = "connection_string";
`NotificationHubClient hub = 
`NotificationHubClient . CreateClientFromConnectionString
`(notificationHubConnection, notificationHubName);
`string windowsToastPayload = 
`@"<toast><visual><binding template=""ToastText01""><text id=""1"">" +
`@"New item to view" + @"</Text></binding></visual></toast>";
`try
`{
`var result = 
`await hub -------------------------.(windowsToastPayload)
`}
`catch (System.Exception ex)
`{
`...    
`}

- [x] SendWindowsNativeNotificationAsync
- [ ] SubmitNotificationHubJobAsync
- [ ] ScheduleNotificationAsync
- [ ] SendAppleNativeNotificationAsync


#### Qp31.3Topic5Set5question15 [7voters]::You are developing an Azure messaging solution.
`You need to ensure that the solution meets the following requirements:
`✑ Provide transactional support.
`✑ Provide duplicate detection.
`✑ Store the messages for an unlimited period of time.
`Which two technologies will meet the requirements?

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


#### 0013_todo::You are working for Contoso, Ltd.
`You define an API Policy object by using the following XML markup:
`
`
`<set-variable name= "bodySize" value="@(context.Request.Headers["Content-Length"] [0])"/>
`<choose>
`   <when condition= "@(int.Parse(context.Variables.GetValueOrDefault<string> ("bodySize")<512000)">
`</when>
`<otherwise>
`   <rewrite-uri template= "/put"/>
`   <set-backend-service base-url="http://contoso.com/api/9.1/"/>
`</otherwise>
`</choose>
`
`The XML segment belongs in the <inbound> section of the policy.


- [x] Yes
- [ ] No

#### 0013_todo B. ::You are working for Contoso, Ltd.
`You define an API Policy object by using the following XML markup:
`
`
`<set-variable name= "bodySize" value="@(context.Request.Headers["Content-Length"] [0])"/>
`<choose>
`   <when condition= "@(int.Parse(context.Variables.GetValueOrDefault<string> ("bodySize")<512000)">
`</when>
`<otherwise>
`   <rewrite-uri template= "/put"/>
`   <set-backend-service base-url="http://contoso.com/api/9.1/"/>
`</otherwise>
`</choose>
`
`If the body size is > 256k, an error will occur. 


- [ ] Yes
- [x] No


#### 0013_todo C. ::You are working for Contoso, Ltd.
`You define an API Policy object by using the following XML markup:
`
`
`<set-variable name= "bodySize" value="@(context.Request.Headers["Content-Length"] [0])"/>
`<choose>
`   <when condition= "@(int.Parse(context.Variables.GetValueOrDefault<string> ("bodySize")<512000)">
`</when>
`<otherwise>
`   <rewrite-uri template= "/put"/>
`   <set-backend-service base-url="http://contoso.com/api/9.1/"/>
`</otherwise>
`</choose>
`
`If the request is http://contoso.com/api/9.2/, the policy will retain the higher version.


- [ ] Yes
- [x] No

#### Qp32.3Topic5Set5question19::You are developing a solution that will use Azure messaging services.
`You need to ensure that the solution uses a publish-subscribe model and eliminates the need for constant polling.
`What are two possible ways to achieve the goal?

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


#### Qp. 16 [15voters]::You are developing an Azure Service application that processes queue data when it receives a message from a mobile application. Messages may not be sent to the service consistently.
`You have the following requirements:
`✑ Queue size must not grow larger than 80 gigabytes (GB).
`✑ Use first-in-first-out (FIFO) ordering of messages.
`✑ Minimize Azure costs.
`You need to implement the messaging solution.
`Solution: Use the .Net API to add a message to an Azure Storage Queue from the mobile application. 
`Create an Azure VM that is triggered from Azure Storage Queue events.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Qp17. [23voters]::You are developing an Azure Service application that processes queue data when it receives a message from a mobile application. Messages may not be sent to the service consistently.
`You have the following requirements:
`✑ Queue size must not grow larger than 80 gigabytes (GB).
`✑ Use first-in-first-out (FIFO) ordering of messages.
`✑ Minimize Azure costs.
`You need to implement the messaging solution.
`Solution: Use the .Net API to add a message to an Azure Service Bus Queue from the mobile application. 
`Create an Azure Windows VM that is triggered from Azure Service Bus Queue.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

