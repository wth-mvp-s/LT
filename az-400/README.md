
2 tools for checking security, licenses in code before deployment. Not deployment tools, but help prepare.
 
     deployment gate {brama pre post validation}-
        - pre post deployment validation
        - safety of deployment
        - on top of az realease pipeline
        - delays possible

    whiteSource Bolt, {sruba, sprawdza vurnelabilite} black Duck
        - security scan for vurnebilities
        - free in marketplace
        - delay 

        whitesource bolt - more seamlessly with Azure Pipeline, free
   
    black Duck {czarna owca, platna, raportuje awansowane}- more advances integration with azure boards, paid, reporting and analytics more advanced  
    
    sonarQube {podwodny szescian, nak mina podwodna = jakosc } same but focuses on code quality, not security/licenses. Checks for bugs, code smells, vulnerabilities. Helps improve code before deployment.
        - quality code inspection    

    gradle in pipeline { quick, flexible - step or degree in a series. }
        - tool, building and deploying Java apps
        - defined repository
        - faster
        - more flexible, both free & open source

    maven {from yiddish expert, challenging to setup}
        For Java code analysis, use Maven with SonarQube.
        Maven: for Java, works with SonarQube.

        - simplify build, test, deploy java, XML
        - challenging to setup
        - central repository
        - slower, exec all code 
        - rigid structure 
        - been for longer

            Xcode: iOS app dev, build and test.
            CocoaPods: iOS dependency management.
            Gulp: Automate tasks, mainly for JavaScript.

    selenium
        - testing cloud-based

    a readiness probe
        - health check
        - check if steady 

    flaky marker {snow flake}
        - tag for unstable result 

a readiness probe - In Kubernetes, if container is ready to serve traffic.
a liviness probe - In Kubernetes, if container is still running and able to perform its intended function.

KPI (Key Performance Indicators)
    - goals achiveness monitoring

    KPI rate - track progress
    KPI -  are measurable values, not a tool. 

yarn - facebooks npm 
jenkins - building, testing, and deploying software

Azure Kubernetes Service (AKS) deploy and maintien containers

kubernates - Docker is like a single Git repository with one project, while Kubernetes is like a Git organization that manages multiple repositories and projects.

    RBAC roles in the cluster -  in Kubernetes cluster manages who can do what. Uses roles for users/groups to control permissions.
    RBAC binding - (Role-Based Access Control) binding refers to the process of associating a role with one or more users or groups in a system.


    helm package - (like npm) use chart,  package manager for Kubernetes,  collection of Kubernetes resources that are packaged together for deployment.

    Chart: visual representation of data
        Chart: config files, describing how deploy

    Kubectl: (CLI) for managing Kubernetes clusters


    Tiller: Helm's server-side for deploying charts
        - When you run the helm install command, Helm sends the chart to Tiller, which then interprets the chart and creates the necessary resources on the Kubernetes cluster. 

feed {nourish}- term used to describe a location where packages can be stored and made available to others. 

Azure Container Registry: cloud-based container storage

retention -  time that data and artifacts are kept in a system or storage location. 

DACPAC - update, schema file for deploying schema changes or versioning dbb

BACPAC - export and import dbb

artifacts feed - like github. 

cluster - many comp computing together

RTW (Real-Time Web) Release -  data is transmitted continuously between the client and server, not like in classic backend communication request-response model

ad-hoc queries against the monitoring data

    ad-hoc - Latin "for this." sth that is created or done specifically for a particular purpose or situation, without prior planning or preparation.

runbook to Azure Automation.
    Azure Automation - automate tasks. 
    Runbooks - {recipies}sets of scripts that automate a specific task, and you can use Azure Automation to create, schedule, and manage runbooks.

red black deployment - updating software with zero downtime by creating two identical environments and switching between them.

ANALISIS: 

reports and feedback 
    - Yes, MS VS App Center best for crash reports, beta release, user feedback.
    App Center most suited, all-in-one solution.

        Test & Feedback: only for feedback.
        Jenkins: CI/CD, not focused on feedback/crash reports.
        Azure App Insights: monitoring, not beta release/feedback.

self hosted agent - programs running tasks on your server.runs jobs conf by CLI, used for controlled access, deployment, and management of private NuGet 

jobs 
    Self-hosted:
        Advantages: More control, custom environment, potentially cheaper.
        Disadvantages: Maintenance, hardware costs, manual updates.
        For free tier, cost-effective if resources available.

    Microsoft-hosted:
        Advantages: No maintenance, automatic updates, easy setup.
        Disadvantages: Less control, limited environments, potential cost.
        For free tier, easier but may have extra cost for more parallel jobs.    
    
    tasks are components of jobs.
        examples of tasks
        Build tasks: Compile source code, run tests, create artifacts.
        Deploy tasks: Copy artifacts to servers, configure environments.
        Test tasks: Run automated tests, validate code quality.
        Notification tasks: Send emails, messages on build status, failures.
        Environment tasks: Provision or configure virtual machines, databases, or other infrastructure.

service hook is a mechanism that allows one system to receive notifications from another system. 
        
    Hooks: Connect event to action. Example: New code pushed to GitHub (event), trigger build system (action). Hooks link event with specific action.

git gc - garbage collector


GitFlow as a workflow strategy.{master branch, dev,feat, release, hotfix},more complex than simpler workflows like GitHub Flow or GitLab Flow. 

    GitFlow: Master stable, Develop for work, Feature for new stuff, Release prepare, Hotfix fix urgent. Complex, structured.

    GitHub Flow: Master stable, Feature for work, merge to Master, deploy. Simple, fast.

    GitLab Flow: Master stable, Feature for new stuff, Environment for specific cases. Flexible, moderate complex.

 the SHA-based hashes - Unique IDs for Git commits, based on content. Secure, hard to change.
 
  the principle of least privilege. - "Least": Smallest, minimum.
    "Privilege": Special access, permission.
        Etymology: Give minimum permission needed.

        Employee B in HR, access only HR files. No extra access. Context: Protect sensitive info, prevent data leaks, improve security.


node configuration - setup your Node.js env, 
    npm init -> package.json
   
Package-lock.json.
          If you add a new package with npm install <package> or npm install --save-dev <package>, npm adds that package to package-lock.json with its exact version.

        If package-lock.json and package.json are out of sync (like if package.json changes but package-lock.json doesn't), npm install updates package-lock.json to match package.json.

burnup widget : 
    lead time - time from request to delivery.
        Negative feedback - not always clear start point, can be manipulated.
        Critics - not whole story, need other metrics too.
    cycle time -  start when work begins, end when done.

three-way merge -  1. base version, 2. your changes, 3. team's changes. Merge all.

a docker registry - storage step in the pipeline

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

definition, construction, problem solving, design pattern, alternative, anecdotes, common negative feedback and critics, 

.  answer in a way to simplyfy the answer, not worrying about orthographe, in shortest way possible , using simplified words, and minimum number of words, required to understand but not for correct english, answer me , giving stricly essential information