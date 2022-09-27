##   7°_1from4

#### 0020_new [1voter] ::You develop and deploy an Azure App Service web app. The app is deployed to multiple regions and uses Azure Traffic Manager. Application Insights is enabled for the app.
`You need to analyze app uptime for each month.
`Which two solutions will achieve the goal?

- [ ] Azure Monitor logs
- [x] Application Insights alerts
- [ ] Azure Monitor metrics
- [x] Application Insights web tests


#### 0021_new [2voter] ::You develop and deploy an Azure App Service web app. The web app accesses data in an Azure SQL database.
`You must update the web app to store frequently used data in a new Azure Cache for Redis Premium instance.
`You need to implement the Azure Cache for Redis features.
`Which feature should you implement? 
`
`Create a data structure for storing collection of relared items

- [ ] horizontal partitioning
- [ ] channel
- [ ] list
- [x] set


#### 0021_new [2voter] ::You develop and deploy an Azure App Service web app. The web app accesses data in an Azure SQL database.
`You must update the web app to store frequently used data in a new Azure Cache for Redis Premium instance.
`You need to implement the Azure Cache for Redis features.
`Which feature should you implement? 
`
`Create a data structure for the most recent accessed cache items

- [ ] horizontal partitioning
- [ ] channel
- [x] list
- [ ] set


#### 0021_new [2voter] ::You develop and deploy an Azure App Service web app. The web app accesses data in an Azure SQL database.
`You must update the web app to store frequently used data in a new Azure Cache for Redis Premium instance.
`You need to implement the Azure Cache for Redis features.
`Which feature should you implement? 
`
`Send messages through a high-performance publisher/subscriber mechanism

- [ ] horizontal partitioning
- [x] channel
- [ ] list
- [x] set




#### 0000.23 [100%] ::You are developing an ASP.NET Core Web API web service. The web service uses Azure Application Insights for all telemetry and dependency tracking. The web service reads and writes data to a database other than Microsoft SQL Server.
`You need to ensure that dependency tracking works for calls to the third-party database.
`Which two dependency telemetry properties should you use? Each correct answer presents part of the solution.

- [ ] Telemetry.Context.Cloud.RoleInstance
- [x] Telemetry.Id
- [ ] Telemetry.Name
- [x] Telemetry.Context.Operation.Id
- [ ] Telemetry.Context.Session.Id


#### 0000.23 [highly-voted%] ::You are using Azure Front Door Service.
`You are expecting inbound files to be compressed by using Brotli compression. You discover that inbound XML files are not compressed. The files are 9 megabytes (MB) in size.
`You need to determine the root cause for the issue.
`
`The file MIME type is supported by the service.

- [x] Yes
- [ ] No


#### Qp23.3Topic4Set4question2.B ::You are using Azure Front Door Service.
`You are expecting inbound files to be compressed by using Brotli compression. You discover that inbound XML files are not compressed. The files are 9 megabytes (MB) in size.
`You need to determine the root cause for the issue.
`
`Edge nodes must be purged of all cache assets.

- [ ] Yes
- [x] No


#### Qp23.3Topic4Set4question2.C ::You are using Azure Front Door Service.
`You are expecting inbound files to be compressed by using Brotli compression. You discover that inbound XML files are not compressed. The files are 9 megabytes (MB) in size.
`You need to determine the root cause for the issue.
`
`The compression type is supported.

- [x] Yes
- [ ] No



#### Qp23.3Topic4Set4question3.A [highly-voted%]::You are developing an Azure App Service hosted ASP.NET Core web app to deliver video-on-demand streaming media. You enable an Azure Content Delivery
`Network (CDN) Standard for the web endpoint. Customer videos are downloaded from the web app by using the following example URL: http://www.contoso.com/ content.mp4?quality=1
`All media content must expire from the cache after one hour. Customer videos with varying quality must be delivered to the closest regional point of presence
`(POP) node.
`You need to configure Azure CDN caching rules.
`Which options should you use? To answer, select the appropriate options in the answer area.
`
`Caching bahavior

- [ ] Bypass cache
- [x] Override
- [ ] Set if missing

#### Qp23.3Topic4Set4question3.B ::You are developing an Azure App Service hosted ASP.NET Core web app to deliver video-on-demand streaming media. You enable an Azure Content Delivery
`Network (CDN) Standard for the web endpoint. Customer videos are downloaded from the web app by using the following example URL: http://www.contoso.com/ content.mp4?quality=1
`All media content must expire from the cache after one hour. Customer videos with varying quality must be delivered to the closest regional point of presence
`(POP) node.
`You need to configure Azure CDN caching rules.
`Which options should you use? To answer, select the appropriate options in the answer area.
`
`Cache expiration duration

- [ ] 1 second
- [ ] 1 minute
- [x] 1 hour
- [ ] 1 day

#### Qp23.3Topic4Set4question3.C ::You are developing an Azure App Service hosted ASP.NET Core web app to deliver video-on-demand streaming media. You enable an Azure Content Delivery
`Network (CDN) Standard for the web endpoint. Customer videos are downloaded from the web app by using the following example URL: http://www.contoso.com/ content.mp4?quality=1
`All media content must expire from the cache after one hour. Customer videos with varying quality must be delivered to the closest regional point of presence
`(POP) node.
`You need to configure Azure CDN caching rules.
`Which options should you use? To answer, select the appropriate options in the answer area.
`
`Query string caching behavior

- [ ] Ignore query strings
- [ ] Bypass caching for query strings
- [x] Cache every unique URL

#### 0025::
`You are developing an ASP.NET Core time sheet application that runs as an Azure Web App. Users of the application enter their time sheet information on the first day of every month.
`The application uses a third-party web service to validate data.
`The application encounters periodic server errors due to errors that result from calling a third-party web server. Each request to the third-party server has the same chance of failure.
`You need to configure an Azure Monitor alert to detect server errors unrelated to the third-party service. You must minimize false-positive alerts.
`How should you complete the Azure Resource Manager template?


- [x]
"type":"Microsoft.Insights/metricAlerts",
"properties":{
    "criteria":{
        "odata.type":". . .",
        "allof":{
            "criterionType":"DynamicThresholdCriterion",
            "metricName":"Http5xx",
            "alertSensitivity":"Low"


- [ ]
"type":"Microsoft.Insights/metricAlerts",
"properties":{
    "criteria":{
        "odata.type":". . .",
        "allof":{
            "criterionType":"DynamicThresholdCriterion",
            "metricName":"Http5xx",
            "alertSensitivity":"High"


- [ ]
"type":"Microsoft.Insights/metricAlerts",
"properties":{
    "criteria":{
        "odata.type":". . .",
        "allof":{
            "criterionType":"SingleResourceMultipleMetricCriteria",
            "metricName":"Http5xx",
            "alertSensitivity":"Hight"


- [ ]
"type":"Microsoft.Insights/metricAlerts",
"properties":{
    "criteria":{
        "odata.type":". . .",
        "allof":{
            "criterionType":"DynamicThresholdCriterion",
            "metricName":"Http4xx",
            "alertSensitivity":"Low"



