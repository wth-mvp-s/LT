
##   5°_4from4

#### 0000.35 ::
`You are developing a web application that makes calls to the Microsoft Graph API. You register the application in the Azure portal and upload a valid X509 certificate.
`You create an appsettings.json file containing the certificate name, client identifier for the application, and the tenant identifier of the Azure Active Directory (Azure AD).
`You create a method named ReadCertificate to return the X509 certificate by name.
`You need to implement code that acquires a token by using the certificate.
`How should you complete the code segment?

- [ ] 
`AuthenticationConfig config = AuthenticationConfig.ReadFromJsonFile("appsettings.json");
`X509Certificate2 certificate = ReadCertificate(config.CertificateName);
`var app = ConfidentialClientApplication.Create(config.ClientId)
`.WithCertificate(certificate)
`.WithAuthority(new Uri(config.Authority))
`.Build();
`string[] scopes = new string[] { $"{config.ApiUlrl}.default"};
`AuthenticationResult result = await app.AcquireTokenForClient(app).ExecuteAsync();


- [ ] 
`AuthenticationConfig config = AuthenticationConfig.ReadFromJsonFile("appsettings.json");
`X509Certificate2 certificate = ReadCertificate(config.CertificateName);
`var app = GetAccountsAsync.Create(config.ClientId)
`.WithCertificate(certificate)
`.WithAuthority(new Uri(config.Authority))
`.Build();
`string[] scopes = new string[] { $"{config.ApiUlrl}.default"};
`AuthenticationResult result = await app.AcquireTokenForClient(config).ExecuteAsync();


- [ ] 
`AuthenticationConfig config = AuthenticationConfig.ReadFromJsonFile("appsettings.json");
`X509Certificate2 certificate = ReadCertificate(config.CertificateName);
`var app = GetAccountAsync.Create(config.ClientId)
`.WithCertificate(certificate)
`.WithAuthority(new Uri(config.Authority))
`.Build();
`string[] scopes = new string[] { $"{config.ApiUlrl}.default"};
`AuthenticationResult result = await app.AcquireTokenForClient(scopes).ExecuteAsync();

- [x] 
`AuthenticationConfig config = AuthenticationConfig.ReadFromJsonFile("appsettings.json");
`X509Certificate2 certificate = ReadCertificate(config.CertificateName);
`var app = ConfidentialClientApplicationBuilder.Create(config.ClientId)
`.WithCertificate(certificate)
`.WithAuthority(new Uri(config.Authority))
`.Build();
`string[] scopes = new string[] { $"{config.ApiUlrl}.default"};
`AuthenticationResult result = await app.AcquireTokenForClient(scopes).ExecuteAsync();

- [ ] 
`AuthenticationConfig config = AuthenticationConfig.ReadFromJsonFile("appsettings.json");
`X509Certificate2 certificate = ReadCertificate(config.CertificateName);
`var app = ConfidentialClientApplicationBuilder.Create(config.ClientId)
`.WithCertificate(certificate)
`.WithAuthority(new Uri(config.Authority))
`.Build();
`string[] scopes = new string[] { $"{config.ApiUlrl}.default"};
`AuthenticationResult result = await app.AcquireTokenForClient(app).ExecuteAsync();



#### 0000.36 ::
`You develop a containerized application. You plan to deploy the application to a new Azure Container instance by using a third-party continuous integration and continuous delivery (CI/CD) utility.
The deployment must be unattended and include all application assets. The third-party utility must only be able to push and pull images from the registry. The authentication must be managed by Azure Active Directory (Azure AD). 
`The solution must use the principle of least privilege.
`You need to ensure that the third-party utility can access the registry.
`Which authentication options should you use?

- [x] Registry authentication method : Service principal
- [ ] Registry authentication method : Individual identity
- [ ] Registry authentication method : Repository-scoped access token
- [ ] Registry authentication method : Managed identity for Azure resources
- [ ] RBAC role : ArcPull
- [ ] RBAC role : Owner
- [x] RBAC role : ArcPush
- [ ] RBAC role : Contributor

#### 0000.37 ::
`You deploy an Azure App Service web app. You create an app registration for the app in Azure Active Directory (Azure AD) and Twitter.
`The app must authenticate users and must use SSL for all communications. The app must use Twitter as the identity provider.
`You need to validate the Azure AD request in the app code.
`What should you validate?

- [x] ID token header
- [ ] ID token signature
- [ ] HTTP response code
- [ ] Tenant ID

#### 0000.38 ::
`A development team is creating a new REST API. The API will store data in Azure Blob storage. You plan to deploy the API to Azure App Service.
`Developers must access the Azure Blob storage account to develop the API for the next two months. The Azure Blob storage account must not be accessible by the developers after the two-month time period.
`You need to grant developers access to the Azure Blob storage account.
`What should you do?

- [x] Generate a shared access signature (SAS) for the Azure Blob storage account and provide the SAS to all developers. 
- [ ] Create and apply a new lifecycle management policy to include a last accessed date value. Apply the policy to the Azure Blob storage account.
- [ ] Provide all developers with the access key for the Azure Blob storage account. Update the API to include the Coordinated Universal Time (UTC) timestamp for the request header.
- [ ] Grant all developers access to the Azure Blob storage account by assigning role-based access control (RBAC) roles.

#### 0000.39 ::
`You develop a web application.
`You need to register the application with an active Azure Active Directory (Azure AD) tenant.
`Which three actions should you perform in sequence?

- [x] 
`Select the Azure AD instance. 
`
`In App Registrations, select New registration. 
`
`Create a new applicationand provide the name, account type, and redirect URI.


- [ ] 
`Select the Azure AD instance. 
`
`Create a new applicationand provide the name, account type, and redirect URI.
`
`In App Registrations, select New registration. 


- [ ] 
`Select the Azure AD instance. 
`
`In Enterprise Applications, select New application.
`
`Create a new applicationand provide the name, account type, and redirect URI.


- [ ] 
`In App Registrations, select New registration. 
`
`Select the Azure AD instance. 
`
`Create a new applicationand provide the name, account type, and redirect URI.


- [ ] 
`Select Manifest from the middle-tier service registration.
`
`In Enterprise Applications, select New application.
`
`Add a Cryptographic key.

- [ ] 
`Create a new applicationand provide the name, account type, and redirect URI.
`
`Select the Azure AD instance. 
`
`Use an access token to access the secure resource. 
`
`In App Registrations, select New registration. 


#### 0000.40 [100%]::You have a new Azure subscription. You are developing an internal website for employees to view sensitive data. The website uses Azure Active Directory (Azure AD) for authentication.
`You need to implement multifactor authentication for the website.
`Which two actions should you perform? Each correct answer presents part of the solution.

- [ ] Configure the website to use Azure AD B2C.
- [x] In Azure AD, create a new conditional access policy.
- [x] Upgrade to Azure AD Premium.
- [ ] In Azure AD, enable application proxy.
- [ ] In Azure AD conditional access, enable the baseline policy.

#### 0000.41 A::
`An organization plans to deploy Azure storage services.
`You need to configure shared access signature (SAS) for granting access to Azure Storage.
`
`Delegate access to resources in one or more of the storage services

- [x] Account-level
- [ ] Service-level
- [ ] User delegation

#### 0000.41 B::
`An organization plans to deploy Azure storage services.
`You need to configure shared access signature (SAS) for granting access to Azure Storage.
`
`Delegate access to resource in a single storage service

- [ ] Account-level
- [x] Service-level
- [ ] User delegation

#### 0000.41 C::
`An organization plans to deploy Azure storage services.
`You need to configure shared access signature (SAS) for granting access to Azure Storage.
`
`Secure a resource by using Azure AD credentials

- [ ] Account-level
- [ ] Service-level
- [x] User delegation