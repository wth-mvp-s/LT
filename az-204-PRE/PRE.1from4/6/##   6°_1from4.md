##   6°_1from4


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

















