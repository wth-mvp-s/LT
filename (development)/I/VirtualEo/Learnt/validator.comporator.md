vee-validate": "^3.4.2" -vs- vuelidate.js

4.11.7                          0.7.7 published 2 years ago

# npm i 
    106 vulnerabilities (1 low, 63 moderate, 34 high, 8 critical)



Documentation & Knowledge Sharing:
- Check Installation and Implementation:
- Basic Validation Testing:
- Handle Validation Results:

1. Document the steps taken, 
2. issues encountered, 
3. solutions found during the integration process.
Consider conducting a knowledge-sharing session or workshop for the team so that everyone is aware of 
1. how to use validator in the project effectively.

# what would be adventage of vuelidate comapring to vcali-dee
    Simplicity and Lightweight:

    Vuelidate is straightforward, control on how applied.
    Reactivity
    Composable
        Vuelidate allows for easy composition of validation rules, so you can reuse and combine validations across components.
    Decoupled from the Template:
        Vuelidate does not rely on directives in the template. This means that your validation logic is more decoupled from the UI, which can be advantageous for separation of concerns.
        Asynchronous Validations:
            Vuelidate supports asynchronous validations, allowing for checks that might require server-side verification or other async operations.
        Custom Validations:
            While both libraries allow custom validation rules, Vuelidate's approach feels more integrated with the Vue ecosystem and allows you to create reusable validation mixins.
        Less Boilerplate:
            Vuelidate can feel less verbose for simple validations. With VeeValidate, you often have to manage more boilerplate, especially when using its directives.
        Good Integration with Vuex:
            Vuelidate provides a straightforward way to integrate validations with Vuex, Vue's state management library, allowing for validations on your state properties.
# Damien : 
    Both Vuelidate and Vee-Validate are supporting Vue.js 2.x. Vuelidate is more oriented towards validating data decoupled from form elements, where Vee-Validate AFAIK is more designed towards forms. But my knowledge of Vee-Validate might be very outdated so don't take my word for it. For Vuelidate (when using composition-api because that part is pretty much required either through the composition-api plugin or Vue 2.7) Vuex is just one possible source of data that can be validated.