Donc un dev full-stack, depuis plusieurs annees deja, principalement DOTNET et Angular. 
    J'ai vu une Premiere version d'angular en 2016, AngularJS, donc je un recule sur les nouveautés de chaque version 2+, avec aussi cette experiance de changement de syntaxe, et comment c'etait gerer avant que les feautures arrive. 
    (je parle ici de intercepteur par ex., HttpClient)
    mais je comprends aussi grace a cette long histoire avec angular son fonctionement sous le capot (ng-bind, lifehook cycle) 

    Pareil pour .NET, 

    Donc sur la missions, on retrouve tout les sujets de base de framework: routing, communication entre les composants, les services, etc. mais dans ce contexte d'une application chargé de complexité, on est sur 300 pages de spec, attention. on a en parallelle les tickets sur DeVopS, mais aussi, des infos recu lors de daily, rituel SCRUM en tout ca beaute. 
    Avec cette densite des infos, meme les sujets simple de framework prends tout une autre dimmension, et d'un coup les sujets simples deviens unsurmontable. 

    Sur cette projet on a aussi les sujets un peu plus compliquer, comme la securité, validations, gestion d'erreur, cross-site scripting protection, etc, on a aussi l'enjou de performance, gestion de detection de changement onPush, lazyloading. tree shaking, bundles, 

    les sujets transverse, programation reactive, cote front avec rxJS, cote back avec canselation token, tout est asynchrone. 

    on a gestion d'etat avec NgRx. donc ca c'est un autre niveau d'inteligence d'appli, on se fier pas au service, nous traitons les methode pure et unpure separement. gestion de maniere coherent et previsible les stream des observables. 

    il y a une reflexion avant effectuer une action, c'est structure la logique de l'appli. donc plus facile pour gerer l'etat complex

    Et pour terminer nous avent aussi nombreuses libraries aditionelles, pour traiter les requettes simple, pour la validation cote back, en fin pour generer les pdf, les document word, les mail; 

    on utilise aussi les API externe, Insee, etc etc. 







ngrx - permets gerer l'etat d'application de maniere COHERENT ET PREVISIBLE.

Actions 

Reducers - pure functions, input = current state + action, result = new state

Effects - handle side-effects, HTTP call, are implemented as a set of RxJS Observables.

ngrx, permets avoir une etat centralise, disponible et modifiable de nimporte quel compoenent. 
permets eviter des pieges comme: etat uncoherent, nombreuses conditions , donc plus facile pour gerer l'etat complex




RxJS lib pour programation reative

operateurs com switchmap, typeOf

Observables in RxJS can emit values over time, and can be used to handle asynchronous operations such as user input, network requests, and animations. Observables can be combined and transformed using operators, which allow for powerful data manipulation and processing.

RxJS also provides a set of utility functions for working with Observables, such as ways to create Observables from existing data sources, ways to handle errors, and ways to control the flow of data. In addition, RxJS includes a powerful scheduler system that allows developers to control when and how data is processed, which can be especially useful in performance-critical applications.

Overall, RxJS provides a powerful and flexible way to handle asynchronous programming in JavaScript, and can be especially useful for handling COMPLEX DATA FLOWS and events in reactive applications.


SwitchMap - fonction, operateur de transformation, utiliser pour connecter une observable d'entree, a une observable de sortie

ofType - c'est comme filtre mais pour le stream