##   1°_n0-25_newOrder-septembre


#### 001, Q1.p1 [100%]::You have two Hyper-V hosts named Host1 and Host2. 
`Host1 has an Azure virtual machine named VM1 that was deployed by using a custom Azure Resource Manager template. 
`You need to move VM1 to Host2.
- [ ] From the Update management blade, click Enable.
- [ ] From the Overview blade, move VM1 to a different subscription.
- [x] From the Redeploy blade, click Redeploy.
- [ ] From the Profile blade, modify the usage location.

#### 002::
`You have downloaded an Azure Resource Manager template to deploy numerous virtual machines. The template is based on a current virtual machine, but must be adapted to reference an administrative password.
`You need to make sure that the password is not stored in plain text.
`You are preparing to create the necessary components to achieve your goal.
`Which of the following should you create to achieve your goal?

- [x]
`An Azure Key Vault
`An Access policy


- [ ]
`An Azure Storage account
`An Access policy

- [ ]
`An Azure Storage account
`An Azure policy



- [ ]
`An Azure Key Vault
`An backup policy


- [ ]
`An Azure Key Vault
`An Azure policy


- [ ]
`An Azure Key Vault
`An Azure Storage account
`Azure Active Directory (AD) Identity Protection
`An Access policy
`An Azure policy
`An backup policy


#### 003, Q3.p1_newQuestion [60%]::Your company has an Azure Kubernetes Service (AKS) cluster that you manage from an Azure AD-joined device. 
`The cluster is located in a resource group.
`Developers have created an application named MyApp. MyApp was packaged into a container image.
`You need to deploy the YAML manifest file for the application.
`
`Solution: You install the Azure CLI on the device and run the kubectl apply "-f myapp.yaml command.

- [x] Yes
- [ ] No

#### 004, Q4. [100%]::Your company has an Azure Kubernetes Service (AKS) cluster that you manage from an Azure AD-joined device. `The cluster is located in a resource group. 
`Developers have created an application named MyApp. 
`MyApp was packaged into a container image. 
`You need to deploy the YAML manifest file for the application. 
`
`Solution: You install the docker client on the device and run the docker run -it microsoft/azure-cli:0.10.17 command.

- [ ] Yes
- [x] No


#### 005, Q5. [100%]::Your company has a web app named WebApp1. 
`You use the WebJobs SDK to design a triggered App Service background task that automatically invokes a function in the code every time new data is received in a queue. 
`You are preparing to configure the service processes a queue data item. 
`Which of the following is the service you should use?

- [ ] Logic Apps
- [x] WebJobs
- [ ] Flow
- [ ] Functions

#### 006, Q6. [100%]::Your company has an Azure subscription. You need to deploy a number of Azure virtual machines to the subscription by using Azure Resource Manager (ARM) templates. 
`The virtual machines will be included in a single availability set. 
`You need to ensure that the ARM template allows for as many virtual machines as possible to remain accessible in the event of fabric failure or maintenance. 
`Which of the following is the value that you should configure for the platformFaultDomainCount property?

- [ ] 10
- [ ] 30
- [ ] Min Value
- [x] Max Value

#### 007, Q7. [100%]::Your company has an Azure subscription. 
`You need to deploy a number of Azure virtual machines to the subscription by using Azure Resource Manager (ARM) templates. 
`The virtual machines will be included in a single availability set. 
`You need to ensure that the ARM template allows for as many virtual machines as possible to remain accessible in the event of fabric failure or maintenance. 
`Which of the following is the value that you should configure for the platformUpdateDomainCount property?

- [ ] 10
- [x] 20
- [ ] 30
- [ ] 40

#### 008::
`You are creating an Azure Cosmos DB account that makes use of the SQL API. Data will be added to the account every day by a web application.
`You need to ensure that an email notification is sent when information is received from IoT devices, and that compute cost is reduced.
`You decide to deploy a function app.
`Which of the following should you configure the function app to use? 

- [x] 
`Consumption plan
`SendGrid binding

- [ ] 
`Consumption plan
`SendGrid action


- [ ] 
`Consumption plan
`Azure Event Hubs binding

- [ ] 
`Azure Cosmos DB connector
`SendGrid binding


- [ ] 
`Azure Cosmos DB connector
`SendGrid action
`Consumption plan
`Azure Event Hubs binding
`SendGrid binding


#### 009, Q9. [67%]::You company has an on-premises deployment of MongoDB, and an Azure Cosmos DB account that makes use of the MongoDB API. 
`You need to devise a strategy to migrate MongoDB to the Azure Cosmos DB account. 
`You include the Data Management Gateway tool in your migration strategy.

- [x] No change required
- [ ] mongorestore
- [ ] Azure Storage Explorer
- [ ] AzCopy

#### 010, Q10. [100%]::You are developing an e-Commerce Web App. 
`You want to use Azure Key Vault to ensure that sign-ins to the e-Commerce Web App are secured by using Azure App Service authentication and Azure Active Directory (AAD). 
`What should you do on the e-Commerce Web App?

- [ ] Run the az keyvault secret command.
- [ ] Enable Azure AD Connect.
- [x] Enable Managed Service Identity (MSI).
- [ ] Create an Azure AD service principal.

#### 011, Q11. [100%]::This question requires that you evaluate the underlined text to determine if it is correct. 
`Your Azure Active Directory Azure (Azure AD) tenant has an Azure subscription linked to it. 
`Your developer has created a mobile application that obtains Azure AD access tokens using the OAuth 2 implicit grant type.
`The mobile application must be registered in Azure AD. You require a redirect URI from the developer for registration purposes.

- [x] No change required.
- [ ] a secret
- [ ] a login hint
- [ ] a client ID

#### 0012, Q12. [100%]::You are creating an Azure key vault using PowerShell. 
`Objects deleted from the key vault must be kept for a set period of 90 days. 
`Which two of the following parameters must be used in conjunction to meet the requirement? (Choose two.)

- [ ] EnabledForDeployment
- [x] EnablePurgeProtection
- [ ] EnabledForTemplateDeployment
- [x] EnableSoftDelete

#### 0013::
`You have an Azure Active Directory (Azure AD) tenant.
`You want to implement multi-factor authentication by making use of a conditional access policy. The conditional access policy must be applied to all users when they access the Azure portal.
`Which three settings should you configure?


- [x] 
`[Assignements]
`    - Users and group : 0 users selected
`    - Cloud apps : 0 apps selected
`[Access controls]
`    Grant : 0 controls selected

- [ ] 
`[Assignements]
`    - Cloud apps : 0 apps selected
`    - Conditions : 0 conditions selected
`[Access controls]
`    Grant : 0 controls selected


- [ ] 
`[Assignements]
`    - Users and group : 0 users selected
`    - Conditions : 0 conditions selected
`[Access controls]
`    Grant : 0 controls selected

- [ ] 
`[Assignements]
`    - Users and group : 0 users selected
`[Access controls]
`    Grant : 0 controls selected
`    Sessions : 0 controls selected



#### 0014, Q14. [100%]::You manage an Azure SQL database that allows for Azure AD authentication. 
`You need to make sure that database developers can connect to the SQL database via Microsoft SQL Server Management Studio (SSMS). 
`You also need to make sure the developers use their on-premises Active Directory account for authentication. 
`Your strategy should allow for authentication prompts to be kept to a minimum. 
`Which of the following should you implement?

- [ ] Azure AD token.
- [ ] Azure Multi-Factor authentication.
- [x] Active Directory integrated authentication.
- [ ] OATH software tokens.



#### 0015, Q15. [100%]::You are developing an application to transfer data between on-premises file servers and Azure Blob storage. 
`The application stores keys, secrets, and certificates in Azure Key Vault and makes use of the Azure Key Vault APIs. 
`You want to configure the application to allow recovery of an accidental deletion of the key vault or key vault objects for 90 days after deletion. 
`What should you do?

- [ ] Run the Add-AzKeyVaultKey cmdlet.
- [x] Run the az keyvault update --enable-soft-delete true --enable-purge-protection true CLI.
- [ ] Implement virtual network service endpoints for Azure Key Vault.
- [ ] Run the az keyvault update --enable-soft-delete false CLI.

#### 0016::
`You have developed a Web App for your company. The Web App provides services and must run in multiple regions.
`You want to be notified whenever the Web App uses more than 85 percent of the available CPU cores over a 5 minute period. Your solution must minimize costs.
`Which command should you use?

- [x] 
`az monitor metrics alert create -n myAlert -g myResourceGroup
`--scopes targetResourceID --condition "avg Percentage CPU >85"
`--window size 5m 


- [ ] 
`az monitor metrics alert create -n myAlert -g myResourceGroup
`--scopes targetResourceID --condition "Percentage CPU >85"
`--window size 5m 


- [ ] 
`az monitor metrics alert create -n myAlert -g myResourceGroup
`--scopes targetResourceID --condition "avg Percentage CPU >85"
`--evaluation-frequency 5m 

- [ ] 
`az monitor metrics alert create -n myAlert -g myResourceGroup
`--scopes targetResourceID --condition "CPU Usage>85"
`--auto-mitigate 5m 

#### 0017, Q17. [100%]::You are configuring a web app that delivers streaming video to users. 
`The application makes use of continuous integration and deployment. 
`-You need to ensure that the application is highly available and that the users' streaming experience is constant. 
`-You also want to configure the application to store data in a geographic location that is nearest to the user. 
`
`Solution: You include the use of Azure Redis Cache in your design. 

- [ ] Yes
- [x] No

#### 0018, Q18. [100%]::You are configuring a web app that delivers streaming video to users. 
`The application makes use of continuous integration and deployment. 
`You need to ensure that the application is highly available and that the users' streaming experience is constant. 
`You also want to configure the application to store data in a geographic location that is nearest to the user. 
`
`Solution: You include the use of an Azure Content Delivery Network (CDN) in your design. 

- [x] Yes
- [ ] No


#### 0019, Q19. [100%]::You are configuring a web app that delivers streaming video to users. 
`The application makes use of continuous integration and deployment. 
`-You need to ensure that the application is highly available and that the users' streaming experience is constant. 
`-You also want to configure the application to store data in a geographic location that is nearest to the user. 
`
`Solution: You include the use of a Storage Area Network (SAN) in your design. 

- [ ] Yes
- [x] No


#### Q20. [100%]::You develop a Web App on a tier D1 app service plan. 
`You notice that page load times increase during periods of peak traffic. 
`You want to implement automatic scaling when CPU load is above 80 percent. 
`Your solution must minimize costs. 
`What should you do first?

- [ ] Enable autoscaling on the Web App.
- [ ] Switch to the Premium App Service tier plan.
- [x] Switch to the Standard App Service tier plan.
- [ ] Switch to the Azure App Services consumption plan.

#### 0021, Q21. [100%]::Your company's Azure subscription includes an Azure Log Analytics workspace. 
`Your company has a hundred on-premises servers that run either Windows Server 2012 R2 or Windows Server 2016, and is linked to the Azure Log Analytics workspace. 
`The Azure Log Analytics workspace is set up to gather performance counters associated with security from these linked servers. 
`You must configure alerts based on the information gathered by the Azure Log Analytics workspace. 
`You have to make sure that alert rules allow for dimensions, and that alert creation time should be kept to a minimum. 
`Furthermore, a single alert notification must be created when the alert is created and when the alert is resolved. 
`You need to make use of the necessary signal type when creating the alert rules. 
`Which of the following is the option you should use?

- [ ] The Activity log signal type.
- [ ] The Application Log signal type.
- [x] The Metric signal type.
- [ ] The Audit Log signal type.



#### 0022, Q22. [100%]::You are developing a .NET Core MVC application that allows customers to research independent holiday accommodation providers. 
`You want to implement Azure Search to allow the application to search the index by using various criteria to locate documents related to accommodation. 
`You want the application to allow customers to search the index by using regular expressions. 
`What should you do?

- [ ] Configure the SearchMode property of the SearchParameters class.
- [x] Configure the QueryType property of the SearchParameters class.
- [ ] Configure the Facets property of the SearchParameters class.
- [ ] Configure the Filter property of the SearchParameters class.



#### 0023, Q23. [100%]::You are a developer at your company. 
`You need to update the definitions for an existing Logic App. What should you use?

- [ ] the Enterprise Integration Pack (EIP)
- [x] the Logic App Code View
- [ ] the API Connections
- [ ] the Logic Apps Designer

[//] no-answer



#### 0024, Q24. [78%]::You are developing a solution for a public facing API. 
`The API back end is hosted in an Azure App Service instance. You have implemented a RESTful service for the API back end. 
`You must configure back-end authentication for the API Management service instance. 
`
`Solution: You configure Basic gateway credentials for the Azure resource. 

- [ ] Yes
- [x] No


#### 0025, Q25. [100%]::You are developing a solution for a public facing API. 
`The API back end is hosted in an Azure App Service instance. You have implemented a RESTful service for the API back end. 
`You must configure back-end authentication for the API Management service instance. 
`
`Solution: You configure Client cert gateway credentials for the HTTP(s) endpoint. 

- [x] Yes
- [ ] No


#### 0026, Q26. [100%]::You are developing a solution for a public facing API. 
`The API back end is hosted in an Azure App Service instance. You have implemented a RESTful service for the API back end. 
`You must configure back-end authentication for the API Management service instance. 
`
`Solution: You configure Basic gateway credentials for the HTTP(s) endpoint. 

- [x] Yes
- [ ] No


#### 0027, Q27. ::You are developing a solution for a public facing API. 
`The API back end is hosted in an Azure App Service instance. You have implemented a RESTful service for the API back end. 
`You must configure back-end authentication for the API Management service instance. 
`
`Solution: You configure Client cert gateway credentials for the Azure resource. 

- [x] Yes
- [ ] No

#### 0028, Q28. [100%]::You are developing a .NET Core MVC application that allows customers to research independent holiday accommodation providers. 
`You want to implement Azure Search to allow the application to search the index by using various criteria to locate documents related to accommodation venues. 
`You want the application to list holiday accommodation venues that fall within a specific price range and are within a specified distance to an airport. 
`What should you do?

- [ ] Configure the SearchMode property of the SearchParameters class.
- [ ] Configure the QueryType property of the SearchParameters class.
- [ ] Configure the Facets property of the SearchParameters class.
- [x] Configure the Filter property of the SearchParameters class.



#### 0029, . [67%]::You are a developer at your company. 
`You need to edit the workflows for an existing Logic App. 
`What should you use?

- [x] the Enterprise Integration Pack (EIP)
- [ ] the Logic App Code View
- [ ] the API Connections
- [ ] the Logic Apps Designer


#### 0030, ::
`You are a developer for a company that provides a bookings management service in the tourism industry. You are implementing Azure Search for the tour agencies listed in your company's solution.
`You create the index in Azure Search. You now need to use the Azure Search .NET SDK to import the relevant data into the Azure Search service.
`Which three actions should you perform in sequence?

- [ ]
`Create a SearchIndexClient object to connect to the search index. 
`Create an IndexBatch that contain the documents whitch must be added. 
`Call the Documents.Suggest method of the SearchIndexClient and pass the DataSource. 

- [x]
`Create a SearchIndexClient object to connect to the search index. 
`Create an IndexBatch that contain the documents whitch must be added. 
`Call the documents.index method of the SearchIndexClient and pass the IndexBatch. 

- [ ]
`Create a SearchIndexClient object to connect to the search index. 
`Set the DataSource property of the SearchServiceClient. 
`Call the Documents.Suggest method of the SearchIndexClient and pass the DataSource. 


- [ ]
`Create an IndexBatch that contain the documents whitch must be added. 
`Set the DataSource property of the SearchServiceClient. 
`Call the Documents.Suggest method of the SearchIndexClient and pass the DataSource. 



- [ ]
`Create a DataSource instance and set its Container property to the DataContainer. 
`Create an IndexBatch that contain the documents whitch must be added. 
`Call the Documents.Suggest method of the SearchIndexClient and pass the DataSource. 


- [ ]
`Create a DataSource instance and set its Container property to the DataContainer. 
`Create an IndexBatch that contain the documents whitch must be added. 
`Set the DataSource property of the SearchServiceClient. 
`Create a SearchIndexClient object to connect to the search index. 
`Call the documents.index method of the SearchIndexClient and pass the IndexBatch. 
`Call the Documents.Suggest method of the SearchIndexClient and pass the DataSource. 