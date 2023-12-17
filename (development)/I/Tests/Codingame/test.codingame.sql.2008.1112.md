##   CodinGame.test.sql.xxx


#### 001::
`
`------|product_category--------------------------|customer   
`------|product_category_id-----INTEGER-----|-----|customer_id----------INTEGER      
`------|name--------------------VARCHAR(50) |\----|firstname------------VARCHAR(50)           
`------|description-----------VARCHAR(255)| |-|lastname-----------------VARCHAR(50)               
`-------------------------------------------|-----|birth_date-----------DATE    
`------|product-----------------------------|-|---|address--------------VARCHAR(255)       
`------|Product_ld--------------INTEGER-----|-|---|zipcode--------------VARCHAR(5)          
`------|product_category_id-----INTEGER-----|-|---|city-----------------VARCHAR(50)          
`-----/|name--------------------VARCHAR(50) |-|---|phone_number---------VARCHAR(20)              
`----|-|description-------------VARCHAR(255)|/-------------|     
`----|-|price-------------------DECIMAL(5,2)|--------------|
`----|-|available_stock---------INTEGER-----|--------------| 
`----|-----------------------------------------------------| 
`----|-----------------------------------------------------|  
`----|-|order_product------------------|-----------|purchase_order        
`-----\|order_id----------------INTEGER|___________|order_id------------INTEGER           
`------|product_id--------------INTEGER|-----------|customer_id---------INTEGER             
`--------------------------------------------------|date----------------DATE  
`
`Pourquoi la requête suivante déclancherait-t-elle une erreur ? 
`
`SELECT 
`	product_id
`	,product_category_id
`	,order_id
`	,order_id
`	
`FROM	
`	product p
`	JOIN order_product op ON p.product_id = op.product_id
`::
`Dans la requête SQL fournie, le order_id est sélectionné deux fois dans la clause SELECT, ce qui peut entraîner une erreur, car SQL ne permet pas d'avoir deux colonnes avec le même nom dans le résultat. 
`
`Les noms de colonnes dans la clause SELECT ne doivent pas nécessairement être préfixés par les alias des tables, sauf en cas d'ambiguïté.
`Les ',' sont correctement placés après chaque élément sélectionné dans la clause SELECT.
`JOIN est un synonyme de INNER JOIN en SQL, donc les deux sont interchangeables.
`Dire "Il n'y a rien d'anormale dans cette requête" serait incorrect étant donné que order_id apparait deux fois.


- [ ] Les noms de colonnes dans la clause SELECT ne sont pas préfixés par les alias des tables correspondantes
- [ ] Les ',' ne sont pas au bon endroit
- [ ] INNER JOIN doit être utilisé à la place de JOIN
- [ ] Il n'y a rien d'anormale dans cette requête
- [x] order_id apparait deux fois

#### 002::
`
`Quel est l'ordre correct des clauses ? 

- [ ] 
`SELECT ...
`FROM ...
`GROUP BY ...
`ORDER BY ...
`WHERE ...

- [ ] 
`SELECT ...
`FROM ...
`WHERE ...
`ORDER BY ...
`GROUP BY ...

- [x] 
`SELECT ...
`FROM ...
`WHERE ...
`GROUP BY ...
`ORDER BY ...

- [ ] 
`SELECT ...
`FROM ...
`GROUP BY ...
`WHERE ...
`ORDER BY ...


#### 003::
`Quelle commande SQL permet d'ajouter une ligne dans une table de base de données ? 

- [ ] MORE
- [ ] ADD
- [x] INSERT
- [ ] UPDATE

#### 004::
``
`------|product_category--------------------------|customer   
`------|product_category_id-----INTEGER-----|-----|customer_id----------INTEGER      
`------|name--------------------VARCHAR(50) |\----|firstname------------VARCHAR(50)           
`------|description-----------VARCHAR(255)| |-|---|lastname-------------VARCHAR(50)               
`-------------------------------------------|-----|birth_date-----------DATE    
`------|product-----------------------------|-|---|address--------------VARCHAR(255)       
`------|Product_ld--------------INTEGER-----|-|---|zipcode--------------VARCHAR(5)          
`------|product_category_id-----INTEGER-----|-|---|city-----------------VARCHAR(50)          
`-----/|name--------------------VARCHAR(50) |-|---|phone_number---------VARCHAR(20)              
`----|-|description-------------VARCHAR(255)|/-------------|     
`----|-|price-------------------DECIMAL(5,2)|--------------|
`----|-|available_stock---------INTEGER-----|--------------| 
`----|-----------------------------------------------------| 
`----|-----------------------------------------------------|  
`----|-|order_product------------------|-----------|purchase_order        
`-----\|order_id----------------INTEGER|___________|order_id------------INTEGER           
`------|product_id--------------INTEGER|-----------|customer_id---------INTEGER             
`--------------------------------------------------|date----------------DATE  
`                                                  |date 				DATE  
``
`Que peut-on dire des jointures de cette requete ? 
`
`
`
`SELECT
`	p.product_id,
`	pc.product_category_id,
`	op.order_id
`	
`FROM
`	product p
`	JOIN product_category pc ON p.product_category_id = pc.product_cat
`	LEFT JOIN order_product op ON p.product_id = op.product_id  -- LINE 9
`	INNER JOIN purchase_order po ON op.order_id = po.order_id   -- LINE 10
`
`WHERE op.order_id IS NOT NULL  -- LINE 12
`::
`La requête SQL donne un exemple où plusieurs types de jointures sont utilisés. Les lignes 9 et 10 utilisent LEFT JOIN et INNER JOIN respectivement, et il n'y a pas d'erreur à les mélanger dans une seule requête, tant qu'elles sont utilisées correctement.
`
`En revanche, la clause WHERE op.order_id IS NOT NULL à la ligne 12 agit de manière à éliminer les lignes pour lesquelles op.order_id est NULL, c'est-à-dire les lignes qui n'ont pas de correspondance dans la table order_product. Cela a pour effet de transformer le LEFT JOIN en INNER JOIN, car un INNER JOIN ne retourne que les lignes où il y a une correspondance dans les deux tables.

- [ ] La ligne de code 9 a le même effet que la ligne de code 12
- [x] La ligne de code 12 a le même effet que de changer le LEFT JOIN de la ligne 9 en un INNER JOIN 
- [ ] La ligne de code 10 declanchera une erreur car plusieurs types de jointures sont mélangés
- [ ] La ligne de code 10 a le même effet que la ligne de code 12


#### 005::
``
`------|product_category--------------------------|customer   
`------|product_category_id-----INTEGER-----|-----|customer_id----------INTEGER      
`------|name--------------------VARCHAR(50) |\----|firstname------------VARCHAR(50)           
`------|description-----------VARCHAR(255)| |-|---|lastname-------------VARCHAR(50)               
`-------------------------------------------|-|---|birth_date-----------DATE    
`------|product-----------------------------|-|---|address--------------VARCHAR(255)       
`------|Product_ld--------------INTEGER-----|-|---|zipcode--------------VARCHAR(5)          
`------|product_category_id-----INTEGER-----|-|---|city-----------------VARCHAR(50)          
`-----/|name--------------------VARCHAR(50) |-|---|phone_number---------VARCHAR(20)              
`----|-|description-------------VARCHAR(255)|/-------------|     
`----|-|price-------------------DECIMAL(5,2)|--------------|
`----|-|available_stock---------INTEGER-----|--------------| 
`----|-----------------------------------------------------| 
`----|-----------------------------------------------------|  
`----|-|order_product------------------|-----------|purchase_order        
`-----\|order_id----------------INTEGER|___________|order_id------------INTEGER           
`------|product_id--------------INTEGER|-----------|customer_id---------INTEGER             
`--------------------------------------------------|date----------------DATE  
`                                                   |date 				DATE  
`
`Dans la requête suivante, par quoi devez-vous remplacer xxx pour retrouver les produits qui ont été commandés au moins une fois ? 
`
`SELEC p.name 
`FROM product p 
`WHERE XXX ( - XXX a remplacer 
`	SELECT op.product_id 
`	FROM order_product op 
`	WHERE p.product_id = op.product_id
`) 
`::
`Pour compléter la requête et trouver les produits qui ont été commandés au moins une fois, vous devriez utiliser la clause EXISTS. 

- [x] EXISTS 


#### 006::
``
`------|product_category--------------------------|customer   
`------|product_category_id-----INTEGER-----|-----|customer_id----------INTEGER      
`------|name--------------------VARCHAR(50) |\----|firstname------------VARCHAR(50)           
`------|description-----------VARCHAR(255)| |-|---|lastname-------------VARCHAR(50)               
`-------------------------------------------|-|---|birth_date-----------DATE    
`------|product-----------------------------|-|---|address--------------VARCHAR(255)       
`------|Product_ld--------------INTEGER-----|-|---|zipcode--------------VARCHAR(5)          
`------|product_category_id-----INTEGER-----|-|---|city-----------------VARCHAR(50)          
`-----/|name--------------------VARCHAR(50) |-|---|phone_number---------VARCHAR(20)              
`----|-|description-------------VARCHAR(255)|/-------------|     
`----|-|price-------------------DECIMAL(5,2)|--------------|
`----|-|available_stock---------INTEGER-----|--------------| 
`----|-----------------------------------------------------| 
`----|-----------------------------------------------------|  
`----|-|order_product------------------|-----------|purchase_order        
`-----\|order_id----------------INTEGER|___________|order_id------------INTEGER           
`------|product_id--------------INTEGER|-----------|customer_id---------INTEGER             
`--------------------------------------------------|date----------------DATE  
`                                                   |date 				DATE  
`
`
`Vous souhaitez calculer le nombre de commandes pour deux intervalles de prix de produits : 
`
`SELECT 
`	CASE 
`		WHEN p.price < 100 THEN '<100' 
`		ELSE '>=100'
`		.COUNT(op.order_id)
`FROM 
`	product p 
`	LEFT JOIN order_product op ON p.product_id = op.product_id 
`
`Pourquoi la requete ci-dessus genere-t-elle une erreur ?  (Il peut y avoir plusieurs raisons.) 
`::
`La requête SQL donnée génère une erreur pour plusieurs raisons. Voici les corrections nécessaires:
`
`Le mot-clé END est manquant dans la syntaxe du CASE WHEN: Le bloc CASE WHEN doit être terminé par le mot-clé END.
`
`Il manque une clause GROUP BY: Lorsque vous utilisez des fonctions d'agrégation comme COUNT(), vous devez généralement spécifier une clause GROUP BY pour indiquer comment regrouper les lignes.
`
`Il y a également une faute de syntaxe avec le . avant COUNT(op.order_id). Il devrait être remplacé par une virgule ,.

- [ ] un autre mot-cleé THEN est manquant dans la syntaxe du CASE WHEN
- [ ] Il manque une clause WHERE 
- [ ] Un autre mot-clé WHEN est manquant dans le syntax du CASE WHEN
- [x] Il manque une clause GROUP BY 
- [x] Le mot-clé END est manquant dans la syntaxe du CASE WHEN


#### 007::Vous travaillez avec la table suivante, appelee 'orders'
`
`|ID |PRODUCT_ID| ORDER_ID |
`|1--|1---------|1---------|
`|2--|1---------|2---------|
`|3--|1---------|3---------|
`|4--|2---------|3---------|
`|5--|3---------|3---------|
`|6--|4---------|4---------|
`|7--|5---------|5---------|
`|8--|6---------|5---------|
`|9--|7---------|5---------|
`|10-|8---------|5---------|
`
`Quel sera le resultat des requetes suivantes ? 
`
`QUERY 1
`SELECT COUNT(DISTINCT product_id) 
`FROM orders 
`
`QUERY 2 
`SELECT COUNT(DISTINCT product_1d. order_1d) 
`FROM orders 
`
`Repondez par 2 nombres sEpares par une virgule, comme ceci:
`resultat de to requete_1, resultat_de_la_requete_2 
`::
`QUERY 2 
`SELECT COUNT(*) 
`FROM (
`    SELECT DISTINCT product_id, order_id 
`    FROM orders
`) as distinct_pairs
`Résultat pour QUERY 2 corrigée : 9 (car chaque ligne dans le tableau fourni représente une paire unique (product_id, order_id), à l'exception des lignes 1, 2 et 3 qui ont le même product_id)
`
`Si la requête 2 n'est pas corrigée et est exécutée telle quelle, elle générera une erreur à cause des noms de colonnes incorrects et de l'utilisation incorrecte de COUNT(DISTINCT ...) avec plusieurs colonnes.

- [ ] 8, Erreur

#### 008::Votre base de donnees contient les tables suivantes : 
``
`------|product_category--------------------------|customer   
`------|product_category_id-----INTEGER-----|-----|customer_id----------INTEGER      
`------|name--------------------VARCHAR(50) |\----|firstname------------VARCHAR(50)           
`------|description-----------VARCHAR(255)| |-|---|lastname-------------VARCHAR(50)               
`-------------------------------------------|-|---|birth_date-----------DATE    
`------|product-----------------------------|-|---|address--------------VARCHAR(255)       
`------|Product_ld--------------INTEGER-----|-|---|zipcode--------------VARCHAR(5)          
`------|product_category_id-----INTEGER-----|-|---|city-----------------VARCHAR(50)          
`-----/|name--------------------VARCHAR(50) |-|---|phone_number---------VARCHAR(20)              
`----|-|description-------------VARCHAR(255)|/-------------|     
`----|-|price-------------------DECIMAL(5,2)|--------------|
`----|-|available_stock---------INTEGER-----|--------------| 
`----|-----------------------------------------------------| 
`----|-----------------------------------------------------|  
`----|-|order_product------------------|-----------|purchase_order        
`-----\|order_id----------------INTEGER|___________|order_id------------INTEGER           
`------|product_id--------------INTEGER|-----------|customer_id---------INTEGER             
`--------------------------------------------------|date----------------DATE  
`                                                   |date 				DATE  
`
`
`Vous souhaitez calculer les ventes par product_id, ainsi que la part des ventes de 
`chaque produit dans les ventes totales. 
`
`Que peut-on dire des approches suivantes ? 
`
`
`
`-- OPTION 1 
`SELECT p.product_id
`    ,SUM(p.price) AS price 
`    ,SUM(p.price) / ( 
`        SELECT SUM(p.price) 
`        FROM order_product op JOIN product p op.product_id = p.product_id) AS ratio
`       
`FROM 
`    product p 
`    JOIN order_product op ON p.product_id = op.product_id 
`
`GROUP BY p.product_id 
`
`
`-- OPTION 2 
`    SELECT 
`        p.product_id 
`        ,SUM(p.price) As price 
`        ,SUM(p.price) / total_sales.total AS ratio 
`
`FROM 
`    product p 
`    JOIN order_product op ON p.product_id = op.product_id 
`    LEFT JOIN (
`        SELECT SUM(p.price) AS total 
`        FROM order_product op JOIN product p ON op.product_id = p.product_id 
`        ) total_sales 
`
`GROUP BY p.product_id 



- [ ] L'option 2 est inefflcace parce qu'elle recalcule le total general pour chaque t product_id 
- [ ] L'option 2 declenchera une erreur car la condition du LEFT JOIN nest pas claire. 
- [x] L'option 1 est inefficace parce qu'elle recalcule le total general pour chaque product_id.
- [ ] L'option 1 declenchera une erreur car les sous-requetes doivent etre incluses dans la clause FROM et non dans le SELECT

#### 009::
`|alcohol_consumption-------------|
`|--------------------------------|
`|id-------------------INTEGER----|
`|country--------------varchar(50)|
`|beer_consumption-----INTEGER----|
`|spirit_consumption---INTEGER----|
`|wine_consumption-----INTEGER----|
`|total_consumption----FLOAT------|
`
`
`Objectif
`
`Extraire les pays dont la consommation moyenne annuelle d'alcool par personne est 
`do 0 litre ,('total consumption' egal a 0). 
`
`Conditions 
`• Colonne attendue : country;
`• Trier les lignes par country, dans l'ordre alphabettque. 
`• Exemple :
`
`|COUNTRY----| 
`|Afghanistan|
`|Kuwait-----| 
`|Somalia----| 

- [ ] SELECT country FROM alcohol_consumption WHERE total_consumption = 0 ORDER BY country ASC;

#### 010::
`--|location-------------------------------|supplier                                                                      
`--|location_id INTEGER--------------------|supplier_id INTEGER                                                                      
`--|city VARCHAR(50)-----------------------|city VARCHAR(50)                                                                      
`-/|state_province VARCHAR(30)-------------|state_province VARCHAR(30)                                                                      
`|-|postal_code VARCHAR(5)-----------------|postal_code VARCHAR(5)                                                                      
`|-|country VARCHAR(20)--------------------|country VARCHAR(20)                                                                      
`|-----------------------------------------|name VARCHAR(50)                                                     
`|-|velicle_part_location-------------------------|                                                         
`-\|velicle_part_location_id INTEGER--------------|                                                                    
`--|location_id INTEGER---------------------------|                                                       
`--|vehicle_part_id INTEGER-----------------------|                                                           
`-/|arrived_timestamp TIMESTAMP------------|vehicle_part_supplier                                                                             
`|-|left_timestamp TIMESTAMP---------------|supplier_id INTEGER                                                                            
`|-----------------------------------------|vehicle_part_id INTEGER                                                                            
`|-----------------------------------------/
`|-|vehicle-----------------|-------------/                                                                 
`-\|venicle_id INTEGER------|                                                                            
`--|vehide_name VARCHAR(10)-|--------------|vehicle_part                                                                                   
`--|vin VARCHAR(50)---------|-------------/|vehicle_part_id INTEGER                                                                 
`--|make VARCHAR(50)--------|--------------|rfid VARCHAR(255)                                                                        
`--|model VARCHAR(50)-------|--------------|Purchase_price DECIMAL(25,5)                                                              
`--|year INTEGER------------|--------------|sold_price DECIMAL(25,5)                                                             
`------------------------------------------|vehicle_id INTEGER                                                      
`------------------------------------------|make VARCHAR(50)                                                        
`------------------------------------------|model VARCHAR(50)                                                       
`------------------------------------------|year INTEGER                                                         
`------------------------------------------|part_name VARCHAR(50)                                                               
`
`Objectif 
`Extraire la liste des etats ou provinces (state_province') de la table location 
`
`Conditions 
`• Colonne attendue :state_province. 
`• Trier les Iignes dans l'ordre alphabetique. 
`• Ne pas afficher de doublons. 
 `• Exemple :
`
`|STATE_PROVINCE-|
`|---------------|
`|Arkansas-------|
`|New York-------|
`|Texas----------|

- [ ] SELECT DISTINCT state_province FROM location ORDER BY state_province ASC;

#### 011::
`--|location-------------------------------|supplier                                                                      
`--|location_id INTEGER--------------------|supplier_id INTEGER                                                                      
`--|city VARCHAR(50)-----------------------|city VARCHAR(50)                                                                      
`-/|state_province VARCHAR(30)-------------|state_province VARCHAR(30)                                                                      
`|-|postal_code VARCHAR(5)-----------------|postal_code VARCHAR(5)                                                                      
`|-|country VARCHAR(20)--------------------|country VARCHAR(20)                                                                      
`|-----------------------------------------|name VARCHAR(50)                                                     
`|-|velicle_part_location-------------------------|                                                         
`-\|velicle_part_location_id INTEGER--------------|                                                                    
`--|location_id INTEGER---------------------------|                                                       
`--|vehicle_part_id INTEGER-----------------------|                                                           
`-/|arrived_timestamp TIMESTAMP------------|vehicle_part_supplier                                                                             
`|-|left_timestamp TIMESTAMP---------------|supplier_id INTEGER                                                                            
`|-----------------------------------------|vehicle_part_id INTEGER                                                                            
`|-----------------------------------------/
`|-|vehicle-----------------|-------------/                                                                 
`-\|venicle_id INTEGER------|                                                                            
`--|vehide_name VARCHAR(10)-|--------------|vehicle_part                                                                                   
`--|vin VARCHAR(50)---------|-------------/|vehicle_part_id INTEGER                                                                 
`--|make VARCHAR(50)--------|--------------|rfid VARCHAR(255)                                                                        
`--|model VARCHAR(50)-------|--------------|Purchase_price DECIMAL(25,5)                                                              
`--|year INTEGER------------|--------------|sold_price DECIMAL(25,5)                                                             
`------------------------------------------|vehicle_id INTEGER                                                      
`------------------------------------------|make VARCHAR(50)                                                        
`------------------------------------------|model VARCHAR(50)                                                       
`------------------------------------------|year INTEGER                                                         
`------------------------------------------|part_name VARCHAR(50)                                                               
`                                                                                                                                           
`
`Objectif 
`Certains pieces de vehicules vehicle_partr n'ont pas la meme marque 'make', 'model' ou annee 'year' que le vehicule correspondent. 
`Cette Inexactitude est rendue possible par l'absence de clé etrangere entre les table 'vehicle' et vehicle_part rue le triplet make, model, year. 
` 
`Extraire les pieces qui sont dans ce cas de figure (non correspondance des marque, modele ou annee). 
` 
`Conditions 
`• Colones attendues : vin, rfid, part_name dans cet ordre.
`• Exemple : 
` 
`|VIN--------------|RFID--|PART_NAME-| 
`|WBAAM3333XFP59732|373626|Windshield|
`|W6AAM3333XFP59732|374639|Starter---|
`|WBAAM3333XFP59732|776453|Radiator--| 
::
`To achieve the objective described, you can use an SQL query to compare the 'make', 'model', and 'year' fields in the 'vehicle_part' and 'vehicle' tables. You can perform a JOIN operation on these tables using the 'vehicle_id' field and filter out the rows where 'make', 'model', or 'year' don’t match.

- [ ] SELECT 
`   v.vin,
`   vp.rfid,
`   vp.part_name
`FROM 
`   vehicle_part vp
`JOIN vehicle v ON vp.vehicle_id = v.venicle_id
`WHERE 
`   vp.make != v.make OR 
`   vp.model != v.model OR 
`   vp.year != v.year;

#### 012::
`--|location-------------------------------|supplier                                                                      
`--|location_id INTEGER--------------------|supplier_id INTEGER                                                                      
`--|city VARCHAR(50)-----------------------|city VARCHAR(50)                                                                      
`-/|state_province VARCHAR(30)-------------|state_province VARCHAR(30)                                                                      
`|-|postal_code VARCHAR(5)-----------------|postal_code VARCHAR(5)                                                                      
`|-|country VARCHAR(20)--------------------|country VARCHAR(20)                                                                      
`|-----------------------------------------|name VARCHAR(50)                                                     
`|-|velicle_part_location-------------------------|                                                         
`-\|velicle_part_location_id INTEGER--------------|                                                                    
`--|location_id INTEGER---------------------------|                                                       
`--|vehicle_part_id INTEGER-----------------------|                                                           
`-/|arrived_timestamp TIMESTAMP------------|vehicle_part_supplier                                                                             
`|-|left_timestamp TIMESTAMP---------------|supplier_id INTEGER                                                                            
`|-----------------------------------------|vehicle_part_id INTEGER                                                                            
`|-----------------------------------------/
`|-|vehicle-----------------|-------------/                                                                 
`-\|venicle_id INTEGER------|                                                                            
`--|vehide_name VARCHAR(10)-|--------------|vehicle_part                                                                                   
`--|vin VARCHAR(50)---------|-------------/|vehicle_part_id INTEGER                                                                 
`--|make VARCHAR(50)--------|--------------|rfid VARCHAR(255)                                                                        
`--|model VARCHAR(50)-------|--------------|Purchase_price DECIMAL(25,5)                                                              
`--|year INTEGER------------|--------------|sold_price DECIMAL(25,5)                                                             
`------------------------------------------|vehicle_id INTEGER                                                      
`------------------------------------------|make VARCHAR(50)                                                        
`------------------------------------------|model VARCHAR(50)                                                       
`------------------------------------------|year INTEGER                                                         
`------------------------------------------|part_name VARCHAR(50)                                                               
`                                                                                                                                      
`Objectif 
`Extraire les emplacements de pieces de véhicule vehicle_part_location pour lesquels location_id est egal a 3, 6, ou 12 et ayant une date de sortie définie. 
`  
`Conditions 
`  
`• Colonnes attendues :vehicle_part_id, arrived_timestamp, dans cet ordre. 
`• Exemple : 
` 
`|VEHICLE_PART_ID|ARRIVED TIMESTAMP----------| 
`|4--------------|2019-08-18T20:30:20.0000000|
`|6--------------|2019-12-21704:33:32.0000000|
`|7--------------|NULL-----------------------| 

- [ ] 
`SELECT 
`    vehicle_part_id, 
`    arrived_timestamp
`FROM 
`    vehicle_part_location
`WHERE 
`    location_id IN (3, 6, 12) 
`    AND left_timestamp IS NOT NULL;


#### 013::
`--|location-------------------------------|supplier                                                                      
`--|location_id INTEGER--------------------|supplier_id INTEGER                                                                      
`--|city VARCHAR(50)-----------------------|city VARCHAR(50)                                                                      
`-/|state_province VARCHAR(30)-------------|state_province VARCHAR(30)                                                                      
`|-|postal_code VARCHAR(5)-----------------|postal_code VARCHAR(5)                                                                      
`|-|country VARCHAR(20)--------------------|country VARCHAR(20)                                                                      
`|-----------------------------------------|name VARCHAR(50)                                                     
`|-|velicle_part_location-------------------------|                                                         
`-\|velicle_part_location_id INTEGER--------------|                                                                    
`--|location_id INTEGER---------------------------|                                                       
`--|vehicle_part_id INTEGER-----------------------|                                                           
`-/|arrived_timestamp TIMESTAMP------------|vehicle_part_supplier                                                                             
`|-|left_timestamp TIMESTAMP---------------|supplier_id INTEGER                                                                            
`|-----------------------------------------|vehicle_part_id INTEGER                                                                            
`|-----------------------------------------/
`|-|vehicle-----------------|-------------/                                                                 
`-\|venicle_id INTEGER------|                                                                            
`--|vehide_name VARCHAR(10)-|--------------|vehicle_part                                                                                   
`--|vin VARCHAR(50)---------|-------------/|vehicle_part_id INTEGER                                                                 
`--|make VARCHAR(50)--------|--------------|rfid VARCHAR(255)                                                                        
`--|model VARCHAR(50)-------|--------------|Purchase_price DECIMAL(25,5)                                                              
`--|year INTEGER------------|--------------|sold_price DECIMAL(25,5)                                                             
`------------------------------------------|vehicle_id INTEGER                                                      
`------------------------------------------|make VARCHAR(50)                                                        
`------------------------------------------|model VARCHAR(50)                                                       
`------------------------------------------|year INTEGER                                                         
`------------------------------------------|part_name VARCHAR(50)                                                               
`                                                                                                                                
`
`Objectit 
`
`Extraire les vehicules vehicle n'ayant aucune piece vehicle_part associee. 
`
`Ccmditiona 
`
`    • Colonne attendue : vehicle_id 
`    • Exemple : 
`
`|VEHICLE_ID---| 
`|8------------| 
`|5------------| 
`::
`To extract the vehicles that do not have any associated vehicle parts, 
`we can perform a LEFT JOIN between the vehicle table and the vehicle_part table on the vehicle_id column. 
`The rows where the vehicle_part_id is NULL would indicate the vehicles without any associated parts.

- [ ] SELECT v.venicle_id AS VEHICLE_ID
`       FROM vehicle v
`       LEFT JOIN vehicle_part vp ON v.venicle_id = vp.vehicle_id
`       WHERE vp.vehicle_part_id IS NULL;



#### 014::
``
`------|product_category--------------------------|customer   
`------|product_category_id-----INTEGER-----|-----|customer_id----------INTEGER      
`------|name--------------------VARCHAR(50) |\----|firstname------------VARCHAR(50)           
`------|description-----------VARCHAR(255)| |-|lastname-----------------VARCHAR(50)               
`-------------------------------------------|-----|birth_date-----------DATE    
`------|product-----------------------------|-|---|address--------------VARCHAR(255)       
`------|Product_ld--------------INTEGER-----|-|---|zipcode--------------VARCHAR(5)          
`------|product_category_id-----INTEGER-----|-|---|city-----------------VARCHAR(50)          
`-----/|name--------------------VARCHAR(50) |-|---|phone_number---------VARCHAR(20)              
`----|-|description-------------VARCHAR(255)|/-------------|     
`----|-|price-------------------DECIMAL(5,2)|--------------|
`----|-|available_stock---------INTEGER-----|--------------| 
`----|-----------------------------------------------------| 
`----|-----------------------------------------------------|  
`----|-|order_product------------------|-----------|purchase_order        
`-----\|order_id----------------INTEGER|___________|order_id------------INTEGER           
`------|product_id--------------INTEGER|-----------|customer_id---------INTEGER             
`--------------------------------------------------|date----------------DATE  
`                                                  |date 				DATE  
``
`
`Objectif 
`
`Extraire le nombre de produits product et de commandes purchase_orderD par 
`client customer pour les clients ayant passé au moins deux commandes.
`
`Conditions 
`    • Colonnes attendues : lastName, purchase_count, productCount, dans cet ordre.
`    • Exemple . 
`|LASTNAME---|PURCHASE_COUNT---|PRODUCT COUNT---| 
`|HARRIS-----|4----------------|9---------------| 
`|WILLIAMS---|4----------------|5---------------| 
`::
`To achieve the described objective, we will:
`
`Count the number of purchase_order entries for each customer to determine which customers have made at least two orders.
`Count the number of products ordered by each of those customers.
`Join the results on the customer_id to get the lastName, purchase_count, and productCount for each customer.

- [ ] WITH CustomerOrders AS (
`    -- Count the number of orders per customer
`    SELECT 
`        po.customer_id,
`        COUNT(DISTINCT po.order_id) AS purchase_count
`    FROM purchase_order po
`    GROUP BY po.customer_id
`    HAVING COUNT(DISTINCT po.order_id) >= 2
`),
`
`ProductCount AS (
`    -- Count the number of products per order for the customers with 2 or more orders
`    SELECT 
`        po.customer_id,
`        COUNT(DISTINCT op.product_id) AS productCount
`    FROM purchase_order po
`    JOIN order_product op ON po.order_id = op.order_id
`    WHERE po.customer_id IN (SELECT customer_id FROM CustomerOrders)
`    GROUP BY po.customer_id
`)
`
`-- Joining the above CTEs with the customer table to get the desired output
`SELECT 
`    c.lastname AS LASTNAME,
`    co.purchase_count AS PURCHASE_COUNT,
`    pc.productCount AS PRODUCT_COUNT
`FROM customer c
`JOIN CustomerOrders co ON c.customer_id = co.customer_id
`JOIN ProductCount pc ON c.customer_id = pc.customer_id
`ORDER BY c.lastname;


#### 015::
`Modele de donnees 
`
`students 
`    Id          INTEGER 
`    first_name  VARCHAR(50)
`    last_name   VARCHAR(50)
`    test_name   VARCHAR(50)
`    Store       FLOAT 
`
`Objectif 
`
`Redigez une requete qui renvoie tous les etudiants dont la note moyenne avg_score 
`est superieure ou egale a 0,9. 
`
`Conditions 
`
`    • Colonnes attendues : first_name, last_name, avg_score, dans cet ordre. 
`    • Arrondissez le score moyen pour ne conserver que deux decimates. 
`    • Trier les lignes par avg_score dans I'ordre decroissant puis par first_name dans l'ordre croissant. 
`    • Exemple : 
`
`|FIRST_NAME---|LAST_NAME---|AVG_SCORE---| 
`|Jan----------|Beavers-----|0.99--------| 
`|Sherry ------|Hall--------|0.95--------| 
`|Tomas -------|Tu----------|0.9---------| 
`::
`To achieve the described objective, we'll group by student and calculate their average score. 
`We'll then filter to include only those students whose average score is greater than or equal to 0.9.  

- [ ] SELECT 
`    first_name AS FIRST_NAME,
`    last_name AS LAST_NAME,
`    ROUND(AVG(Score), 2) AS AVG_SCORE
`FROM students
`GROUP BY first_name, last_name
`HAVING AVG(Score) >= 0.9
`ORDER BY AVG_SCORE DESC, first_name ASC;


#### 016::
`Modele de donnees 
`
`|alcohol_consumption---| 
`|id------------INTEGER-----|
`|country-------VARCHAR(50)-| 
`|beer_consumption---INTEGER| 
`|spint_consumption--INTEGER| 
`|wine_consumption---INTEGER| 
`|total_consumption--FLOAT--| 
`
`Objectif 
`Extraire les pays dont la consommation de biere beer_consumption est strictement 
`superieure aux consommations de spiritueux spirit_consumption et de vins 
`wine consumption cummulées.
`
`Conditions 
`   • Colonnes attendues : country, beer_consumption dans cet ordre. 
`   • Trier les lignes par country, dans l'ordre elphabetique. 
`   • Exemple : 
`
`|COUNTRY------|BEER_CONSUMPTION|
`|Algerie------|25--------------|
`|Burundi------|88--------------|
`|Ecuador------|162-------------|
`::
`Based on the data model and objectives provided, we need to extract countries where beer consumption (beer_consumption) 
`is strictly greater than the combined consumption of spirits (spirit_consumption) and wines (wine_consumption).

- [ ]  SELECT 
`   country AS COUNTRY,
`   beer_consumption AS BEER_CONSUMPTION
`       FROM alcohol_consumption
`       WHERE beer_consumption > (spirit_consumption + wine_consumption)
`       ORDER BY country ASC;


#### 017::
`Selon le schema et le listing de la table ,tbl_Departments ci-dessous, choisissez les 
`affirmations qui sont vraies. 
`
`tbl_OrderType------------------------------------tbl_Departments                                                                                                                  
`Order_Type int-----------------------------------Department ID nvarchar(4)                                                                                                        
`Type_Description nvarthar(50)-------------------/Dept_Descrtption nearchar(50)                                                                                                                   
`Type_Category nvatchar(S0)---------------------/-Dept_Category nvatchar(50)                                                                                                                   
`----------------\-----------------------------/--Dept_Manager nverthar(50)                                                                                         
`-----------------\---------------------------/                                                                                         
`------------------tbl_Bakery_Order_facts                                                                                                                                         
`------------------line_Item int                                                                                                                                                  
`------------------Ticket_no int                                                                                                                                                  
`------------------Department_ID nverthar(4)                                                                                                                                      
`------------------Order_Type int                                                                                                                                                 
`------------------Item_ID nverthar(10)                                                                                                                                           
`------------------Promo_code nverthar(4)                                                                                                                                         
`------------------Item_Count int                                                                                                                                                 
`------------------SaleAmt real                                                                                                                                                   
`---------------------/-----------------\                                                                                              
`tbl_Promos----------/-------------------\---------tbl_Items                                                                                                                    
`Promo_Code nvarthar(4)-------------------\--------Item_ID nvarchar(10)                                                                                                                      
`Promo_Description nverchen(50)--------------------Item_Description nvarthar(50)                                                                                                                    
`Employee Discount On------------------------------Made_InHouse bit                                                                                                                        
`
`
`|DEPARTMENT_ID|DEPT_DESCRIPTION--------|DEPT_CATEGORY------------|DEPT_MANAGER--|
`|-------------|------------------------|-------------------------|--------------|
`|Al0----------|Cakes-------------------|Cake from Case-----------|John Alexander|
`|A11----------|Cakes Customized--------|Cakes--------------------|John Alexander|
`|B10----------|Pies--------------------|Baked Pies---------------|Cindy Adams---|
`|B11----------|Pies--------------------|Refrigerated Pies--------|Cindy Adams---|
`|C10----------|Cookies-----------------|Cookies by Dozen Box-----|Ralph Munster-|
`|Cli----------|Cookies-----------------|Customized Cookies-------|Ralph Munster-|
`|D10----------|Specialty Pastries------|Pastries•to-Go-----------|Jolene DuBose-|
`|D11----------|Specialty Pastries------|Pastries for Catering----|Jolene DuBose-|
`
`Plusieurs reponses attendues. 
`::
`Le schéma actuel est un schéma en flocon: The schema resembles a snowflake schema due to the normalization of tables. However, it's not as normalized as classic snowflake schemas. Some might consider it a hybrid. Potentially true.
`
`tbl_Department pourrait être normalisée et convertie en 3 tables: Looking at tbl_Departments, it contains the DEPARTMENT_ID, DEPT_DESCRIPTION, DEPT_CATEGORY, and DEPT_MANAGER. However, given the current structure, it isn't evident that this table could be normalized into three distinct tables without further information about the nature of the data and relationships. False.
`
`Le schéma pourrait être aisément converti en schéma en flocon ou flocon hybride: As mentioned in the first point, this schema already has some characteristics of a snowflake or hybrid schema, so it's possible it could be converted more fully into one. True.
`
`Le schéma a 5 tables de dimensions: From the provided schema, the dimension tables seem to be: tbl_OrderType, tbl_Departments, tbl_Promos, tbl_Items, and perhaps one of the fields in tbl_Bakery_Order_facts serves as another dimension. This would make it True if we consider tbl_Bakery_Order_facts as having one or more dimensions inside it.
`
`Il y a plusieurs tables de faits dans ce schéma: From the provided schema, the only clear fact table seems to be tbl_Bakery_Order_facts. This is because it contains measures such as SaleAmt and foreign keys that relate it to the other dimension tables. False.

- [x] Le schéma actuel est un schéma en flocon 
- [ ] tbl_Department pourrait étre normalisée et convertie en 3 tables 
- [x] Le schéma pourrait être aisément converti en schéma en flocon ou flocon hybride 
- [x] Le schéma a 5 tables de dimensions 
- [ ] Il y a plusieurs tables de faits dans ce schéma 



#### 018::
`Quelles affirmations sont vraies à propos des schémas en étoile en architecture de données ? 
`::
`Vrai - Les schémas en étoile sont conçus pour faciliter l'agrégation des données et sont couramment utilisés avec des outils de Business Intelligence pour le reporting et l'analyse.
`
`Faux - Dans un schéma en étoile, une table de faits maintient une relation de plusieurs à plusieurs avec les tables de dimensions. Un enregistrement dans la table de faits peut être associé à de nombreux  enregistrements dans les tables de dimensions et vice versa.
`
`Faux - Ce sont les tables de faits qui stockent les enregistrements transactionnels dans un schéma en étoile. Les tables de dimension stockent des informations descriptives ou attributaires.
`
`Vrai - Les tables de dimensions dans un schéma en étoile sont généralement dénormalisées. Cela signifie qu'elles sont structurées de manière à réduire le nombre de jointures nécessaires et à améliorer les performances des requêtes, même si cela peut entraîner une redondance des données.
`
`Faux - Il est tout à fait possible de créer de nouvelles colonnes dans les tables de dimension d'un schéma en étoile si les besoins métier évoluent. Cependant, cela doit être fait avec prudence pour maintenir l'intégrité des données et les performances du système.

- [x] 
`Les schémas en étoile facilitent l'agregation dans les outils de Business Inteligence
- [ ] 
`Dans un schéma en étoile, les tables de faits maintiennent toujours une association 1 à 1 avec les tables de dimensions
- [ ] 
`Les tables de dimension stockent les enregistrement transactionnels dans un schéma en étoile
- [x] 
`Les tables de dimensions dans un schéma en étoile sont typiquement dénormalisées
- [ ] 
`Créer de nouvelles colonnes dans les tables de dimension n'est pas autorisé dans un schéma en étoile

#### 019::
`Quelles affirmations sont vraies à propos des étapes de création d'un schéma en étoile depuis un entrepôt de données ?
`::
`Vrai - Déterminer les besoins de reporting et identifier les mesures à agréger dans la table de faits est une étape clé dans la création d'un schéma en étoile.
`
`Vrai - Avant de commencer la conception du modèle, il est effectivement utile de lister les champs qui décrivent chaque mesure, cela aide à définir les attributs des tables de dimensions.
`
`Faux - Les tables de dimensions ont généralement une clé primaire, mais elles n'ont pas de clés étrangères. Ce sont les tables de faits qui ont des clés étrangères faisant référence aux clés primaires des tables de dimensions.
`
`Vrai - Identifier les mesures et les transactions qui seront stockées dans la table de faits est effectivement une première étape cruciale dans la création d'un schéma en étoile.
`
`Partiellement Vrai - Déterminer les relations et les hiérarchies entre les tables peut être une étape de la création d'un schéma en étoile, mais il n'est pas nécessaire que chaque table de dimension ait une table parent. Les hiérarchies peuvent être utilisées au sein des tables de dimensions pour organiser les données, mais elles ne déterminent pas nécessairement des relations de parenté entre différentes tables de dimensions.

- [x] 
`Déterminer les besoins de reporting pour vos données et agréger les mesures pour chaque besoin dans la table de faits
- [x] 
`Avant d'entamer le design du modèle, une bonne pratique consiste à lister les champs qui décrivent chaque mesure
- [ ] 
`Créer au moins deux contraintes pour chaque table de dimension : 
`une clé primaire et une clé étrangère
- [x] 
`Une première étape importante est d'identifier les mesures et transactions qui seront stockées dans une table de faits
- [ ] 
`Déterminer les tables parent pour chaque dimension en utilisant des hiérarchies. 

#### 020::
`Quelles affirmations sont vraies à propos de l'utilisation des schémas en étoile ? 
`::
`Faux - L'avantage du schéma en étoile ne réside pas dans une structure hiérarchique profonde nécessitant de multiples jointures, mais plutôt dans sa structure plate qui réduit le nombre de jointures nécessaires, améliorant ainsi les performances des requêtes.
`
`Faux - Bien que les tables de dimensions soient généralement reliées par la table de faits, il est techniquement possible de les joindre directement si nécessaire, même si cela n'est pas courant dans la pratique des schémas en étoile.
`
`Vrai - Sélectionner un enregistrement dans une table de dimension peut effectivement permettre de retrouver plusieurs enregistrements correspondants dans la table de faits, car une dimension peut être associée à plusieurs faits.
`
`Faux - L'intégrité référentielle est généralement assurée dans les schémas en étoile, et de nouveaux enregistrements dans la table de faits ne devraient pas avoir de clés étrangères qui ne réfèrent pas à des enregistrements existants dans les tables de dimensions.
`
`Faux - Le schéma en étoile n'a pas nécessairement un temps de chargement plus important du fait du nombre de tables. En fait, le schéma en étoile est souvent plus rapide à interroger en raison de la réduction du nombre de jointures nécessaires. Le temps de chargement peut dépendre de divers facteurs tels que la taille des données, la complexité des transformations, etc., et ne dépend pas uniquement du nombre de tables dans le modèle.

- [ ] 
`Un avantage du schéma en étoile est l'accroissement des performances de la requête grâce à la structure hiérarchique profonde des dimensions qui requièrent des jointures multiples
- [ ] 
`Les tables de dimensions ne peuvent être jointes directement, et doivent être mises en relation via la table de faits. 
- [x] 
`Lorsque l'on requête via un schéma en étoile, séléctionner un enregistrement dans une table de dimension permet de retrouver plusieurs enregistrement de la table de faits
- [ ] 
`L'intégralité référentielle est assurée parce que de nouveaux enregistrement dans la table de fait dont les clés étrangères ne référe pas à des dimensions sont toujours autorisés. 
- [ ] 
`Un inconvénient du schéma en étoile est que son temps de chqrgement est importqnt du fqit du nombre important de tables dans le modèle

#### 021::
`Quelles affirmations sont vraies vis-a-vis de l'utilisation du schema en etoile pour l'analyse de donnees ? 
`::
`Vrai - Si une sous-requête se joint à un champ qui n'est pas la clé primaire d'une table de dimension et que ce champ contient des doublons, il est possible que la requête principale renvoie des doublons.
`
`Vrai - Lors de l'aggrégation de données, si on se joint à un champ qui n'est pas unique (pas une clé primaire), cela peut effectivement entraîner des doublons dans les résultats, à moins de prendre des précautions, par exemple en utilisant des sous-requêtes ou des fonctions d'agrégation appropriées.
`
`Faux - La plupart des outils de visualisation de données modernes sont tout à fait capables de gérer les schémas en étoile. Les schémas en étoile sont couramment utilisés dans les entrepôts de données et les outils de BI (Business Intelligence) tels que Tableau, Power BI, et autres les supportent bien.
`
`Vrai - Les schémas en étoile sont généralement plus performants pour les requêtes analytiques par rapport aux schémas en flocons de neige (flacons semble être une erreur typographique), car ils nécessitent moins de jointures, ce qui peut accélérer les requêtes. Les schémas en flocons de neige normalisent les données à un niveau supérieur, ce qui peut entraîner plus de jointures et potentiellement des performances moindres pour certaines requêtes.

- [x] 
`Pour une requete utilisant une sous-requete qui se joint a un champ qui n'est pas la cle primaire d'un table de dimension, les resultats peuvent avoir des doublons si la requete principale et la sous-requete se joignent par ce champ non cle primaire. 

- [x] 
`Lors de l'ecriture d'une requete qui somme une mesure de la table de faits groupee par un champ qui n'est pas la cle primaire d'une table de dimension, les resultats peuvent avoir des doublons si l'on n'effectue pas d'abord une sous-requete sur la cle primaire

- [ ] La plupart des outils de visualisation de donnees ne prennent pas en charge les schemas en etoile, sauf si vous creez des requetes de visualisation specyfiques
- [x] Les performances des requetes sur les schemas en etoile sont souvent meilleurs que celles sur les schemas en flocons














