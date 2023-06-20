webpack - module bundler, 2014

DI,compilation, deployoment

simplicité de mise en place parametrable

requirt node.js

version 5.15.0

features: 
- Identify and Fix Build and Deployment Errors in Your Angular App
- Reduce the Bundle Size of Your Angular App

webpack.config.js


If you want to create your own Webpack-like bundler, there are several things you'll need to consider and implement:

Dependency graph: A bundler needs to understand the dependencies between different modules in your application. You'll need to create a system for analyzing and building a dependency graph that tracks how different modules depend on each other.

Loaders: A bundler needs to be able to process different types of files, such as CSS, HTML, or images, and convert them into JavaScript modules that can be bundled together. You'll need to create loaders that can handle each file type and convert it into a JavaScript module.

Code splitting: A bundler can help optimize the loading time of your application by splitting the bundle into smaller chunks that can be loaded on demand. You'll need to create a system for splitting the bundle and loading chunks dynamically as needed.

Output: A bundler needs to create a single file that contains all the JavaScript modules in your application. You'll need to create a system for outputting the bundled JavaScript code to a single file that can be loaded by the browser.

Configuration: A bundler needs to be highly configurable so that developers can customize how their application is bundled. You'll need to create a configuration system that allows developers to specify which loaders to use, how to split the bundle, and how to output the bundled code.

Building a bundler from scratch is a complex task that requires a deep understanding of JavaScript, node.js, and the underlying principles of module bundling. It's generally recommended that you use an existing bundling tool like Webpack or Rollup as a starting point and customize it to meet your specific requirements.