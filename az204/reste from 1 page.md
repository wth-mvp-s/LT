



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
































#### Qp15.2 ::You have a new Azure subscription. You are developing an internal website for employees to view sensitive data. The website uses Azure Active Directory (Azure
AD) for authentication.
`You need to implement multifactor authentication for the website.
`Which two actions should you perform? Each correct answer presents part of the solution.

- [ ] Configure the website to use Azure AD B2C.
- [x] In Azure AD, create a new conditional access policy.
- [x] Upgrade to Azure AD Premium.
- [ ] In Azure AD, enable application proxy.
- [ ] In Azure AD conditional access, enable the baseline policy.

































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








