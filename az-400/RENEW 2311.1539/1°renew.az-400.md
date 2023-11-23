##   2311.1539 renew az-400


#### 001::Smart Detection can detect the gradual degradation of a web app’s response time caused by a memory leak.

- [x] Yes
- [ ] No


#### 002::You have a globally distributed Azure web app named WebApp1 that is configured for Azure Application Insights.
`
`You receive a Smart Detection-generated alert regarding an issue with WebApp1 that results in an exception every time users in Singapore open a specific page.
`
`You need to verify whether the issue is limited to specific regions.
`
`What should you do?
`
`Select only one answer.

- [x] Configure availability tests.
- [ ] Configure user flows.
- [ ] Modify the Smart Detection rules.
- [ ] Update the Application map components.

#### 003::Site reliability engineers divide their time between deploying applications to production and keeping the applications operational.
`
`Select Yes if the statement is true. Otherwise, select No.

- [x] Yes
- [ ] No


#### 004::You have a tenant in Microsoft Azure Active Directory (Azure AD), part of Microsoft Entra, named contoso.com.
`
`You manage an Azure subscription named Sub1 that is associated with contoso.com.
`
`You need to delegate your staff permissions to view the sign-in logs. The solution must use the principle of least privilege.
`
`Which Azure AD role should you use for the delegation?

- [ ] Select only one answer.
- [ ] Global Administrator
- [ ] Global Reader
- [x] Report Reader
- [ ] Security Administrator

#### 005::You have a tenant in Microsoft Azure Active Directory (Azure AD), part of Microsoft Entra, named contoso.com.
`
`You manage an Azure subscription named Sub1 that is associated with contoso.com.
`
`You identify that an Azure AD user account named user1@contoso.com might be compromised.
`
`You need to review the changes that User1 performed since the most recent sign-in.
`
`Which log should you use?

- [x] audit log
- [ ] risky sign-ins log
- [ ] sign-in log
- [ ] users flagged for risk log

#### 006::You can use Kusto to query logs from Microsoft Azure Active Directory (Azure AD), part of Microsoft Entra stored in Log Analytics to define a rule of an Azure Monitor alert.
`
`Select Yes if the statement is true. Otherwise, select No.

- [ ] Yes
- [x] No

#### 007::When querying logs from Microsoft Azure Active Directory (Azure AD), part of Microsoft Entra stored in Log Analytics by using a Kusto query, you can use the take command to display specific columns in the result set.
`
`Select Yes if the statement is true. Otherwise, select No.
`
`Select only one answer.

- [ ] Yes
- [x] No

#### 008::You have a GitHub workflow that deploys an Azure web app. The workflow is configured to trigger a deployment following a pull request that includes a label.
`
`You plan to configure the pull request of the workflow to trigger the deployment only if the label is set to a string of "stage".
`
`The workflow includes the following section.
`
`if: contains(<missing element>.event.pull_request.labels.*.name, 'stage')
`What should you add for the missing element of the workflow?
`
`Select only one answer.

- [ ] action
- [x] github
- [ ] name
- [ ] workflow

#### 009::GitHub secrets can be scoped to the organization level.
`
`Select Yes if the statement is true. Otherwise, select No.

- [x] Yes
- [ ] No

#### 010::Every job in a GitHub workflow always executes if the job preceding it completed successfully.
`
`Select Yes if the statement is true. Otherwise, select No.

- [ ] Yes
- [x] No

#### 011::Access to GitHub secrets requires at least collaborator access.
`
`Select Yes if the statement is true. Otherwise, select No.

- [ ] Yes
- [x] No

#### 012::You plan to create a GitHub workflow that will use the GitHub Script action to automatically post a comment to all newly created issues.
`
`Which notation should you use when invoking the GitHub API?
`
`Select only one answer.

- [ ] actions/github-script@0.8.0.issues.createComment
- [ ] action.issues.createComment
- [ ] github.issues.createComment
- [x] octokit.issues.createComment

#### 013::GitHub Script automatically handles authentication to GitHub API.
`
`Select Yes if the statement is true. Otherwise, select No.
`
`Select only one answer.

- [x] Yes
- [ ] No

#### 014::Usage meters for an Azure virtual machine include its ingress and egress network traffic.
`
`Select Yes if the statement is true. Otherwise, select No.
`
`Select only one answer.

- [ ] Yes
- [x] No

#### 015::Azure Reservations are available in Pay-As-You-Go subscriptions.
`
`Select Yes if the statement is true. Otherwise, select No.
`
`Select only one answer.

- [x] Yes
- [ ] No

#### 016::You create a new Azure DevOps organization named Contoso.
`
`You need to create an Azure Artifacts feed that will be used within your organization to access packages from nuget.org. The feed will have the scope of the organization.
`
`What should you do first?
`
`Select only one answer.

- [ ] Add a service hook.
- [ ] Add an upstream source.
- [x] Create a project in Azure DevOps.
- [ ] Create an Azure DevOps pipeline.

#### 017::You manage an Azure Artifacts feed named Feed1. Feed1 contains a package named Package1.
`
`You need to update Package1 by adding a new feature that is fully backward compatible.
`
`What should you update in the version of Package1?
`
`Select only one answer.

- [ ] major version
- [x] minor version
- [ ] patch
- [ ] suffix

#### 018::For compiled programming languages, a package must contain the source code.
`
`Select Yes if the statement is true. Otherwise, select No.
`
`Select only one answer.

- [ ] Yes
- [x] No

#### 019::Packages can be stored in a compressed format.
`
`Select Yes if the statement is true. Otherwise, select No.
`
`Select only one answer.

- [x] Yes
- [ ] No

#### 020::You manage a project in Azure DevOps named Project1. Project1 contains an Azure Artifacts feed named Feed1. Feed1 does not contain any public upstream sources.
`
`You need to connect Feed1 to a public source of .NET packages.
`
`To which upstream source should you connect in Azure Artifacts?
`
`Select only one answer.

- [ ] Chocolatey
- [ ] Maven
- [ ] npm
- [x] NuGet

#### 021::You can use package metadata to describe the package’s licensing terms.
`
`Select Yes if the statement is true. Otherwise, select No.
`
`Select only one answer.

- [x] Yes
- [ ] No

#### 022::You can use Microsoft-hosted Azure Pipelines agents to drop build artifacts into a file share by using a Universal Naming Convention (UNC) path.
`
`Select Yes if the statement is true. Otherwise, select No.
`
`Select only one answer.

- [ ] Yes
- [x] No

#### 023::You can choose a Microsoft-hosted Azure Pipelines agent that runs Windows, Linux, or macOS.
`
`Select Yes if the statement is true. Otherwise, select No.
`
`Select only one answer.

- [x] Yes
- [ ] No

#### 024::You have a project in Azure DevOps named Project1.
`
`You deploy an Azure virtual machine named VM1 that runs Linux Ubuntu 18.04.
`
`You plan to add VM1 to Project1 as a self-hosted agent by running the build-agent.sh script from GitHub.
`
`Which two environment variables must you set for the script to complete successfully?
`
`Select all answers that apply.

- [ ] AZP_AGENT_NAME
- [ ] AZP_AGENT_VERSION
- [ ] AZP_POOL
- [x] AZP_TOKEN
- [x] AZP_URL

#### 025::You can configure the virtual machine size of Microsoft-hosted Azure Pipelines agents.
`
`Select Yes if the statement is true. Otherwise, select No.
`
`Select only one answer.

- [ ] Yes
- [x] No
