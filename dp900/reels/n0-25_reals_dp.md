##   n0-25_reals_dp


#### Q1. Descriptive analytics tells you 

- [ ] what is most likely to occur in the future. 
- [x] what occured in the past. 
- [ ] which actions you can perform to affect outcomes
- [ ] why sometimes occured in the past

#### Q2. Normalization involves eliminating relationships between database tables. 

- [ ] Yes
- [x] No

#### Q2. Normalization a database reduces data redundency. 

- [x] Yes
- [ ] No

#### Q2. Normalization improves data integrity. 

- [x] Yes
- [ ] No

#### Q3. An extract, transform, and load (ETL) process requires

- [ ] A matching schema in the data source and the data target. 
- [x] a target data store powerful enough to transform data. 
- [ ] data that is fully processed before being loaded to the target data store
- [ ] that the data target be a relational database

#### Q4. In batch processing, 

- [ ] data is always inserted one row at a time. 
- [ ] data is processed in real-time. 
- [x] latency is expected. 
- [ ] processing can only execute serially. 

































#### Q5. Transcribing audio files is an example of ...... analytics. 
- [x] cognitive
- [ ] descriptive
- [ ] predictive
- [ ] prescriptive

#### Q6. .... Why did sales increase last month? 
- [ ] Cognitive
- [x] Diagnostic
- [ ] Descriptive
- [ ] Predictive
- [ ] Prescriptive


#### Q6. .... How do I allocate my budget to buy diffirent inventory items? 
- [ ] Cognitive
- [ ] Diagnostic
- [ ] Descriptive
- [ ] Predictive
- [x] Prescriptive

#### Q6. .... Which people are mentioned in a company's business documents? 
- [ ] Cognitive
- [ ] Diagnostic
- [x] Descriptive
- [ ] Predictive
- [ ] Prescriptive

#### Q7. You have the following JSON document.
`"customer" : {
`    "first name" : "Ben",
`    "last name" : "Smith", 
`    "address" : {
`        "line1" : "161 Azure Ln",
`        "line2" : "Palo Alto",
`        "Zip code" : "54762"
`    }, 
`    "social media" : [
`        {
`            "service" : "twitter", 
`            "handle" : "@bensmith"
`        },
`        {
`            "service" : "LinkedIn", 
`            "handle" : "bensmith"
`        }
`    ],
`    "phone numbers" : [
`        {
`        "type" : "mobile", 
`        "number" : "555-555-555"
`        }
`    ]
`}
`
`Customer is 

- [ ] a nasted array
- [ ] a nasted object
- [x] a root object

#### Q7. You have the following JSON document.
`"customer" : {
`    "first name" : "Ben",
`    "last name" : "Smith", 
`    "address" : {
`        "line1" : "161 Azure Ln",
`        "line2" : "Palo Alto",
`        "Zip code" : "54762"
`    }, 
`    "social media" : [
`        {
`            "service" : "twitter", 
`            "handle" : "@bensmith"
`        },
`        {
`            "service" : "LinkedIn", 
`            "handle" : "bensmith"
`        }
`    ],
`    "phone numbers" : [
`        {
`        "type" : "mobile", 
`        "number" : "555-555-555"
`        }
`    ]
`}
`
`Address is 

- [ ] a nasted array
- [x] a nasted object
- [ ] a root object

#### Q7. You have the following JSON document.
`"customer" : {
`    "first name" : "Ben",
`    "last name" : "Smith", 
`    "address" : {
`        "line1" : "161 Azure Ln",
`        "line2" : "Palo Alto",
`        "Zip code" : "54762"
`    }, 
`    "social media" : [
`        {
`            "service" : "twitter", 
`            "handle" : "@bensmith"
`        },
`        {
`            "service" : "LinkedIn", 
`            "handle" : "bensmith"
`        }
`    ],
`    "phone numbers" : [
`        {
`        "type" : "mobile", 
`        "number" : "555-555-555"
`        }
`    ]
`}
`
`Social media is 

- [x] a nasted array
- [ ] a nasted object
- [ ] a root object

#### Q8. You are reviewing the data model shown in the following exhibit.
`Customer                                 Product
`Key: CustomerID                          Key: ProductID                                     
`Foreign Keys: None___             _______Foreign Keys: None
`                     |            |
`                         Sales
`                    Key: SalesID
`                    ForeignKeys: CustomerID, ProductID, SalesPersonID, WarehouseID
`                      |           |
`    SalesPerson________            _________Warehouse
`    Key: SalesPersonID                      Key: WarehouseID
`    ForeignKeys: None                       ForeignKeys: None      
`
`The Data model is a 

- [ ] transactional model
- [x] star schema
- [ ] snowflakeschema

#### Q8. You are reviewing the data model shown in the following exhibit.
`Customer                                 Product
`Key: CustomerID                          Key: ProductID                                     
`Foreign Keys: None___             _______Foreign Keys: None
`                     |            |
`                         Sales
`                    Key: SalesID
`                    ForeignKeys: CustomerID, ProductID, SalesPersonID, WarehouseID
`                      |           |
`    SalesPerson________            _________Warehouse
`    Key: SalesPersonID                      Key: WarehouseID
`    ForeignKeys: None                       ForeignKeys: None      
`
`Customer is a 

- [ ] fact
- [x] dimension
- [ ] bridge











































#### Q9. Your developers have created a portal web app for users in the Miami branch office. The web app will be publicly accessible and used by the Miami users to retrieve customer and product information. The web app is currently running in an on-premises test environment. You plan to host the web app on Azure. You need to determine which Azure web tier plan to host the web app. The web tier plan must meet the following requirements:
`✑ The website will use the miami.weyland.com URL.
`✑ The website will be deployed to two instances.
`✑ SSL support must be included.
`✑ The website requires 12 GB of storage.
`✑ Costs must be minimized.
`Which web tier plan should you use?

- [x] Standard
- [ ] Basic
- [ ] Free
- [ ] Shared

#### Q10. Your company is planning to migrate all their virtual machines to an Azure pay-as-you-go subscription. The virtual machines are currently hosted on the Hyper-V hosts in a data center. You are required make sure that the intended Azure solution uses the correct expenditure model. Solution: You should recommend the use of the elastic expenditure model. Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Q11. Your company is planning to migrate all their virtual machines to an Azure pay-as-you-go subscription. The virtual machines are currently hosted on the Hyper-V hosts in a data center. You are required make sure that the intended Azure solution uses the correct expenditure model. Solution: You should recommend the use of the scalable expenditure model. Does the solution meet the goal?

- [ ] Yes
- [x] No

#### Q12. Your company is planning to migrate all their virtual machines to an Azure pay-as-you-go subscription. The virtual machines are currently hosted on the Hyper-V hosts in a data center. You are required make sure that the intended Azure solution uses the correct expenditure model. Solution: You should recommend the use of the operational expenditure model. Does the solution meet the goal?

- [x] Yes
- [ ] No

#### Q13. You are required to deploy an Artificial Intelligence (AI) solution in Azure. You want to make sure that you are able to build, test, and deploy predictive analytics for the solution. Solution: You should make use of Azure Cosmos DB. Does the solution meet the goal?

- [ ] Yes
- [x] No

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