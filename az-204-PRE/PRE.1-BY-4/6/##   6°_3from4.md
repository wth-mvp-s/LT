
##   6°_3from4


#### 18 Qp25.3Topic4Set4question10_P.34 [most_voted]::You develop a gateway solution for a public facing news API. The news API back end is implemented as a RESTful service and uses an OpenAPI specification.
`You need to ensure that you can access the news API by using an Azure API Management service instance.
`Which Azure PowerShell command should you run?

- [x] Import-AzureRmApiManagementApi -Context $ApiMgmtContext -SpecificationFormat "Swagger" -SpecificationPath $SwaggerPath -Path $Path
- [ ] New-AzureRmApiManagementBackend -Context $ApiMgmtContext-Url $Url -Protocol http
- [ ] New-AzureRmApiManagement -ResourceGroupName $ResourceGroup -Name $Name ג€"Location $Location -Organization $Org -AdminEmail $AdminEmail
- [ ] New-AzureRmApiManagementBackendProxy -Url $ApiUrl


#### 19 Qp25.3Topic4Set4question11 ::You are creating a hazard notification system that has a single signaling server which triggers audio and visual alarms to start and stop.
`You implement Azure Service Bus to publish alarms. Each alarm controller uses Azure Service Bus to receive alarm signals as part of a transaction. Alarm events must be recorded for audit purposes. Each transaction record must include information about the alarm type that was activated.
`You need to implement a reply trail auditing solution.
`Which two actions should you perform? Each correct answer resents part of the solution.

- [x] Assign the value of the hazard message SessionID property to the ReplyToSessionId property.
- [ ] Assign the value of the hazard message MessageId property to the DevileryCount property.
- [ ] Assign the value of the hazard message SessionID property to the SequenceNumber property.
- [x] Assign the value of the hazard message MessageId property to the CorrelationId property.
- [ ] Assign the value of the hazard message SequenceNumber property to the DeliveryCount property.
- [ ] Assign the value of the hazard message MessageId property to the SequenceNumber property.



#### 20 Qp25.3Topic4Set4question12 ::You are developing an Azure function that connects to an Azure SQL Database instance. The function is triggered by an Azure Storage queue.
`You receive reports of numerous System.InvalidOperationExceptions with the following message: ג€Timeout expired. 
`The timeout period elapsed prior to obtaining a connection from the pool. 
`This may have occurred because all pooled connections were in use and max pool size was reached.ג€
`You need to prevent the exception.
`What should you do?

- [x] In the host.json file, decrease the value of the batchSize option
- [ ] Convert the trigger to Azure Event Hub
- [ ] Convert the Azure Function to the Premium plan
- [ ] In the function.json file, change the value of the type option to queueScaling




#### 21 Qp26.3Topic4Set4question13_p35 [100%]::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Deploy and configure Azure Cache for Redis. Update the web applications.
`Does the solution meet the goal?


- [x] Yes
- [ ] No


#### 22::
`You are debugging an application that is running on Azure Kubernetes cluster named cluster1. The cluster uses Azure Monitor for containers to monitor the cluster.
`The application has sticky sessions enabled on the ingress controller.
`Some customers report a large number of errors in the application over the last 24 hours.
`You need to determine on which virtual machines (VMs) the errors are occurring.
`How should you complete the Azure Monitor query?

- [x] 
`let start Timestamp = ago(1d);
`let ContainersIDs = KubePodInventory
`| where ClusterName == "Cluster1"
`| distinct ContainerID; 
`ContrainerLog
`| where ContainerID in (ContainerIDs)
`|where TimeGenerated > startTimestamp
`| where LogEntrySource == "stderr"
`|summarize count() by Computer


- [ ] 
`let start Timestamp = ago(1d);
`let ContainersIDs = KubePodInventory
`| where ClusterName == "Cluster1"
`| distinct ContainerID; 
`ContrainerLog
`| restrict ContainerID in (ContainerIDs)
`|where TimeGenerated > startTimestamp
`| where LogEntrySource == "stderr"
`|summarize count() by Computer



- [ ] 
`let start Timestamp = totimespan(1d);
`let ContainersIDs = KubePodInventory
`| where ClusterName == "Cluster1"
`| sample ContainerID; 
`ContrainerLog
`| restrict ContainerID in (ContainerIDs)
`|where TimeGenerated > startTimestamp
`| where LogEntrySource == "stderr"
`|summarize count() by Computer



- [ ] 
`let start Timestamp = since(1d);
`let ContainersIDs = KubePodInventory
`| where ClusterName == "Cluster1"
`| distinct ContainerID; 
`ContrainerLog
`| where ContainerID in (ContainerIDs)
`|where TimeGenerated > startTimestamp
`| where LogEntrySource == "stderr"
`|summarize count() by Computer


- [ ] 
`let start Timestamp = ago(1d);
`let ContainersIDs = KubePodInventory
`| where ClusterName == "Cluster1"
`| distinct ContainerID; 
`ContrainerLog
`| where ContainerID in (ContainerIDs)
`|where TimeGenerated > startTimestamp
`| where LogEntrySource == "stderr"
`|summarize by Computer



- [ ] 
`let start Timestamp = ago(1d);
`let ContainersIDs = KubePodInventory
`| where ClusterName == "Cluster1"
`| top ContainerID; 
`ContrainerLog
`| fork containerIDs
`|where TimeGenerated > startTimestamp
`| where LogEntrySource == "stderr"
`|project by Computer


#### 23::
`You plan to deploy a web app to App Service on Linux. You create an App Service plan. You create and push a custom Docker image that contains the web app to Azure Container Registry.
`You need to access the console logs generated from inside the container in real-time.
`How should you complete the Azure CLI command?

- [x] 
`az webapp log config --name Contosoweb --resource-group ContosoDevRG
`--docker-container-logging filesystem
`az webapp log tail --name ContosoWeb --resource-group ContosoDevRG



- [ ] 
`az webapp log config --name Contosoweb --resource-group ContosoDevRG
`--docker-container-logging filesystem
`az webapp log download --name ContosoWeb --resource-group ContosoDevRG


- [ ] 
`az webapp log download --name Contosoweb --resource-group ContosoDevRG
`--docker-container-logging filesystem
`az webapp log config --name ContosoWeb --resource-group ContosoDevRG



- [ ] 
`az webapp log tail --name Contosoweb --resource-group ContosoDevRG
`--application-logging filesystem
`az webapp log download --name ContosoWeb --resource-group ContosoDevRG



- [ ] 
`az webapp log config --name Contosoweb --resource-group ContosoDevRG
`--docker-container-logging filesystem
`az arc log download --name ContosoWeb --resource-group ContosoDevRG


- [ ] 
`az webapp log config --name Contosoweb --resource-group ContosoDevRG
`--web-server-logging filesystem
`az webapp log download --name ContosoWeb --resource-group ContosoDevRG

#### 24 Qp26.3Topic4Set4question16_p35 ::You develop and deploy an ASP.NET web app to Azure App Service. You use Application Insights telemetry to monitor the app.
`You must test the app to ensure that the app is available and responsive from various points around the world and at regular intervals. If the app is not responding, you must send an alert to support staff.
`You need to configure a test for the web app.
`Which two test types can you use?



- [ ] integration
- [x] multi-step web
- [x] URL ping
- [ ] unit
- [ ] load


#### 25::
`A web service provides customer summary information for e-commerce partners. The web service is implemented as an Azure Function app with an HTTP trigger.
`Access to the API is provided by an Azure API Management instance. The API Management instance is configured in consumption plan mode. All API calls are authenticated by using OAuth.
`API calls must be cached. Customers must not be able to view cached data for other customers.
`You need to configure API Management policies for caching.
`How should you complete the policy statement?

- [ ]
`<policies>
`    <inbound>
`        <base/>
`        <cache-lookup caching-type="Private" downstream-caching-type = "External">
`        </vary-by-header>
`            Authorization

- [ ]
`<policies>
`    <inbound>
`        <base/>
`        <cache-lookup caching-type="Private" downstream-caching-type = "Internal">
`        </vary-by-header>
`            Authorization

- [x]
`<policies>
`    <inbound>
`        <base/>
`        <cache-lookup caching-type="Internal" downstream-caching-type = "Private">
`        </vary-by-header>
`            Authorization

- [ ]
`<policies>
`    <inbound>
`        <base/>
`        <cache-lookup caching-type="Internal" downstream-caching-type = "Private">
`        </vary-by-header>
`            Expect


- [ ]
`<policies>
`    <inbound>
`        <base/>
`        <cache-lookup caching-type="Expext" downstream-caching-type = "Public">
`        </vary-by-header>
`            Private









