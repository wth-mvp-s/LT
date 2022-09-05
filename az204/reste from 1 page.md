



[//] current state 05.09.2022 

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                 >>>>>>>'''       
>>>>>>>>>>>>>                                 >>>>>>>'''       
>>>>>>>>>>>>>                                 >>>>>>>'''       
>>>>>>>>>>>>>                                 >>>>>>>'''       
>>>>>>>>>>>>>                                 >>>>>>>'''       
>>>>>>>>>>>>>                                 >>>>>>>'''       
>>>>>>>>>>>>>                                 >>>>>>>'''       
>>>>>>>>>>>>>                                 >>>>>>>'''       
>>>>>>>>>>>>>                                 >>>>>>>'''       
>>>>>>>>>>>>>                                 >>>>>>>'''       
>>>>>>>>>>>>>                                 >>>>>>>'''       
'''>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



























#### Q15.1? ::You are building a traffic monitoring system that monitors traffic along six highways. The system produces time series analysis-based reports for each highway.
`Data from traffic sensors are stored in Azure Event Hub.
`Traffic data is consumed by four departments. Each department has an Azure Web App that displays the time series-based reports and contains a WebJob that processes the incoming data from Event Hub. All Web Apps run on App Service Plans with three instances.
`Data throughput must be maximized. Latency must be minimized.
`You need to implement the Azure Event Hub.
`Which settings should you use? To answer, select the appropriate options in the answer area.
`
`Number of partitions

- [ ] 3
- [x] 4
- [ ] 6
- [ ] 12


#### Q15.2? ::You are building a traffic monitoring system that monitors traffic along six highways. The system produces time series analysis-based reports for each highway.
`Data from traffic sensors are stored in Azure Event Hub.
`Traffic data is consumed by four departments. Each department has an Azure Web App that displays the time series-based reports and contains a WebJob that processes the incoming data from Event Hub. All Web Apps run on App Service Plans with three instances.
`Data throughput must be maximized. Latency must be minimized.
`You need to implement the Azure Event Hub.
`Which settings should you use? To answer, select the appropriate options in the answer area.
`
`partition Key

- [x] Highway
- [ ] Department
- [ ] Timestamp
- [ ] VM name



#### Q16 ::You are developing a microservices solution. You plan to deploy the solution to a multinode Azure Kubernetes Service (AKS) cluster.
`You need to deploy a solution that includes the following features:
`✑ reverse proxy capabilities
`✑ configurable traffic routing
`✑ TLS termination with a custom certificate
`Which components should you use? To answer, drag the appropriate components to the correct requirements. Each component may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Deploy solution

- [x] Helm
- [ ] Draft
- [ ] Brigade
- [ ] KubeCtl
- [ ] Ingress Controller
- [ ] CoreDNS
- [ ] Virtual Kubelet


#### Q16.2 ::You are developing a microservices solution. You plan to deploy the solution to a multinode Azure Kubernetes Service (AKS) cluster.
`You need to deploy a solution that includes the following features:
`✑ reverse proxy capabilities
`✑ configurable traffic routing
`✑ TLS termination with a custom certificate
`Which components should you use? To answer, drag the appropriate components to the correct requirements. Each component may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`View cluster and external IP addressing. 

- [ ] Helm
- [ ] Draft
- [ ] Brigade
- [x] KubeCtl
- [ ] Ingress Controller
- [ ] CoreDNS
- [ ] Virtual Kubelet



#### Q16.3 ::You are developing a microservices solution. You plan to deploy the solution to a multinode Azure Kubernetes Service (AKS) cluster.
`You need to deploy a solution that includes the following features:
`✑ reverse proxy capabilities
`✑ configurable traffic routing
`✑ TLS termination with a custom certificate
`Which components should you use? To answer, drag the appropriate components to the correct requirements. Each component may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Implement a single, public IP endpoint that is routed to multiple microservices. 

- [ ] Helm
- [ ] Draft
- [ ] Brigade
- [ ] KubeCtl
- [x] Ingress Controller
- [ ] CoreDNS
- [ ] Virtual Kubelet



#### Q19p14.2 ::You are developing an Azure Cosmos DB solution by using the Azure Cosmos DB SQL API. The data includes millions of documents. Each document may contain hundreds of properties.
`The properties of the documents do not contain distinct values for partitioning. Azure Cosmos DB must scale individual containers in the database to meet the performance needs of the application by spreading the workload evenly across all partitions over time.
`You need to select a partition key.
`Which two partition keys can you use? Each correct answer presents a complete solution.

- [ ] a single property value that does not appear frequently in the documents
- [ ] a value containing the collection name
- [ ] a single property value that appears frequently in the documents
- [x] a concatenation of multiple property values with a random suffix appended
- [x] a hash suffix appended to a property value


#### Qp15.2 ::You have a new Azure subscription. You are developing an internal website for employees to view sensitive data. The website uses Azure Active Directory (Azure
AD) for authentication.
`You need to implement multifactor authentication for the website.
`Which two actions should you perform? Each correct answer presents part of the solution.

- [ ] Configure the website to use Azure AD B2C.
- [x] In Azure AD, create a new conditional access policy.
- [x] Upgrade to Azure AD Premium.
- [ ] In Azure AD, enable application proxy.
- [ ] In Azure AD conditional access, enable the baseline policy.



#### Qp15.3 ::You are developing a Java application that uses Cassandra to store key and value data. You plan to use a new Azure Cosmos DB resource and the Cassandra
`API in the application. You create an Azure Active Directory (Azure AD) group named Cosmos DB Creators to enable provisioning of Azure Cosmos accounts, databases, and containers.
`The Azure AD group must not be able to access the keys that are required to access the data.
`You need to restrict access to the Azure AD group.
`Which role-based access control should you use?

- [ ] DocumentDB Accounts Contributor
- [ ] Cosmos Backup Operator
- [x] Cosmos DB Operator
- [ ] Cosmos DB Account Reader

#### Qp16.4 ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution: Configure the Azure Web App for the website to allow only authenticated requests and require Azure AD log on.

- [ ] Yes
- [x] No



#### Qp16.5 ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution:
`✑ Create a new Azure AD application. In the application's manifest, set value of the groupMembershipClaims option to All.
`✑ In the website, use the value of the groups claim from the JWT for the user to determine permissions.
`Does the solution meet the goal?

- [x] Yes
- [ ] No


#### Qp16.6 ::You are developing a website that will run as an Azure Web App. Users will authenticate by using their Azure Active Directory (Azure AD) credentials.
`You plan to assign users one of the following permission levels for the website: admin, normal, and reader. A user's Azure AD group membership must be used to determine the permission level.
`You need to configure authorization.
`Solution:
`✑ Create a new Azure AD application. In the application's manifest, define application roles that match the required permission levels for the application.
`✑ Assign the appropriate Azure AD group to each role. In the website, use the value of the roles claim from the JWT for the user to determine permissions.
`Does the solution meet the goal?

- [x] Yes
- [ ] No




#### Qp16.7 ::You are developing an application to securely transfer data between on-premises file systems and Azure Blob storage. The application stores keys, secrets, and certificates in Azure Key Vault. The application uses the Azure Key Vault APIs.
`The application must allow recovery of an accidental deletion of the key vault or key vault objects. Key vault objects must be retained for 90 days after deletion.
`You need to protect the key vault and key vault objects.
`Which Azure Key Vault feature should you use? 
`
`Enable retention period and accidental deletion. 

- [ ] Access policy
- [ ] Purge protection
- [x] Soft delete
- [ ] Shared access signature


#### Qp16.7.2 ::You are developing an application to securely transfer data between on-premises file systems and Azure Blob storage. The application stores keys, secrets, and certificates in Azure Key Vault. The application uses the Azure Key Vault APIs.
`The application must allow recovery of an accidental deletion of the key vault or key vault objects. Key vault objects must be retained for 90 days after deletion.
`You need to protect the key vault and key vault objects.
`Which Azure Key Vault feature should you use? 
`
`Enforce retention period and accidental deletion. 

- [ ] Access policy
- [x] Purge protection
- [ ] Soft delete
- [ ] Shared access signature



#### Qp17.8? ::You provide an Azure API Management managed web service to clients. The back-end web service implements HTTP Strict Transport Security (HSTS).
`Every request to the backend service must include a valid HTTP authorization header.
`You need to configure the Azure API Management instance with an authentication policy.
`Which two policies can you use? Each correct answer presents a complete solution.

- [x] Basic Authentication
- [ ] Digest Authentication
- [x] Certificate Authentication
- [ ] OAuth Client Credential Grant


#### Qp17.11 ::You have an application that includes an Azure Web app and several Azure Function apps. Application secrets including connection strings and certificates are stored in Azure Key Vault.
`Secrets must not be stored in the application or application runtime environment. Changes to Azure Active Directory (Azure AD) must be minimized.
`You need to design the approach to loading application secrets.
`What should you do?

- [x] Create a single user-assigned Managed Identity with permission to access Key Vault and configure each App Service to use that Managed Identity.
- [ ] Create a single Azure AD Service Principal with permission to access Key Vault and use a client secret from within the App Services to access Key Vault.
- [ ] Create a system assigned Managed Identity in each App Service with permission to access Key Vault.
- [ ] Create an Azure AD Service Principal with Permissions to access Key Vault for each App Service and use a certificate from within the App Services to access Key Vault.


#### Qp18.12 ::You are developing a medical records document management website. The website is used to store scanned copies of patient intake forms.
`If the stored intake forms are downloaded from storage by a third party, the contents of the forms must not be compromised.
`You need to store the intake forms according to the requirements.
`Solution:
`1. Create an Azure Key Vault key named skey.
`2. Encrypt the intake forms using the public key portion of skey.
`3. Store the encrypted data in Azure Blob storage.
`Does the solution meet the goal?

- [x] Yes
- [ ] No



#### Qp18.13 ::You are developing a medical records document management website. The website is used to store scanned copies of patient intake forms.
`If the stored intake forms are downloaded from storage by a third party, the contents of the forms must not be compromised.
`You need to store the intake forms according to the requirements.
`Solution:
`1. Create an Azure Cosmos DB database with Storage Service Encryption enabled.
`2. Store the intake forms in the Azure Cosmos DB database.
`Does the solution meet the goal?

- [ ] Yes
- [x] No



#### Qp18.14 ::You are developing a medical records document management website. The website is used to store scanned copies of patient intake forms.
`If the stored intake forms are downloaded from storage by a third party, the contents of the forms must not be compromised.
`You need to store the intake forms according to the requirements.
`Solution: Store the intake forms as Azure Key Vault secrets.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

























#### Q2. You have downloaded an Azure Resource Manager template to deploy numerous virtual machines. The template is based on a current virtual machine, but must be adapted to reference an administrative password. You need to make sure that the password is not stored in plain text. You are preparing to create the necessary components to achieve your goal.

- [ ] An Azure Key Vault
- [x] An Azure Storage account
- [ ] Azure Active Directory (AD) Identity Protection
- [ ] An access policy
- [ ] An Azure policy
- [ ] An backup policy

#### Q3. Your company has an Azure Kubernetes Service (AKS) cluster that you manage from an Azure AD-joined device. The cluster is located in a resource group. Developers have created an application named MyApp. MyApp was packaged into a container image. You need to deploy the YAML manifest file for the application. Solution: You install the Azure CLI on the device and run the kubectl apply ג€"f myapp.yaml command. Does this meet the goal?

- [ ] Yes
- [x] No






#### Q8. You are creating an Azure Cosmos DB account that makes use of the SQL API. Data will be added to the account every day by a web application. You need to ensure that an email notification is sent when information is received from IoT devices, and that compute cost is reduced. You decide to deploy a function app. Which of the following should you configure the function app to use?

- [ ] Azure Cosmos DB connector
- [x] SendGrid action
- [x] Consumption plan
- [x] Azure Event Hubs binding
- [x] SendGrid binding





#### Q13. You have an Azure Active Directory (Azure AD) tenant. You want to implement multi-factor authentication by making use of a conditional access policy. The conditional access policy must be applied to all users when they access the Azure portal. Which three settings should you configure? To answer, select the appropriate settings in the answer area.

- [ ] Assignments / Users and groups [0 users selected]
- [ ] Assignments / Cloud apps[0 apps selected]
- [ ] Assignments / Conditions[0 conditions selected]
- [ ] Access controls / Grant [0 controls selected]
- [ ] Access controls / Sessions[0 conditions selected]














#### Q15. You are developing an application to transfer data between on-premises file servers and Azure Blob storage. The application stores keys, secrets, and certificates in Azure Key Vault and makes use of the Azure Key Vault APIs. You want to configure the application to allow recovery of an accidental deletion of the key vault or key vault objects for 90 days after deletion. What should you do?

- [x] Run the Add-AzKeyVaultKey cmdlet.
- [ ] Run the az keyvault update --enable-soft-delete true --enable-purge-protection true CLI.
- [ ] Implement virtual network service endpoints for Azure Key Vault.
- [ ] Run the az keyvault update --enable-soft-delete false CLI.

#### Q16. You have developed a Web App for your company. The Web App provides services and must run in multiple regions. You want to be notified whenever the Web App uses more than 85 percent of the available CPU cores over a 5 minute period. Your solution must minimize costs. Which command should you use? To answer, select the appropriate settings in the answer area.

- [ ] az monitor metrics alert create -n myAlert -g myResourceGroup -- scopes targetResourceID --condition "[CPU Usage] > 85" [--window size] 5m
- [ ] az monitor metrics alert create -n myAlert -g myResourceGroup -- scopes targetResourceID --condition "[Percentage CPU] > 85" [--evaluation-frequency] 5m
- [ ] az monitor metrics alert create -n myAlert -g myResourceGroup -- scopes targetResourceID --condition "[avg Percentage CPU] > 85" [--auto-mitigate] 5m








