


##   3°_2from4

#### 13,  ::
`You provision virtual machines (VMs) as development environments.
`One VM does not start. The VM is stuck in a Windows update process. You attach the OS disk for the affected VM to a recovery VM.
`You need to correct the issue.
`In which order should you perform the actions?

- [x] 
`Run the following command at an elevated command prompt:
`dism /image:\ /get=packages > c:\temp\Patch.txt
`Open C:\temp\Patch.txt file and locate the update that is in a pending state
`Run the following command at an elevated command prompt: 
`dism /Image:<Attached OS disks>:\ /Remove
`Package /PackageName:<package name to delete>
`Detach the OS disk and recreate the VM

- [ ] 
`Run the following command at an elevated command prompt:
`dism /Image:<Attached OS disks>:\ /Remove
`Run the following command at an elevated command prompt: 
`Open C:\temp\Patch.txt file and locate the update that is in a pending state
`dism /image:\ /get=packages > c:\temp\Patch.txt
`Package /PackageName:<package name to delete>
`Detach the OS disk and recreate the VM

- [ ] 
`dism /image:\ /get=packages > c:\temp\Patch.txt
`Open C:\temp\Patch.txt file and locate the update that is in a pending state
`Run the following command at an elevated command prompt:
`Run the following command at an elevated command prompt: 
`dism /Image:<Attached OS disks>:\ /Remove
`Package /PackageName:<package name to delete>
`Detach the OS disk and recreate the VM

- [ ] 
`Run the following command at an elevated command prompt:
`dism /image:\ /get=packages > c:\temp\Patch.txt
`Open C:\temp\Patch.txt file and locate the update that is in a pending state
`Run the following command at an elevated command prompt: 
`dism /Image:<Attached OS disks>:\ /Remove
`Detach the OS disk and recreate the VM
`Package /PackageName:<package name to delete>
 
- [ ] 
`dism /image:\ /get=packages > c:\temp\Patch.txt
`Run the following command at an elevated command prompt:
`Open C:\temp\Patch.txt file and locate the update that is in a pending state
`Run the following command at an elevated command prompt: 
`dism /Image:<Attached OS disks>:\ /Remove
`Package /PackageName:<package name to delete>
`Detach the OS disk and recreate the VM


#### 14  Q0042,  ::You develop an HTTP triggered Azure Function app to process Azure Storage blob data. The app is triggered using an output binding on the blob.
`The app continues to time out after four minutes. The app must process the blob data.
`You need to ensure the app does not time out and processes the blob data.
`Solution: Update the functionTimeout property of the host.json project file to 10 minutes.

- [ ] Yes
- [x] No


#### 15  ::
`You are developing an Azure Durable Function based application that processes a list of input values. The application is monitored using a console application that retrieves JSON data from an Azure Function diagnostic endpoint.
`During processing a single instance of invalid input does not cause the function to fail. Invalid input must be available to the monitoring application.
`You need to implement the Azure Durable Function and the monitoring console application.
`How should you complete the code segments?

- [x]
`[FunctionName(App)]
`public static async Task<List<string>> RunOrchestrator(
`    [OrchestrationTrigger] IDurableOrchestrationContext context) {
`        EntityId[] input = . . . 
`        int errIndex = await context.CallEntityAsync(input[errIndex], "error")
`    }
`    using (var client = new HttpClient())
`    {
`        while (true)
`        {
`            var response = await client.GetAsync(". . .")
`            response.EnsureSuccessStatusCode();
`            var json = await response.Context.ReadAsStringAsync();
`            dynamic result = JsonConvert.DeserializeObject(json);
`            if(result.runtimeStatus == "Failed")
`            {
`                return result.input
    

- [ ]
`[FunctionName(App)]
`public static async Task<List<string>> RunOrchestrator(
`    [OrchestrationTrigger] IDurableOrchestrationContext context) {
`        EntityId[] input = . . . 
`        int errIndex = context.SetOutput(input[errIndex])
`    }
`    using (var client = new HttpClient())
`    {
`        while (true)
`        {
`            var response = await client.GetAsync(". . .")
`            response.EnsureSuccessStatusCode();
`            var json = await response.Context.ReadAsStringAsync();
`            dynamic result = JsonConvert.DeserializeObject(json);
`            if(result.runtimeStatus == "Failed")
`            {
`                return result.input
    


- [ ]
`[FunctionName(App)]
`public static async Task<List<string>> RunOrchestrator(
`    [OrchestrationTrigger] IDurableOrchestrationContext context) {
`        EntityId[] input = . . . 
`        int errIndex = await context.CallEntityAsync(input[errIndex], "error")
`    }
`    using (var client = new HttpClient())
`    {
`        while (true)
`        {
`            var response = await client.GetAsync(". . .")
`            response.EnsureSuccessStatusCode();
`            var json = await response.Context.ReadAsStringAsync();
`            dynamic result = JsonConvert.DeserializeObject(json);
`            if(result.runtimeStatus == "Completed")
`            {
`                return result.outpu


- [ ]
`[FunctionName(App)]
`public static async Task<List<string>> RunOrchestrator(
`    [OrchestrationTrigger] IDurableOrchestrationContext context) {
`        EntityId[] input = . . . 
`        int errIndex = await context.CallEntityAsync(input[errIndex], "error")
`    }
`    using (var client = new HttpClient())
`    {
`        while (true)
`        {
`            var response = await client.GetAsync(". . .")
`            response.EnsureSuccessStatusCode();
`            var json = await response.Context.ReadAsStringAsync();
`            dynamic result = JsonConvert.DeserializeObject(json);
`            if(result.runtimeStatus == "Failed")
`            {
`                return result.runtimeStatus


- [ ]
`[FunctionName(App)]
`public static async Task<List<string>> RunOrchestrator(
`    [OrchestrationTrigger] IDurableOrchestrationContext context) {
`        EntityId[] input = . . . 
`        int errIndex = await context.CallEntityAsync(input[errIndex], "error")
`    }
`    using (var client = new HttpClient())
`    {
`        while (true)
`        {
`            var response = await client.GetAsync(". . .")
`            response.EnsureSuccessStatusCode();
`            var json = await response.Context.ReadAsStringAsync();
`            dynamic result = JsonConvert.DeserializeObject(json);
`            if(result.runtimeStatus == "Awaited")
`            {
`                return result.input
    

- [ ]
`[FunctionName(App)]
`public static async Task<List<string>> RunOrchestrator(
`    [OrchestrationTrigger] IDurableOrchestrationContext context) {
`        EntityId[] input = . . . 
`        int errIndex = context.SignalEntity(input[errIndex], "error")
`    }
`    using (var client = new HttpClient())
`    {
`        while (true)
`        {
`            var response = await client.GetAsync(". . .")
`            response.EnsureSuccessStatusCode();
`            var json = await response.Context.ReadAsStringAsync();
`            dynamic result = JsonConvert.DeserializeObject(json);
`            if(result.runtimeStatus == "Failed")
`            {
`                return result.input

#### 16  Q0044,  ::You are developing an Azure Durable Function to manage an online ordering process.
`The process must call an external API to gather product discount information.
`You need to implement the Azure Durable Function.
`Which Azure Durable Function types should you use? Each correct answer presents part of the solution.


- [x] Orchestrator
- [x] Entity
- [ ] Client
- [ ] Activity

#### 17 ::
`You are authoring a set of nested Azure Resource Manager templates to deploy multiple Azure resources.
`The templates must be tested before deployment and must follow recommended practices.
`You need to validate and test the templates before deployment.

- [x] Determine wheather the templates follow recommended practices. : Azure Resource Manager test toolkit
- [ ] Determine wheather the templates follow recommended practices. : Azure Deployment Manager
- [ ] Determine wheather the templates follow recommended practices. : Templayement function
- [x] Test and validate changes that templetes will make to the environment : What-if operation
- [ ] Test and validate changes that templetes will make to the environment : User-defined function
- [ ] Test and validate changes that templetes will make to the environment : Template function










