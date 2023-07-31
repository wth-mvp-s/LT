methods:
    access modifiers no built-in support 
    Use case: function used in file

async mounted(): like ngAfterViewInit 
Use case: for operations when your component is first created and added to the DOM.


computed:
    Problem solved: properties based on other data properties, recalculated only when their dependencies change. 
    
    for optimized computations and caching of their results.
    

data():
    reactive data properties of your component. Any changes to these properties will trigger the component to re-render.
Use case: Any data that your component will use or modify should be defined here.
components:

Introduced by: Vue.js
Version: Since the initial version
Problem solved: This is where you define the other components that you'll be using in your component's template. By registering them here, you can use them in your template.
Use case: If you have a "ChildComponent" that you want to use in your component's template, you would register it here like so: components: { ChildComponent }.
defineComponent:

Introduced by: Vue Composition API, part of Vue.js as an optional package
Version: Since the initial release of the Composition API (released with Vue 2.6 and a built-in feature of Vue 3.0)
Problem solved: It helps to create and type components using the Composition API. It's especially useful in TypeScript environments.
Use case: If you're using the Composition API and want to create a component, you would use defineComponent to do so.