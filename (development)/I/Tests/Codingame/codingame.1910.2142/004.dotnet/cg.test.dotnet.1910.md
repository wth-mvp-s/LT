##   cg.test.dotnet.1910


#### 001::Dans une application ASP.NET Core MVC, comment specifier une classe Model dans une Vue avec typage fort (strongly typed) ? 
`
`<h3>Strongly typed view</h3>
`<p>Hello @Model.FirstName!</p>

- [ ] @inherits Viewc<User> 
- [ ] Model = typeof(User) 
- [x] @model User 
- [ ] @model = new User() 

#### 002::Vous installez un assembly de NuGet dans votre application .NET qui sera partagé entre d'autres applications sur votre machine. 
`
`Où cette bibliothèque sera-t-elle stockée 7 
`::
`Note : Bien que la plupart des packages NuGet soient installés dans le dossier de chaque projet, 
`le Global Assembly Cache (GAC) est utilisé pour les assemblies partagés entre plusieurs applications sur une machine.

- [x] Dans le GAC 
- [ ] À l'intérieur d'un dossier lib dan le dossier racine de votre projet
- [ ] Dans le CLR 
- [ ] Il sera installé individuellement dans le dossier bin de chaque projet 

#### 003::Quelle interface représente une collection d'objets auxquels on peut accéder individuellement par index ?

- [ ] IEnumerablel 
- [ ] IQueriable 
- [ ] ICollectionl 
- [x] lList

#### 004::En utilisant l'Entity Framework, quelle méthode de  obcontext devez-vous remplacer afin de configurer manuellement le modèle de base de données ? 

- [ ] OnConfiguring 
- [x] OnModelCreattng 
- [ ] Set 
- [ ] Entry 

#### 005::Vous souhaitez concevoir une application web ASP.NET Core qui permet aux utilisateurs de consulter des tableaux de bord mis à jour de manière continue. Ces tableaux de bord affichent des données de trafic en temps réel.
`
`Quel package ou framework pouvez-vous utiliser pour atteindre cet objectif ? 

- [x] SignalR 
- [ ] gRPC 
- [ ] MediatR 
- [ ] Swagger 

