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



[//] started 18.08.2022 Expires Sep 15, 2022:)
[//] 30 out of 46, reste 16, zrobic 3 dziennie 
[//] 25VIII2022 -done:p30