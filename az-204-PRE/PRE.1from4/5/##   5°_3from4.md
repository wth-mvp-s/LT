
##   5°_3from4

#### Qp22.28.3 [50%]::Contoso, Ltd. provides an API to customers by using Azure API Management (APIM). The API authorizes users with a JWT token.
`You must implement response caching for the APIM gateway. The caching mechanism must detect the user ID of the client that accesses data for a given location and cache the response for that user ID.
`You need to add the following policies to the policies file:
`✑ a set-variable policy to store the detected user identity
`✑ a cache-lookup-value policy
`✑ a cache-store-value policy
`✑ a find-and-replace policy to update the response body with the user profile information
`To which policy section should you add the policies? To answer, drag the appropriate sections to the correct policies. Each section may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Cache-store-value

- [x] Inbound
- [ ] Outbond



#### Qp22.28.4 [100%]::Contoso, Ltd. provides an API to customers by using Azure API Management (APIM). The API authorizes users with a JWT token.
`You must implement response caching for the APIM gateway. The caching mechanism must detect the user ID of the client that accesses data for a given location and cache the response for that user ID.
`You need to add the following policies to the policies file:
`✑ a set-variable policy to store the detected user identity
`✑ a cache-lookup-value policy
`✑ a cache-store-value policy
`✑ a find-and-replace policy to update the response body with the user profile information
`To which policy section should you add the policies? To answer, drag the appropriate sections to the correct policies. Each section may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Find-and-replace

- [ ] Inbound
- [x] Outbond

#### 0000.27 ::
`You are developing an Azure solution.
`You need to develop code to access a secret stored in Azure Key Vault.
`How should you complete the code segment? To answer, drag the appropriate code segments to the correct location.

- [x]
`string var1 = Environment.GetEnvironmentVariable("KEY_VAULT_URI")
`var var2 = new SecretClient (new Uri(var1), new DefaultAzureCredential());

- [ ]
`string var1 = Environment.GetEnvironmentVariable("KEY_VAULT_URI")
`var var2 = new CloudClient (new Uri(var1), new DefaultAzureCredential());

- [ ]
`string var1 = Environment.GetEnvironmentVariable("KEY_VAULT_URI")
`var var2 = new SecretClient (new Uri(var1), new ClientSecretCredential());

- [ ]
`string var1 = Environment.GetEnvironmentVariable("KEY_VAULT_URI")
`var var2 = new CloudClient (new Uri(var1), new ClientSecretCredential());


#### 0000.28 [100%]::You are developing an Azure App Service REST API.
`The API must be called by an Azure App Service web app. The API must retrieve and update user profile information stored in Azure Active Directory (Azure AD).
`You need to configure the API to make the updates.
`Which two tools should you use? Each correct answer presents part of the solution.


- [x] Microsoft Graph API
- [x] Microsoft Authentication Library (MSAL)
- [ ] Azure API Management
- [ ] Microsoft Azure Security Center
- [ ] Microsoft Azure Key Vault SDK


#### 0000.29 [100%]::You develop a REST API. You implement a user delegation SAS token to communicate with Azure Blob storage.
`The token is compromised.
`You need to revoke the token.
`What are two possible ways to achieve this goal?


- [x] Revoke the delegation keys
- [ ] Delete the stored access policy.
- [ ] Regenerate the account key.
- [x] Remove the role assignment for the security principle.

#### 0000.30::
`You are developing an Azure-hosted application that must use an on-premises hardware security module (HSM) key.
`The key must be transferred to your existing Azure Key Vault by using the Bring Your Own Key (BYOK) process.
`You need to securely transfer the key to Azure Key Vault.
`Which four actions should you perform in sequence?

- [x] 
`Generate a Key Exchange Key (KEK). 
`Retrive the Key Exchange Key (KEK) public key. 
`Generate a key transfer blob file by using the HSM vendor-provided tool. 
`Run the az keyvault key import command. 

- [ ] 
`Retrive the Key Exchange Key (KEK) public key. 
`Create a custom policy definition in Azure Policy. 
`Generate a key transfer blob file by using the HSM vendor-provided tool. 
`Run the az keyvault key import command. 

- [ ] 
`Generate a Key Exchange Key (KEK). 
`Retrive the Key Exchange Key (KEK) public key. 
`Create a custom policy definition in Azure Policy. 
`Run the az keyvault key restore command. 



- [ ] 
`Generate a key transfer blob file by using the HSM vendor-provided tool. 
`Retrive the Key Exchange Key (KEK) public key. 
`Generate a Key Exchange Key (KEK). 
`Run the az keyvault key import command. 


- [ ] 
`Generate a key transfer blob file by using the HSM vendor-provided tool. 
`Generate a Key Exchange Key (KEK). 
`Create a custom policy definition in Azure Policy. 
`Run the az keyvault key import command. 
`Run the az keyvault key restore command. 
`Retrive the Key Exchange Key (KEK) public key. 



#### 0000.31::
`You develop and deploy an Azure Logic app that calls an Azure Function app. The Azure Function app includes an OpenAPI (Swagger) definition and uses an
`Azure Blob storage account. All resources are secured by using Azure Active Directory (Azure AD).
`The Azure Logic app must securely access the Azure Blob storage account. Azure AD resources must remain if the Azure Logic app is deleted.
`You need to secure the Azure Logic app.
`What should you do?


- [x] Create a user-assigned managed identity and assign role-based access controls.
- [ ] Create an Azure AD custom role and assign the role to the Azure Blob storage account.
- [ ] Create an Azure Key Vault and issue a client certificate.
- [ ] Create a system-assigned managed identity and issue a client certificate.
- [ ] Create an Azure AD custom role and assign role-based access controls.

#### 0000.32 A::
`You are developing an application that uses a premium block blob storage account. You are optimizing costs by automating Azure Blob Storage access tiers.
`You apply the following policy rules to the storage account. You must determine the implications of applying the rules to the data.
`
`blockblob
`prefixMatch: "container1/salesorders", "container2/inventory"
`tierToCool : daysAfterModificationGreaterThan : 60
`tierToArchive : daysAfterModificationGreaterThan : 120
`
`"enableAutoTierToHotFromCool": true
`"daysAfterLastAccessTimeGreaterThan": 30
`
`"delete": "daysAfterModificationGreaterThan": 730
`
`Block blobs prefixed with container1/saleorders or container2/inventory
`which have not been modified in over 60 days are moved to cool storage. 
`Blobs that have not been modified in 120 days are moved to the archive tier. 


- [x] Yes
- [ ] No

#### 0000.32 B::
`You are developing an application that uses a premium block blob storage account. You are optimizing costs by automating Azure Blob Storage access tiers.
`You apply the following policy rules to the storage account. You must determine the implications of applying the rules to the data.
`
`blockblob
`prefixMatch: "container1/salesorders", "container2/inventory"
`tierToCool : daysAfterModificationGreaterThan : 60
`tierToArchive : daysAfterModificationGreaterThan : 120
`
`"enableAutoTierToHotFromCool": true
`"daysAfterLastAccessTimeGreaterThan": 30
`
`"delete": "daysAfterModificationGreaterThan": 730
`
`Blobs are moved to cool storage if they have not been accessed for 30 days. 


- [x] Yes
- [ ] No

#### 0000.32 C::
`You are developing an application that uses a premium block blob storage account. You are optimizing costs by automating Azure Blob Storage access tiers.
`You apply the following policy rules to the storage account. You must determine the implications of applying the rules to the data.
`
`blockblob
`prefixMatch: "container1/salesorders", "container2/inventory"
`tierToCool : daysAfterModificationGreaterThan : 60
`tierToArchive : daysAfterModificationGreaterThan : 120
`
`"enableAutoTierToHotFromCool": true
`"daysAfterLastAccessTimeGreaterThan": 30
`
`"delete": "daysAfterModificationGreaterThan": 730
`
`Block will automatically be tiered from cool back to hot if accessed again after being tiered to cool. 


- [x] Yes
- [ ] No

#### 0000.32 D::
`You are developing an application that uses a premium block blob storage account. You are optimizing costs by automating Azure Blob Storage access tiers.
`You apply the following policy rules to the storage account. You must determine the implications of applying the rules to the data.
`
`blockblob
`prefixMatch: "container1/salesorders", "container2/inventory"
`tierToCool : daysAfterModificationGreaterThan : 60
`tierToArchive : daysAfterModificationGreaterThan : 120
`
`"enableAutoTierToHotFromCool": true
`"daysAfterLastAccessTimeGreaterThan": 30
`
`"delete": "daysAfterModificationGreaterThan": 730
`
`All block blobs older than 730 days will be deleted. 


- [ ] Yes
- [x] No


#### 0000.33 ::
`You are developing a solution that will use a multi-partitioned Azure Cosmos DB database. You plan to use the latest Azure Cosmos DB SDK for development.
`The solution must meet the following requirements:
`✑ Send insert and update operations to an Azure Blob storage account.
`✑ Process changes to all partitions immediately.
`✑ Allow parallelization of change processing.
`You need to process the Azure Cosmos DB operations.
`What are two possible ways to achieve this goal?

- [ ] Create an Azure App Service API and implement the change feed estimator of the SDK. Scale the API by using multiple Azure App Service instances.
- [ ] Create a background job in an Azure Kubernetes Service and implement the change feed feature of the SDK.
- [x] Create an Azure Function to use a trigger for Azure Cosmos DB. Configure the trigger to connect to the container.
- [x] Create an Azure Function that uses a FeedIterator object that processes the change feed by using the pull model on the container. Use a FeedRange object to parallelize the processing of the change feed across multiple functions.

#### 0000.34 A::
`You have an Azure Web app that uses Cosmos DB as a data store. You create a CosmosDB container by running the following PowerShell script:
`
`You create the following queries that target the container:
`SELECT * FROM c WHERE c.EmployeeId > '12345'
`SELECT * FROM c WHERE c.UserID = '12345'
`
`$autoscaleMaxThroughput = 5000
`
`The minimum throughput for the container is 400 R/Us.

- [ ] Yes
- [x] No

#### 0000.34 B::
`You have an Azure Web app that uses Cosmos DB as a data store. You create a CosmosDB container by running the following PowerShell script:
`
`You create the following queries that target the container:
`SELECT * FROM c WHERE c.EmployeeId > '12345'
`SELECT * FROM c WHERE c.UserID = '12345'
`
`$autoscaleMaxThroughput = 5000
`
`The first query statement is an in-partition query. 

- [ ] Yes
- [x] No

#### 0000.34 C::
`You have an Azure Web app that uses Cosmos DB as a data store. You create a CosmosDB container by running the following PowerShell script:
`
`You create the following queries that target the container:
`SELECT * FROM c WHERE c.EmployeeId > '12345'
`SELECT * FROM c WHERE c.UserID = '12345'
`
`$autoscaleMaxThroughput = 5000
`
`The second query statement is a cross-partition query. 

- [x] Yes
- [ ] No





















