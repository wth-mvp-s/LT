
##   7°_3from4


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


