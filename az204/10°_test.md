##   10°_test



#### Q10.2 ::
`Proposed solution -
`The on-premises shipping application must be moved to `Azure. The VM has been migrated to a new Standard_D16s_v3 `Azure VM by using Azure Site Recovery and must remain `running in Azure to complete the BizTalk component `migrations. You create a Standard_D16s_v3 Azure VM to `host BizTalk Server. The Azure architecture diagram for `the proposed solution is shown below:
`
`Shipping Logic app -
`The Shipping Logic app must meet the following `requirements:
`Support the ocean transport and inland transport `workflows `by using a Logic App.
`Support industry-standard protocol X12 message format for `various messages including vessel content details and `arrival notices.
`Secure resources to the corporate VNet and use dedicated `storage resources with a fixed costing model.
`Maintain on-premises connectivity to support legacy `applications and final BizTalk migrations.
`
`Shipping Function app -
`Implement secure function endpoints by using app-level `security and include Azure Active Directory (Azure AD).
`
`REST APIs -
`The REST API's that support the solution must meet the `following requirements:
`Secure resources to the corporate VNet.
`Allow deployment to a testing location within Azure while `not incurring additional costs.
`Automatically scale to double capacity during peak `shipping times while not causing application downtime.
`Minimize costs when selecting an Azure payment model.
`
`Shipping data -
`Data migration from on-premises to Azure must minimize `costs and downtime.
`
`Shipping website -
`Use Azure Content Delivery Network (CDN) and ensure `maximum performance for dynamic content while minimizing `latency and costs.
`
`Issues -
`
`Windows Server 2016 VM - The VM shows high network `latency, jitter, and high CPU utilization. The VM is `critical and "has not been backed up in the past. The VM `must enable a quick restore from a 7-day snapshot "to `include in-place restore of disks in case of failure.
`
`Shipping website and REST APIs - The following error `message displays while you are testing `the website: `Failed to load http://test-shippingapi.wideworldimporters.`com/: No `'Access-Control-Allow-Origin' header is present `on the requested resource. Origin 'http://`test.`wideworldimporters.com/' is therefore not allowed access.
`
`Question
`You need to support the requirements for the Shipping `Logic App.
`What should you use?

- [ ] Azure Active Directory Application Proxy
- [ ] Site-to-Site (S2S) VPN connection
- [x] On-premises Data Gateway
- [ ] Point-to-Site (P2S) VPN connection


#### Q10.4 [100%]::
`Background -
`City Power & Light company provides electrical `infrastructure monitoring solutions for homes and `businesses. The company is migrating solutions to Azure.
`
`Current environment -
`
`Architecture overview -
`The company has a public website located at http://www.`cpandl.com/. The site is a single-page web application `that runs in Azure App Service on Linux. The website uses `files stored in Azure Storage and cached in Azure Content `Delivery Network (CDN) to serve static content.
`API Management and Azure Function App functions are used `to process and store data in Azure Database for `PostgreSQL. API Management is used to broker `communications to the Azure Function app functions for `Logic app integration. Logic apps are used to orchestrate `the data processing while Service Bus and
`Event Grid handle messaging and events.
`The solution uses Application Insights, Azure Monitor, `and Azure Key Vault.
`
`Issues -
`
`Corporate website -
`While testing the site, the following error message `displays:
`CryptographicException: The system cannot find the file `specified.
`
`Function app -
`You perform local testing for the RequestUserApproval `function. The following error message displays:
`'Timeout value of 00:10:00 exceeded by function: `RequestUserApproval'
`The same error message displays when you test the `function 
`in an Azure development environment when you run the `following Kusto query:
`
`FunctionAppLogs -
`| where FunctionName = = "RequestUserApproval"
`
`Logic app -
`You test the Logic app in a development environment. The `following error message displays:
`'400 Bad Request'
`Troubleshooting of the error shows an HttpTrigger action `to call the RequestUserApproval function.
`
`Question
`You need to ensure that all messages from Azure Event `Grid are processed.
`What should you use?

- [ ] Azure Event Grid topic
- [ ] Azure Service Bus topic
- [x] Azure Service Bus queue
- [ ] Azure Storage queue   
- [ ] Azure Logic App custom connector