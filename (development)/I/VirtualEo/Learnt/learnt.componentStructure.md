data(): THINK OBSERVABLES
    called before the component instance is fully created.
        this - is undefined, becouse data is called before the component instance is fully created.
        reactive properties - auto subscribe, unsubscribe.

computed:
    this = refers to the Vue component instance, but in which is used, right ? 
        used 4 computed, methods, data
    
    recalculated (based on other data properties), only when their dependencies change. 
    cached

Hooks
    created() 
        this = c

    async mounted(): like ngAfterViewInit 
        Use case: for operations when your component is first created and added to the DOM.

methods:
    this = component

    like computed, refers to component
    no access modifiers built-in support 
    Use case: function used in file scope


@vue/composition-api ??? 
    importing defineComponent or watch

Options API ??? 
    When you define your component using the Options API, Vue takes care of binding this to the correct context for you.

automatism
    accessor not supported
    Observable subscribed unsubscribed in data()

ambinguity
    Note that if you're using the Composition API (introduced as a plugin in Vue 2 and built into Vue 3), the way you access reactive properties changes, and you generally don't use this in the same way. The Composition API uses a more functional style, and you work directly with reactive references and computed properties without needing to access them through this. But from your code example, it looks like you're using the Options API, so the above explanation should apply to your situation.



Introduced by: Vue.js
Version: Since the initial version
Problem solved: This is where you define the other components that you'll be using in your component's template. By registering them here, you can use them in your template.
Use case: If you have a "ChildComponent" that you want to use in your component's template, you would register it here like so: components: { ChildComponent }.
defineComponent:

Introduced by: Vue Composition API, part of Vue.js as an optional package
Version: Since the initial release of the Composition API (released with Vue 2.6 and a built-in feature of Vue 3.0)
Problem solved: It helps to create and type components using the Composition API. It's especially useful in TypeScript environments.
Use case: If you're using the Composition API and want to create a component, you would use defineComponent to do so.