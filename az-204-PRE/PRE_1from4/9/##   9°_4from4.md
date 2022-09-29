
##   9°_4from4


#### Q9.23::
`Question
`
`You need to implement telemetry for non-user actions.
`How should you complete the Filter class?

- [x]
`public class Filter : ITelemetryProcessor
`{
`    private readonly ITelemetryProcessor _next;
`    public Filter (ITelemetryProcessor next)
`    {
`        _next = next;
`    }
`    public void Process(ITelemetry item)
`    {
`        var x = item as RequestTelemetry;
`        if(x?.Url.AbsolutePath =="/health")
`        {
`            return;
`        }
`        -next.Process(item);

- [ ]
`public class Filter : ITelemetryProcessor
`{
`    private readonly ITelemetryProcessor _next;
`    public Filter (ITelemetryProcessor next)
`    {
`        _next = next;
`    }
`    public void Process(ITelemetry item)
`    {
`        var x = item as PageViewTelemetry;
`        if(x?.Url.AbsolutePath =="/health")
`        {
`            return;
`        }
`        -next.Process(item);

- [ ]
`public class Filter : ITelemetryInitializer
`{
`    private readonly ITelemetryInitializer _next;
`    public Filter (ITelemetryInitializer next)
`    {
`        _next = next;
`    }
`    public void Process(ITelemetry item)
`    {
`        var x = item as RequestTelemetry;
`        if(x?.Url.AbsolutePath =="/health")
`        {
`            return;
`        }
`        -next.Process(item);

- [ ]
`public class Filter : ITelemetryProcessor
`{
`    private readonly ITelemetryProcessor _next;
`    public Filter (ITelemetryProcessor next)
`    {
`        _next = next;
`    }
`    public void Process(ITelemetry item)
`    {
`        var x = item as RequestTelemetry;
`        if(x?.Url.AbsolutePath =="/status")
`        {
`            return;
`        }
`        -next.Process(item);


    


#### Q9.24::
`Requirements -
`
`PolicyLib -
`You have a shared library named PolicyLib that contains functionality common to all ASP.NET Core web services and applications. The PolicyLib library must:
`Exclude non-user actions from Application Insights telemetry.
`Provide methods that allow a web service to scale itself.
`Ensure that scaling actions do not disrupt application usage.
`
`Question
`
`You need to ensure that PolicyLib requirements are met.
`How should you complete the code segment?

- [x]
`public class IncludeEventId : ITelemetryInitializer
`{
`    public void Initialize(ITelemetry telemetry)
`   {
`        telemetry.Context.Properties["EvenId"] = 
`        ((EventTelemetry)telemetry).Properties["EvenId"];


- [ ]
`public class IncludeEventId : ITelemetryInitializer
`{
`    public void Process(ITelemetry telemetry)
`   {
`        telemetry.Context.Properties["EvenId"] = 
`        ((EventTelemetry)telemetry).Properties["EvenId"];

- [ ]
`public class IncludeEventId : ITelemetryProcessor
`{
`    public void Initialize(ITelemetry telemetry)
`   {
`        telemetry.Context.Properties["EvenId"] = 
`        ((EventTelemetry)telemetry).Properties["EvenId"];

- [ ]
`public class IncludeEventId : ITelemetryInitializer
`{
`    public void Initialize(ITelemetry telemetry)
`   {
`        telemetry.Sequence.Properties["EvenId"] = 
`        ((EventTelemetry)telemetry).Properties["EvenId"];

- [ ]
`public class IncludeEventId : ITelemetryInitializer
`{
`    public void Initialize(ITelemetry telemetry)
`   {
`        telemetry.Context.Properties["EvenId"] = 
`        EventGridController.EventId.Value


#### Q9.25::
`Requirements -
`
`Receipt processing -
`Concurrent processing of a receipt must be prevented.
`
`Receipt data must always be encrypted at rest.
`
`Issues -
`
`Upload format issue -
`Employees occasionally report an issue with uploading a receipt using the web application. They report that when they upload a receipt using the Azure File
`Share, the receipt does not appear in their profile. When this occurs, they delete the file in the file share and use the web application, which returns a 500 Internal
`Server error page.
`
`Question
`
`You need to ensure receipt processing occurs correctly.

- [ ] Use blob properties to prevent concurrency problems
- [ ] Use blob SnapshotTime to prevent concurrency problems
- [ ] Use blob metadata to prevent concurrency problems
- [x] Use blob leases to prevent concurrency problems



#### Q9.26::
`Issues -
`
`Capacity issue -
`During busy periods, employees report long delays between the time they upload the receipt and when it appears in the web application.
`
`Question
`
`You need to resolve the capacity issue.

- [ ] Convert the trigger on the Azure Function to an Azure Blob storage trigger
- [ ] Ensure that the consumption plan is configured correctly to allow scaling
- [ ] Move the Azure Function to a dedicated App Service Plan
- [x] Update the loop starting on line PC09 to process items in parallel

#### Q9.27::
`Log capacity issue -
`Developers report that the number of log messages in the trace output for the processor is too high, resulting in lost log messages.
`
`You need to resolve the log capacity issue.



- [ ] Create an Application Insights Telemetry Filter
- [ ] Change the minimum log level in the host.json file for the function
- [x] Implement Application Insights Sampling
- [ ] Set a LogCategoryFilter during startup

#### Q9.28::
`Retail store locations -
`Azure Functions must process data immediately when data is ploaded to Blob storage. Azure Functions must update Azure Cosmos DB by using native SQL language queries.
`
`Question
`
`You need to implement event routing for retail store location data.

- [x] Source : Azure Blob Storage
- [ ] Source : Azure Event Grid
- [ ] Source : Azure Service Bus
- [ ] Source : Azure Event Hub
- [x] Receiver : Azure Event Grid
- [ ] Receiver : Azure Event Hub
- [ ] Receiver : Azure Service Bus
- [ ] Receiver : Azure Blob Storage
- [x] Handler : Azure Function App
- [ ] Handler : Azure Logic App
- [ ] Handler : Azure Event Grid
- [ ] Handler : Azure Blob Storage

#### Q9.29::
`Issues -
`Calls to the Printer API App fail periodically due to printer communication timeouts.
`Printer communication timeouts occur after 10 seconds. The label printer must only receive up to 5 attempts within one minute.
`The order workflow fails to run upon initial deployment to Azure.
`
`Question
`
`You need to troubleshoot the order workflow.
`Which two actions should you perform?

- [ ] Review the API connections.
- [ ] Review the activity log.
- [x] Review the run history.
- [x] Review the trigger history.

#### Q9.30::
`Issues -
`Calls to the Printer API App fail periodically due to printer communication timeouts.
`Printer communication timeouts occur after 10 seconds. The label printer must only receive up to 5 attempts within one minute.
`The order workflow fails to run upon initial deployment to Azure.
`
`Question
`
`You need to update the order workflow to address the issue when calling the Printer API App.
`How should you complete the code?

- [ ]
`"print_label":{
`    "type": "Http",
`    "inputs":{
`        "method": "POST",
`        "uri":"https://cohowinery.com/printer/printlabel",
`        "retryPolicy":{
`            "type":"fixed",
`            "interwal":"PT60S",
`            "count":5


- [ ]
`"print_label":{
`    "type": "Http",
`    "inputs":{
`        "method": "POST",
`        "uri":"https://cohowinery.com/printer/printlabel",
`        "retryPolicy":{
`            "type":"exponential",
`            "interwal":"PT60S",
`            "count":5



- [ ]
`"print_label":{
`    "type": "Http",
`    "inputs":{
`        "method": "POST",
`        "uri":"https://cohowinery.com/printer/printlabel",
`        "retryPolicy":{
`            "type":"default",
`            "interwal":"PT60S",
`            "count":5


- [ ]
`"print_label":{
`    "type": "Http",
`    "inputs":{
`        "method": "POST",
`        "uri":"https://cohowinery.com/printer/printlabel",
`        "retryPolicy":{
`            "type":"fixed",
`            "interwal":"PT1D",
`            "count":5


- [ ]
`"print_label":{
`    "type": "Http",
`    "inputs":{
`        "method": "POST",
`        "uri":"https://cohowinery.com/printer/printlabel",
`        "retryPolicy":{
`            "type":"none",
`            "interwal":"PT10S",
`            "count":5


- [x]
`"print_label":{
`    "type": "Http",
`    "inputs":{
`        "method": "POST",
`        "uri":"https://cohowinery.com/printer/printlabel",
`        "retryPolicy":{
`            "type":"fixed",
`            "interwal":"PT10S",
`            "count":5

- [ ]
`"print_label":{
`    "type": "Http",
`    "inputs":{
`        "method": "POST",
`        "uri":"https://cohowinery.com/printer/printlabel",
`        "retryPolicy":{
`            "type":"fixed",
`            "interwal":"PT60S",
`            "count":10
