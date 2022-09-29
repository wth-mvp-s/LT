##   5°_all1234



#### 0000.12 [100%] ::You are developing a medical records document management website. The website is used to store scanned copies of patient intake forms.
`If the stored intake forms are downloaded from storage by a third party, the contents of the forms must not be compromised.
`You need to store the intake forms according to the requirements.
`Solution: Store the intake forms as Azure Key Vault secrets.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### 0000.13 [] ::
`You plan to deploy a new application to a Linux virtual machine (VM) that is hosted in Azure.
`The entire VM must be secured at rest by using industry-standard encryption technology to address organizational security and compliance requirements.
`You need to configure Azure Disk Encryption for the VM.
`How should you complete the Azure CLI commands?

- [x]
`az provider register -n Microsoft.KeyVault
`resourcegroup="myResourceGroup"
`az group create --name $resourcegroup --location westus
`keyvault_name=myvaultname$RANDOM
`az keyvault create / 
`    --name $keyvault_name \
`    --resource-group $resourcegroup \
`    --location eastus \
`    --enable-for-disk-encryption True
`az keyvault key create \
`    --vault-name $keyvault_name \
`    --name Name1 \
`    --protection software
`az vm create \
`    --resource-group $resourcegroup \
`    --name Name2
`    --image Canonical:UbuntuServer:16.04-LTS:latest \
`    --admin-Username azureuser \
`    --generate-ssh-keys \
`    --data-disk-sizes-gb 5
`az vm encryption enable\
`    --resource-group $resourcegroup \
`    --name Name2 \
`    --disk-encryption-keyvault $keyvault_name \
`    --key-encryption-key Name1 \
`    --volume-type all

- [ ]
`az provider register -n Microsoft.KeyVault
`resourcegroup="myResourceGroup"
`az group create --name $resourcegroup --location westus
`keyvault_name=myvaultname$RANDOM
`az keyvault create / 
`    --name $keyvault_name \
`    --resource-group $resourcegroup \
`    --location eastus \
`    --enable-for-disk-encryption True
`az keyvault key create \
`    --vault-name $keyvault_name \
`    --name Name1 \
`    --protection software
`az vm create \
`    --resource-group $resourcegroup \
`    --name Name2
`    --image Canonical:UbuntuServer:16.04-LTS:latest \
`    --admin-Username azureuser \
`    --generate-ssh-keys \
`    --data-disk-sizes-gb 5
`az vm encryption enable\
`    --resource-group $resourcegroup \
`    --name Name2 \
`    --disk-encryption-keyvault $keyvault_name \
`    --key-encryption-key Name1 \
`    --volume-type data

- [ ]
`az provider register -n Microsoft.KeyVault
`resourcegroup="myResourceGroup"
`az group create --name $resourcegroup --location westus
`keyvault_name=myvaultname$RANDOM
`az keyvault create / 
`    --name $keyvault_name \
`    --resource-group $resourcegroup \
`    --location eastus \
`    --enable-for-disk-encryption True
`az keyvault key create \
`    --vault-name $keyvault_name \
`    --name Name1 \
`    --protection software
`az vm create \
`    --resource-group $resourcegroup \
`    --name Name2
`    --image Canonical:UbuntuServer:16.04-LTS:latest \
`    --admin-Username azureuser \
`    --generate-ssh-keys \
`    --data-disk-sizes-gb 5
`az vm encryption enable\
`    --resource-group $resourcegroup \
`    --name Name2 \
`    --disk-encryption-keyvault $keyvault_name \
`    --key-encryption-key Name1 \
`    --volume-type os

- [ ]
`az provider register -n Microsoft.KeyVault
`resourcegroup="myResourceGroup"
`az group create --name $resourcegroup --location westus
`keyvault_name=myvaultname$RANDOM
`az keyvault key create / 
`    --name $keyvault_name \
`    --resource-group $resourcegroup \
`    --location eastus \
`    --enable-for-disk-encryption True
`az keyvault create \
`    --vault-name $keyvault_name \
`    --name Name1 \
`    --protection software
`az vm encryption create \
`    --resource-group $resourcegroup \
`    --name Name2
`    --image Canonical:UbuntuServer:16.04-LTS:latest \
`    --admin-Username azureuser \
`    --generate-ssh-keys \
`    --data-disk-sizes-gb 5
`az vm enable\
`    --resource-group $resourcegroup \
`    --name Name2 \
`    --disk-encryption-keyvault $keyvault_name \
`    --key-encryption-key Name1 \
`    --volume-type all

#### 0000.14 [100%]::Your company is developing an Azure API hosted in Azure.
`You need to implement authentication for the Azure API to access other Azure resources. You have the following requirements:
`✑ All API calls must be authenticated.
`
`✑ Callers to the API must not send credentials to the API.
`Which authentication mechanism should you use?

- [ ] Basic
- [ ] Anonymous
- [x] Managed identity
- [ ] Client certificate

#### 0000.15 ::
`You are developing an application. You have an Azure user account that has access to two subscriptions.
`You need to retrieve a storage account key secret from Azure Key Vault.
`In which order should you arrange the PowerShell commands to develop the solution?

- [x] 
`Get-AzSubscription
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct
`
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue
`
`Get-AzKeyVaultSecret -VaultName
`$valueName

- [ ] 
`Get-AzSubscription
`
`Get-AzKeyVaultSecret -VaultName
`$valueName
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct
`
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue



- [ ] 
`Get-AzSubscription
`
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue
`
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzKeyVaultSecret -VaultName
`$valueName

- [ ] 
`Get-AzKeyVaultSecret -VaultName
`$valueName
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzSubscription
`
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue
`
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct

- [ ] 
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzSubscription
`
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue
`
`Get-AzKeyVaultSecret -VaultName
`$valueName



- [ ] 
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue
`
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzKeyVaultSecret -VaultName
`$valueName
`
`Get-AzSubscription



#### 0000.16 [100%]::You develop Azure solutions.
`You must grant a virtual machine (VM) access to specific resource groups in Azure Resource Manager.
`You need to obtain an Azure Resource Manager access token.
`Solution: Use an X.509 certificate to authenticate the VM with Azure Resource Manager.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 0000.17 [100%]::You develop Azure solutions.
`You must grant a virtual machine (VM) access to specific resource groups in Azure Resource Manager.
`You need to obtain an Azure Resource Manager access token.
`Solution: Use the Reader role-based access control (RBAC) role to authenticate the VM with Azure Resource Manager.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### 0000.18::
`You are building a website that is used to review restaurants. The website will use an Azure CDN to improve performance and add functionality to requests.
`You build and deploy a mobile app for Apple iPhones. Whenever a user accesses the website from an iPhone, the user must be redirected to the app store.
`You need to implement an Azure CDN rule that ensures that iPhone users are redirected to the app store.
`How should you complete the Azure Resource Manager template?


- [x] 
`IsDevice
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRulelsDeviceConditionParameters"
`"matchValues": Mobile
`RequestHeader
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRuleRequestHeaderConditionParameters"
`"selector": "HTTP_USER_AGENT"
`"matchValues": ["iPhone"]

- [ ] 
`IsDevice
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRulelsDeviceConditionParameters"
`"matchValues": Mobile
`RequestHeader
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRuleRequestHeaderConditionParameters"
`"selector": "X-POWERED-BY"
`"matchValues": ["iPhone"]

- [ ] 
`IsDevice
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRulelsDeviceConditionParameters"
`"matchValues": iOS
`RequestHeader
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRuleRequestHeaderConditionParameters"
`"selector": "HTTP_USER_AGENT"
`"matchValues": ["iOS"]


- [ ] 
`IsDevice
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRulelsDeviceConditionParameters"
`"matchValues": iOS
`RequestHeader
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRulelsDeviceConditionParameters"
`"selector": "FROM"
`"matchValues": ["Desktop"]

- [ ] 
`IsDevice
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRulelsDeviceConditionParameters"
`"matchValues": Mobile
`RequestHeader
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRulelsDeviceConditionParameters"
`"selector": "HTTP_USER_AGENT"
`"matchValues": ["Desktop"]

- [ ] 
`IsDevice
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRuleCookiesConditionParameters"
`"matchValues": iPhone
`RequestHeader
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRuleRequestHeaderConditionParameters"
`"selector": "FROM"
`"matchValues": ["iOS"]

- [ ] 
`IsDevice
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRulePostArgsConditionParameters"
`"matchValues": Desktop
`RequestHeader
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRuleCookiesConditionParameters"
`"selector": "PRAGMA"
`"matchValues": ["iPhone"]


- [ ] 
`IsDevice
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRuleRequestHeaderConditionParameters"
`"matchValues": iOS
`RequestHeader
`"@odata.type": "#Microsoft.Azure.Cdn.Models.DeliveryRuleCookiesConditionParameters"
`"selector": "X-POWERED-BY"
`"matchValues": ["Mobile"]


#### 0000.19 ::You develop Azure solutions.
`You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution:
`✑ Configure and use Integrated Windows Authentication in the website.
`✑ In the website, query Microsoft Graph API to load the groups to which the user is a member.
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 0000.20 [83%]::You develop Azure solutions.
`You must grant a virtual machine (VM) access to specific resource groups in Azure Resource Manager.
`You need to obtain an Azure Resource Manager access token.
`Solution: Run the Invoke-RestMethod cmdlet to make a request to the local managed identity for Azure resources endpoint.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

#### 0000.21 ::
`You are building a website to access project data related to teams within your organization. The website does not allow anonymous access. Authentication is performed using an Azure Active Directory (Azure AD) app named internal.
`The website has the following authentication requirements:
`✑ Azure AD users must be able to login to the website.
`✑ Personalization of the website must be based on membership in Active Directory groups.
`You need to configure the application's manifest to meet the authentication requirements.
`How should you configure the manifest?

- [ ] 
`    "appId":"d61126e3-089b-4adb-b721-d5023213df7d"
`    "displayName": "internal",
`    "optionalClaims": "All",
`    "allowPublicClient": true 
- [ ] 
`    "appId":"d61126e3-089b-4adb-b721-d5023213df7d"
`    "displayName": "internal",
`    "groupMembershipClaims": "All",
`    "oauth2Permissions": true 
- [x] 
`    "appId":"d61126e3-089b-4adb-b721-d5023213df7d"
`    "displayName": "internal",
`    "groupMembershipClaims": "All",
`    "oauth2AllowImplicitFlow": true 
- [ ] 
`    "appId":"d61126e3-089b-4adb-b721-d5023213df7d"
`    "displayName": "internal",
`    "optionalClaims": "All",
`    "oauth2AllowImplicitFlow": true 
- [ ] 
`    "appId":"d61126e3-089b-4adb-b721-d5023213df7d"
`    "displayName": "internal",
`    "optionalClaims": "All",
`    "requiredResourceAccess": true 

#### 0000.22 [100%]::You develop an app that allows users to upload photos and videos to Azure storage. The app uses a storage REST API call to upload the media to a blob storage account named Account1. You have blob storage containers named Container1 and Container2.
`Uploading of videos occurs on an irregular basis.
`You need to copy specific blobs from Container1 to Container2 when a new video is uploaded.
`What should you do?

- [ ] Copy blobs to Container2 by using the Put Blob operation of the Blob Service REST API
- [x] Create an Event Grid topic that uses the Start-AzureStorageBlobCopy cmdlet
- [ ] Use AzCopy with the Snapshot switch to copy blobs to Container2
- [ ] Download the blob to a virtual machine and then upload the blob to Container2


#### 0000.23 [100%]::You are developing an ASP.NET Core website that uses Azure FrontDoor. The website is used to build custom weather data sets for researchers. Data sets are downloaded by users as Comma Separated Value (CSV) files. The data is refreshed every 10 hours.
`Specific files must be purged from the FrontDoor cache based upon Response Header values.
`You need to purge individual assets from the Front Door cache.
`Which type of cache purge should you use?

- [x] single path
- [ ] wildcard
- [ ] root domain


#### 0000.24[67%]::Your company is developing an Azure API.
`You need to implement authentication for the Azure API. You have the following requirements:
`All API calls must be secure.
`
`✑ Callers to the API must not send credentials to the API.
`Which authentication mechanism should you use?

- [ ] Basic
- [ ] Anonymous
- [x] Managed identity
- [ ] Client certificate


#### 0000.25 [100%]::You are a developer for a SaaS company that offers many web services.
`All web services for the company must meet the following requirements:
`✑ Use API Management to access the services
`✑ Use OpenID Connect for authentication
`✑ Prevent anonymous usage
`A recent security audit found that several web services can be called without any authentication.
`Which API Management policy should you implement?

- [ ] jsonp
- [ ] authentication-certificate
- [ ] check-header
- [x] validate-jwt


#### Qp22.28 [100%]::Contoso, Ltd. provides an API to customers by using Azure API Management (APIM). The API authorizes users with a JWT token.
`You must implement response caching for the APIM gateway. The caching mechanism must detect the user ID of the client that accesses data for a given location and cache the response for that user ID.
`You need to add the following policies to the policies file:
`✑ a set-variable policy to store the detected user identity
`✑ a cache-lookup-value policy
`✑ a cache-store-value policy
`✑ a find-and-replace policy to update the response body with the user profile information
`To which policy section should you add the policies? To answer, drag the appropriate sections to the correct policies. Each section may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Set-variable

- [x] Inbound
- [ ] Outbond



#### Qp22.28.2 [100%]::Contoso, Ltd. provides an API to customers by using Azure API Management (APIM). The API authorizes users with a JWT token.
`You must implement response caching for the APIM gateway. The caching mechanism must detect the user ID of the client that accesses data for a given location and cache the response for that user ID.
`You need to add the following policies to the policies file:
`✑ a set-variable policy to store the detected user identity
`✑ a cache-lookup-value policy
`✑ a cache-store-value policy
`✑ a find-and-replace policy to update the response body with the user profile information
`To which policy section should you add the policies? To answer, drag the appropriate sections to the correct policies. Each section may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Cache-lookup-value

- [x] Inbound
- [ ] Outbond



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