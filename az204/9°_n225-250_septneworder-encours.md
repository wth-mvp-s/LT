##   9°_n225-250_septneworder-encours


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

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>23.05...24.09.2022
#### Q9.13

- [ ] ג€"PermissionsToKeys create, encrypt, decrypt
- [ ] ג€"PermissionsToCertificates create, encrypt, decrypt
- [ ] ג€"PermissionsToCertificates wrapkey, unwrapkey, get
- [ ] ג€"PermissionsToKeys wrapkey, unwrapkey, get

#### Q9.14

- [ ] Create a new composite index for the store location data queries in Azure Cosmos DB. Modify the queries to support parameterized SQL and update the Azure Function app to call the new queries.
- [ ] Provision an Azure Cosmos DB dedicated gateway. Update the Azure Function app connection string to use the new dedicated gateway endpoint.
- [ ] Configure Azure Cosmos DB consistency to session consistency. Cache session tokens in a new Azure Redis cache instance after every write. Update reads to use the session token stored in Azure Redis.
- [ ] Provision an Azure Cosmos DB dedicated gateway. Update blob storage to use the new dedicated gateway endpoint.
- [ ] Configure Azure Cosmos DB consistency to strong consistency. Increase the RUs for the container supporting store location data.

#### Q9.15

- [ ] Update the retail store location data upload process to include blob index tags. Create an Azure Function to process the blob index tags and filter by store location.
- [ ] Process the change feed logs of the Azure Blob storage account by using an Azure Function. Specify a time range for the change feed data.
- [ ] Enable blob versioning for the storage account. Use an Azure Function to process a list of the blob versions per day.
- [ ] Process an Azure Storage blob inventory report by using an Azure Function. Create rule filters on the blob inventory report.
- [ ] Subscribe to blob storage events by using an Azure Function and Azure Event Grid. Filter the events by store location.

#### Q9.16

- [ ] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "avg Percentage CPU > 8"
- [ ] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "avg Percentage CPU > 800"
- [ ] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "CPU Usage > 800"
- [ ] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "CPU Usage > 8"

#### Q9.17

- [ ] az webapp log
- [ ] az ams live-output
- [ ] az monitor activity-log
- [ ] az container attach

#### Q9.18

- [ ] Connect Live Metrics Stream from Application Insights to the Azure Function app and filter the metrics.
- [ ] Create a new Azure Log Analytics workspace and instrument the Azure Function app with Application Insights.
- [ ] Update the Azure Function app with extension methods from Microsoft.Extensions.Logging to log events by using the log instance.
- [ ] Add a new diagnostic setting to the Azure Function app to send logs to Log Analytics.


#### Q9.20

- [ ] Update line RA13 to use the async keyword and return an HttpRequest object value.
- [ ] Configure the Function app to use an App Service hosting plan. Enable the Always On setting of the hosting plan.
- [ ] Update the function to be stateful by using Durable Functions to process the request payload.
- [ ] Update the functionTimeout property of the host.json project file to 15 minutes.

#### Q9.22

- [ ] an Application Insights dependency
- [ ] an Application Insights event
- [ ] an Application Insights trace
- [ ] an Application Insights metric


#### Q9.25

- [ ] Use blob properties to prevent concurrency problems
- [ ] Use blob SnapshotTime to prevent concurrency problems
- [ ] Use blob metadata to prevent concurrency problems
- [ ] Use blob leases to prevent concurrency problems



#### Q9.26

- [ ] Convert the trigger on the Azure Function to an Azure Blob storage trigger
- [ ] Ensure that the consumption plan is configured correctly to allow scaling
- [ ] Move the Azure Function to a dedicated App Service Plan
- [ ] Update the loop starting on line PC09 to process items in parallel

#### Q9.27

- [ ] Create an Application Insights Telemetry Filter
- [ ] Change the minimum log level in the host.json file for the function
- [ ] Implement Application Insights Sampling
- [ ] Set a LogCategoryFilter during startup

#### Q9.29

- [ ] Review the API connections.
- [ ] Review the activity log.
- [ ] Review the run history.
- [ ] Review the trigger history.

