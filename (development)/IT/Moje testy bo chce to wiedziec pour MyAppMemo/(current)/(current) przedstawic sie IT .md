ngrx - permets gerer l'etat d'application de maniere coherent et previsible.

Actions 

Reducers - pure functions, input = current state + action, result = new state
Effects - handle side-effects, HTTP call, are implemented as a set of RxJS Observables.

ngrx, permets avoir une etat centralise, disponible et modifiable de nimporte quel compoenent. 
permets eviter des pieges comme: etat uncoherent, nombreuses conditions , donc plus facile pour gerer l'etat complex




RxJS lib pour programation reative

operateurs com switchmap, typeOf

Observables in RxJS can emit values over time, and can be used to handle asynchronous operations such as user input, network requests, and animations. Observables can be combined and transformed using operators, which allow for powerful data manipulation and processing.

RxJS also provides a set of utility functions for working with Observables, such as ways to create Observables from existing data sources, ways to handle errors, and ways to control the flow of data. In addition, RxJS includes a powerful scheduler system that allows developers to control when and how data is processed, which can be especially useful in performance-critical applications.

Overall, RxJS provides a powerful and flexible way to handle asynchronous programming in JavaScript, and can be especially useful for handling complex data flows and events in reactive applications.


SwitchMap - fonction, operateur de transformation, utiliser pour connecter une observable d'entree, a une observable de sortie

ofType - c'est comme filtre mais pour le stream