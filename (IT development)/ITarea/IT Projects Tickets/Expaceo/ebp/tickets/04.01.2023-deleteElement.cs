estimation : 1jour + 1 jour 
start : 04.01.2023
end : 


Daily. 

Daily 05.01.2023
- suppresion d'element:
    1. controller,[ok]
    2. contrat, [ok]
    3. handler, [ok]
    4. test, [ok] commentaires. 
    5. porzadek na DevOps [ok]
    6. revenir sur branche develop, creer une branch deleteElement [ok]
    

    feature : 
vew branch name: feature/lbo_US261008_SuppressionElements

quel form est correct : Liste des identifiants d'Éléments à supprimer ou Liste des identifiants des Éléments à supprimer
Les deux formes sont correctes, mais elles ont des significations légèrement différentes.

"Liste des identifiants d'éléments à supprimer" signifie une liste d'identifiants qui appartiennent à des éléments qui doivent être supprimés. Cette formulation met l'accent sur les identifiants.

"Liste des identifiants des éléments à supprimer" signifie une liste d'identifiants qui appartiennent à une liste d'éléments qui doivent être supprimés. Cette formulation met l'accent sur les éléments.

Voici un exemple de phrase utilisant chacune des deux formes:

"J'ai créé une liste des identifiants d'éléments à supprimer afin de faciliter le processus de suppression."
"Voici la liste des identifiants des éléments à supprimer. Assurez-vous de les supprimer tous avant de quitter le programme."

611707

nowe dyrektywy. 
1. //to ma byc zmienione : 
//on mowi o tym 
 
 elementTable = table.CreateInstance<ElementLigne>();


2. //Base toi sur la dernière PR des clients pour ajouter une nouvelle classe de base GestionPrestationIntegrationTest

//on mowi o tym  
protected override IList<ITestDependency> InitializeDependencies()
        {
            var resultats = base.InitializeDependencies();
            resultats.Add(new SqliteTestDependency<ApplicationDbContext>());
            return resultats;
        }

3. olac inne tylko zajac sie zeby dzialalo wprowadzenie teblicy