2.article.gitflow.md

 GITFLOW 
    version control strategy or workflow pattern, created by Vincent Driessen
        help streamline release cycle process
        defines responsability, timing of diffirent branches

    central repo 
        master, infinite lifespan, official release history
        develop, infinite lifespan, integration branch for features

        Other branches
            Feature branches to develop new features
            Release branches prepare for production releases
            Hotfix branches quickly fix live production issues
        
    A successful implementation of GitFlow requires a well-coordinated team that's committed to following the workflow. 


|Branch-Type-|Merges-Into|Naming-Convent.|Merge-Access|Push/Pull-Rights|Del-Rights-|
|------------|-----------|---------------|------------|----------------|-----------|
|Release-----|main-&-dev-|`release/*`----|LD/PM-------|dev-------------|LD/PM------|
|main--------|-----------|`main`---------|LD/PM-------|Read-only-4-Dev-|Not-del----|
|Hotfix------|main-&-dev-|`hotfix/*`-----|LD/PM-------|dev-------------|LD/PM------|
|develop-----|main-------|`dev`----------|LD/PM-------|dev-------------|Not-del----|
|Feature-----|dev--------|`feature/*`----|dev---------|dev-------------|dever------|


    efektywna wspolpraca - Isolation of Changes

            eviter Overlapping Work: 
                zagubienie kto jest odpowiedzialny za co 

            eviter futures which are interdependant, 
                brak rygoru, potrzebna scisla
                konflikty w pracy nad zmianami szczegolnie kiedy responsabilities overlap, potrzeba scislej wspolpracy 
            
        korzysci 
            skoncentrowanie sie na swoich features a nie robienie impossible dla innych
            
            praca rownlolegla, stabilnosc , polepszona jakosc kodu, jasne skoordynowane publikowanie projektu, 

def 
    ten proces istnieje po to aby wypuszczania nowej wersji, albo publikowania goracych korekt 
        generowalo jak najmniej problemow, bledow
        pomaga wyjasniac role 
            co kto i kiedy = mniej bledow, efektywniejsza praca 
        gladsza przewidywalna wypuyszczanie publikacji

    elastycznosc - szybkie reagowanie na zmiany w wymaganiach 
        ? 
# perf
    learning curve
        praca developers more proficient withy git, wysoko cenione w przemysle

# securite 

# prime tier