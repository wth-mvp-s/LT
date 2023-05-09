zalacznik do umowy dalej zwany jako "Usługi"

Uslugi jakie prosze o wykonanie to dokonanie transkrypcji pytan i odpowiedzi testu DP-203 : Data Engineering
w formie i formacie opisanym ponizej. 

url gdzie znajduje sie test z pytaniami:https://www.examtopics.com/exams/microsoft/dp-203/view/

liczba pytan : 290 (liczba pytan moze ulec zmianie, Microsoft uaktualnia pytania mniej wiecej co 2 tygodnie). Moja Prosba bedzie przygotowanie transkrypcji aktualnej z dnia w ktorym otrzymam wykonane uslugi. Stad w Twoim interesie jest zrobic je szybciej zeby nie obawiac sie ze zawartosc strony ulegnie zmianie.

Pytania maja roznoraka postac. generalnie wiekszosc jest typy multi wyboru. Ale moga zdarzyc sie pytania gdzie nalezy podac odpowiednia kolejnosc wybranyuch odpowiedzi. 

Te dwa i inne mozliwe typy pytan sa opisane w oddzielnym folderze zawartym w meilu. 

pliki maja byc z rozszerzeniem .md (wiecej informacji o formacie pliku : https://en.wikipedia.org/wiki/Markdown)
Proponuje uzywac program Visual Code (darmowy)do przygotowania plikow, ale mozesz uzywac dowolnego edytora tekstow. (link aby sciagnac VS Code: https://code.visualstudio.com/download)

kazde wprowadzone pytanie musi byc poprzedzone przez 
#### [numer hronologiczny]::

przyklady : 

#### 001:: oto pierwsze wprowadzone pytanie 
(to ma znaczenie, piewrwsze piec charakterow to cztery znaczki sharp #### i odstep = "#### ")



dodatkowo kazda nowa linia w pytaniu musi byc poprzedzona przez tilt 
czyli nastepujacy znaczek `  

jak w ponizszym przykladzie: 

#### 00104::
`Your company has a project in Azure DevOps for a new web application.
`The company identifies security as one of the highest priorities.
`You need to recommend a solution to minimize the likelihood that infrastructure credentials will be leaked.
`What should you recommend?



ponizej wprowadzonego pytania umieszczamy odstep rowny jednej linii

nastepnie wprowadzamy odpowiedzi poprzedzone przez 
- [ ] dla nieprawidlowej odpowedzi oraz 
- [x] dla prawidlowej lub prawidlowych

oto przyklad: 
#### 00301::
`Your company is building a new solution in Java.
`The company currently uses a SonarQube server to analyze the code of .NET solutions.
`You need to analyze and monitor the code quality of the Java solution.
`Which task types should you add to the build pipeline?

- [x] Maven
- [ ] CocoaPods
- [ ] Xcode
- [ ] Gulp


oddzielnie, w przypadku gdzie odpowiedzi wymagaja podania kolejnosci 

- [0] dla pierwszej prawidlowej
- [1] dla drugiej prawidlowej 
- [2] dla trzeciej prawidlowej, 
itd...

jednoczesnie kiedy jedna z odpowiedzi nie ma byc urzyta

- [-] dla niepoprawnych odpowiedzi ktore nie maja zastosowania dla prawidlowej kolejnosci, 
wstawiamy minus

oto przyklad: 

#### 00313::
`You provision an Azure Kubernetes Service (AKS) cluster that has RBAC enabled. You have a Helm chart for a client application.
`You need to configure Helm and Tiller on the cluster and install the chart.
`Which three commands should you recommend be run in sequence? To answer, move the appropriate commands from the list of commands to the answer area and arrange them in the correct order.

- [2] helm install
- [0] kubectl create
- [-] helm completion
- [1] helm init
- [-] helm serve

to ma znaczenie, przeciwnie do pytan multi wyboru w przypadku pytan o kolejnosc, nie ma prawa byc pytanie z pustym miejscem miedzy nawiasami [ ]. 

Moze sie zdarzyc ze odpoweidz tez bedzie na kilku liniach, wtedy podobna zasada, kazda nowa linia poprzedzona przez tilt `

oto przyklad pytania z odpoweidziami na wielu liniach : 

#### 00389::
`Scenario: Visual Studio App Center must be used to centralize the reporting of mobile application crashes and device types in use.
`
`How should you complete the code to initialize App Center in the mobile application?


- [x] 
`MSAppCenter.start
`( "{Your App Secret}",
`   withServices:[MSAnalytics.self, MSCrashes.self]
`)

- [ ] 
`MSAppCenter.start
`( "{Your App Secret}",
`   withServices:[MSCrashes.self, MSAnalytics.self]
`)

- [ ] 
`MSAppCenter.start
`( "{Your App Secret}",
`   withServices:[MSAnalytics.self, MSAnalytics.self]
`)

- [ ] 
`MSAppCenter.start
`( "{Your App Secret}",
`   withServices:[MSDistribute.self, MSCrashes.self]
`)

- [ ] 
`MSAppCenter.start
`( "{Your App Secret}",
`   withServices:[MSCrashes.self, MSDistribute.self]
`)

- [ ] 
`MSAppCenter.start
`( "{Your App Secret}",
`   withServices:[MSPush.self, MSDistribute.self]
`)

- [ ] 
`MSAppCenter.start
`( "{Your App Secret}",
`   withServices:[MSPush.self, MSCrashes.self]
`)



koncowy efekt, prosze o wykonanie plikow po 50 pytan, czyli dla 290 pytan bedziemy miec 6 plikow. 

