ostatnio, udalo mi sie otrzymac certyfikat dp203.
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

na ich przykladzie przytocze przyklady z zycia wziety, biorac jako przyklad wymyslone przezemnie zapotrzebowanie firmy takiej jak Uber. aby pokazac jak te servisy ze soba wspolpracuja

- Kolejny punkt bedzie dotyczyl zawodu data engineer,
    de sa complexite, 
    de nomreus  parametre a prendre en compte etc. 
     kiedy analizowalem o co tak na prawde chodzi w inzynierii danych, 
     zauwazam 3 aspekty ktore sa bezposrednio podobne w zawodzie developerow, 
        - perf, 
        - securite, 
        - services premium, 

        to jest podsumowanie bardzo binaire, na skroty, 
            istnieje ogromna ilosc parametrow jaka w tym zawodzie nalezy wziac pod uwage, 
            np. - jakie narzedzia azure wybrac stosownie do zapotrzebowania
                nalezy wiedziec, ze nie kazde z nich potrafi wspolpracowac w tym samym zestawem jezykow, (to nalezy wziac pod uwage kiedy mamy urzyc skryptow napisanych w jezyku Java, aldo R)
            OPTIMIZING FILES 
            COPING BEHAVIOR
                FLATTEN HIERARCHY
            CHOOSING MOST SUITABLE TRIGGER, SCHEDULING
            WINDOWS
                HOPPING
                TUMBLING
                SESSION
            CHOOSING MOST SUITABLE TOOL FOR TRANSFORMING DATA
                DATA TOOLS ACTIONS
                    AGGREGATE
                    DERIVED COLUMN
                    SURROGATE KEY
                    ASSERT
                    CAST
                    ALTERROW
            DATA REDUNDENCY

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

# index 


INDEXING

    specific choice of index type depends on the specific workload and usage patterns.


    specifically designed for columnstore databases
        
        NONCLUSTERED COLUMNSTORE
            index stores each column's data in a separate set of disk pages
                
            for 
                best for large amounts of data and queries that perform aggregations across large datasets.

            supported by
                Azure Synapse Analytics (SQL Data Warehouse)
                Azure SQL Database    
        
        
        
        CLUSTERED COLUMNSTORE
              ideal for large fact tables 
              
              
              Fact tables contain the quantitative or factual data about a business

              Sale_ID	Product_ID	Time_ID	Customer_ID	Location_ID	Total_Sale	Quantity_Sold	Discount
                1	1001	T1	C1	L1	$100	5	$10
                2	1002	T2	C2	L2	$150	10	$20
                3	1003	T3	C3	L3	$120	8	$15

                                    for queries perform a full scan of all data. These indexes can offer high compression and performance benefits for such workloads.
    
            supported by
                Azure Synapse Analytics (SQL Data Warehouse)
                Azure SQL Database    

    traditional row-based indexes
        NONCLUSTERED
            form of B-tree indexes

            Improves query performance for specific queries involving filtering or joining on specific columns.

        CLUSTERED
            Determines the physical order of data in a table, useful when frequently querying or sorting data based on a specific column.


# pour les dev

    - on peux indexer tout, juste string and binary can be ineficient

    in SQL server TEXT, NTEXT, IMAGE are not indexable, those types are deprecated, recommended to use VARCHAR(MAX), VARBINARY(MAX)

        Trade-Offs: take up space, slow INSERT, UPDATE, DELETE, because the database server must keep the index updated. 

Certain complex data types, like XML and spatial data types (GEOMETRY and GEOGRAPHY), have their own special types of indexes (XML indexes and spatial indexes, respectively).



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

    Rows are distributed based on a hash function applied to a chosen column (Product Category in this case).


3. Replicate Distribution:

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
    
    25 eleves dans une classe, 5 classe, 5 annees

    indeksów dla kazdej partycji poprawiaja mozlkiwosc optymizacji dla kazdej partycji. 
    
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

    

