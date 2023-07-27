'Redux Reducer:
'A reducer in Redux is a pure function that takes the previous state and an action as arguments and returns a new state. The state of your entire application is stored in an object tree within a single store. The only way to change the state inside the store is to dispatch an action to it. Actions only describe what happened, but don't describe how the application's state changes in response, that job is done by reducers. All reducers are combined into a single root reducer to create the global state.

'Vuex Store:
'SVuex store is a single state tree - that is, this single object contains all your application-level state and serves as the "single source of truth". This also means usually one store per application. In Vuex, instead of building a new state object manually for every mutation like Redux does with reducers, you directly mutate the state in the store using mutation functions.

vuex-class-component is a helper library that provides a set of decorators to bind classes and components to Vuex state, actions, getters, and mutations. If Vuex is not being used in your project, then vuex-class-component would not be necessary or useful.


# Props: - vs - @Input()
defines properties receive from parent


# Setup function:
new Vue 3, entry point for using the Composition API.
  All the reactive data and methods are defined inside this function. The setup function receives the component's props as its first argument and provides a context object as the second argument (not used in your example). All logic of the component is encapsulated inside this function.

# Return:
The setup function should return an object that exposes all the properties and methods that the template of the component should have access to. This includes any computed properties, methods, or data variables that the component's template will need.

import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

const moduleA = {
  state: () => ({ ... }),
  mutations: { ... },
  actions: { ... },
  getters: { ... }
}

const moduleB = {
  state: () => ({ ... }),
  mutations: { ... },
  actions: { ... },
  getters: { ... }
}

export default new Vuex.Store({
  modules: {
    a: moduleA,
    b: moduleB
  }
})
