##   9°_1from2


#### Q9.1 [ok]::
`Security -
`
`Any web service accessible over the Internet must be protected from cross site scripting attacks.
`All websites and services must use SSL from a valid root certificate authority.
`Azure Storage access keys must only be stored in memory and must be available only to the service.
`All Internal services must only be accessible from internal Virtual Networks (VNets).
`All parts of the system must support inbound and outbound traffic restrictions.
`All service calls must be authenticated by using Azure AD.
`
`Question
`
`You need to ensure that network security policies are met.
`How should you configure network security?

- [x] SSL certificate : Valid root certificate
- [ ] SSL certificate : Self-signed certificate
- [ ] Proxy type : nginx
- [x] Proxy type : Azure Application Gateway


#### Q9.2 :: 
`Question
`
`You need to add YAML markup at line CS17 to ensure that the ContentUploadService can access Azure Storage access keys.
`How should you complete the YAML markup? 

- [x] volumeMounts : 
`    - mountPath: /mnt/secrets
`    name: accesskey
`    volumes : 
`    - name: accesskey
`    secret: 
`    key: TxkgZmlyc3Qgc2VjcmV0IEZPTwo=

- [ ] secretValues : 
`    - mountPath: /mnt/secrets
`    name: accesskey
`    volumes : 
`    - name: accesskey
`    secret: 
`    key: TxkgZmlyc3Qgc2VjcmV0IEZPTwo=



- [ ] volumeMounts : 
`    - mountPath: /mnt/secrets
`    name: accesskey
`    volumes : 
`    - name: accesskey
`    envVar: 
`    key: TxkgZmlyc3Qgc2VjcmV0IEZPTwo=


- [ ] volumeMounts : 
`    - mountPath: /mnt/secrets
`    name: accesskey
`    environmentVariables : 
`    - name: accesskey
`    secret: 
`    key: TxkgZmlyc3Qgc2VjcmV0IEZPTwo=


- [ ] secret : 
`    - mountPath: /mnt/secrets
`    name: accesskey
`    envVar : 
`    - name: accesskey
`    secretValues: 
`    key: TxkgZmlyc3Qgc2VjcmV0IEZPTwo=

#### Q9.3 ::
`Question
`
`You need to add code at line AM10 of the application manifest to ensure that the requirement for manually reviewing content can be met.
`How should you complete the code? 

- [x] 
`    "optionalClaims":[
`        "sid",
`        "email"
`    ]


- [ ] 
`    "optionalClaims":[
`        "acct",
`        "email"
`    ]



- [ ] 
`    "optionalClaims":[
`        "sid",
`        "enfpolids"
`    ]


- [ ] 
`    "optionalClaims":[
`        "platf",
`        "email"
`    ]


- [ ] 
`    "optionalClaims":[
`        "acct",
`        "sid"
`    ]


#### Q9.4 ::
`Shipping Function app -
`Implement secure function endpoints by using app-level security and include Azure Active Directory (Azure AD).
`
`Shipping website -
`Use Azure Content Delivery Network (CDN) and ensure maximum performance for dynamic content while minimizing latency and costs.
`
`Issues -
`
`Shipping website and REST APIs -
`The following error message displays while you are testing the website:
`Failed to load http://test-shippingapi.wideworldimporters.com/: No 'Access-Control-Allow-Origin' header is present on the requested resource. Origin 'http://test.wideworldimporters.com/' is therefore not allowed access.
`
`Question
`
`You need to secure the Shipping Function app.
`How should you configure the app?

- [x] Authorization level : Function
- [ ] Authorization level : Anonymous
- [ ] Authorization level : Admin
- [x] User claims : JSON Web Token (JWT)
- [ ] User claims : Shared Access Signature (SAS) token
- [ ] User claims : API Key
- [ ] Trigger type : blob
- [x] Trigger type : HTTP
- [ ] Trigger type : queue
- [ ] Trigger type : timer



#### Q9.5::
`Shipping Function app -
`Implement secure function endpoints by using app-level security and include Azure Active Directory (Azure AD).
`
`REST APIs -
`The REST API's that support the solution must meet the following requirements:
`Secure resources to the corporate VNet.
Allow deployment to a testing location within Azure while not incurring `additional costs.
`Automatically scale to double capacity during peak shipping times while not causing application downtime.
`Minimize costs when selecting an Azure payment model.
`
`You need to secure the Shipping Logic App.

- [ ] Azure App Service Environment (ASE)
- [x] Integration Service Environment (ISE)
- [ ] VNet service endpoint
- [ ] Azure AD B2B integration

#### Q9.6::
`Question
`
`You need to retrieve the database connection string.
 
- [x]
`REST API Endpoint:
`https:// cpandlkeyvault.vault.azure.net/secrets/PostgreSQLConn/
`Variable type to access Azure Key Vault secret values: Querystring

- [ ]
`REST API Endpoint:
`https:// cpandlkeyvault.vault.azure.net/secrets/PostgreSQLConn/
`Variable type to access Azure Key Vault secret values: Environment


- [ ]
`REST API Endpoint:
`https:// PostgreSQLConn.vault.azure.net/secrets/PostgreSQLConn/
`Variable type to access Azure Key Vault secret values: Querystring


- [ ]
`REST API Endpoint:
`https:// cpandlkeyvault.vault.azure.net/secrets/`80df3e46ffcd4f1cb187f79905e9a1e8/
`Variable type to access Azure Key Vault secret values: Querystring


- [ ]
`REST API Endpoint:
`https:// 80df3e46ffcd4f1cb187f79905e9a1e8.vault.azure.net/secrets/`PostgreSQLConn/
`Variable type to access Azure Key Vault secret values: Querystring



- [ ]
`REST API Endpoint:
`https:// cpandlkeyvault.vault.azure.net/secrets/PostgreSQLConn/
`Variable type to access Azure Key Vault secret values: ViewState

- [ ]
`REST API Endpoint:
`https:// cpandlkeyvault.vault.azure.net/secrets/spandlkeyvault/
`Variable type to access Azure Key Vault secret values: Environment


#### Q9.7
`Issues -
`
`Corporate website -
`While testing the site, the following error message displays:
`CryptographicException: The system cannot find the file specified.
`
`Function app -
`You perform local testing for the RequestUserApproval function. The following error message displays:
`'Timeout value of 00:10:00 exceeded by function: RequestUserApproval'
`The same error message displays when you test the function in an Azure development environment when you run the following Kusto query:
`
`FunctionAppLogs -
`| where FunctionName = = "RequestUserApproval"
`
`Logic app -
`You test the Logic app in a development environment. The following error message displays:
`'400 Bad Request'
`Troubleshooting of the error shows an HttpTrigger action to call the RequestUserApproval function.
`
`Question
`
`You need to correct the corporate website error.
`Which four actions should you recommend be performed in sequence?

- [x] 
`Generate a certificate. 
`Upload the certificate to Azure Vault. 
`Import the certificate to Azure App Service. 
`Add the certificate thumbprint to the WEBSITE_LOAD_CERTIFICATES app setting.

- [ ] 
`Generate a certificate. 
`Update line SC05 of Security.cs to include error handling and then redeploy the code. 
`Import the certificate to Azure App Service. 
`Add the certificate thumbprint to the WEBSITE_LOAD_CERTIFICATES app setting.



- [ ] 
`Generate a certificate. 
`Upload the certificate to Azure Vault. 
`Import the certificate to Azure App Service. 
`Update line SC05 of Security.cs to include error handling and then redeploy the code. 

- [ ] 
`Upload the certificate to Azure Vault. 
`Update line SC05 of Security.cs to include error handling and then redeploy the code. 
`Update line SC03 of Security.cs to include a using statement and then re-deploy the code. 
`Add the certificate thumbprint to the WEBSITE_LOAD_CERTIFICATES app setting.
`Upload the certificate to source control.
`Import the certificate to Azure App Service. 
`Generate a certificate. 

#### Q9.8::
`Issues -
`
`Corporate website -
`While testing the site, the following error message displays:
`CryptographicException: The system cannot find the file specified.
`
`Function app -
`You perform local testing for the RequestUserApproval function. The following error message displays:
`'Timeout value of 00:10:00 exceeded by function: RequestUserApproval'
`The same error message displays when you test the function in an Azure development environment when you run the following Kusto query:
`
`FunctionAppLogs -
`| where FunctionName = = "RequestUserApproval"
`
`Logic app -
`You test the Logic app in a development environment. The following error message displays:
`'400 Bad Request'
`Troubleshooting of the error shows an HttpTrigger action to call the RequestUserApproval function.
`
`Question
`
`You need to configure API Management for authentication.

- [ ] Policy : Check HTTP header
- [ ] Policy : Restrict caller IPs
- [ ] Policy : Limit call rate by key
- [x] Policy : Validate JWT
- [x] Policy section : Inbound
- [ ] Policy section : Outbound



#### Q9.9::
`Architecture diagram -
`
`The company has several applications and services that support their business. The company plans to implement serverless computing where possible. The overall architecture is shown below.
`
`Question
`
`You need to authenticate the user to the corporate website as indicated by the architectural diagram.
`Which two values should you use?

- [x] ID token signature
- [ ] ID token claims
- [ ] HTTP response code
- [x] Azure AD endpoint URI
- [ ] Azure AD tenant ID


#### Q9.10::
`Issues -
`
`Logic app -
`You test the Logic app in a development environment. The following error message displays:
`'400 Bad Request'
`Troubleshooting of the error shows an HttpTrigger action to call the RequestUserApproval function.
`
`Question
`
`You need to correct the Azure Logic app error message.

- [x] authentication level : anonymous
- [ ] authentication level : function
- [ ] authentication level : admin
- [x] managed identity : system-assigned
- [ ] managed identity : user-assigned

#### Q9.11::
`Azure Database for PostgreSQL -
`
`The connection information is updated frequently. The application must always use the latest information to connect to the database.
`Azure Service Bus and Azure Event Grid
`Azure Event Grid must use Azure Service Bus for queue-based load leveling.
`Events in Azure Event Grid must be routed directly to Service Bus queues for use in buffering.
`Events from Azure Service Bus and other Azure services must continue to be routed to Azure Event Grid for processing.
`
`Question
`
`You need to configure Azure Service Bus to Event Grid integration.
`Which Azure Service Bus settings should you use?

- [ ] Tier : Basic
- [ ] Tier : Standard
- [x] Tier : Premium
- [ ] RBAC role : Owner
- [x] RBAC role : Contributor
- [ ] RBAC role : Azure Service Bus Data Owner
- [ ] RBAC role : Azure Service Bus Data Receiver



#### Q9.12::
`Security -
`User's SecurityPin must be stored in such a way that access to the database does not allow the viewing of SecurityPins. The web application is the only system that should have access to SecurityPins.
`All certificates and secrets used to secure data must be stored in Azure Key Vault.
`You must adhere to the principle of least privilege and provide privileges which are essential to perform the intended function.
`All access to Azure Storage and Azure SQL database must use the application's Managed Service Identity (MSI).
`Receipt data must always be encrypted at rest.
`All data must be protected in transit.
`User's expense account number must be visible only to logged in users. All other views of the expense account number should include only the last segment, with the remaining parts obscured.
`In the case of a security breach, access to all summary reports must be revoked without impacting other parts of the system.
`
`Question
`
`You need to add code at line PC26 of Processing.cs to ensure that security policies are met.
`How should you complete the code that you will add at line PC26?

- [x]
`var resolver = new KeyVaultKeyResolver(_keyVaultClient);
`keyBundle = await _keyVaultClient.GetKeyAsync("...","...");
`var key = await resolver.ResolveKeyAsync(keyBundle.KeyIdentifier.Identifier, CancellationToken.None),
`var x = new BlobEncryptionPolicy(key, resolver),
`cloudBlobClient.DefaultRequestOption.Encryption.Policy = x; 

- [ ]
`var resolver = new KeyVaultKeyResolver(_keyVaultClient);
`keyBundle = await _keyVaultClient.GetKeyAsync("...","...");
`var key = await resolver.ResolveKeyAsync(keyBundle.KeyIdentifier.Identifier, CancellationToken.None)
`var x = keyBundle.Managed;
`cloudBlobClient.DefaultRequestOption.Encryption.Policy = x; 

- [ ]
`var resolver = new KeyVaultKeyResolver(_keyVaultClient);
`keyBundle = await _keyVaultClient.GetKeyAsync("...","...");
`var key = await resolver.ResolveKeyAsync(keyBundle.KeyIdentifier.Identifier, CancellationToken.None)
`var x = new DeleteRetentionPolicy(key, resolver),
`cloudBlobClient.DefaultRequestOption.Encryption.Policy = x; 


- [ ]
`var resolver = new KeyVaultKeyResolver(_keyVaultClient);
`keyBundle = await _keyVaultClient.GetKeyAsync("...","...");
`var key = await resolver.ResolveKeyAsync(keyBundle.KeyIdentifier.Identifier, CancellationToken.None)
`var x = new BlobEncryptionPolicy(key, resolver),
`cloudBlobClient.SetServiceProperties(new ServiceProperties(deleteRetentionPolicy:x))


- [ ]
`var resolver = new KeyVaultKeyResolver(_keyVaultClient);
`keyBundle = await _keyVaultClient.GetKeyAsync("...","...");
`var key = await resolver.ResolveKeyAsync("encrypt", null)
`var x = new BlobEncryptionPolicy(key, resolver),
`cloudBlobClient.DefaultRequestOption.Encryption.Policy = x; 

- [ ]
`var resolver = new KeyVaultKeyResolver(_keyVaultClient);
`keyBundle = await _keyVaultClient.GetKeyAsync("...","...");
`var key = keyBundle.KeyIdentifier.Identifier;
`var x = keyBundle.Managed; 
`cloudBlobClient.Authentication.Scheme = x; 



#### Q9.13::
`Security -
`User's SecurityPin must be stored in such a way that access to the database does not allow the viewing of SecurityPins. The web application is the only system that should have access to SecurityPins.
`All certificates and secrets used to secure data must be stored in Azure Key Vault.
`You must adhere to the principle of least privilege and provide privileges which are essential to perform the intended function.
`All access to Azure Storage and Azure SQL database must use the application's Managed Service Identity (MSI).
`Receipt data must always be encrypted at rest.
`All data must be protected in transit.
`User's expense account number must be visible only to logged in users. All other views of the expense account number should include only the last segment, with the remaining parts obscured.
`In the case of a security breach, access to all summary reports must be revoked without impacting other parts of the system.
`
`You need to ensure the security policies are met.
`What code do you add at line CS07 of ConfigureSSE.ps1?

- [ ] ג€"PermissionsToKeys create, encrypt, decrypt
- [ ] ג€"PermissionsToCertificates create, encrypt, decrypt
- [ ] ג€"PermissionsToCertificates wrapkey, unwrapkey, get
- [x] ג€"PermissionsToKeys wrapkey, unwrapkey, get

#### Q9.14::
`Issues -
`
`Retail Store Locations -
You must perform a point-in-time restoration of the retail store location data due to an `unexpected and accidental deletion of data.
Azure Cosmos DB queries from the Azure Function exhibit high Request Unit (RU) usage and contain multiple, complex queries that exhibit high point read latency for large items as the `function app is scaling.
`
`Question
`You need to reduce read latency for the retail store solution.
`What are two possible ways to achieve the goal?

- [ ] Create a new composite index for the store location data queries in Azure Cosmos DB. Modify the queries to support parameterized SQL and update the Azure Function app to call the new queries.
- [x] Provision an Azure Cosmos DB dedicated gateway. Update the Azure Function app connection string to use the new dedicated gateway endpoint.
- [x] Configure Azure Cosmos DB consistency to session consistency. Cache session tokens in a new Azure Redis cache instance after every write. Update reads to use the session token stored in Azure Redis.
- [ ] Provision an Azure Cosmos DB dedicated gateway. Update blob storage to use the new dedicated gateway endpoint.
- [ ] Configure Azure Cosmos DB consistency to strong consistency. Increase the RUs for the container supporting store location data.

#### Q9.15::
`Issues -
`
`Retail Store Locations -
You must perform a point-in-time restoration of the retail store location data due to an `unexpected and accidental deletion of data.
Azure Cosmos DB queries from the Azure Function exhibit high Request Unit (RU) usage and contain multiple, complex queries that exhibit high point read latency for large items as the `function app is scaling.
`
`Question
`
`You need to audit the retail store sales transactions.
`What are two possible ways to achieve the goal?

- [ ] Update the retail store location data upload process to include blob index tags. Create an Azure Function to process the blob index tags and filter by store location.
- [x] Process the change feed logs of the Azure Blob storage account by using an Azure Function. Specify a time range for the change feed data.
- [ ] Enable blob versioning for the storage account. Use an Azure Function to process a list of the blob versions per day.
- [ ] Process an Azure Storage blob inventory report by using an Azure Function. Create rule filters on the blob inventory report.
- [x] Subscribe to blob storage events by using an Azure Function and Azure Event Grid. Filter the events by store location.

#### Q9.16::
`Issues -
`Users of the ContentUploadService report that they occasionally see HTTP 502 responses on specific pages.
`Question
`
`You need to monitor ContentUploadService according to the requirements.
`Which command should you use?

- [ ] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "avg Percentage CPU > 8"
- [ ] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "avg Percentage CPU > 800"
- [x] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "CPU Usage > 800"
- [ ] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "CPU Usage > 8"

#### Q9.17::
`Issues -
`Users of the ContentUploadService report that they occasionally see HTTP 502 responses on specific pages.
`
`Question
`
`You need to investigate the http server log output to resolve the issue with the ContentUploadService.
`Which command should you use first?

- [ ] az webapp log
- [ ] az ams live-output
- [ ] az monitor activity-log
- [x] az container attach



























