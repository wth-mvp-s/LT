##   10°_AllOrder


#### 006, ::
`You have an on-premises Bitbucket Server with a firewall configured to block inbound Internet traffic. The server is used for Git-based source control.
`You intend to manage the build and release processes using Azure DevOps. This plan requires you to integrate Azure DevOps and Bitbucket.
`Which of the following will allow for this integration? Answer by dragging the correct options from the list to the answer area.

- [0] A self-hosted agent
- [-] A Microsoft-hosted agent
- [1] An External Git service connection
- [-] Service hooks

#### 0019::You are preparing to deploy an Azure resource group via Terraform.
`To achieve your goal, you have to install the necessary frameworks.
`Which of the following are the frameworks you should use? Answer by dragging the correct options from the list to the answer area.

- [0] Yeoman
- [-] Vault
- [1] Terratest
- [-] Tiller



#### 0030, ::
`You have recently created a web application for your company.
`You have been tasked with making sure that a summary of the exceptions that transpire in the application is automatically sent to Microsoft Teams on a daily basis.
`Which of the following Azure services should you use? Answer by dragging the correct options from the list to the answer area.

- [-] Azure DevOps Project
- [0] Azure Logic Apps
- [-] Azure Pipelines
- [1] Azure Application Insights

#### 0036::
`You have an app named App1. You have a Log Analytics workspace named Workspace1 that contains two tables named Events and Logs. App1 manages events in multiple locations and writes logs to Workspace1.
`
`You need to query Workspace1 for all log entries related to Asia that occurred during the last two days.
`
`In which order should you arrange the query statements? To answer, move all statements from the list of statements to the answer area and arrange them in the correct order.

- [1] | where continent == 'Asia'
- [2] | join ( Events
- [0] Logs
- [3] | where timestamp > ago(2d)
- [4] ) on RequestId

#### 0062::
`You use Azure Pipelines to automate Continuous Integration/Continuous Deployment (CI/CD) for an Azure web app named WebApp1.
`You configure an Azure Monitor alert that is triggered when WebApp1 generates an error.
`You need to configure the alert to forward details of the error to a third-party system. The solution must minimize administrative effort.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`Select and Place:

- [-] Select the Recurrence trigger. 
- [-] Create an Azure event hub. 
- [0] Create an Azure logic app.
- [1] Select the HTTP request trigger. 
- [2] Update the action group in Azure Monitor. 
- [-] Select the Sliding Window trigger. 

#### 00113::
`Your company has an Azure subscription named Subscription1. Subscription1 is associated to an Azure Active Directory tenant named contoso.com.
`You need to provision an Azure Kubernetes Services (AKS) cluster in Subscription1 and set the permissions for the cluster by using RBAC roles that reference the identities in contoso.com.
`Which three objects should you create in sequence? To answer, move the appropriate objects from the list of objects to the answer area and arrange them in the correct order.
`Select and Place:

- [1] a system-assigned managed identity
- [0] a cluster
- [-] an application registration in contoso.com
- [2] an RBAC binding

#### 00121::You use GitHub Enterprise Server as a source code repository.
`You create an Azure DevOps organization named Contoso.
`In the Contoso organization, you create a project named Project1.
`You need to link GitHub commits, pull requests, and issues to the work items of Project1. The solution must use OAuth-based authentication.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`Select and Place:

- [0] From Developer settings in GitHub Enterprise Server, register a new OAuth app.
- [-] From Project Settings in Azure DevOps, create a service hook subscription.
- [-] From Organization settings in Azure DevOps, connect to Azure Active Directory (Azure AD).
- [2] From Project Settings in Azure DevOps, add a GitHub connection. 
- [1] From Organization settings in Azure DevOps, add an OAuth configuration. 
- [-] From Developer settings in GitHub Enterprise Server, generate a private key. 


#### 00122::You are configuring an Azure DevOps deployment pipeline. The deployed application will authenticate to a web service by using a secret stored in an Azure key vault.
`You need to use the secret in the deployment pipeline.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`Select and Place:

- [0] Create a service principal in Azure Active Directory (Azure AD).
- [-] Add an app registration in Azure Active Directory (Azure AD)
- [1] Configure an access policy in the key vault. 
- [-] Generate a self-signed certificate. 
- [2] Add an Azure Resource Manager service connection to the pipeline. 
- [-] Export a certificate from the key vault. 

#### 00133::You have an Azure Kubernetes Service (AKS) implementation that is RBAC-enabled.
`You plan to use Azure Container Instances as a hosted development environment to run containers in the AKS implementation.
`You need to configure Azure Container Instances as a hosted environment for running the containers in AKS.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`Select and Place:

- [2] Run helm init.
- [-] Run az aks install-connector.
- [0] Create a YAML file.
- [-] Run az role assignement create
- [1] Run kubect1 apply.


#### 00142::
`You plan to use Azure Kubernetes Service (AKS) to host containers deployed from images hosted in a Docker Trusted Registry.
`You need to recommend a solution for provisioning and connecting to AKS. The solution must ensure that AKS is RBAC-enabled and uses a custom service principal.
`Which three commands should you recommend be run in sequence? To answer, move the appropriate commands from the list of commands to the answer area and arrange them in the correct order.

- [-] az role assignement create
- [-] az aks get-credentials
- [0] az aks create
- [1] az ad sp create-for-rbac
- [2] kubect1 create

#### 00145::
`You have a project in Azure DevOps named Project1 that contains two Azure DevOps pipelines named Pipeline1 and Pipeline2.
`You need to ensure that Pipeline1 can deploy code successfully to an Azure web app named webapp1. The solution must ensure that Pipeline2 does not have permission to webapp1.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [0] Create a service principal in Azure Active Directory. 
- [1] In Project1, create a service connection. 
- [-] In Pipeline1, authorise the service connection. 
- [-] Create a system-assigned managed identity in Azure Active Directory. 
- [2] In Project1, configure permissions. 
- [-] In Pipeline1, create a variable. 

#### 00151::You have an Azure subscription that uses Azure Monitor and contains a Log Analytics workspace.
`You have an encryption key.
`You need to configure Azure Monitor to use the key to encrypt log data.
`Which five actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [3] Configure the key vault properties for the cluster
- [4] link the Log Analytics workspace to the cluster 
- [2] Grant the system-assigned managed identity Key permissions for the key vault
- [-] Grant the system-assigned managed identity Certificate permissions for the key vault
- [1] Create an Azure Monitor Logs dedicated cluster that has a system-assigned managed identity
- [0] Create an Azure key vault and store the key


#### 00152::You have an Azure Key Vault that contains an encryption key named key1.
`You plan to create a Log Analytics workspace that will store logging data.
`You need to encrypt the workspace by using key1.
`Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [3] Link the workspace.
- [-] Register the Azure subscription to allow cluster creation.
- [2] Grant permissions to the key vault.
- [1] Create a Log Analytics cluster.
- [0] Enable soft delete for the key vault.

#### 00159::
`Your company has a project in Azure DevOps named Project1.
`
`All the developers at the company have Windows 10 devices.
`
`You need to create a Git repository for Project1. The solution must meet the following requirements:
`
`• Support large binary files.
`• Store binary files outside of the repository.
`• Use a standard Git workflow to maintain the metadata of the binary files by using commits to the repository.
`
`Which three actions should you perform in sequence on each developer’s device? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [-] Configure SSH key-based authentication.
- [0] Configure personal access token (PAT)-based authentication.
- [1] Perform a custom installation of Git for Windows that includes Git Virtual File System (GVFS)
- [2] Configure Git Large File Storage (LFS) file tracking.
- [-] Perform a custom installation of Git for Windows that includes Git Large File Storage (LFS).


#### 00166::
`You are developing a full Microsoft .NET Framework solution that includes unit tests.
`You need to configure SonarQube to perform a code quality validation of the C# code as part of the build pipelines.
`Which four tasks should you perform in sequence? To answer, move the appropriate tasks from the list of tasks to the answer area and arrange them in the correct order.

- [3] Run Code Analysis
- [2] Visual Studio Test
- [-] Publish Build Artifacts
- [1] Visual Studio Build
- [0] Prepare Analysis Configuration


#### 00168::You need to find and isolate shared code. The shared code will be maintained in a series of packages.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [1] Group the related components.
- [2] Assign ownership to each component group.
- [0] Create a dependency graph for the application.
- [-] Identify the most common language used.
- [-] Rewrite the components in the most common language.

#### 00169::
`You are creating a NuGet package.
`You plan to distribute the package to your development team privately.
`You need to share the package and test that the package can be consumed.
`Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [1] Create a new Azure Artifacts feed.
- [0] Configure a self-hosted agent.
- [2] Publish a package.
- [-] install a package.
- [3] Connect to an Azure Artifacts feed.

#### 00185::You have the repositories shown in the following table.
`
`|Type|URL|
`|Azure Repos|https://dev.azure.com/contoso/project1/_git/project1.git|
`|GitHub|https://github.com/contoso/project.git|
`
`You need to migrate the contents of the GitHub repository to the Azure Repos repository. The solution must ensure that the Azure Repos repository only contains branches and history from the GitHub repository.
`
`Which three commands should you run in sequence? To answer, move the appropriate commands from the list of commands to the answer area and arrange them in the correct order.

- [-] git clone --bare https://dev.azure.com/contoso/project1/_git/proj
- [-] cd project1
- [0] git clone --bare https://github.com/contoso/project1.git
- [-] git push --mirror https://dev.azure.com/contoso/project1/_git/proj
- [1] cd project1.git
- [2] git push --mirror https://github.com/contoso/project1.git

#### 00188::You have an Azure Repos Git repository named repo1.
`
`You need to ensure that you can authenticate to repo1 by using SSH.
`
`Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [0] Sing in to Azure DevOps.
- [2] Add the SSH public key.
- [3] Clone repo1.
- [-] Save the SSH key to the root of repo1.
- [-] Add the SSH private key.
- [1] Create SSH keys by using ssh-keygen

#### 00189::
`You use Git for source control.
`
`You delete a file, commit the changes, and continue to work.
`
`You need to recover the deleted file.
`
`Which three commands should you run in sequence?

- [-] git commit -m 'undeleted the file'
- [0] git log
- [1] git checkout [hash]~1 --path/to/file
- [-] git tag
- [2] git restore --path/to/file
- [-] git stash

#### 00218::
`You use Exabeam Fusion SIEM and the Azure cloud platform.
`
`You need to integrate Exabeam and Azure. The solution must use OAuth authentication.
`
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [-] Upload a certificate.
- [0] Create a client secret.
- [1] Register an Exabeam application in Microsoft Azure Active Directory (Azure AD), part of Microsoft Entra.
- [2] Configure the Exabeam Azure cloud connector.
- [-] Configure API permissions.

#### 00242::
`Your company has two virtual machines that run Linux in a third-party public cloud.
`You plan to use the company's Azure Automation State Configuration implementation to manage the two virtual machines and detect configuration drift.
`You need to onboard the Linux virtual machines.
`You install PowerShell Desired State Configuration (DSC) on the virtual machines, and then run register.py.
`Which three actions should you perform next in sequence? To answer, move the actions from the list of actions to the answer area and arrange them in the correct order.

- [0] Create a DSC metaconfiguration
- [1] Copy the metaconfiguration to the virtual machines
- [2] Add the virtual machines as DSC nodes in Azure Automation
- [-] Install Windows Management Framework 5.1 on the virtual machines
- [-] From the virtual machines, run setdsclocalconfigurationmanager.py

#### 0160::
`You are deploying a new application that uses Azure virtual machines.
`You plan to use the Desired State Configuration (DSC) extension on the virtual machines.
`You need to ensure that the virtual machines always have the same Windows feature installed.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [-] Configure the DSC extencion on the virtual machines. 
- [-] Create a YAML configuration file. 
- [1] Load the file to Azure Blob storage. 
- [2] Configure the Custom Script Extension on the virtual machines. 
- [-] Load the file to Azure Files.  
- [0] Create a PowerShell configuration file.  

#### 00267::
`You have an Azure DevOps release pipeline as shown in the following exhibit.
`
`You need to complete the pipeline to configure OWASP ZAP for security testing.
`Which five Azure CLI tasks should you add in sequence? To answer, move the tasks from the list of tasks to the answer area and arrange them in the correct order.

- [2] Convert Report Format
- [-] Build machine image
- [3] Publish Test Results
- [4] Destroy OWASP Container
- [0] Call the Baseline Scan
- [-] Docker CLI installer
- [1] Download the file


#### 00271::
`You have an Azure subscription that contains a resources group named RG1. RG1 contains the following resources:
`✑ Four Azure virtual machines that run Windows Server and have Internet Information Services (IIS) installed.
`✑ SQL Server on an Azure virtual machine.
`✑ An Azure Load Balancer.
`You need to deploy an application to the virtual machines in RG1 by using Azure Pipelines.
`Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [0] Create an agent pool
- [-] Add the Puppet Agent extension to the virtual machines
- [3] Add and configure a deployment group job for the pipeline
- [2] Add the Azure Pipeline Agent extension to the virtual machines
- [1] Create a deployment group
- [-] Execute the pipeline


#### 00257 ::
`You have a project in Azure DevOps that uses packages from multiple public feeds. Some of the feeds are unreliable.
`You need to consolidate the packages into a single feed.
`Which three actions should you perform in sequence?

- [-] Modify the configuration files to reference the Azure Artifacts feed.
- [-] Run an initial package restore.
- [2] Create a Microsoft Virtual Studio project that includes all the packages.
- [1] Create an Azure Artifacts feed that uses upstream sources. 
- [0] Create a NuGet package. 
- [-] Create an npm package. 


#### 00280 ::
`You need to use Azure Automation State Configuration to manage the ongoing consistency of virtual machine configurations.
`Which five actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [3] Onboard the virtual machines to Azure Automation State Configuration. 
- [4] Check the compliance status of the node. 
- [-] Create a management group. 
- [0] Assign the node configuration. 
- [2] Compile a configuration into a node configuration.
- [1] Upload a configuration to Azure Automation State Configuration. 
- [-] Assign tags to the virtual machines. 

#### 00313::
`You provision an Azure Kubernetes Service (AKS) cluster that has RBAC enabled. You have a Helm chart for a client application.
`You need to configure Helm and Tiller on the cluster and install the chart.
`Which three commands should you recommend be run in sequence? To answer, move the appropriate commands from the list of commands to the answer area and arrange them in the correct order.

- [2] helm install
- [0] kubectl create
- [-] helm completion
- [1] helm init
- [-] helm serve


#### 00318::
`You manage the Git repository for a large enterprise application.
`During the development of the application, you use a file named Config.json.
`You need to prevent Config.json from being committed to the source control whenever changes to the application are committed.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [0] Delete and recreate the repository.
- [-] Run the git reflog expire command.
- [2] Run the git add .gitignore command.
- [1] Add Config.json to the .gitignore file.
- [-] Run the git commit command.


#### 00323::
`As part of your application build process, you need to deploy a group of resources to Azure by using an Azure Resource Manager template located on GitHub.
`Which three action should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [2] Set the tempate parameters.
- [-] Create a package.
- [0] Create a release pipeline.
- [-] Create a job agent.
- [1] Add an Azure Resource Group Deployment task.

#### 00333::
`You have a project in Azure DevOps.
`You need to associate an automated test to a test case.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [-] Debug the project
- [0] Create a test project
- [-] Create a work item
- [1] Check in a project to the Azure DevOps repository
- [2] Add the automated test to a build pipeline

#### 00334::
`You have an Azure Kubernetes Service (AKS) cluster.
`You need to deploy an application to the cluster by using Azure DevOps.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [-] Create a service account in the cluster.
- [0] Create a service principal in Azure Active Directory (Azure AD)
- [-] Add an Azure Function App for Container task to the deployment pipeline.
- [1] Add a Helm package and deploy a task to the deployment pipeline
- [2] Add a Docker Compose task to the deployment pipeline.
- [-] Configure RBAC roles in the cluster.


#### 00340::
`You have an Azure DevOps organization named Contoso.
`You have 10 Azure virtual machines that run Windows Server 2019. The virtual machines host an application that you build and deploy by using Azure Pipelines.
`Each virtual machine has the Web Server (IIS) role installed and configured.
`You need to ensure that the web server configurations on the virtual machines is maintained automatically. The solution must provide centralized management of the configuration settings and minimize management overhead.
`Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order. 

- [0] Create an Azure Automation account.
- [1] Install the custom Desired State Configuration (DSC) extension on the virtual machines.
- [2] Onboard the virtual machines to the Azure Automation account.
- [3] Compile the Desired State Configuration (DSC) configuration.
- [-] Create a .zip file and upload it to Azure Blob storage.


#### 00374::You have a GitHub repository.
`You have an app named App1. You have a Log Analytics workspace named Workspace1 that contains a table named AppEvents. App1 writes logs to
Workspace1.
`You need to query the AppEvents table. The solution must meet the following requirements:
`✑ Only query rows for a column named Name that starts with the following text: "Clicked Create New Ticket."
`✑ Calculate the number of daily clicks per user.
`✑ Return the top 10 users based on their number of clicks for any day.
`✑ Sort the results based on the highest number of clicks.
`✑ Ignore any users who have less than three daily clicks.
`In which order should you arrange the query statements? To answer, move all statements from the list of statements to the answer area and arrange them in the correct order.

- [0] AppEvents
- [1] | where Name startswith "Clicked Create New Ticket"
- [2] | summarize NumberOfClicks = count() by bin(TimeGenerated, Id),
- [3] | where NumberOfClicks >= 3
- [4] | top 10 by NumberOfClicks desc

#### 00376::
`You have an Azure Pipeline.
`
`You need to store configuration values as variables.
`
`At which four scopes can the variables be defined, and what is the precedence of the variables from the highest precedence to lowest precedence? To answer, move the appropriate scope from the list of scopes to the answer area and arrange them in the correct order.

- [1] stage
- [0] job
- [3] pipeline settings UI
- [2] pipeline root
- [-] task

#### 00380 ::
`You have an Azure subscription that uses Azure Automation State Configuration to manage the configuration of virtual machines.
`
`You need to identify which nodes are noncompliant.
`
`How should you complete the query? To answer, drag the appropriate values to the correct targets. Each value may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.


- [0] AzureDiagnostics
- [1] | where Category == "DscNodeStatus"
- [2] | where OperationName contains ""
- [3] | where ResultType != "Compliant"
- [-] | where Message contains ""
- [-] | where Resource != "Compliant"


#### 00386::
`Woodgrove Bank identifies the following technical requirements:
`The Azure DevOps dashboard must display the metrics shown in the following table:
`
`|Number|Required data|
`|1-----|A Comparison between the work the development team planned to deliver and what was delivered|
`|2-----|The status of the environments in a release definition|
`|3-----|The total number of results from a work item query|
`
`You are configuring the Azure DevOps dashboard. The solution must meet the technical requirements.
`Which widget should you use for each metric? To answer, drag the appropriate widgets to the correct metrics. Each widget may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.


- [0] Velocity
- [2] Query tile
- [-] Query results
- [-] Sprint burndown
- [-] Cumulative flow diagram
- [1] Release pipeline overview

#### 00391::
`You need to implement the code flow strategy for Project2 in Azure DevOps.
`Which three actions should you perform in sequence?

- [1] Create a fork
- [-] Create a branch
- [2] Add a build policy for the fork
- [-] Add a build policy for the master branch
- [0] Create a repository
- [-] Add an application access policy


#### 00392::
`You need to configure Azure Automation for the computers in Pool7.
`Which three actions should you perform in sequence?
 
- [1] Run the Import-AzureRmAutomationDscConfiguration Azure PowerShell cmdlet
- [0] Create a Desired State Configuration (DSC) configuration file that has an extension of .ps1
- [-] Run the New-AzureRmResourceGroupDeployment Azure PowerShell cmdlet
- [2] Run the Start-AzureRmAutomationDscCompilationJob Azure PowerShell cmdlet
- [-] Create an Azure Resource Manager template file that has an extension of .json

#### 00398::
`You need to configure authentication for App1. The solution must support the planned changes.
`Which three actions should you perform in sequence? To answer, move all actions from the list of actions to the answer area and arrange them in the correct order.
 
- [0] Create an app
- [-] Add a secret
- [-] Create a credential
- [2] Configure the ID and secret for App1
- [1] Create a managed service identity

