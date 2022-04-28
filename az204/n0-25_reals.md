##   n0-25_reals


#### Q1. You have two Hyper-V hosts named Host1 and Host2. Host1 has an Azure virtual machine named VM1 that was deployed by using a custom Azure Resource Manager template. You need to move VM1 to Host2.
- [x] From the Update management blade, click Enable.
- [x] From the Overview blade, move VM1 to a different subscription.
- [x] From the Redeploy blade, click Redeploy.
- [x] From the Profile blade, modify the usage location.

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

#### Q4. Your company has an Azure Kubernetes Service (AKS) cluster that you manage from an Azure AD-joined device. The cluster is located in a resource group. Developers have created an application named MyApp. MyApp was packaged into a container image. You need to deploy the YAML manifest file for the application. Solution: You install the docker client on the device and run the docker run -it microsoft/azure-cli:0.10.17 command.

- [ ] Yes
- [x] No


#### Q5. Your company has a web app named WebApp1. You use the WebJobs SDK to design a triggered App Service background task that automatically invokes a function in the code every time new data is received in a queue. You are preparing to configure the service processes a queue data item. Which of the following is the service you should use?

- [ ] Logic Apps
- [x] WebJobs
- [x] Flow
- [x] Functions

#### Q6. Your company has an Azure subscription. You need to deploy a number of Azure virtual machines to the subscription by using Azure Resource Manager (ARM) templates. The virtual machines will be included in a single availability set. You need to ensure that the ARM template allows for as many virtual machines as possible to remain accessible in the event of fabric failure or maintenance. Which of the following is the value that you should configure for the platformFaultDomainCount property?

- [x] 10
- [ ] 30
- [ ] Min Value
- [ ] Max Value

#### Q7. Your company has an Azure subscription. You need to deploy a number of Azure virtual machines to the subscription by using Azure Resource Manager (ARM) templates. The virtual machines will be included in a single availability set. You need to ensure that the ARM template allows for as many virtual machines as possible to remain accessible in the event of fabric failure or maintenance. Which of the following is the value that you should configure for the platformUpdateDomainCount property?

- [x] 10
- [ ] 20
- [ ] 30
- [ ] 40

#### Q8. You are creating an Azure Cosmos DB account that makes use of the SQL API. Data will be added to the account every day by a web application. You need to ensure that an email notification is sent when information is received from IoT devices, and that compute cost is reduced. You decide to deploy a function app. Which of the following should you configure the function app to use?

- [ ] Azure Cosmos DB connector
- [x] SendGrid action
- [x] Consumption plan
- [x] Azure Event Hubs binding
- [x] SendGrid binding

#### Q9. This question requires that you evaluate the underlined text to determine if it is correct. You company has an on-premises deployment of MongoDB, and an Azure Cosmos DB account that makes use of the MongoDB API. You need to devise a strategy to migrate MongoDB to the Azure Cosmos DB account. You include the Data Management Gateway tool in your migration strategy.

- [x] No change required
- [ ] mongorestore
- [ ] Azure Storage Explorer
- [ ] AzCopy

#### Q10. You are developing an e-Commerce Web App. You want to use Azure Key Vault to ensure that sign-ins to the e-Commerce Web App are secured by using Azure App Service authentication and Azure Active Directory (AAD). What should you do on the e-Commerce Web App?

- [ ] Run the az keyvault secret command.
- [x] Enable Azure AD Connect.
- [x] Enable Managed Service Identity (MSI).
- [x] Create an Azure AD service principal.

#### Q11. This question requires that you evaluate the underlined text to determine if it is correct. Your Azure Active Directory Azure (Azure AD) tenant has an Azure subscription linked to it. Your developer has created a mobile application that obtains Azure AD access tokens using the OAuth 2 implicit grant type. The mobile application must be registered in Azure AD. You require a redirect URI from the developer for registration purposes.

- [ ] No change required.
- [x] a secret
- [x] a login hint
- [x] a client ID

#### Q12. You are creating an Azure key vault using PowerShell. Objects deleted from the key vault must be kept for a set period of 90 days. Which two of the following parameters must be used in conjunction to meet the requirement? (Choose two.)

- [x] EnabledForDeployment
- [ ] EnablePurgeProtection
- [ ] EnabledForTemplateDeployment
- [ ] EnableSoftDelete

#### Q13. You have an Azure Active Directory (Azure AD) tenant. You want to implement multi-factor authentication by making use of a conditional access policy. The conditional access policy must be applied to all users when they access the Azure portal. Which three settings should you configure? To answer, select the appropriate settings in the answer area.

- [ ] Assignments / Users and groups [0 users selected]
- [ ] Assignments / Cloud apps[0 apps selected]
- [ ] Assignments / Conditions[0 conditions selected]
- [ ] Access controls / Grant [0 controls selected]
- [ ] Access controls / Sessions[0 conditions selected]












#### Q14. Your companyג€™s Active Directory forest includes thousands of user accounts. You have been informed that all network resources will be migrated to Azure. Thereafter, the on-premises data center will be retired. You are required to employ a strategy that reduces the effect on users, once the planned migration has been completed. Solution: You plan to sync all the Active Directory user accounts to Azure Active Directory (Azure AD). Does the solution meet the goal?

- [x] Yes
- [ ] No

#### Q15. You are required to deploy an Artificial Intelligence (AI) solution in Azure. You want to make sure that you are able to build, test, and deploy predictive analytics for the solution. Solution: You should make use of Azure Machine Learning Studio. Does the solution meet the goal?

- [x] Yes
- [ ] No

#### Q16. Your companyג€™s infrastructure includes a number of business units that each need a large number of various Azure resources for everyday operation. The resources required by each business unit are identical. You are required to sanction a strategy to create Azure resources automatically. Solution: You recommend that the Azure API Management service be included in the strategy. Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Q17. Your companyג€™s infrastructure includes a number of business units that each need a large number of various Azure resources for everyday operation. The resources required by each business unit are identical. You are required to sanction a strategy to create Azure resources automatically. Solution: You recommend that management groups be included in the strategy. Does the solution meet the goal?

- [ ] Yes
- [x] No


#### Q18. Your companyג€™s infrastructure includes a number of business units that each need a large number of various Azure resources for everyday operation. The resources required by each business unit are identical. You are required to sanction a strategy to create Azure resources automatically. Solution: You recommend that the Azure Resource Manager templates be included in the strategy. Does the solution meet the goal?

- [x] Yes
- [ ] No

#### Q19. You are tasked with deploying a critical LOB application, which will be installed on a virtual machine, to Azure. You are informed that the application deployment strategy should allow for a guaranteed availability of 99.99 percent. You need to make sure that the strategy requires as little virtual machines and availability zones as possible. Solution: You include two virtual machines and one availability zone in your strategy. Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Q20. You are tasked with deploying a critical LOB application, which will be installed on a virtual machine, to Azure. You are informed that the application deployment strategy should allow for a guaranteed availability of 99.99 percent. You need to make sure that the strategy requires as little virtual machines and availability zones as possible. Solution: You include one virtual machine and two availability zones in your strategy. Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Q21. You are tasked with deploying a critical LOB application, which will be installed on a virtual machine, to Azure. You are informed that the application deployment strategy should allow for a guaranteed availability of 99.99 percent. You need to make sure that the strategy requires as little virtual machines and availability zones as possible. Solution: You include two virtual machines and two availability zones in your strategy. Does the solution meet the goal?

- [x] Yes
- [ ] No


#### Q22. Your companyג€™s developers intend to deploy a large number of custom virtual machines on a weekly basis. They will also be removing these virtual machines during the same week it was deployed. Sixty percent of the virtual machines have Windows Server 2016 installed, while the other forty percent has Ubuntu Linux installed. You are required to make sure that the administrative effort, needed for this process, is reduced by employing a suitable Azure service. Solution: You recommend the use of Microsoft Managed Desktop. Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Q23. Your companyג€™s developers intend to deploy a large number of custom virtual machines on a weekly basis. They will also be removing these virtual machines during the same week it was deployed. Sixty percent of the virtual machines have Windows Server 2016 installed, while the other forty percent has Ubuntu Linux installed. You are required to make sure that the administrative effort, needed for this process, is reduced by employing a suitable Azure service. Solution: You recommend the use of Azure Reserved Virtual Machines (VM) Instances. Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Q24. Your companyג€™s developers intend to deploy a large number of custom virtual machines on a weekly basis. They will also be removing these virtual machines during the same week it was deployed. Sixty percent of the virtual machines have Windows Server 2016 installed, while the other forty percent has Ubuntu Linux installed. You are required to make sure that the administrative effort, needed for this process, is reduced by employing a suitable Azure service. Solution: You recommend the use of Azure DevTest Labs. Does the solution meet the goal?

- [x] Yes
- [ ] No

#### Q25. Your company has virtual machines (VMs) hosted in Microsoft Azure. The VMs are located in a single Azure virtual network named VNet1. The company has users that work remotely. The remote workers require access to the VMs on VNet1. You need to provide access for the remote workers. What should you do?

- [ ] Configure a Site-to-Site (S2S) VPN.
- [ ] Configure a VNet-toVNet VPN.
- [x] Configure a Point-to-Site (P2S) VPN.
- [ ] Configure DirectAccess on a Windows Server 2012 server VM.
- [ ] Configure a Multi-Site VPN