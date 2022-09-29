
##   5°_2from4




 
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














