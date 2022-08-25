##   n120-150


































#### Qp30.3Topic5Set5question8.C ::You manage several existing Logic Apps.
`You need to change definitions, add new logic, and optimize these apps on a regular basis.
`What should you use? To answer, drag the appropriate tools to the correct functionalities. Each tool may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Visually add functionality

- [ ] Logic Apps Designer
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




#### Qp30.3Topic5Set5question10.A ::You are developing an application that uses Azure Storage Queues.
`You have the following code:
`
`CloudStorageAccount storageAccount = CloudStorageAccount.Parse
`(CloudConfigurationManager.GetSetting("StorageConnectionString"));
`CloudQueueClient queueClient = storageAccount.CreateCloudQueueClient();
`
`CloudQueue queue = queueClient.GetQueueReference("appqueue");
`await queue.CreateIfNotExistsAsync();
`
`CloudQueueMessage peekedMessage = await queue.PeekMessageAsync();
`if (peekedMessage !=null)
`{
`    Console.WriteLine("The peeked message is: {0}", peekedMessage.AsString);
`}
`CloudQueueMessage message = await queue.GetMessageAsync();
`
`The code configures the lock duration for the queue


- [ ] Yes
- [ ] No


#### Qp30.3Topic5Set5question10.B ::You are developing an application that uses Azure Storage Queues.
`You have the following code:
`
`CloudStorageAccount storageAccount = CloudStorageAccount.Parse
`(CloudConfigurationManager.GetSetting("StorageConnectionString"));
`CloudQueueClient queueClient = storageAccount.CreateCloudQueueClient();
`
`CloudQueue queue = queueClient.GetQueueReference("appqueue");
`await queue.CreateIfNotExistsAsync();
`
`CloudQueueMessage peekedMessage = await queue.PeekMessageAsync();
`if (peekedMessage !=null)
`{
`    Console.WriteLine("The peeked message is: {0}", peekedMessage.AsString);
`}
`CloudQueueMessage message = await queue.GetMessageAsync();
`
`The last message read remains in the queue after the code runs.


- [ ] Yes
- [ ] No


#### Qp30.3Topic5Set5question10.C ::You are developing an application that uses Azure Storage Queues.
`You have the following code:
`
`CloudStorageAccount storageAccount = CloudStorageAccount.Parse
`(CloudConfigurationManager.GetSetting("StorageConnectionString"));
`CloudQueueClient queueClient = storageAccount.CreateCloudQueueClient();
`
`CloudQueue queue = queueClient.GetQueueReference("appqueue");
`await queue.CreateIfNotExistsAsync();
`
`CloudQueueMessage peekedMessage = await queue.PeekMessageAsync();
`if (peekedMessage !=null)
`{
`    Console.WriteLine("The peeked message is: {0}", peekedMessage.AsString);
`}
`CloudQueueMessage message = await queue.GetMessageAsync();
`
`The storage queue remains in the storage account after the code runs.


- [ ] Yes
- [ ] No



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



#### Qp30.3Topic5Set5question12::You are developing an Azure Service application that processes queue data when it receives a message from a mobile application. Messages may not be sent to the service consistently.
`You have the following requirements:
`✑ Queue size must not grow larger than 80 gigabytes (GB).
`✑ Use first-in-first-out (FIFO) ordering of messages.
`✑ Minimize Azure costs.
`You need to implement the messaging solution.
Solution: Use the .Net API to add a message to an Azure Storage Queue from the mobile application. Create an Azure Function App that uses an `Azure Storage
`Queue trigger.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Qp31.3Topic5Set5question15::You are developing an Azure messaging solution.
`You need to ensure that the solution meets the following requirements:
`✑ Provide transactional support.
`✑ Provide duplicate detection.
`✑ Store the messages for an unlimited period of time.
`Which two technologies will meet the requirements? Each correct answer presents a complete solution.

- [ ] Azure Service Bus Topic
- [x] Azure Service Bus Queue
- [x] Azure Storage Queue
- [x] Azure Event Hub



#### Qp32.3Topic5Set5question16.A::You need to configure back-end authentication for the API Management service instance.
`Which target and gateway credential type should you use? To answer, drag the appropriate values to the correct parameters. Each value may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Configuration parameter: Target

- [ ] Azure Ressource
- [x] HTTP(s) endpoint
- [x] Basic
- [x] Client cert

#### Qp32.3Topic5Set5question16.B::You need to configure back-end authentication for the API Management service instance.
`Which target and gateway credential type should you use? To answer, drag the appropriate values to the correct parameters. Each value may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Configuration parameter: Getaway credentials

- [ ] Azure Ressource
- [x] HTTP(s) endpoint
- [x] Basic
- [x] Client cert


#### Qp32.3Topic5Set5question17.A::You are creating an app that uses Event Grid to connect with other services. Your app's event data will be sent to a serverless function that checks compliance.
`This function is maintained by your company.
`You write a new event subscription at the scope of your resource. The event must be invalidated after a specific period of time.
`You need to configure Event Grid.
`
`WebHook event delivery

- [ ] SAS tokens
- [x] Key authentication
- [x] Management Access Control


#### Qp32.3Topic5Set5question17.B::You are creating an app that uses Event Grid to connect with other services. Your app's event data will be sent to a serverless function that checks compliance.
`This function is maintained by your company.
`You write a new event subscription at the scope of your resource. The event must be invalidated after a specific period of time.
`You need to configure Event Grid.
`
`Topic publishing

- [ ] ValidationCode handshake
- [x] ValidationURL handshake
- [x] JWT token


#### Qp32.3Topic5Set5question18::You are working for Contoso, Ltd.
`You define an API Policy object by using the following XML markup:
`
`



- [ ] Yes
- [x] No