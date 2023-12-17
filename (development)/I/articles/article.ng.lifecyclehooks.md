mounted - vs - ngAfterViewInit 
    So, when you're dealing with tasks like manipulating the DOM directly or interfacing with other libraries that also manipulate the DOM, mounted in Vue.js and ngAfterViewInit in Angular are appropriate hooks to use. Remember, mounted in Vue can be made asynchronous by declaring it as async mounted() which gives you the possibility to use await within that function, a feature not directly available in Angular lifecycle hooks.

    Use case: for operations when your component is first created and added to the DOM.
    