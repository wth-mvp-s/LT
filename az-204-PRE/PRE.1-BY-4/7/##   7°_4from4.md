

##   7°_4from4

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

