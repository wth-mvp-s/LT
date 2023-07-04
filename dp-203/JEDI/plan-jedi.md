
# 4 l'apprentissage transférable
    exploration de domaines en dehors de votre domaine d'expertise actuel, ce qui peut stimuler la créativité, l'innovation et la croissance personnelle.

# 5 data engineers
    lister concept qu'ils prennes en compte


# 6 which tools which concepts

# 7-10
    how Uber company, might leverage Azure Data Lake, Databricks, Data Factory, and Stream Analytics in their data infrastructure.

    Azure Data Lake: The raw data from all of Uber's rides worldwide is generated in vast volumes and at high speed. This data includes pickup and drop-off locations, ride durations, fare amounts, driver details, customer ratings, and more. It comes in different formats and can be structured (like SQL data from their app databases), semi-structured (like JSON data from their mobile apps), or unstructured (like driver support emails). All of this data can be dumped in its raw, unprocessed form into an Azure Data Lake, providing a single repository for all the company's data.

    Azure Data Factory: With data coming in from so many sources in various formats, Uber needs a way to ingest, cleanse, transform, and integrate all this data. Azure Data Factory can be used to create data pipelines that pull data from various sources, transform it as necessary (for instance, converting all timestamps to a single time zone), and load it into the data lake or directly into a data warehouse or analytics platform. For instance, it could be used to aggregate data on a daily basis, generating summary reports of the day's rides, earnings, etc.

    Azure Databricks: Once the data is in the data lake, Uber might want to perform complex analytics tasks on it, like identifying ride patterns, predicting demand, or optimizing routes. Azure Databricks provides a powerful platform for these tasks. With its distributed computing capabilities, Databricks can process vast amounts of data quickly, and its collaborative notebooks provide a great environment for data scientists to develop, run, and share their analysis code.

    Azure Stream Analytics: In addition to all the historical data stored in the data lake, Uber also has real-time data streaming in from ongoing rides. This includes GPS locations, ride statuses (requested, started, completed, cancelled), fare meters, etc. Azure Stream Analytics can process this streaming data in real time, allowing Uber to respond immediately to emerging situations. For instance, if Stream Analytics detects a sudden surge in ride requests in a certain area, Uber can respond by adjusting prices or alerting nearby drivers.


##  data lake 1st one
        use case scenario
            These companies operate in hundreds of cities globally, with millions of rides happening each day. Every ride generates data such as pick-up and drop-off locations, duration, distance, fare, ratings, and more. Then there's also data on driver details, vehicle information, customer profiles, traffic and map data, payment details, and so on.

            Let's say each ride generates about 10 kilobytes of data. If the company facilitates 10 million rides per day, that's 100 gigabytes of data generated daily.

            In a year, this would add up to approximately 36.5 terabytes of data. And remember, this is a very simplified estimation - the actual data generated could be significantly higher when you consider all the other data types and sources.

            Storing and processing this massive amount of data would be a challenge. However, a data lake could store all of this diverse, raw data. Then, with tools like Azure Databricks, the company could process and analyze the data for various purposes - optimizing routes, predicting demand, detecting fraudulent activity, improving customer experience, and so on.

        When we say that Azure Databricks or similar services "work on top of" the data lake, we mean that these services use the data stored in the data lake as their input for processing, transformation, analysis, and so on.

        This is based on the layered architecture of a typical big data solution. At the base layer, you have your storage - the data lake - where raw data is dumped in its original format. This could include all types of data - structured, semi-structured, or unstructured.

        On top of this storage layer, you have the processing or compute layer. This is where services like Azure Databricks come in. Databricks uses the power of distributed computing to process this data. It reads data from the data lake, processes it, and can write the results back to the data lake or to some other destination.

        In this context, "on top of" doesn't refer to a physical location but rather to the role of Databricks in the data architecture. It's a way of saying that Databricks relies on the data lake for its input data, and it operates on this data to produce its output. The "top" is the highest level in this stack, where data is prepared for end-users in the form that's most useful for them, which often involves services like Databricks for data processing and analysis.
/////////////////////////////////////////////
        Yes, that's correct. The data first arrives and is stored in its raw, unprocessed form in a data lake, such as Azure Data Lake Storage. This is an excellent system for storing large amounts of diverse data, as it does not require a predefined schema and can accommodate structured, semi-structured, and unstructured data.

        After the data is stored in the data lake, services like Azure Databricks or HDInsight can be used to process and analyze it. These tools work on top of the data lake and use the power of distributed processing to handle large volumes of data.

        During this processing phase:

        Partitioning: The data can be partitioned, which means dividing the data into logical chunks based on a certain criteria to make the processing more efficient. For example, if you're analyzing data by date, the data can be partitioned by year so that each year's data is processed separately.

        Distribution: In the context of distributed computing, data is distributed across a cluster of machines (nodes) to be processed in parallel. This significantly improves the performance of data processing tasks on large datasets.

        Indexing: Traditional indexing as we know it from relational databases is not common in big data processing scenarios, mainly because the data is often too large and changes too frequently. However, you can still optimize data access. For example, with Apache Parquet, a columnar storage file format that is optimized for use with big data processing frameworks, data can be read more efficiently.

        Remember that these steps are a part of the data processing and not the storage phase. The raw data in the data lake remains in its original form unless you replace or transform it after processing.
//////////////////////////////////////////////////////////
        A data lake, on the other hand, is a storage repository that can hold a large amount of raw data in its native format until it is needed. Data lakes can store structured, semi-structured, and unstructured data (like images, videos, social media posts, raw sensor data etc.). The structure of the data or schema is not defined when data is captured. This means you can store all of your data without having to know how or why you're going to use it in advance. This offers a lot more flexibility but can also make it more difficult to find, understand, and analyze the data.

Databricks, Stream Analytics, and Data Factory, work on top of the data lake to ingest, process, analyze, and visualize data.

        You have an Azure Data Lake Storage Gen2 account that contains a JSON file for customers. The file contains two attributes named FirstName and LastName.
        You need to copy the data from the JSON file to an Azure Synapse Analytics table by using Azure Databricks. A new column must be created that concatenates the FirstName and LastName values.
        You create the following components:
        ✑ A destination table in Azure Synapse
        ✑ An Azure Blob storage container
        ✑ A service principal
        In which order should you perform the actions? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
        Select and Place:
##  Stream Analytics
    
        `You are designing a monitoring solution for a fleet of 500 vehicles. Each vehicle has a GPS tracking device that sends data to an Azure event hub once per minute.
        `You have a CSV file in an Azure Data Lake Storage Gen2 container. The file maintains the expected geographical area in which each vehicle should be.
        `You need to ensure that when a GPS position is outside the expected area, a message is added to another event hub for processing within 30 seconds. The solution must minimize cost.
        `What should you include in the solution?
        `::
        `Hopping window hops forward in time by a fixed period. This means that if you have a Hopping window size of one minute, and it hops every 30 seconds, it can cover the events within the desired 30 seconds time frame, ensuring a quicker response to the event.

        - [ ] Service: An Azure Synapse Analytics Apache Spark pool
        - [ ] Service: An Azure Synapse Analytics serverless SQL pool
        - [ ] Service: Azure Data Factory
        - [x] Service: Azure Stream Analitycs
        - [x] Window: Hopping
        - [ ] Window: No window
        - [ ] Window: Session
        - [ ] Window: Tumbling
        - [ ] Analisys type: Event pattert matching
        - [ ] Analisys type: Lagged record comparison
        - [x] Analisys type: Point within polygon
        - [ ] Analisys type: Polygon overlap

##  Databrick
    You have an Azure Data Lake Storage account that contains a staging zone.
    You need to design a daily process to ingest incremental data from the staging zone, transform the data by executing an R script, and then insert the transformed data into a data warehouse in Azure Synapse Analytics.
    Solution: You use an Azure Data Factory schedule trigger to execute a pipeline that executes an Azure Databricks notebook, and then inserts the data into the data warehouse.
    Does this meet the goal?
        A. Yes Most Voted

    - A company plans to use Apache Spark analytics to analyze intrusion detection data.
    - Litware employs business analysts who prefer to analyze data by using Microsoft Power BI, and data scientists who prefer analyzing data in Azure Databricks notebooks.
    - You need to implement an Azure Databricks cluster that automatically connects to Azure Data Lake Storage Gen2 by using Azure Active Directory (Azure AD) integration.
    How should you configure the new cluster? To answer, select the appropriate options in the answer area.
        Box 1: Premium -
        Credential passthrough requires an Azure Databricks Premium Plan
        Box 2: Azure Data Lake Storage credential passthrough
        You can access Azure Data Lake Storage using Azure Active Directory credential passthrough.
        When you enable your cluster for Azure Data Lake Storage credential passthrough, commands that you run on that cluster can read and write data in Azure Data
        Lake Storage without requiring you to configure service principal credentials for access to storage.
        Reference:
        https://docs.microsoft.com/en-us/azure/databricks/security/credential-passthrough/adls-passthrough
    authentication methods
        You use Azure Data Lake Storage Gen2 to store data that data scientists and data engineers will query by using Azure Databricks interactive notebooks. Users will have access only to the Data Lake Storage folders that relate to the projects on which they work.
        You need to recommend which authentication methods to use for Databricks and Data Lake Storage to provide the users with the appropriate access.

    You plan to create an Azure Databricks workspace that has a tiered structure. The workspace will contain the following three workloads:
        ✑ A workload for data engineers who will use Python and SQL.
        ✑ A workload for jobs that will run notebooks that use Python, Scala, and SQL.
        ✑ A workload that data scientists will use to perform ad hoc analysis in Scala and R.
        The enterprise architecture team at your company identifies the following standards for Databricks environments:
        ✑ The data engineers must share a cluster.
        ✑ The job cluster will be managed by using a request process whereby data scientists and data engineers provide packaged notebooks for deployment to the cluster.
        ✑ All the data scientists must be assigned their own cluster that terminates automatically after 120 minutes of inactivity. Currently, there are three data scientists.
        You need to create the Databricks clusters for the workloads.
        Solution: You create a Standard cluster for each data scientist, a High Concurrency cluster for the data engineers, and a Standard cluster for the jobs.
        Does this meet the goal?

##  Data Factory
        You have an Azure Data Factory pipeline named pipeline1 that is invoked by a tumbling window trigger named Trigger1. Trigger1 has a recurrence of 60 minutes.
        You need to ensure that pipeline1 will execute only if the previous execution completes successfully.
        How should you configure the self-dependency for Trigger1?
        A. offset: "-00:01:00" size: "00:01:00"
        B. offset: "01:00:00" size: "-01:00:00"
        C. offset: "01:00:00" size: "01:00:00"
        D. offset: "-01:00:00" size: "01:00:00"

        You need to schedule an Azure Data Factory pipeline to execute when a new file arrives in an Azure Data Lake Storage Gen2 container.

        Which type of trigger should you use?

        storage event

>>        You use Azure Data Factory to create data pipelines.

        You are evaluating whether to integrate Data Factory and GitHub for source and version control.

        What are two advantages of the integration? Each correct answer presents a complete solution.

        NOTE: Each correct selection is worth one point.

        A. additional triggers
        B. lower pipeline execution times
>>      C. the ability to save without publishing
>>      D. the ability to save pipelines that have validation issues        
# index 
    data distribuer
    index here vs in sql server
        def
        demo
        differences 
    conclusion prendre en compte index when migrating bdd to another fournisseur
# partitioning

    ciekawostki skew
# securite
    data masking 
# when tier to use 

# observable

# 18 win-win 
    En conclusion, je dirais que l'apprentissage pour la certification DP-203, permet d’explorer l'avenir de l'informatique, chaque service, chaque notion que nous avons abordée est comme un coup d'œil sur les nouvelles frontières de notre domaine. 

