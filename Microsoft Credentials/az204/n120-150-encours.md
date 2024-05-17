##   n120-150


































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









#### Qp32.3Topic5Set5question18::You are working for Contoso, Ltd.
`You define an API Policy object by using the following XML markup:
`
`
[comment] not finisched


- [ ] Yes
- [x] No






