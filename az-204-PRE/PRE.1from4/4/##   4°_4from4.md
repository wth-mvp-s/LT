
##   4°_4from4

#### 00001 [100%] ::You are developing a Java application that uses Cassandra to store key and value data. You plan to use a new Azure Cosmos DB resource and the Cassandra
`API in the application. You create an Azure Active Directory (Azure AD) group named Cosmos DB Creators to enable provisioning of Azure Cosmos accounts, databases, and containers.
`The Azure AD group must not be able to access the keys that are required to access the data.
`You need to restrict access to the Azure AD group.
`Which role-based access control should you use?

- [ ] DocumentDB Accounts Contributor
- [ ] Cosmos Backup Operator
- [x] Cosmos DB Operator
- [ ] Cosmos DB Account Reader

#### 0000.2 [67%] ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution: Configure the Azure Web App for the website to allow only authenticated requests and require Azure AD log on.

- [ ] Yes
- [x] No



#### 0000.3 [100%] ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution:
`✑ Create a new Azure AD application. In the application's manifest, set value of the groupMembershipClaims option to All.
`✑ In the website, use the value of the groups claim from the JWT for the user to determine permissions.
`Does the solution meet the goal?

- [x] Yes
- [ ] No


#### 0000.4 [78%] ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution:
`✑ Create a new Azure AD application. In the application's manifest, define application roles that match the required permission levels for the application.
`✑ Assign the appropriate Azure AD group to each role. In the website, use the value of the roles claim from the JWT for the user to determine permissions.
`Does the solution meet the goal?

- [x] Yes
- [ ] No



#### 0000.5.A [100%] ::You are developing an application to securely transfer data between on-premises file systems and Azure Blob storage. The application stores keys, secrets, and certificates in Azure Key Vault. The application uses the Azure Key Vault APIs.
`The application must allow recovery of an accidental deletion of the key vault or key vault objects. Key vault objects must be retained for 90 days after deletion.
`You need to protect the key vault and key vault objects.
`Which Azure Key Vault feature should you use? 
`
`Enable retention period and accidental deletion. 

- [ ] Access policy
- [ ] Purge protection
- [x] Soft delete
- [ ] Shared access signature


#### 0000.5.B [100%] ::You are developing an application to securely transfer data between on-premises file systems and Azure Blob storage. The application stores keys, secrets, and certificates in Azure Key Vault. The application uses the Azure Key Vault APIs.
`The application must allow recovery of an accidental deletion of the key vault or key vault objects. Key vault objects must be retained for 90 days after deletion.
`You need to protect the key vault and key vault objects.
`Which Azure Key Vault feature should you use? 
`
`Enforce retention period and accidental deletion. 

- [ ] Access policy
- [x] Purge protection
- [ ] Soft delete
- [ ] Shared access signature



#### 0000.6 [60%] ::You provide an Azure API Management managed web service to clients. The back-end web service implements HTTP Strict Transport Security (HSTS).
`Every request to the backend service must include a valid HTTP authorization header.
`You need to configure the Azure API Management instance with an authentication policy.
`Which two policies can you use?

- [x] Basic Authentication
- [ ] Digest Authentication
- [x] Certificate Authentication
- [ ] OAuth Client Credential Grant

#### 0000.7
`You are developing an ASP.NET Core website that can be used to manage photographs which are stored in Azure Blob Storage containers.
`Users of the website authenticate by using their Azure Active Directory (Azure AD) credentials.
`You implement role-based access control (RBAC) role permissions on the containers that store photographs. You assign users to RBAC roles.
`You need to configure the website's Azure AD Application so that user's permissions can be used with the Azure Blob containers.
`How should you configure the application?

- [x]
`API-------------|--Permission-------- -|----Type--
`Azure Storage      user_impersonation      delegated
`Microsoft Graph    User.Road               delegated


- [ ]
`API-------------|--Permission-------- -|----Type--
`Azure Storage      profile                 delegated
`Microsoft Graph    User.Road               delegated


- [ ]
`API-------------|--Permission-------- -|----Type--
`Azure Storage      user_impersonation      profile
`Microsoft Graph    User.Road               delegated


- [ ]
`API-------------|--Permission-------- -|----Type--
`Azure Storage      client_id               application
`Microsoft Graph    User.Road               delegated

#### 0000.8 ::
`You are developing an ASP.NET Core app that includes feature flags which are managed by Azure App Configuration. You create an Azure App Configuration store named AppFeatureFlagStore that contains a feature flag named Export.
`You need to update the app to meet the following requirements:
`✑ Use the Export feature in the app without requiring a restart of the app.
`✑ Validate users before users are allowed access to secure resources.
`✑ Permit users to access secure resources.
`How should you complete the code segment?

- [x] 
`public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
`{
`    if(env.IsDevelopment())
`    {
`        app.UseDeveloperExceptionPage();
`    }
`    else
`    {
`        app.UseExceptionHandler("/Error");
`    }
`    app.UseAuthentication(); 
`    app.UseAuthorization();
`    app.UseStaticFiles()


- [ ] 
`public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
`{
`    if(env.IsDevelopment())
`    {
`        app.UseDeveloperExceptionPage();
`    }
`    else
`    {
`        app.UseExceptionHandler("/Error");
`    }
`    app.UseAuthentication(); 
`    app.UseAuthorization();
`    app.UseAzureAppConfiguration()


- [ ] 
`public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
`{
`    if(env.IsDevelopment())
`    {
`        app.UseDeveloperExceptionPage();
`    }
`    else
`    {
`        app.UseExceptionHandler("/Error");
`    }
`    app.UseStaticFiles(); 
`    app.UseHttpsRedirection();
`    app.UseRequestLocalization()


- [ ] 
`public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
`{
`    if(env.IsDevelopment())
`    {
`        app.UseDeveloperExceptionPage();
`    }
`    else
`    {
`        app.UseExceptionHandler("/Error");
`    }
`    app.UseSession(); 
`    app.UseCookiePolicy();
`    app.UseCors()







#### 0000.9 [81%] ::You have an application that includes an Azure Web app and several Azure Function apps. Application secrets including connection strings and certificates are stored in Azure Key Vault.
`Secrets must not be stored in the application or application runtime environment. Changes to Azure Active Directory (Azure AD) must be minimized.
`You need to design the approach to loading application secrets.
`What should you do?

- [x] Create a single user-assigned Managed Identity with permission to access Key Vault and configure each App Service to use that Managed Identity.
- [ ] Create a single Azure AD Service Principal with permission to access Key Vault and use a client secret from within the App Services to access Key Vault.
- [ ] Create a system assigned Managed Identity in each App Service with permission to access Key Vault.
- [ ] Create an Azure AD Service Principal with Permissions to access Key Vault for each App Service and use a certificate from within the App Services to access Key Vault.


#### 0000.10 [80%]::You are developing a medical records document management website. The website is used to store scanned copies of patient intake forms.
`If the stored intake forms are downloaded from storage by a third party, the contents of the forms must not be compromised.
`You need to store the intake forms according to the requirements.
`Solution:
`1. Create an Azure Key Vault key named skey.
`2. Encrypt the intake forms using the public key portion of skey.
`3. Store the encrypted data in Azure Blob storage.
`Does the solution meet the goal?

- [x] Yes
- [ ] No



#### Qp18.13 [67%]::You are developing a medical records document management website. The website is used to store scanned copies of patient intake forms.
`If the stored intake forms are downloaded from storage by a third party, the contents of the forms must not be compromised.
`You need to store the intake forms according to the requirements.
`Solution:
`1. Create an Azure Cosmos DB database with Storage Service Encryption enabled.
`2. Store the intake forms in the Azure Cosmos DB database.
`Does the solution meet the goal?

- [ ] Yes
- [x] No




