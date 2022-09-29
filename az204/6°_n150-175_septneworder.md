##   6°_all1234


#### 001 ::
`You are developing an ASP.NET Core app that includes feature flags which are managed by Azure App Configuration. You create an Azure App Configuration store named AppFeatureflagStore as shown in the exhibit:
`---Key----|-Label--|-State-|-Description-|-Last Modified
`----------|--------|-------------------------------------
` Export---|-Export-| Off---| Ability to export data |- 6/11/2020,9:13:26 
`
`You must be able to use the feature in the app by using the following markup:
`
`You need to update the app to use the feature flag.
`Which values should you use?

- [x] Controller attribute : FeatureGate
- [ ] Controller attribute : Route
- [ ] Controller attribute : ServiceFilter
- [ ] Controller attribute : TypeFilter
- [x] Startup method : AddAzureAppConfiguration
- [ ] Startup method : AddControllersWithViews
- [ ] Startup method : AddUserSecrets
- [x] AppConfig endpoint setting : https://appfeatureflagstore.azconfig.io
- [ ] AppConfig endpoint setting : https://appfeatureflagstore.vault.azure.io
- [ ] AppConfig endpoint setting : https://export.azconfig.io
- [ ] AppConfig endpoint setting : https://export.vault.azure.net

#### 002 ::
`You have a single page application (SPA) web application that manages information based on data returned by Microsoft Graph from another company's Azure Active Directory (Azure AD) instance.
`Users must be able to authenticate and access Microsoft Graph by using their own company's Azure AD instance.
`You need to configure the application manifest for the app registration.
`How should you complete the manifest?

- [ ] 
`"oauth2AllowImplicitFlow": true, 
`"availableToOtherTenants": [{
`    "resourceAppId": "00000003-0000-0000-c000-000000000000", 
`    "resourceAccess": [{
`        "id": "24a6cdd6-fab1-4aaf-91b8-3cc8225e90d0"
`        "type": "Scope"
`    }]}],
`    "signInAudience":"AzureADMyOrg"




- [ ] 
`"oauth2AllowImplicitFlow": true, 
`"orgRestrictions": [{
`    "resourceAppId": "00000003-0000-0000-c000-000000000000", 
`    "resourceAccess": [{
`        "id": "24a6cdd6-fab1-4aaf-91b8-3cc8225e90d0"
`        "type": "Scope"
`    }]}],
`    "signInAudience":"AzureADMultipleOrgs"


- [x] 
`"oauth2AllowImplicitFlow": true, 
`"requiredResourceAccess": [{
`    "resourceAppId": "00000003-0000-0000-c000-000000000000", 
`    "resourceAccess": [{
`        "id": "24a6cdd6-fab1-4aaf-91b8-3cc8225e90d0"
`        "type": "Scope"
`    }]}],
`    "signInAudience":"AzureADMultipleOrgs"



- [ ] 
`"oauth2AllowImplicitFlow": add, 
`"addIns": [{
`    "resourceAppId": "00000003-0000-0000-c000-000000000000", 
`    "resourceAccess": [{
`        "id": "24a6cdd6-fab1-4aaf-91b8-3cc8225e90d0"
`        "type": "Scope"
`    }]}],
`    "signInAudience":"All"

#### 3. 0044_new ::You manage a data processing application that receives requests from an Azure Storage queue.
`You need to manage access to the queue. You have the following requirements:
`✑ Provide other applications access to the Azure queue.
`✑ Ensure that you can revoke access to the queue without having to regenerate the storage account keys.
`✑ Specify access at the queue level and not at the storage account level.
`Which type of shared access signature (SAS) should you use?

- [x] Service SAS with a stored access policy    
- [ ] Account SAS    
- [ ] User Delegation SAS    
- [ ] Service SAS with ad hoc SAS    

#### 4. 0045_new [unsertain]::
`You are developing an application to store and retrieve data in Azure Blob storage. The application will be hosted in an on-premises virtual machine (VM). The
`VM is connected to Azure by using a Site-to-Site VPN gateway connection. The application is secured by using Azure Active Directory (Azure AD) credentials.
The application must be granted access to the Azure Blob storage account with a start time, expiry time, and read permissions. The Azure Blob storage account access must use the Azure AD `credentials of the application to secure data access. Data access must be able to be revoked if the client application security is breached.
`You need to secure the application access to Azure Blob storage.
`Which security features should you use?

- [ ] Application (Client) : Storage Account Access Key
- [ ] Application (Client) : System-assigned Managed Identity
- [x] Application (Client) : Shared access signature (SAS) token 
- [ ] Azure Storage (Server) : Stored Access Policy
- [ ] Azure Storage (Server) : User-assigned Managed Identity
- [x] Azure Storage (Server) : Cross-Origin Resource Sharing (CORS)



#### 5 0046_new [1]::You are building a web application that uses the Microsoft identity platform for user authentication.
`You are implementing user identification for the web application.
`You need to retrieve a claim to uniquely identify a user.
`Which claim type should you use?

- [ ] aud
- [ ] nonce
- [x] oid
- [ ] idp

#### 6 0047_new [1]::You are developing an Azure Function that calls external APIs by providing an access token for the API. The access token is stored in a secret named token in an Azure Key Vault named mykeyvault.
`You need to ensure the Azure Function can access to the token. Which value should you store in the Azure Function App configuration?

- [ ] KeyVault:mykeyvault;Secret:token
- [ ] App:Settings:Secret:mykeyvault:token
- [ ] AZUREKVCONNSTR_ https://mykeyveult.vault.ezure.net/secrets/token/
- [x] @Microsoft.KeyVault(SecretUri=https://mykeyvault.vault.azure.net/secrets/token/)



#### 7 0048_new [4voters]::A company maintains multiple web and mobile applications. Each application uses custom in-house identity providers as well as social identity providers.
`You need to implement single sign-on (SSO) for all the applications.
`What should you do?

- [x] Use Azure Active Directory B2C (Azure AD B2C) with custom policies.
- [ ] Use Azure Active Directory B2B (Azure AD B2B) and enable external collaboration.
- [ ] Use Azure Active Directory B2C (Azure AD B2C) with user flows.
- [ ] Use Azure Active Directory B2B (Azure AD B2B).


#### 8 0049_new [1]::You develop a Python application for image rendering that uses GPU resources to optimize rendering processes. You deploy the application to an Azure
`Container Instances (ACI) Linux container.
`The application requires a secret value to be passed when the container is started. The value must only be accessed from within the container.
`You need to pass the secret value.
`What are two possible ways to achieve this goal?

- [x] Create an environment variable Set the secureValue property to the secret value.
- [ ] Add the secret value to the container image. Use a managed identity.
- [ ] Add the secret value to the application code Set the container startup command.
- [ ] Add the secret value to an Azure Blob storage account. Generate a SAS token.
- [x] Mount a secret volume containing the secret value in a secrets file.



#### 9 0050_new [1]::You are developing a user portal for a company.
`You need to create a report for the portal that lists information about employees who are subject matter experts for a specific topic. 
`You must ensure that administrators have full control and consent over the data.
`Which technology should you use?

- [x] Microsoft Graph data connect
- [ ] Microsoft Graph API
- [ ] Microsoft Graph connectors

#### 10 ::
`You are a developer building a web site using a web app. The web site stores configuration data in Azure App Configuration.
`Access to Azure App Configuration has been configured to use the identity of the web app for authentication. Security requirements specify that no other authentication systems must be used.
`You need to load configuration data from Azure App Configuration.
`How should you complete the code?

- [ ] 
`Host .CreateDefaultBuilder(args)
`.ConfigureWebHostDefaults(wb =>
`{
`    wb.ConfigureAppConfiguration((hc, config) => 
`    {
`        var settings = config.Build(); 
`        config.ChainedTokenCredential (Options => 
`        options.Connect(new Uri(settings["AppConfig:Endpoint"]),
`        new DefaultAzureCredential()));
 
- [x] 
`Host .CreateDefaultBuilder(args)
`.ConfigureWebHostDefaults(wb =>
`{
`    wb.ConfigureAppConfiguration((hc, config) => 
`    {
`        var settings = config.Build(); 
`        config.AddAzureAppConfiguration (Options => 
`        options.Connect(new Uri(settings["AppConfig:Endpoint"]),
`        new ManagedIdentityCredential()));


- [ ] 
`Host .CreateDefaultBuilder(args)
`.ConfigureWebHostDefaults(wb =>
`{
`    wb.ConfigureAppConfiguration((hc, config) => 
`    {
`        var settings = config.Build(); 
`        config.DefaultAzureCredential (Options => 
`        options.Connect(new Uri(settings["AppConfig:Endpoint"]),
`        new AddAzureAppConfiguration()));
 
- [ ] 
`Host .CreateDefaultBuilder(args)
`.ConfigureWebHostDefaults(wb =>
`{
`    wb.ConfigureAppConfiguration((hc, config) => 
`    {
`        var settings = config.Build(); 
`        config.ManagedIdentityCredential (Options => 
`        options.Connect(new Uri(settings["AppConfig:Endpoint"]),
`        new ManagedIdentityCredential()));
        
- [ ] 
`Host .CreateDefaultBuilder(args)
`.ConfigureWebHostDefaults(wb =>
`{
`    wb.ConfigureAppConfiguration((hc, config) => 
`    {
`        var settings = config.Build(); 
`        config.AddAzureKeyVault (Options => 
`        options.Connect(new Uri(settings["AppConfig:Endpoint"]),
`        new DefaultAzureCredential()));


#### 0000.11 ::
`You are building an application that stores sensitive customer data in Azure Blob storage. The data must be encrypted with a key that is unique for each customer.
`If the encryption key has been corrupted it must not be used for encryption.
`You need to ensure that the blob is encrypted.
`How should you complete the code segment?

- [x] 
`Uri blobUri = ...; TokenCredential c =  ...
`byte[] key = ...; string verify = ...
`var x = new CustomerProvidedKey(key); 
`if(x.Encryption == verify){
`    var o = new BlobClientOptions(){
`        CustomerProvidedKey = x
`    };
`    var blobClient = new BlobClient(blobUri, c, o)


- [ ] 
`Uri blobUri = ...; TokenCredential c =  ...
`byte[] key = ...; string verify = ...
`var x = new CustomerProvidedKey(key); 
`if(x.Encryption == verify){
`    var o = new BlobClientOptions(){
`        Transport = x
`    };
`    var blobClient = new BlobClient(blobUri, c, o)


- [ ] 
`Uri blobUri = ...; TokenCredential c =  ...
`byte[] key = ...; string verify = ...
`var x = new BlobContainerEncryptionScopeOptiopns{DefaultEncryptionScope = key}; 
`if(x.RawData == verify){
`    var o = new BlobClientOptions(){
`        CustomerProvidedKey = x
`    };
`    var blobClient = new BlobClient(blobUri, c, o)


- [ ] 
`Uri blobUri = ...; TokenCredential c =  ...
`byte[] key = ...; string verify = ...
`var x = new CustomerProvidedKey(key); 
`if(x.RawData == verify){
`    var o = new BlobClientOptions(){
`        CustomerProvidedKey = x
`    };
`    var blobClient = new BlobClient(blobUri, c, o)

- [ ] 
`Uri blobUri = ...; TokenCredential c =  ...
`byte[] key = ...; string verify = ...
`var x = new AesManaged(key); 
`if(x.IV == verify){
`    var o = new BlobClientOptions(){
`        version = x
`    };
`    var blobClient = new BlobClient(blobUri, c, o)



#### 0000.12 ::
`You develop a web app that uses the tier D1 app service plan by using the Web Apps feature of Microsoft Azure App Service.
`Spikes in traffic have caused increases in page load times.
`You need to ensure that the web app automatically scales when CPU load is about 85 percent and minimize costs.
`Which four actions should you perform in sequence? 

- [x] 
`Configure the web app to the Standard App Service tier. 
`Enable autoscalling on the web app. 
`Add a Scale rule. 
`Configure a Scale condition.


- [ ] 
`Configure the web app to the Standard App Service tier. 
`Add a Scale rule. 
`Enable autoscalling on the web app. 
`Configure a Scale condition.

- [ ] 
`Configure the web app to the Standard App Service tier. 
`Add a Scale rule. 
`Switch to an Azure App Services consumtion plan. 
`Configure a Scale condition.


- [ ] 
`Configure the web app to the Standard App Service tier. 
`Enable autoscalling on the web app. 
`Add a Scale rule. 
`Switch to an Azure App Services consumtion plan. 


- [ ] 
`Configure the web app to the Premium App Service tier. 
`Configure the web app to the Standard App Service tier. 
`Enable autoscalling on the web app. 
`Add a Scale rule. 



#### 0000.13 [11] ::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Enable Application Request Routing (ARR).
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 0000.14 [most_voted]::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Deploy and configure an Azure Database for PostgreSQL. Update the web applications.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

#### 0000.15::
`A company is developing a gaming platform. Users can join teams to play online and see leaderboards that include player statistics. The solution includes an entity named Team.
`You plan to implement an Azure Redis Cache instance to improve the efficiency of data operations for entities that rarely change.
`You need to invalidate the cache when team data is changed.
`How should you complete the code?

- [ ] 
`void ClearCachedTeams()
`{
`    IDatabase cache = Connection.GetDatabase();
`    cache.ValueDelete("Team");
`    ViewBag.msg +="Team data removed from cache."
 

- [ ] 
`void ClearCachedTeams()
`{
`    ICache cache = Connection.GetDatabase();
`    cache.StringSet("Team","");
`    ViewBag.msg +="Team data removed from cache."
    

- [x] 
`void ClearCachedTeams()
`{
`    IDatabase cache = Connection.GetDatabase();
`    cache.KeyDelete("Team");
`    ViewBag.msg +="Team data removed from cache."
    
- [ ] 
`void ClearCachedTeams()
`{
`    ICache cache = Connection.GetDatabase();
`    cache.KeyDelete("Team");
`    ViewBag.msg +="Team data removed from cache."

- [ ] 
`void ClearCachedTeams()
`{
`    IDatabase cache = Connection.GetDatabase();
`    cache.ValueDelete("Team");
`    ViewBag.msg +="Team data removed from cache."



- [ ] 
`void ClearCachedTeams()
`{
`    IDatabase cache = Connection.GetDatabase();
`    cache.StringSet("Team","");
`    ViewBag.msg +="Team data removed from cache."
    




#### 0000.16::
`A company has multiple warehouses. Each warehouse contains IoT temperature devices which deliver temperature data to an Azure Service Bus queue.
`You need to send email alerts to facility supervisors immediately if the temperature at a warehouse goes above or below specified threshold temperatures.
`Which five actions should you perform in sequence?

- [x]
`Create a blank Logic app. 
`Add a logic app Trigger that fires when one or more messages arrive in the queue. 
`Add an action that reads IoT temperature data from the Service Bus queue. 
`Add a condition that compares the temperature against the upper and lower thresholds. 
`Add an action that sends an email to specified personnel if the temperature is outside of those thresholds.


- [ ]
`Create a blank Logic app. 
`Add a logic app Trigger that fires when one or more messages arrive in the queue. 
`Add an action that reads IoT temperature data from the Service Bus queue. 
`Add a condition that compares the temperature against the upper and lower thresholds. 
`Add a Resource trigger that schedules the app to run every 15 minutes. 


- [ ]
`Create a blank Logic app. 
`Add a trigger that reads IoT temperature data from a Service Bus queue. 
`Add an action that reads IoT temperature data from the Service Bus queue. 
`Add a condition that compares the temperature against the upper and lower thresholds. 
`Add an action that sends an email to specified personnel if the temperature is outside of those thresholds.

- [ ]
`Create a blank Logic app. 
`Add an action that reads IoT temperature data from the Service Bus queue. 
`Add a logic app Trigger that fires when one or more messages arrive in the queue. 
`Add a condition that compares the temperature against the upper and lower thresholds. 
`Add an action that sends an email to specified personnel if the temperature is outside of those thresholds.

- [ ]
`Add a logic app Trigger that fires when one or more messages arrive in the queue. 
`Add a Resource trigger that schedules the app to run every 15 minutes. 
`Add an action that sends an email to specified personnel if the temperature is outside of those thresholds.
`Add a trigger that reads IoT temperature data from a Service Bus queue. 
`Add a logic app action that fires when one or more messages arrive in the queue. 


#### 17 Qp25.3Topic4Set4question9.A_p34 [rechecked]::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` Which pages visited by users most often correlate to a product purchase?

- [ ] Users
- [x] Funnels
- [ ] Impact
- [ ] Retention
- [ ] User Flows



#### Qp25.3Topic4Set4question9.B [rechecked]::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` How does load time of the product display page affect a user's decision to purchase a product?

- [ ] Users
- [ ] Funnels
- [x] Impact
- [ ] Retention
- [ ] User Flows

#### Qp25.3Topic4Set4question9.C [rechecked]::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` Which events most influence a user's decision to continue to use the application? 

- [ ] Users
- [ ] Funnels
- [ ] Impact
- [x] Retention
- [ ] User Flows


#### Qp25.3Topic4Set4question9.D [rechecked]::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` Are there places in the application that users often perform repetitive actions? 

- [ ] Users
- [ ] Funnels
- [ ] Impact
- [ ] Retention
- [x] User Flows

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

#### 26 Qp27.3Topic4Set4question18_p36 [most_voted]::You are developing applications for a company. You plan to host the applications on Azure App Services.
`The company has the following requirements:
`✑ Every five minutes verify that the websites are responsive.
`✑ Verify that the websites respond within a specified time threshold. Dependent requests such as images and JavaScript files must load properly.
`✑ Generate alerts if a website is experiencing issues.
`✑ If a website fails to load, the system must attempt to reload the site three more times.
`You need to implement this process with the least amount of effort.
`What should you do?



- [ ] Create a Selenium web test and configure it to run from your workstation as a scheduled task.
- [x] Set up a URL ping test to query the home page.
- [ ] Create an Azure function to query the home page.
- [ ] Create a multi-step web test to query the home page.
- [ ] Create a Custom Track Availability Test to query the home page.



#### Qp27.3Topic4Set4question19_p.36 [most_voted]::You develop and add several functions to an Azure Function app that uses the latest runtime host. The functions contain several REST API endpoints secured by using SSL. The Azure Function app runs in a Consumption plan.
`You must send an alert when any of the function endpoints are unavailable or responding too slowly.
`You need to monitor the availability and responsiveness of the functions.
`What should you do?



- [ ] Create a URL ping test.
- [x] Create a timer triggered function that calls TrackAvailability() and send the results to Application Insights.
- [ ] Create a timer triggered function that calls GetMetric("Request Size") and send the results to Application Insights.
- [ ] Add a new diagnostic setting to the Azure Function app. Enable the FunctionAppLogs and Send to Log Analytics options.

#### 28::
`You are developing an application to retrieve user profile information. The application will use the Microsoft Graph SDK.
`The app must retrieve user profile information by using a Microsoft Graph API call.
`You need to call the Microsoft Graph API from the application.
`In which order should you perform the actions?

- [x]
`Register the application with the Microsoft identity platform. 
`Build a client by using the client app ID. 
`Create an authentication provider. 
`Create a new instance of the GraphServiceClient. 
`Invoke the request to the Microsoft Graph API. 


- [ ]
`Register the application with the Microsoft identity platform. 
`Invoke the request to the Microsoft Graph API. 
`Create an authentication provider. 
`Create a new instance of the GraphServiceClient. 
`Build a client by using the client app ID. 


- [ ]
`Build a client by using the client app ID. 
`Create an authentication provider. 
`Create a new instance of the GraphServiceClient. 
`Register the application with the Microsoft identity platform. 
`Invoke the request to the Microsoft Graph API. 

- [ ]
`Register the application with the Microsoft identity platform. 
`Build a client by using the client app ID. 
`Create a new instance of the GraphServiceClient. 
`Create an authentication provider. 
`Invoke the request to the Microsoft Graph API. 


- [ ]
`Create an authentication provider. 
`Create a new instance of the GraphServiceClient. 
`Invoke the request to the Microsoft Graph API. 
`Register the application with the Microsoft identity platform. 
`Build a client by using the client app ID. 




#### 29::
`You develop and deploy an Azure Logic App that calls an Azure Function app. The Azure Function App includes an OpenAPI (Swagger) definition and uses an
`Azure Blob storage account. All resources are secured by using Azure Active Directory (Azure AD).
`The Logic App must use Azure Monitor logs to record and store information about runtime data and events. The logs must be stored in the Azure Blob storage account.
`You need to set up Azure Monitor logs and collect diagnostics data for the Azure Logic App.
`Which three actions should you perform in sequence?

- [x]
`Create a Log Analytics workspace.
`Install the Logic Apps Management solution. 
`Add a diagnostic setting to the Azure Logic App.


- [ ]
`Create a Log Analytics workspace. 
`Install the Logic Apps Management solution. 
`Add a diagram setting to the Azure Function App. 



- [ ]
`Create a Log Analytics workspace. 
`Add a diagram setting to the Azure Function App. 
`Install the Logic Apps Management solution. 


- [ ]
`Create action groups and alert rules. 
`Install the Logic Apps Management solution. 
`Add a diagram setting to the Azure Function App. 


- [ ]
`Create an Azure storage account. 
`Add a diagram setting to the Azure Function App. 
`Install the Logic Apps Management solution. 


- [ ]
`Create action groups and alert rules. 
`Create a Log Analytics workspace. 
`Install the Logic Apps Management solution. 

- [ ]
`Add a diagram setting to the Azure Function App. 
`Create an Azure storage account. 
`Add a diagnostic setting to the Azure Logic App. 


#### 30::
`You develop an application. You plan to host the application on a set of virtual machines (VMs) in Azure.
`You need to configure Azure Monitor to collect logs from the application.
`Which four actions should you perform in sequence?


- [x]
`Create a Log Analytics workspace.
`Add a VMInsights solution. 
`Install agents on the VM and VM scale set to be monitored. 
`Create an Application Insight resource. 

- [ ]
`Create a Log Analytics workspace.
`Add a VMInsights solution. 
`Install agents on the VM and VM scale set to be monitored. 
`Create a Log Analytics workspace.


- [ ]
`Add a VMInsights solution. 
`Create a Log Analytics workspace.
`Install agents on the VM and VM scale set to be monitored. 
`Create an Application Insight resource. 



- [ ]
`Create a Log Analytics workspace.
`Add a VMInsights solution. 
`Send console logs. 
`Install agents on the VM and VM scale set to be monitored. 



- [ ]
`Create a Log Analytics workspace.
`Install agents on the VM and VM scale set to be monitored. 
`Add a VMInsights solution. 
`Create an Application Insight resource. 


- [ ]
`Create a Log Analytics workspace.
`Install agents on the VM and VM scale set to be monitored. 
`Send console logs. 
`Add a VMInsights solution. 

