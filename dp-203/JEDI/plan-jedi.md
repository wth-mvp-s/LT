ostatni owiec, udalo mi sie otrzymac certyfikat dp203.
et pour parler de cette experiance, pour partager mon experiance, aujourd'hu cette presentation, 

je pense que les echec j'en ai besoin aussi, sont precieux, 
il faut savoir tomber quand on rulle vite, quand on fait les circuit, 


na potrzeby tej prezentacji, nauczylem sie jednego zdania po Rosyjsku
: 
mademoiselle Olga, Puoviez vous m'aider repondre a cette questions, sil vous plait ? 

ПАНИЕНКО ОЛЬГА, НЕ МОГЛИ БЫ ВЫ ПОМОЧЬ МНЕ ОТВЕТИТЬ НА ЭТОТ ВОПРОС, ПОЖАЛУЙСТА ?

паниенко Ольга,                     Paniejenko Olga
не могли бы вы помочь мне ответить на этот вопрос, nie mŁAgli by wy     
                                pomoĆ mnie oTWIEćIEć NA ETAt-WAPROS

пожалуйста? PAŻAŁUSTA

Paniejenko Olga, nie mŁAgli by wy pomoĆ mnie 

oTWIEćIEć NA eTAd-WAPROS, PAżŻAŁ-USTA

# 1.Sommaire
- Zaczne od tego ze opowiem o moim doswiadczeniem zrobienia certyfikatu dp203, 
    - jak sobie z tym poradzilem,  
    - jakie wrazenia, etc


-  Nastepnie rzucimy okiem na rozne servisy 
jakie sa dostepne do pracy z danymi,
o jakich jest mowa w certyfikacie

wybralem 4 z nich, ktore wydawaly mi sie najbardziej interesujace. 

na ich przykladzie przytocze dwa przyklady z zycia wziete, biorac jako przyklad wymyslone przezemnie zapotrzebowanie firmy takiej jak Uber. aby pokazac jak te servisy ze soba wspolpracuja

- Kolejny punkt bedzie dotyczyl zawodu data engineer,
    de sa complexite, 
    de nomreus  parametre a prendre en compte etc. 
     zauwazam 3 aspekty ktore sa bezposrednio podobne w zawodzie developerow, 
        - perf, 
        - securite, 
        - services premium, 
    ale     aby pokazac dp-203 de maniere generale, et garder  big picture, high level, nie bede omawial wszystkich tych aspektow, mais plotot      se concentrez sur des sujets qui sont plus uniques à la certification DP-203 ou à l'ingénierie des données par rapport à d'autres certifications. 

        - index 
        - partition
        - distribution

        ces concepts pour les services qui travail sur le grand volume de data sont essentiel 

et a chaque fois how it translate on sql bdd, for developer profit



# 5 data engineers
        which service to use, not all of them support same languages, choosing Analisys type
        type of trigger to use
        copy behavior
        Windows
        costs
        quel commands pour avoir information about the data distribution and storage

# 6 which tools which concepts


# 7-10
    how Uber company, might leverage Azure Data Lake, Databricks, Data Factory, and Stream Analytics in their data infrastructure.

>>  Azure Data Lake: 
    Wiele danych z calego swiata jest generowanych w duzej ilosci i predkosci, 
    - takie dane jak lokalizacja zamowionej taxi, 
    - miejsce docelowe
    - czas przejazdu, 
    - cena przejazdu, 
    - szczegoly kierowcy
    - ocena pasazera przejazdu, ect. 
    te dane przychodza w rozniej formie i moze byc : 
        - danymi ze struktura like SQL data from their app databases) 
        - czesciowo ze struktura = semi-structured (like JSON data from their mobile apps), 
        - albo unstructured (like driver support emails)
        
    te wszystkie dane moga przyjsc w surowej formie raw, unprocessed form into an Azure Data Lake, 
    
    tworzac jedno miejsce dla wszystkich danych firmy 

    
>>  Azure Data Factory: 
    kiedy te dane przychodz z wielu zrodel, w roznych formatach, Uber potrzebuje narzedzia do wchloniecia, oczyszczenia i integracji tych danych 
    
        Azure Data Factory moze byc wykorzystane do stworzenia DATA PIPELINES ktore ciagnie dane z wielu miejsc , zmnienia je, transportuje jesli taka jest potrzeba (for instance, converting all timestamps to a single time zone),
        - i laduje je do data lake albo bezposrednio do data warehouse or analytics platform. 
            ktore moglo by sumowac dane dzienne generujac dzienne raporty na temat 
                dziennych przejazdow
                dzeinnych zarobkow

>>  Azure Databricks: 
    kiedy juz te dane sa w data lake, Uber moglby przeprowadzic kompleksowa analize 
        np. zidentyfikowac pattern prawidlowosci w przejazdach 
            - przewidziec przyszle potrzeby
            - zoptymizowac trasy 
        
        Azure Databricks dzieki przeliczeniowej mocy ktora jest rozdystrybuowana, moze przelknac wielka ilosc danych w szybkim tempie

>>  Azure Stream Analytics: 
    poza tymi wszystkimi historycznymi danymi w data lake, Uber ma rowniez dzialajaca w czasie rzeczywistym analize danych na temat trwajacych przejazdow taksowek. 
        np. lokalizacje GPS, 
        - status przejazdu
        - licznik przejazdu 
        
        Azure Stream Analytics pozwala miec dostep do tych danych pozwalajac Uberowi reagowac na nagle sytuacje. `
            - np. jesli wykryta zostanie nagla duze zapotrzebowanie na przejazdy w pewnej okolicy, Uber moze dostosowac swoje ceny, dla taksowek oraz poinformowac pobliskich taksowkarzy. 

dokonczyc................................................0607.0238
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
    conclusion
        prendre en compte index when migrating bdd to another - to jest lekcja jaka wyciagnalem 
# partitioning

obsluguja partycjonowanie danych : 
                                    Azure Synapse Analytics, 
                                    Azure SQL Database, 
                                    Azure Cosmo DB, i 
                                    Azure Table Storage

# distribution

wiec dystrybucja to tak jak w Harym Poterze, kiedy studenci sa podzieleni na rozne domy, w szkole Witchcraft and Wizardry.

    kazdy z domow odpowiada oddzielnej partycji, wedlug ktorej studenci sa podzieleni
    - to pozwala na zorganizowanie studentowm i ich dzienne aktywnosci
    - mozna sobie wyobrazic lekcje prowadzone dla calej szkoly jednoczesnie, to bylo by po proistu nie wykonalne :) 


wiec zeby uproscic , dystrybucja to rozmieszczenie danych na wielu serverach w celu zapewnienia lepszych efektywniejszych operacji na wielkich ilosciach danych dzieki rownoleglemu i tanszemu przetwarzaniu 

moze byc przeprowadzona na : 
                            Azure Synapse Analytics, 
                            Azure SQL Database, 
                            Azure Cosmo DB, i 
                            Azure Data Lake Storage

    Przygotowujac strategie dystrybucji danych najwazniejsze: 
    - typ operacji 
    - rozmiar tablic 
    - czestosc zmian danych 
    - poslizgi w danych , nierownomiertne rozmieszczenie danych 
    - relacje miedzy danymi

    plusy 
        - mozesz prace na danych rozdystrybuowac, wiele operacji rownolegle
        - rowniez odpornosc na brak odpowiedz z jednego z nodes 
>>      node = processing unit (hardware, VM, bdd instance, )
            usually individual servers or VMs that work together to process data. 


simple table distributed in three nodes.

    Consider the following table:

    Product ID  Product Category
    1           Electronics
    2           Books
    3           Electronics
    4           Clothes
    5           Books
    6           Clothes
    7           Electronics
    8           Clothes

1. Round Robin Distribution:
    Each row is distributed one after another across the nodes.

    Node 1: Rows 1, 4, 7
    Node 2: Rows 2, 5, 8
    Node 3: Rows 3, 6

2. Hash Distributed:
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> table use case example

    Rows are distributed based on a hash function applied to a chosen column (Product Category in this case).

    Node 1 (Electronics): Rows 1, 3, 7
    Node 2 (Books): Rows 2, 5
    Node 3 (Clothes): Rows 4, 6, 8

3. Replicate Distribution:
    Each node contains a full copy of the table.

    Node 1: All Rows (1-8)
    Node 2: All Rows (1-8)
    Node 3: All Rows (1-8)

    USE CASE 
        query on small tables with joins 


            Table 1: Dim_Product

            lua
            Copy code
            | Product_ID | Product_Name  | Category     |
            |------------|---------------|--------------|
            | 1          | Laptop        | Electronics  |
            | 2          | Shirt         | Clothing     |
            | 3          | Book          | Books        |
            Table 2: Dim_Location

            sql
            Copy code
            | Location_ID | Location_Name | Region       |
            |-------------|---------------|--------------|
            | 1           | New York      | Northeast    |
            | 2           | Los Angeles   | West Coast   |
            | 3           | Chicago       | Midwest      |

            In this example, both Dim_Product and Dim_Location are dimension tables that store static data related to products and locations. These tables are typically smaller in size compared to fact tables. Replicating them on each compute node provides the benefit of faster joins and queries without the need for data movement across nodes.

# podsumowanie indexing, distribution and partitioning 
stosowane razem, wzajemnie uzupełniają się, aby poprawić ogólną wydajność systemu danych. 

ex. 
    dystrybucja danych pomiędzy nodes redukuje ruch danych i umożliwia równoległe przetwarzanie, 
    
    indeksów tworzenie na konkretnych kolumnach dalszo optymalizuje wydajność zapytań w obrębie każdej partycji. 
    
    Partycjonowanie może być używane do logicznego organizowania danych w zarządzalne jednostki, które można następnie dystrybuować i indeksować dla efektywnego przetwarzania.
    
# zakonczenie

Sprawililo mi przyjemność zdawanie tego egzaminu, czuć że z dnia na dzień pamiętam coraz lepiej odpowiedzi, oraz wchodzenie głębiej w te tematy, 

Jednocześnie chciałbym powiedzieć że są rzeczy których żałuję, tematy których nie udało mi się zrozumieć, nie miałem czasu zgłębić 
Tematów następujących.

Ponieważ doświadczenie przygotowania Jedi było sposobem na uporządkowanie tych wszystkich informacji, dziękuję maherowi za propozycje przygotowanie Jedi, tematy których nie udało mi się zrozumieć dzisiaj ciągle chciałbym przeanalizować, i opisać być może w artykule na blogu, 

        Replikacja danych i sharding: Są to również kluczowe elementy zapewniające dostępność danych i skalowalność systemu.

        Kontrola współbieżności: Ten temat jest kluczowy w środowiskach baz danych wieloużytkownikowych, zapewniając integralność danych i efektywność systemu.

        Normalizacja/Denormalizacja bazy danych: Te techniki projektowania mogą pomóc optymalizować strukturę bazy danych dla różnych przypadków użycia.

        Proces ETL: Jeśli Twoja publiczność pracuje z dużymi ilościami danych, zrozumienie procesów ETL (Extract, Transform, Load) jest kluczowe.

Tymczasem główny naciskk położę na przygotowanie rozmów z klientami wykorzystując narzędzia jakie mogłem udoskonalić. 

    

