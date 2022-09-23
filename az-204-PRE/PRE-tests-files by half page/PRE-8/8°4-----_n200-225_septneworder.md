

##   8°4-----_n200-225_septneworder

#### 22 [voters]::
`Question
`
`You need to ensure disaster recovery requirements are met.
`What code should you add at line PC16?

- [x] 
`var copyOptions = new CopyOptions {}; 
`var context = new SingleTransferContext = (source, destination) => Task.FromResult(true);
`context.ShouldOverwriteCallbackAsync = (source, destination) => Task.FromResult(true);
`await TransferManager.CopyAsync(blob), isServiceCopy: false
`context: context, options: copyOptions); 


- [ ] 
`var copyOptions = new CopyOptions {}; 
`var context = new DirectoryTransferContext = (source, destination) => Task.FromResult(true);
`context.ShouldTransferCallbackAsync = (source, destination) => Task.FromResult(true);
`await TransferManager.CopyAsync(blob), isServiceCopy: false
`context: context, options: copyOptions); 

- [ ] 
`var copyOptions = new CopyOptions {}; 
`var context = new SingleTransferContext = (source, destination) => Task.FromResult(true);
`context.ShouldTransferCallbackAsync = (source, destination) => Task.FromResult(true);
`await TransferManager.CopyAsync(blob), isServiceCopy: false
`context: context, options: copyOptions); 


- [ ] 
`var copyOptions = new CopyOptions {}; 
`var context = new DirectoryTransferContext = (source, destination) => Task.FromResult(true);
`context.ShouldOverwriteCallbackAsync = (source, destination) => Task.FromResult(true);
`await TransferManager.CopyAsync(blob), isServiceCopy: false
`context: context, options: copyOptions); 


- [ ] 
`var copyOptions = new CopyOptions {}; 
`var context = new DirectoryTransferContext = (source, destination) => Task.FromResult(true);
`context.ShouldTransferCallbackAsync = (source, destination) => Task.FromResult(true);
`await TransferManager.CopyAsync(blob), isServiceCopy: true
`context: context, options: copyOptions); 



#### 23 [0%]::
`Requirements. Data -
`
`Order data is stored as nonrelational JSON and must be queried using SQL.
`Changes to the Order data must reflect immediately across all partitions. 
`All reads to the Order data must fetch the most recent writes.
`
`Question
`
`You need to configure Azure Cosmos DB.
`Which settings should you use?

- [x] Consistency Level Strong
- [ ] Consistency Level Bounded-staleness
- [ ] Consistency Level Session
- [ ] Consistency Level Eventual
- [x] API SQL 
- [ ] API MongoDB
- [ ] API Graph
- [ ] API Table

#### 24 [0%]::
`Question
`
`You need to retrieve all order line items from Order.json and sort the data alphabetically by the city.
`How should you complete the code?


- [x] 
`SELECT li.id AS lineitemid, li.price
`FROM Orders o
`JOIN li IN o.line_items
`ORDER BY o.adress.city ASC


- [ ] 
`SELECT li.id AS lineitemid, li.price
`FROM Orders o
`JOIN li IN o.line_items
`ORDER BY o.adress.city ASC

- [ ] 
`SELECT li.id AS lineitemid, li.price
`FROM LineItems li
`JOIN o IN li.line_items
`ORDER BY li.adress.city ASC

- [ ] 
`SELECT li.id AS lineitemid, li.price
`FROM LineItems li
`JOIN o IN o.adress
`ORDER BY o.city ASC

- [ ] 
`SELECT li.id AS lineitemid, li.price
`FROM LineItems li
`JOIN o IN o.adress
`ORDER BY li.city ASC



#### 25 [0%]::
`Delivery services -
`Store service telemetry data in Azure Cosmos DB by using an Azure Function. Data must include an item id, the delivery vehicle license plate, vehicle package capacity, and current vehicle location coordinates.
`Store delivery driver profile information in Azure Active Directory (Azure AD) by using an Azure Function called from the corporate website.
`
`Security -
`All Azure Functions must centralize management and distribution of configuration data for different environments and geographies, encrypted by using a company-provided RSA-HSM key.
`Authentication and authorization must use Azure AD and services must use managed identities where possible.
`
`Question
`
`You need to implement the Azure Function for delivery driver profile information.
`Which configurations should you use? To answer, select the appropriate options in the answer area.


- [ ] Code library Microsoft Authentication Library (MSAL)
- [ ] API Microsoft Graph
- [ ] Code library Microsoft Azure Key Vault SDK
- [ ] API Azure Active Directory Graph
- [x] Code library Azure Identity library
- [x] API Key Vault



#### 26 [0%]::
`Issues -
`
`Retail Store Locations -
`You must perform a point-in-time restoration of the retail store location data due to an unexpected and accidental deletion of data.
`Azure Cosmos DB queries from the Azure Function exhibit high Request Unit (RU) usage and contain multiple, complex queries that exhibit high point read latency for large items as the function app is scaling.
`
`Question
`You need to grant access to the retail store location data for the inventory service development effort.
`What should you use?


- [ ] Azure AD access token
- [ ] Azure RBAC role
- [x] Shared access signature (SAS) token
- [ ] Azure AD ID token
- [ ] Azure AD refresh token




#### 27 [0%]::
`Question
`
`You need to reliably identify the delivery driver profile information.
`How should you configure the system?
`
`Delivery services -
`Store service telemetry data in Azure Cosmos DB by using an Azure Function. Data must include an item id, the delivery vehicle license plate, vehicle package capacity, and current vehicle location coordinates.
`Store delivery driver profile information in Azure Active Directory (Azure AD) by using an Azure Function called from the corporate website.
`
`Security -
`All Azure Functions must centralize management and distribution of configuration data for different environments and geographies, encrypted by using a company-provided RSA-HSM key.
`Authentication and authorization must use Azure AD and services must use managed identities where possible.

- [x] 
`JSON web token (JWT) type ID
`Payload claim value oid

- [ ] 
`JSON web token (JWT) type ID
`Payload claim value idp

- [ ] 
`JSON web token (JWT) type ID
`Payload claim value aud

- [ ] 
`JSON web token (JWT) type Refresh
`Payload claim value aud

- [ ] 
`JSON web token (JWT) type Access
`Payload claim value idp






#### 28 [0%]::
`Requirements -
`
`Security -
`All Azure Functions must centralize management and distribution of configuration data for different environments and geographies, encrypted by using a company-provided RSA-HSM key.
`Authentication and authorization must use Azure AD and services must use managed identities where possible.
`
`You need to secure the Azure Functions to meet the security requirements.
`Which two actions should you perform?


- [x] Store the RSA-HSM key in Azure Key Vault with soft-delete and purge-protection features enabled.
- [ ] Store the RSA-HSM key in Azure Blob storage with an immutability policy applied to the container.
- [ ] Create a free tier Azure App Configuration instance with a new Azure AD service principal.
- [x] Create a standard tier Azure App Configuration instance with an assigned Azure AD managed identity.
- [ ] Store the RSA-HSM key in Azure Cosmos DB. Apply the built-in policies for customer-managed keys and allowed locations.


#### 29_Q [0%]::
`Question
`
`You need to add markup at line AM04 to implement the ContentReview role.
`How should you complete the markup?

- [x] 
`"AppRoles": [
`    {
`        "allowedMemberTypes":[
`            "User"
`        ],
`        "displayName":"ContentReviewer",
`        "id": "e1c2ade8-98f8-45fd-aa4a-6d24b512c22a",
`        "isEnabled": true, 
`        "value": ContentReviewer
`    }
`]
- [ ] 
`"AppRoles": [
`    {
`        "allowedMemberTypes":[
`            "Application"
`        ],
`        "displayName":"ContentReviewer",
`        "id": "e1c2ade8-98f8-45fd-aa4a-6d24b512c22a",
`        "isEnabled": true, 
`        "value": ContentReviewer
`    }
`]
- [ ] 
`"AppRoles": [
`    {
`        "allowedMemberTypes":[
`            "User"
`        ],
`        "displayName":"ContentReviewer",
`        "id": "e1c2ade8-98f8-45fd-aa4a-6d24b512c22a",
`        "isEnabled": true, 
`        "User": ContentReviewer
`    }
`]
- [ ] 
`"AppRoles": [
`    {
`        "allowedMemberTypes":[
`            "role"
`        ],
`        "displayName":"ContentReviewer",
`        "id": "e1c2ade8-98f8-45fd-aa4a-6d24b512c22a",
`        "isEnabled": true, 
`        "value": ContentReviewer
`    }
`]
- [ ] 
`"AppRoles": [
`    {
`        "allowedAccountTypes":[
`            "User"
`        ],
`        "displayName":"ContentReviewer",
`        "id": "e1c2ade8-98f8-45fd-aa4a-6d24b512c22a",
`        "isEnabled": true, 
`        "value": ContentReviewer
`    }
`]





#### 30_Qp35 [0%]::
`Question
`
`You need to add code at line AM09 to ensure that users can review content using `ContentAnalysisService.
`How should you complete the code?

- [ ] "allowPublicClient":true
- [ ] "oauth2Permissions":["login"]
- [ ] "oauth2AllowUrlPathMatching":true
- [x] "oauth2AllowIdTokenImplicitFlow":true

- [x] "oauth2AllowImplicitFlow":true
- [ ] "oauth2RequiredPostResponse":true
- [ ] "preAuthorisedPostResponse":["SPA"]
- [ ] "knownClientApplications":["ContentAnalysisService"]
