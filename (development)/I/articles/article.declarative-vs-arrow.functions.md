In Vue 3, using arrow functions in the Composition API is common and often beneficial due to their concise syntax and lack of a this binding, which aligns well with the more functional approach of the Composition API. However, whether arrow functions are a "best practice" depends on the specific use case, the project's coding style guidelines, and developer preference.

Benefits of Arrow Functions:
Concise Syntax: Arrow functions offer a shorter and more concise syntax, which can make the code more readable and maintainable.
# No this Binding: ARROW FUNCTIONS DO NOT HAVE THEIR OWN THIS CONTEXT, so they do not rebind this when you define them. This behavior is usually beneficial in the Composition API.
Considerations:
Function Context: If, for any reason, you need access to the function's own context (e.g., using function properties), a regular function declaration might be more appropriate.
Hoisting: Arrow functions are not hoisted, which means they must be defined before they are used. If you rely on hoisting, a function declaration might be more suitable.
Readability: For very long or complex functions, some developers might find function declarations more readable due to the explicit function keyword and name.
Consistency: Maintaining consistency across a codebase is essential, so choosing one style of function definition and sticking to it (where appropriate) can be beneficial.
Conclusion:
Arrow functions are a good choice for many scenarios in Vue 3, especially with the Composition API, but there is no strict rule that you should always use them. The decision between arrow functions and traditional function declarations should be based on the specific needs of the code, developer preference, and team guidelines. Ultimately, consistency and readability should be the guiding principles when deciding which type of function to use.