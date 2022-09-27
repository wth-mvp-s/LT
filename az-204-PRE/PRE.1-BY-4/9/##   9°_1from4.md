##   9°_1from4


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


