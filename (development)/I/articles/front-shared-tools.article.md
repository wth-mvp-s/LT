webpack can automatically create chunks
    Vendor Chunks: Vue CLI's default webpack configuration often splits out vendor code (i.e., libraries from node_modules) 

# produce a chunk file with a name
    // component: () => import(/* webpackChunkName: "ll-UserAdministration.vue" */ "@/views/UserAdministration/UserAdministration.vue"),

using Vuex with lazy-loaded components, care must be taken
```
        const router = new VueRouter({
            routes: [
                {
                path: '/some-path',
                component: () => import('./SomeComponent.vue'),
                beforeEnter: (to, from, next) => {
                    if (!store.hasModule('myModule')) {
                    store.registerModule('myModule', MyModule);
                    }
                    next();
                },
                },
            ],
            });
```


to make lazy loading 
```
        component: () => import("@/views/Login.vue"),
```

currently not lazy loaded : 

    import Login from "@/views/Login.vue";

    export const routes: RouteConfig[] = [
    {
        path: "/",
        name: "login",
        alias: "/login",
        component: Login,
        meta: { layout: "login", noTokenRefresh: true },
    },
    {...


package.json
eslint
babel
    Babel: 
        
        "Transpile"  to convert from one programming or scripting language into another.("transform" + "compile.")
        
        Babel's primary role has been to transpile newer versions of JavaScript (like ES6 and beyond) to older, more widely supported versions for broader browser compatibility.

    Source Maps (set up by Vue CLI): 
        They allow you to debug your code as if it were the original source, even after it's been transpiled. The source map is a file that maps the transpiled code back to the original, so when you set a breakpoint or inspect the code in developer tools, it references the original code, not the transpiled code. This makes debugging easier and more intuitive.

package-lock.json
    'npm install' generate automatically
    lock versions so everyone uses the exact same versions, reducing "it works on my machine" type of problems.

    How it is built:

        When you run npm install, npm checks for dependencies listed in package.json. As it installs these packages, it adds an entry for each one in package-lock.json with its specific version. This file also includes other metadata, such as the required integrity for each package.

    Extra:

        It's crucial to commit package-lock.json to your version control (like Git) so that everyone on the team has access to the same dependency versions.
        There's a similar concept in other package managers, like yarn.lock for Yarn.

        tsconfig.json
        .prettierrc

VirtualEo
    Linting:
        ESLint: As you've correctly identified, you have eslint, along with @typescript-eslint/eslint-plugin and @typescript-eslint/parser, which indicates that you're linting TypeScript code. The eslint-plugin-vue package means you're linting Vue single-file components too. The integration with Prettier (eslint-plugin-prettier) suggests that you're also enforcing Prettier formatting rules through ESLint.
    Transpilation:
        Babel: The presence of @vue/cli-plugin-babel indicates that Babel is being used, possibly for transpiling ESNext JavaScript to older versions.
        TypeScript: @vue/cli-plugin-typescript, typescript, and related packages indicate TypeScript usage. This will handle transpilation from TypeScript to JavaScript.
    Bundling, Minification, and Asset Optimization:
        Webpack: While not directly mentioned, @vue/cli-service and other @vue/cli-plugin-* packages imply that under the hood, Vue CLI is using Webpack for bundling, minification, and asset optimization.
    Optimizing & Transforming CSS:
        Sass: The presence of node-sass, sass, and sass-loader indicates that you're using Sass as a CSS preprocessor. This will transpile SCSS or Sass syntax into standard CSS.
        TailwindCSS and PostCSS: tailwindcss, postcss, and autoprefixer indicate that you're using TailwindCSS for utility-first CSS and PostCSS for additional CSS processing (like autoprefixing for browser compatibility).
    Source Maps Generation:
        This is likely handled by Vue CLI's Webpack setup. The source maps are usually generated by default in development mode for easier debugging.
# NOT WORKING 
    Hot Module Replacement (HMR) / Live Reloading:
        This is also a built-in feature of the Vue CLI's Webpack setup. When you run the serve script, you'll likely have HMR enabled, meaning changes to your source files will immediately update in the browser without a full reload.
    Type Checking:
        TypeScript: Since you're using TypeScript and the related Vue CLI plugin, type checking will be handled by the TypeScript compiler.
#    Testing:
        I don't see any testing libraries (like Jest, Mocha, etc.) in this configuration. So, it's possible testing isn't set up for this project or it's handled outside of this configuration.


POST-PROCESSING STEPS TO OPTIMIZE, TRANSFORM, AND BUNDLE CODE

Ad.1. Webpack, handle multiple steps (bundling, minification, asset optimization) simultaneously. 

    Linting:
        Purpose: Analyze code to catch and fix potential problems (syntax errors, non-standard practices).
        Possible Actors: ESLint, TSLint (although TSLint is now deprecated in favor of ESLint with TypeScript plugin), JSHint.
    Transpilation:
        Purpose: Convert source code from one language/version to another (e.g., TypeScript to JavaScript, ESNext to ES5).
        Possible Actors: Babel, TypeScript Compiler (tsc).
    Bundling: (1)
        Purpose: Combine multiple files/modules into fewer files to reduce HTTP requests and optimize load times.
        Possible Actors: Webpack, Rollup, Parcel, Browserify.
    Minification:(1)
        Purpose: Reduce code size by removing unnecessary characters (like whitespace, comments) and by renaming variables to shorter names.
        Possible Actors: Terser (for JavaScript), CSSNano (for CSS), UglifyJS.
    Optimizing & Transforming CSS:
        Purpose: Convert higher-level CSS or CSS-like languages to standard CSS, optimize for performance.
        Possible Actors: Sass (transpiler for SCSS/Sass to CSS), PostCSS (tool to transform CSS with plugins, like autoprefixer for vendor prefixing).
    Asset Optimization:(1)
        Purpose: Compress and optimize images, fonts, and other assets.
        Possible Actors: ImageMin (for images), Fontello (for fonts).
    Source Maps Generation:
        Purpose: Create source maps to map transformed code (like minified or transpiled code) back to the original source, aiding in debugging.
        Possible Actors: Most bundlers and transpilers (like Webpack, Babel) have built-in options for source map generation.
    Hot Module Replacement (HMR) / Live Reloading:
        Purpose: Instantly update modules in the browser as you edit without a full page reload.
        Possible Actors: Webpack (with HMR plugin), Parcel (built-in HMR).
    Type Checking (if using TypeScript or Flow):
        Purpose: Ensure type safety and catch type-related errors during development.
        Possible Actors: TypeScript (tsc with the --noEmit flag for type checking only), Flow.
    Testing & Coverage:
        Purpose: Run unit tests, integration tests, and measure code coverage.
        Possible Actors: Jest, Mocha, Jasmine, Karma.