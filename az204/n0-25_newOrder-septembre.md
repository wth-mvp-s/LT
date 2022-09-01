##   n0-25_newOrder-septembre


#### 001, Q1.p1 ::You have two Hyper-V hosts named Host1 and Host2. Host1 has an Azure virtual machine named VM1 that was deployed by using a custom Azure Resource Manager template. You need to move VM1 to Host2.
- [ ] From the Update management blade, click Enable.
- [ ] From the Overview blade, move VM1 to a different subscription.
- [x] From the Redeploy blade, click Redeploy.
- [ ] From the Profile blade, modify the usage location.

[//] - 002_image 

#### 003, Q3.p1_newQuestion ::Your company has an Azure Kubernetes Service (AKS) cluster that you manage from an Azure AD-joined device. The cluster is located in a resource group.
`Developers have created an application named MyApp. MyApp was packaged into a container image.
`You need to deploy the YAML manifest file for the application.
Solution: You install the Azure CLI on the device and run the kubectl apply `"f myapp.yaml command.
`Does this meet the goal?

- [x] Yes
- [ ] No

#### 004, Q4. ::Your company has an Azure Kubernetes Service (AKS) cluster that you manage from an Azure AD-joined device. The cluster is located in a resource group. Developers have created an application named MyApp. MyApp was packaged into a container image. You need to deploy the YAML manifest file for the application. Solution: You install the docker client on the device and run the docker run -it microsoft/azure-cli:0.10.17 command.

- [ ] Yes
- [x] No


#### 005, Q5. ::Your company has a web app named WebApp1. You use the WebJobs SDK to design a triggered App Service background task that automatically invokes a function in the code every time new data is received in a queue. You are preparing to configure the service processes a queue data item. Which of the following is the service you should use?

- [ ] Logic Apps
- [x] WebJobs
- [ ] Flow
- [ ] Functions

#### 006, Q6. ::Your company has an Azure subscription. You need to deploy a number of Azure virtual machines to the subscription by using Azure Resource Manager (ARM) templates. The virtual machines will be included in a single availability set. You need to ensure that the ARM template allows for as many virtual machines as possible to remain accessible in the event of fabric failure or maintenance. Which of the following is the value that you should configure for the platformFaultDomainCount property?

- [ ] 10
- [ ] 30
- [ ] Min Value
- [x] Max Value

#### 007, Q7. ::Your company has an Azure subscription. You need to deploy a number of Azure virtual machines to the subscription by using Azure Resource Manager (ARM) templates. The virtual machines will be included in a single availability set. You need to ensure that the ARM template allows for as many virtual machines as possible to remain accessible in the event of fabric failure or maintenance. Which of the following is the value that you should configure for the platformUpdateDomainCount property?

- [ ] 10
- [x] 20
- [ ] 30
- [ ] 40

[//] - 008_image 

#### 009, Q9. ::You company has an on-premises deployment of MongoDB, and an Azure Cosmos DB account that makes use of the MongoDB API. You need to devise a strategy to migrate MongoDB to the Azure Cosmos DB account. You include the Data Management Gateway tool in your migration strategy.

- [x] No change required
- [ ] mongorestore
- [ ] Azure Storage Explorer
- [ ] AzCopy

#### 010, Q10. ::You are developing an e-Commerce Web App. You want to use Azure Key Vault to ensure that sign-ins to the e-Commerce Web App are secured by using Azure App Service authentication and Azure Active Directory (AAD). What should you do on the e-Commerce Web App?

- [ ] Run the az keyvault secret command.
- [ ] Enable Azure AD Connect.
- [x] Enable Managed Service Identity (MSI).
- [ ] Create an Azure AD service principal.

#### 011, Q11. This question requires that you evaluate the underlined text to determine if it is correct. Your Azure Active Directory Azure (Azure AD) tenant has an Azure subscription linked to it. Your developer has created a mobile application that obtains Azure AD access tokens using the OAuth 2 implicit grant type. The mobile application must be registered in Azure AD. You require a redirect URI from the developer for registration purposes.

- [x] No change required.
- [ ] a secret
- [ ] a login hint
- [ ] a client ID

#### 0012, Q12. ::You are creating an Azure key vault using PowerShell. Objects deleted from the key vault must be kept for a set period of 90 days. Which two of the following parameters must be used in conjunction to meet the requirement? (Choose two.)

- [ ] EnabledForDeployment
- [x] EnablePurgeProtection
- [ ] EnabledForTemplateDeployment
- [x] EnableSoftDelete

[//] - 0013_image 

#### 0014, Q14. ::You manage an Azure SQL database that allows for Azure AD authentication. You need to make sure that database developers can connect to the SQL database via Microsoft SQL Server Management Studio (SSMS). You also need to make sure the developers use their on-premises Active Directory account for authentication. Your strategy should allow for authentication prompts to be kept to a minimum. Which of the following should you implement?

- [ ] Azure AD token.
- [ ] Azure Multi-Factor authentication.
- [x] Active Directory integrated authentication.
- [ ] OATH software tokens.



#### 0015, Q15. ::You are developing an application to transfer data between on-premises file servers and Azure Blob storage. The application stores keys, secrets, and certificates in Azure Key Vault and makes use of the Azure Key Vault APIs. You want to configure the application to allow recovery of an accidental deletion of the key vault or key vault objects for 90 days after deletion. What should you do?

- [ ] Run the Add-AzKeyVaultKey cmdlet.
- [x] Run the az keyvault update --enable-soft-delete true --enable-purge-protection true CLI.
- [ ] Implement virtual network service endpoints for Azure Key Vault.
- [ ] Run the az keyvault update --enable-soft-delete false CLI.

[//] - 0016_image 


#### 0017, Q17. ::You are configuring a web app that delivers streaming video to users. The application makes use of continuous integration and deployment. You need to ensure that the application is highly available and that the users' streaming experience is constant. You also want to configure the application to store data in a geographic location that is nearest to the user. Solution: You include the use of Azure Redis Cache in your design. Does the solution meet the goal?

- [ ] Yes
- [x] No

#### 0018, Q18. ::You are configuring a web app that delivers streaming video to users. The application makes use of continuous integration and deployment. You need to ensure that the application is highly available and that the users' streaming experience is constant. You also want to configure the application to store data in a geographic location that is nearest to the user. Solution: You include the use of an Azure Content Delivery Network (CDN) in your design. Does the solution meet the goal?

- [x] Yes
- [ ] No


#### 0019, Q19. ::You are configuring a web app that delivers streaming video to users. The application makes use of continuous integration and deployment. You need to ensure that the application is highly available and that the users' streaming experience is constant. You also want to configure the application to store data in a geographic location that is nearest to the user. Solution: You include the use of a Storage Area Network (SAN) in your design. Does the solution meet the goal?

- [ ] Yes
- [x] No


#### Q20. You develop a Web App on a tier D1 app service plan. You notice that page load times increase during periods of peak traffic. You want to implement automatic scaling when CPU load is above 80 percent. Your solution must minimize costs. What should you do first?

- [ ] Enable autoscaling on the Web App.
- [ ] Switch to the Premium App Service tier plan.
- [x] Switch to the Standard App Service tier plan.
- [ ] Switch to the Azure App Services consumption plan.

#### 0021, Q21. ::Your company's Azure subscription includes an Azure Log Analytics workspace. Your company has a hundred on-premises servers that run either Windows Server 2012 R2 or Windows Server 2016, and is linked to the Azure Log Analytics workspace. The Azure Log Analytics workspace is set up to gather performance counters associated with security from these linked servers. You must configure alerts based on the information gathered by the Azure Log Analytics workspace. You have to make sure that alert rules allow for dimensions, and that alert creation time should be kept to a minimum. Furthermore, a single alert notification must be created when the alert is created and when the alert is resolved. You need to make use of the necessary signal type when creating the alert rules. Which of the following is the option you should use?

- [ ] The Activity log signal type.
- [ ] The Application Log signal type.
- [x] The Metric signal type.
- [ ] The Audit Log signal type.



#### 0022, Q22. ::You are developing a .NET Core MVC application that allows customers to research independent holiday accommodation providers. You want to implement Azure Search to allow the application to search the index by using various criteria to locate documents related to accommodation. You want the application to allow customers to search the index by using regular expressions. What should you do?

- [ ] Configure the SearchMode property of the SearchParameters class.
- [x] Configure the QueryType property of the SearchParameters class.
- [ ] Configure the Facets property of the SearchParameters class.
- [ ] Configure the Filter property of the SearchParameters class.



#### 0023, Q23. ::You are a developer at your company. You need to update the definitions for an existing Logic App. What should you use?

- [ ] the Enterprise Integration Pack (EIP)
- [x] the Logic App Code View
- [ ] the API Connections
- [ ] the Logic Apps Designer

[//] no-answer

#### 0000?, . ::You are a developer at your company. You need to edit the workflows for an existing Logic App. What should you use?

- [ ] the Enterprise Integration Pack (EIP)
- [ ] the Logic App Code View
- [ ] the API Connections
- [ ] the Logic Apps Designer


[//] current state 01.09.2022 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                 >>>>>>>'''       
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








#### Q24. You are developing a solution for a public facing API. The API back end is hosted in an Azure App Service instance. You have implemented a RESTful service for the API back end. You must configure back-end authentication for the API Management service instance. Solution: You configure Basic gateway credentials for the Azure resource. Does the solution meet the goal?

- [x] Yes
- [ ] No

#### Q25. You are developing a solution for a public facing API. The API back end is hosted in an Azure App Service instance. You have implemented a RESTful service for the API back end. You must configure back-end authentication for the API Management service instance. Solution: You configure Client cert gateway credentials for the HTTP(s) endpoint. Does the solution meet the goal?

- [ ] Yes
- [ ] No