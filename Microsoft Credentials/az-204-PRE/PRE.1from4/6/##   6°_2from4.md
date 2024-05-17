
##   6°_2from4

#### 0000.12 ::
`You develop a web app that uses the tier D1 app service plan by using the Web Apps feature of Microsoft Azure App Service.
`Spikes in traffic have caused increases in page load times.
`You need to ensure that the web app automatically scales when CPU load is about 85 percent and minimize costs.
`Which four actions should you perform in sequence? 

- [x] 
`Configure the web app to the Standard App Service tier. 
`Enable autoscalling on the web app. 
`Add a Scale rule. 
`Configure a Scale condition.


- [ ] 
`Configure the web app to the Standard App Service tier. 
`Add a Scale rule. 
`Enable autoscalling on the web app. 
`Configure a Scale condition.

- [ ] 
`Configure the web app to the Standard App Service tier. 
`Add a Scale rule. 
`Switch to an Azure App Services consumtion plan. 
`Configure a Scale condition.


- [ ] 
`Configure the web app to the Standard App Service tier. 
`Enable autoscalling on the web app. 
`Add a Scale rule. 
`Switch to an Azure App Services consumtion plan. 


- [ ] 
`Configure the web app to the Premium App Service tier. 
`Configure the web app to the Standard App Service tier. 
`Enable autoscalling on the web app. 
`Add a Scale rule. 

#### 0000.13 [11] ::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Enable Application Request Routing (ARR).
`Does the solution meet the goal?

- [ ] Yes
- [x] No


#### 0000.14 [most_voted]::You are developing and deploying several ASP.NET web applications to Azure App Service. You plan to save session state information and HTML output.
`You must use a storage mechanism with the following requirements:
`✑ Share session state across all ASP.NET web applications.
`✑ Support controlled, concurrent access to the same session state data for multiple readers and a single writer.
`✑ Save full HTTP responses for concurrent requests.
`You need to store the information.
`Proposed Solution: Deploy and configure an Azure Database for PostgreSQL. Update the web applications.
`Does the solution meet the goal?

- [x] Yes
- [ ] No

#### 0000.15::
`A company is developing a gaming platform. Users can join teams to play online and see leaderboards that include player statistics. The solution includes an entity named Team.
`You plan to implement an Azure Redis Cache instance to improve the efficiency of data operations for entities that rarely change.
`You need to invalidate the cache when team data is changed.
`How should you complete the code?

- [ ] 
`void ClearCachedTeams()
`{
`    IDatabase cache = Connection.GetDatabase();
`    cache.ValueDelete("Team");
`    ViewBag.msg +="Team data removed from cache."
 

- [ ] 
`void ClearCachedTeams()
`{
`    ICache cache = Connection.GetDatabase();
`    cache.StringSet("Team","");
`    ViewBag.msg +="Team data removed from cache."
    

- [x] 
`void ClearCachedTeams()
`{
`    IDatabase cache = Connection.GetDatabase();
`    cache.KeyDelete("Team");
`    ViewBag.msg +="Team data removed from cache."
    
- [ ] 
`void ClearCachedTeams()
`{
`    ICache cache = Connection.GetDatabase();
`    cache.KeyDelete("Team");
`    ViewBag.msg +="Team data removed from cache."

- [ ] 
`void ClearCachedTeams()
`{
`    IDatabase cache = Connection.GetDatabase();
`    cache.ValueDelete("Team");
`    ViewBag.msg +="Team data removed from cache."



- [ ] 
`void ClearCachedTeams()
`{
`    IDatabase cache = Connection.GetDatabase();
`    cache.StringSet("Team","");
`    ViewBag.msg +="Team data removed from cache."
    



#### 0000.16::
`A company has multiple warehouses. Each warehouse contains IoT temperature devices which deliver temperature data to an Azure Service Bus queue.
`You need to send email alerts to facility supervisors immediately if the temperature at a warehouse goes above or below specified threshold temperatures.
`Which five actions should you perform in sequence?

- [x]
`Create a blank Logic app. 
`Add a logic app Trigger that fires when one or more messages arrive in the queue. 
`Add an action that reads IoT temperature data from the Service Bus queue. 
`Add a condition that compares the temperature against the upper and lower thresholds. 
`Add an action that sends an email to specified personnel if the temperature is outside of those thresholds.


- [ ]
`Create a blank Logic app. 
`Add a logic app Trigger that fires when one or more messages arrive in the queue. 
`Add an action that reads IoT temperature data from the Service Bus queue. 
`Add a condition that compares the temperature against the upper and lower thresholds. 
`Add a Resource trigger that schedules the app to run every 15 minutes. 


- [ ]
`Create a blank Logic app. 
`Add a trigger that reads IoT temperature data from a Service Bus queue. 
`Add an action that reads IoT temperature data from the Service Bus queue. 
`Add a condition that compares the temperature against the upper and lower thresholds. 
`Add an action that sends an email to specified personnel if the temperature is outside of those thresholds.

- [ ]
`Create a blank Logic app. 
`Add an action that reads IoT temperature data from the Service Bus queue. 
`Add a logic app Trigger that fires when one or more messages arrive in the queue. 
`Add a condition that compares the temperature against the upper and lower thresholds. 
`Add an action that sends an email to specified personnel if the temperature is outside of those thresholds.

- [ ]
`Add a logic app Trigger that fires when one or more messages arrive in the queue. 
`Add a Resource trigger that schedules the app to run every 15 minutes. 
`Add an action that sends an email to specified personnel if the temperature is outside of those thresholds.
`Add a trigger that reads IoT temperature data from a Service Bus queue. 
`Add a logic app action that fires when one or more messages arrive in the queue. 


#### 17 Qp25.3Topic4Set4question9.A_p34 [rechecked]::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` Which pages visited by users most often correlate to a product purchase?

- [ ] Users
- [x] Funnels
- [ ] Impact
- [ ] Retention
- [ ] User Flows



#### Qp25.3Topic4Set4question9.B [rechecked]::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` How does load time of the product display page affect a user's decision to purchase a product?

- [ ] Users
- [ ] Funnels
- [x] Impact
- [ ] Retention
- [ ] User Flows

#### Qp25.3Topic4Set4question9.C [rechecked]::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` Which events most influence a user's decision to continue to use the application? 

- [ ] Users
- [ ] Funnels
- [ ] Impact
- [x] Retention
- [ ] User Flows


#### Qp25.3Topic4Set4question9.D [rechecked]::You develop an ASP.NET Core MVC application. You configure the application to track webpages and custom events.
`You need to identify trends in application usage.
`Which Azure Application Insights Usage Analysis features should you use? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
` Are there places in the application that users often perform repetitive actions? 

- [ ] Users
- [ ] Funnels
- [ ] Impact
- [ ] Retention
- [x] User Flows




















