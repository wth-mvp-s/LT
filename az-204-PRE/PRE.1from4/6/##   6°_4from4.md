
##   6°_4from4




#### 26 Qp27.3Topic4Set4question18_p36 [most_voted]::You are developing applications for a company. You plan to host the applications on Azure App Services.
`The company has the following requirements:
`✑ Every five minutes verify that the websites are responsive.
`✑ Verify that the websites respond within a specified time threshold. Dependent requests such as images and JavaScript files must load properly.
`✑ Generate alerts if a website is experiencing issues.
`✑ If a website fails to load, the system must attempt to reload the site three more times.
`You need to implement this process with the least amount of effort.
`What should you do?



- [ ] Create a Selenium web test and configure it to run from your workstation as a scheduled task.
- [x] Set up a URL ping test to query the home page.
- [ ] Create an Azure function to query the home page.
- [ ] Create a multi-step web test to query the home page.
- [ ] Create a Custom Track Availability Test to query the home page.



#### Qp27.3Topic4Set4question19_p.36 [most_voted]::You develop and add several functions to an Azure Function app that uses the latest runtime host. The functions contain several REST API endpoints secured by using SSL. The Azure Function app runs in a Consumption plan.
`You must send an alert when any of the function endpoints are unavailable or responding too slowly.
`You need to monitor the availability and responsiveness of the functions.
`What should you do?



- [ ] Create a URL ping test.
- [x] Create a timer triggered function that calls TrackAvailability() and send the results to Application Insights.
- [ ] Create a timer triggered function that calls GetMetric("Request Size") and send the results to Application Insights.
- [ ] Add a new diagnostic setting to the Azure Function app. Enable the FunctionAppLogs and Send to Log Analytics options.

#### 28::
`You are developing an application to retrieve user profile information. The application will use the Microsoft Graph SDK.
`The app must retrieve user profile information by using a Microsoft Graph API call.
`You need to call the Microsoft Graph API from the application.
`In which order should you perform the actions?

- [x]
`Register the application with the Microsoft identity platform. 
`Build a client by using the client app ID. 
`Create an authentication provider. 
`Create a new instance of the GraphServiceClient. 
`Invoke the request to the Microsoft Graph API. 


- [ ]
`Register the application with the Microsoft identity platform. 
`Invoke the request to the Microsoft Graph API. 
`Create an authentication provider. 
`Create a new instance of the GraphServiceClient. 
`Build a client by using the client app ID. 


- [ ]
`Build a client by using the client app ID. 
`Create an authentication provider. 
`Create a new instance of the GraphServiceClient. 
`Register the application with the Microsoft identity platform. 
`Invoke the request to the Microsoft Graph API. 

- [ ]
`Register the application with the Microsoft identity platform. 
`Build a client by using the client app ID. 
`Create a new instance of the GraphServiceClient. 
`Create an authentication provider. 
`Invoke the request to the Microsoft Graph API. 


- [ ]
`Create an authentication provider. 
`Create a new instance of the GraphServiceClient. 
`Invoke the request to the Microsoft Graph API. 
`Register the application with the Microsoft identity platform. 
`Build a client by using the client app ID. 




#### 29::
`You develop and deploy an Azure Logic App that calls an Azure Function app. The Azure Function App includes an OpenAPI (Swagger) definition and uses an
`Azure Blob storage account. All resources are secured by using Azure Active Directory (Azure AD).
`The Logic App must use Azure Monitor logs to record and store information about runtime data and events. The logs must be stored in the Azure Blob storage account.
`You need to set up Azure Monitor logs and collect diagnostics data for the Azure Logic App.
`Which three actions should you perform in sequence?

- [x]
`Create a Log Analytics workspace.
`Install the Logic Apps Management solution. 
`Add a diagnostic setting to the Azure Logic App.


- [ ]
`Create a Log Analytics workspace. 
`Install the Logic Apps Management solution. 
`Add a diagram setting to the Azure Function App. 



- [ ]
`Create a Log Analytics workspace. 
`Add a diagram setting to the Azure Function App. 
`Install the Logic Apps Management solution. 


- [ ]
`Create action groups and alert rules. 
`Install the Logic Apps Management solution. 
`Add a diagram setting to the Azure Function App. 


- [ ]
`Create an Azure storage account. 
`Add a diagram setting to the Azure Function App. 
`Install the Logic Apps Management solution. 


- [ ]
`Create action groups and alert rules. 
`Create a Log Analytics workspace. 
`Install the Logic Apps Management solution. 

- [ ]
`Add a diagram setting to the Azure Function App. 
`Create an Azure storage account. 
`Add a diagnostic setting to the Azure Logic App. 


#### 30::
`You develop an application. You plan to host the application on a set of virtual machines (VMs) in Azure.
`You need to configure Azure Monitor to collect logs from the application.
`Which four actions should you perform in sequence?


- [x]
`Create a Log Analytics workspace.
`Add a VMInsights solution. 
`Install agents on the VM and VM scale set to be monitored. 
`Create an Application Insight resource. 

- [ ]
`Create a Log Analytics workspace.
`Add a VMInsights solution. 
`Install agents on the VM and VM scale set to be monitored. 
`Create a Log Analytics workspace.


- [ ]
`Add a VMInsights solution. 
`Create a Log Analytics workspace.
`Install agents on the VM and VM scale set to be monitored. 
`Create an Application Insight resource. 



- [ ]
`Create a Log Analytics workspace.
`Add a VMInsights solution. 
`Send console logs. 
`Install agents on the VM and VM scale set to be monitored. 



- [ ]
`Create a Log Analytics workspace.
`Install agents on the VM and VM scale set to be monitored. 
`Add a VMInsights solution. 
`Create an Application Insight resource. 


- [ ]
`Create a Log Analytics workspace.
`Install agents on the VM and VM scale set to be monitored. 
`Send console logs. 
`Add a VMInsights solution. 

