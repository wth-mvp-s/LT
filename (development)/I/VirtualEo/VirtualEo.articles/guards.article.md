The discrepancy between using buttons and manually changing the URL could arise from multiple factors. I'll discuss some possible reasons and the nature of Vue's routing:

Vue's Route Lifecycle:
When you navigate via a button (using Vue's router-link or programmatically with this.$router.push()), Vue Router follows a certain lifecycle:

Navigation triggered.
Call beforeEach guards globally.
Call beforeEnter in the route configuration (if available).
Resolve async route components.
Call guards defined in async components.
Call beforeRouteEnter in components.
Navigation confirmed.
Call global beforeResolve guards.
Navigation finalized.
DOM updates triggered.
Call afterEach hooks globally.
Call beforeRouteLeave in components.
When you manually change the URL, you essentially force the application to undergo a full reload (unless you're using Vue's history mode). This can lead to subtle differences in behavior because the Vue instance is re-initialized, which could disrupt the expected state of certain reactive properties.

State Persistence:
When using buttons and staying within the Vue application, the state remains in memory. Manually changing the URL might cause a full page reload, and if you don't have state persistence mechanisms in place (like vuex-persistedstate), you will lose your Vuex state. This could make guards or computed properties behave differently.

Event Ordering:
The order of events when clicking a button versus changing the URL manually can be different. For instance, when clicking a button, some client-side logic may run first before the navigation is triggered. When changing the URL, you're immediately invoking the router logic, bypassing any preliminary logic that might be tied to a button click.

Component Lifecycle:
Manually changing the URL can also re-invoke certain component lifecycle hooks, possibly disrupting expected behavior if those lifecycle methods have side effects or modify application state.

Watchers:
You had a watcher on the isLogged state. Watchers react to changes in reactive properties. It's possible that when you manually change the URL, certain states are re-initialized or changed in ways that don't occur when you navigate using buttons. This might inadvertently trigger the watcher, leading to unexpected behavior.