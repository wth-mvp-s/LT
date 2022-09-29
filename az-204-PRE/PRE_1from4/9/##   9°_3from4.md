
##   9°_3from4

#### Q9.16::
`Issues -
`Users of the ContentUploadService report that they occasionally see HTTP 502 responses on specific pages.
`Question
`
`You need to monitor ContentUploadService according to the requirements.
`Which command should you use?

- [ ] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "avg Percentage CPU > 8"
- [ ] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "avg Percentage CPU > 800"
- [x] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "CPU Usage > 800"
- [ ] az monitor metrics alert create ג€"n alert ג€"g ג€¦ - -scopes ג€¦ - -condition "CPU Usage > 8"

#### Q9.17::
`Issues -
`Users of the ContentUploadService report that they occasionally see HTTP 502 responses on specific pages.
`
`Question
`
`You need to investigate the http server log output to resolve the issue with the ContentUploadService.
`Which command should you use first?

- [ ] az webapp log
- [ ] az ams live-output
- [ ] az monitor activity-log
- [x] az container attach

#### Q9.18::
`Issues -
`
`Function app -
`You perform local testing for the RequestUserApproval function. The following error message displays:
`'Timeout value of 00:10:00 exceeded by function: RequestUserApproval'
`The same error message displays when you test the function in an Azure development environment when you run the following Kusto query:
`
`FunctionAppLogs -
`| where FunctionName = = "RequestUserApproval"
`
`Question
`
`You need to investigate the Azure Function app error message in the development environment.
`What should you do?

- [x] Connect Live Metrics Stream from Application Insights to the Azure Function app and filter the metrics.
- [ ] Create a new Azure Log Analytics workspace and instrument the Azure Function app with Application Insights.
- [ ] Update the Azure Function app with extension methods from Microsoft.Extensions.Logging to log events by using the log instance.
- [ ] Add a new diagnostic setting to the Azure Function app to send logs to Log Analytics.


#### Q9.19::
`Security -
`All SSL certificates and credentials must be stored in Azure Key Vault.
`File access must restrict access by IP, protocol, and Azure AD rights.
`All user accounts and processes must receive only those privileges which are essential to perform their intended function.
`
`Compliance -
`Auditing of the file updates and transfers must be enabled to comply with General Data Protection Regulation (GDPR). The file updates must be read-only, stored in the order in which they occurred, include only create, update, delete, and copy operations, and be retained for compliance reasons.
`
`Question
`
`You need to configure security and compliance for the corporate website files.
`Which Azure Blob storage settings should you use?

- [ ] Restrict file access : role-based access control (RBAC)
- [ ] Restrict file access : managed identity
- [x] Restrict file access : shared access signature (SAS) token
- [ ] Restrict file access : connection string
- [ ] Enable file auditing : access tier
- [x] Enable file auditing : change feed
- [ ] Enable file auditing : blob indexer
- [ ] Enable file auditing : storage account type


#### Q9.20::
`Issues -
`
`Corporate website -
`While testing the site, the following error message displays:
`CryptographicException: The system cannot find the file specified.
`
`Function app -
`You perform local testing for the RequestUserApproval function. The following error message displays:
`'Timeout value of 00:10:00 exceeded by function: RequestUserApproval'
`The same error message displays when you test the function in an Azure development environment when you run the following Kusto query:
`
`FunctionAppLogs -
`| where FunctionName = = "RequestUserApproval"
`
`Logic app -
`You test the Logic app in a development environment. The following error message displays:
`'400 Bad Request'
`Troubleshooting of the error shows an HttpTrigger action to call the RequestUserApproval function.
`
`Question
`
`You need to correct the RequestUserApproval Function app error.
`What should you do?

- [ ] Update line RA13 to use the async keyword and return an HttpRequest object value.
- [ ] Configure the Function app to use an App Service hosting plan. Enable the Always On setting of the hosting plan.
- [x] Update the function to be stateful by using Durable Functions to process the request payload.
- [ ] Update the functionTimeout property of the host.json project file to 15 minutes.

#### Q9.21::
`Policies -
`
`Log policy -
`All Azure App Service Web Apps must write logs to Azure Blob storage. All log files should be saved to a container named logdrop. Logs must remain in the container for 15 days.
`
`Question
`
`You need to implement the Log policy.
`How should you complete the Azure Event Grid subscription?

- [x]
`{
    "name": "newlogs",
    "properties":{
        "topic":"/subscriptions/. . ./providers/Microsoft.EventGrid/topics/. . .",
        "destination":{
            "endpointType": "WebHook"},
        "filter":"subjectBeginsWith":"/blobServices/default/containers/logdrop",
        "includedEventTypes":["Microsoft.Storage.BlobCreated"]},
    },
    "labels":[],
    "eventDeliverySchema":"EventGridSchema"

- [ ]
`{
    "name": "newlogs",
    "properties":{
        "topic":"/subscriptions/. . ./providers/Microsoft.EventGrid/topics/. . .",
        "destination":{
            "endpointType": "WebHook"},
        "filter":"subjectEndsWith":"/blobServices/default/containers/logdrop",
        "includedEventTypes":["Microsoft.Storage.BlobCreated"]},
    },
    "labels":[],
    "eventDeliverySchema":"EventGridSchema"


- [ ]
`{
    "name": "newlogs",
    "properties":{
        "topic":"/subscriptions/. . ./providers/Microsoft.EventGrid/topics/. . .",
        "destination":{
            "endpointType": "WebHook"},
        "filter":"subjectBeginsWith":"/blobServices/default/containers/logdrop",
        "includedEventTypes":["Microsoft.Storage"]},
    },
    "labels":[],
    "eventDeliverySchema":"EventGridSchema"

- [ ]
`{
    "name": "newlogs",
    "properties":{
        "topic":"/subscriptions/. . ./providers/Microsoft.EventGrid/topics/. . .",
        "destination":{
            "endpointType": "EventHub"},
        "filter":"subjectBeginsWith":"/blobServices/default/containers/logdrop",
        "includedEventTypes":["Microsoft.Storage.BlobCreated"]},
    },
    "labels":[],
    "eventDeliverySchema":"EventGridSchema"

- [ ]
`{
    "name": "newlogs",
    "properties":{
        "topic":"/subscriptions/. . ./providers/Microsoft.EventGrid/topics/. . .",
        "destination":{
            "endpointType": "All"},
        "filter":"subjectBeginsWith":"/blobServices/default/containers/logdrop",
        "includedEventTypes":["Microsoft.Storage.BlobCreated"]},
    },
    "labels":[],
    "eventDeliverySchema":"EventGridSchema"




#### Q9.22::
`PolicyLib -
`You have a shared library named PolicyLib that contains functionality common to all ASP.NET Core web services and applications. The PolicyLib library must:
`Exclude non-user actions from Application Insights telemetry.
`Provide methods that allow a web service to scale itself.
`Ensure that scaling actions do not disrupt application usage.
`
`Issues -
`
`Performance issue -
`When under heavy load, the anomaly detection service undergoes slowdowns and rejects connections.
`
`Notification latency -
`Users report that anomaly detection emails can sometimes arrive several minutes after an anomaly is detected.
`
`Question
`
`You need to ensure that the solution can meet the scaling requirements for Policy Service.
`Which Azure Application Insights data model should you use?

- [ ] an Application Insights dependency
- [ ] an Application Insights event
- [ ] an Application Insights trace
- [x] an Application Insights metric







