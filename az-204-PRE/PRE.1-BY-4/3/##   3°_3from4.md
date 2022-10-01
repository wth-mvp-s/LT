
##   3°_3from4

#### 18.A::
`AcquireLeaseAsync(null)
`06:var dst = container.GetBlockBlobReference(src.Name)
`
`finally{
`    await src.BreakLeaseAsync(new Timespan(0))
`
`The code creates an infinite lease

- [x] Yes
- [ ] No
#### 18.B::
`AcquireLeaseAsync(null)
`06:var dst = container.GetBlockBlobReference(src.Name)
`
`finally{
`    await src.BreakLeaseAsync(new Timespan(0))
`
`The code at line 06 always creates a new blob

- [ ] Yes
- [x] No

#### 18.C::
`AcquireLeaseAsync(null)
`06:var dst = container.GetBlockBlobReference(src.Name)
`
`finally{
`    await src.BreakLeaseAsync(new Timespan(0))
`
`The finally block releases the lease

- [x] Yes
- [ ] No

#### 19  Q4700 ::You are building a website that uses Azure Blob storage for data storage. You configure Azure Blob storage lifecycle to move all blobs to the archive tier after 30 days.
`Customers have requested a service-level agreement (SLA) for viewing data older than 30 days.
`You need to document the minimum SLA for data recovery.
`Which SLA should you use?


- [ ] at least two days
- [x] between one and 15 hours
- [ ] at least one day
- [ ] between zero and 60 minutes

#### 20  ::
`You are developing a ticket reservation system for an airline.
`The storage solution for the application must meet the following requirements:
`✑ Ensure at least 99.99% availability and provide low latency.
`✑ Accept reservations even when localized network outages or other unforeseen failures occur.
`✑ Process reservations in the exact sequence as reservations are submitted to minimize overbooking or selling the same seat to multiple travelers.
`✑ Allow simultaneous and out-of-order reservations with a maximum five-second tolerance window.
`You provision a resource group named airlineResourceGroup in the Azure South-Central US region.
`You need to provision a SQL API Cosmos DB account to support the app.
`How should you complete the Azure CLI commands?

- [x]
`resourceGroupName='airlineResourceGroup'
`name='docdb-airline-reservations'
`database='docdb-tickets-database'
`collectionName='docdb-tickets-collection'
`consistencyLevel=BoundedStaleness
`az cosmodb create \
`--name $name \
`--enable-automatic-failover true \
`--resource-group $resourceGroupName \
`--max-interval 5 \ 
`--location 'southcentralus=0 eastus=1 westus=2'
`--default-consistency-level = $consistencylevel


- [ ]
`resourceGroupName='airlineResourceGroup'
`name='docdb-airline-reservations'
`database='docdb-tickets-database'
`collectionName='docdb-tickets-collection'
`consistencyLevel=Eventual
`az cosmodb create \
`--name $name \
`--kind 'GlobalDocumentDB' \
`--resource-group $resourceGroupName \
`--max-interval 5 \ 
`--location 'eastus'
`--default-consistency-level = $consistencylevel



- [ ]
`resourceGroupName='airlineResourceGroup'
`name='docdb-airline-reservations'
`database='docdb-tickets-database'
`collectionName='docdb-tickets-collection'
`consistencyLevel=BoundedStaleness
`az cosmodb create \
`--name $name \
`--enable-virtual-network true \
`--resource-group $resourceGroupName \
`--max-interval 5 \ 
`--location 'southcentralus=0 eastus=1 westus=2'
`--default-consistency-level = $consistencylevel

- [ ]
`resourceGroupName='airlineResourceGroup'
`name='docdb-airline-reservations'
`database='docdb-tickets-database'
`collectionName='docdb-tickets-collection'
`consistencyLevel=BoundedStaleness
`az cosmodb create \
`--name $name \
`--enable-automatic-failover true \
`--resource-group $resourceGroupName \
`--max-interval 5 \ 
`--location 'southcentralus=0'
`--default-consistency-level = $consistencylevel
 
- [ ]
`resourceGroupName='airlineResourceGroup'
`name='docdb-airline-reservations'
`database='docdb-tickets-database'
`collectionName='docdb-tickets-collection'
`consistencyLevel=Strong
`az cosmodb create \
`--name $name \
`--enable-automatic-failover true \
`--resource-group $resourceGroupName \
`--max-interval 5 \ 
`--location 'southcentralus=0 eastus=1 westus=2'
`--default-consistency-level = $consistencylevel



#### 21  ::
`You are preparing to deploy a Python website to an Azure Web App using a container. The solution will use multiple containers in the same container group. The
`Dockerfile that builds the container is as follows:
`
`FROM python:3
`ADD website.py
`CMD ["python","./website.py"]
`
`You build a container by using the following command. The Azure Container Registry instance named images is a private registry.
`
`docker build -t images.azurecr.io/website
`
`The user name and password for the registry is admin.
`The Web App must always run the same version of the website regardless of future builds.
`You need to create an Azure Web App to run the website.
`How should you complete the commands?

- [ ]
`az configure --defaults web=website
`az configure --defaults group=website
`az appservice plan create --name websitePlan --skuB1 --is-linux
`az webapp create --plan websitePlan --deployment-source-url images.azurecr.io/website:v1.0.0
`az webapp config container set --docker-registry-server-url https://images.azurecr.io --u admin --p admin


- [x]
`az configure --defaults web=website
`az configure --defaults group=website
`az appservice plan create --name websitePlan --skuB1 --is-linux
`az webapp create --plan websitePlan --deployment-container-image-name images.azurecr.io/website:v1.0.0
`az webapp config container set --docker-registry-server-url https://images.azurecr.io --u admin --p admin


- [ ]
`az configure --defaults web=website
`az configure --defaults group=website
`az appservice plan create --name websitePlan --skuB1 --is-linux
`az webapp create --plan websitePlan --deployment-container-image-name images.azurecr.io/website:v1.0.0
`az webapp config container set --docker-registry-server-url https://images.azurecr.io/website --u admin --p admin


- [ ]
`az configure --defaults web=website
`az configure --defaults group=website
`az appservice plan create --name websitePlan --skuB1 --hyper-v
`az webapp create --plan websitePlan --deployment-container-image-name images.azurecr.io/website:v1.0.0
`az webapp config container set --docker-registry-server-url https://images.azurecr.io --u admin --p admin

- [ ]
`az configure --defaults web=website
`az configure --defaults group=website
`az appservice plan create --name websitePlan --skuB1 --is-linux
`az webapp create --plan websitePlan --deployment-source-url images.azurecr.io/website:latest
`az webapp config container set --docker-registry-server-url https://images.azurecr.io --u admin --p admin


- [ ]
`az configure --defaults web=website
`az configure --defaults group=website
`az appservice plan create --name websitePlan --skuB1 --is-linux
`az webapp create --plan websitePlan --deployment-source-url images.azurecr.io/website:v1.0.0
`az webapp config container set --docker-registry-server-url https://images.azurecr.io/website --u admin --p admin

- [ ]
`az configure --defaults web=website
`az configure --defaults group=website
`az appservice plan create --name websitePlan --skuB1 --hyper-v
`az webapp create --plan websitePlan --deployment-source-url images.azurecr.io/website:v1.0.0
`az webapp config container set --docker-registry-server-url https://images.azurecr.io --u admin --p admin

#### 22  ::
`You are developing a back-end Azure App Service that scales based on the number of messages contained in a Service Bus queue.
`A rule already exists to scale up the App Service when the average queue length of unprocessed and valid queue messages is greater than 1000.
`You need to add a new rule that will continuously scale down the App Service as long as the scale up condition is not met.
`How should you configure the Scale rule?

- [ ] Metric source : Storage queue
- [x] Metric source : Service Bus queue
- [ ] Metric source : Current resource
- [ ] Metric source : Storage queue (classic)
- [ ] Metric name : Message Count
- [x] Metric name : Active Message Count
- [ ] Time grain statistic : Total
- [ ] Time grain statistic : Maximum
- [x] Time grain statistic : Average
- [ ] Time grain statistic : Count

#### 23  ::
`You have an application that uses Azure Blob storage.
`You need to update the metadata of the blobs.
`Which three methods should you use to develop the solution?

- [ ]
`Metadata.Add
`SetMetadataAsync
`SetPropertiesAsync

- [x]
`FetchAttributesAsync
`Metadata.Add
`SetMetadataAsync

- [ ]
`FetchAttributesAsync
`Metadata.Add
`SetPropertiesAsync

- [ ]
`FetchAttributesAsync
`SetMetadataAsync
`UploadFileStream


- [ ]
`Metadata.Add
`SetMetadataAsync
`FetchAttributesAsync
`UploadFileStream
`SetPropertiesAsync


