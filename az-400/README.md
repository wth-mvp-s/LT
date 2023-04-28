 2 tools for checking security, licenses in code before deployment. Not deployment tools, but help prepare.
 
     deployment gate -
        - pre post deployment validation
        - safety of deployment
        - on top of az realease pipeline
        - delays possible


    whiteSource Bolt, black Duck
        - security scan for vurnebilities
        - free in marketplace
        - delay 

    whitesource bolt - more seamlessly with Azure Pipeline, free
   
    black Duck - more advances integration with azure boards, paid, reporting and analytics more advanced  
    
    sonarQube  same but focuses on code quality, not security/licenses. Checks for bugs, code smells, vulnerabilities. Helps improve code before deployment.
    
    gradle in pipeline
        - tool, building and deploying Java apps
        - defined repository
        - faster
        - more flexible, both free & open source

    maven
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

    flaky marker
        - tag for unstable result 

    liveness probe
        - is running test, action if not 

    readiness probe
        - container is ready for traffic check 

    SonarQube
        - quality code inspection

    KPI (Key Performance Indicators)
        - goals achiveness monitoring


yarn - facebooks npm 
jenkins - building, testing, and deploying software

kubernates - Docker is like a single Git repository with one project, while Kubernetes is like a Git organization that manages multiple repositories and projects.


helm package - (like npm)chart,  package manager for Kubernetes,  collection of Kubernetes resources that are packaged together for deployment.


    Chart: visual representation of data
    Kubectl: (CLI) for managing Kubernetes clusters

    Chart: config files, describing how deploy

    Tiller: Helm's server-side for deploying charts
             - When you run the helm install command, Helm sends the chart to Tiller, which then interprets the chart and creates the necessary resources on the Kubernetes cluster. 

    Azure Container Registry: cloud-based container storage



retention -  time that data and artifacts are kept in a system or storage location. 

RBAC roles in the cluster -  in Kubernetes cluster manages who can do what. Uses roles for users/groups to control permissions.

DACPAC - update, schema file for deploying schema changes or versioning dbb

BACPAC - export and import dbb

a readiness probe - In Kubernetes, if container is ready to serve traffic.
a liviness probe - In Kubernetes, if container is still running and able to perform its intended function.
     WhiteSource 
     
     

RBAC binding - (Role-Based Access Control) binding refers to the process of associating a role with one or more users or groups in a system.

self hosted agent - jobs

artifacts feed - like github. 

KPI rate - track progress
KPI -  are measurable values, not a tool. 
cluster - many comp computing together

Azure Kubernetes Service (AKS) deploy and maintien containers

RTW (Real-Time Web) Release -  data is transmitted continuously between the client and server, not like in classic backend communication request-response model

ad-hoc queries against the monitoring data

runbook to Azure Automation.


todo: 
- 7 do poprawki poprawy i sprawdzenia #### 00325:: NIE SKONCZONE


currentlu slider 10 (2604.1447)
currentlu slider 15, with score 14 (2604.1447) {codziennie przeanalizowac test i szukac zlych pytan, jakie wyciagnac do druku, i jakie polepszyc}
currently NO slider, 14 score REQUIRED for each (2804.1020){codziennie przeanalizowac test i szukac zlych pytan, jakie wyciagnac do druku, i jakie polepszyc}

red black deployment ????????????????????????


// 

ANALISIS: 

reports and feedback 
    - Yes, MS VS App Center best for crash reports, beta release, user feedback.
    App Center most suited, all-in-one solution.

        Test & Feedback: only for feedback.
        Jenkins: CI/CD, not focused on feedback/crash reports.
        Azure App Insights: monitoring, not beta release/feedback.



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


>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
chatGPT
.  answer in a way to simplyfy the answer, not worrying about orthographe, in shortest way possible , using simplified words, and minimum number of words, required to understand but not for correct english, answer me , giving stricly essential information




