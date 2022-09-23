##   5°_n125-150_septneworder



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

[//] - 0015_image



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

[//] - 0018_image

[//] - 0019_new


#### 0000.22 [83%]::You develop Azure solutions.
`You must grant a virtual machine (VM) access to specific resource groups in Azure Resource Manager.
`You need to obtain an Azure Resource Manager access token.
`Solution: Run the Invoke-RestMethod cmdlet to make a request to the local managed identity for Azure resources endpoint.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

[//] - 0021_image


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

[//] - 0027_image


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
`What are two possible ways to achieve this goal? Each correct answer presents a complete solution.
`NOTE: Each correct selection is worth one point.


- [x] Revoke the delegation keys
- [ ] Delete the stored access policy.
- [ ] Regenerate the account key.
- [x] Remove the role assignment for the security principle.

[//] - 0030_image
[//] - 0031_new
[//] - 0032_image
[//] - 0033_new
[//] - 0034_new

[//] - 0035_image

[//] - 0036_new
[//] - 0037_new
[//] - 0038_new
[//] - 0039_image


#### 0000.40 [100%]::You have a new Azure subscription. You are developing an internal website for employees to view sensitive data. The website uses Azure Active Directory (Azure AD) for authentication.
`You need to implement multifactor authentication for the website.
`Which two actions should you perform? Each correct answer presents part of the solution.

- [ ] Configure the website to use Azure AD B2C.
- [x] In Azure AD, create a new conditional access policy.
- [x] Upgrade to Azure AD Premium.
- [ ] In Azure AD, enable application proxy.
- [ ] In Azure AD conditional access, enable the baseline policy.

[//] - 0038_new