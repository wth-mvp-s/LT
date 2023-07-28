package-lock.json   faut toujours commit 
                    auto created when npm i

svg
    SVG icon: If the icon is used in multiple places, consider making it a reusable component. This allows you to change the icon in one place and have it update everywhere. If the icon color needs to change based on the state or props, consider using CSS or SVG filters to change the color, rather than having separate SVG files for each state.

props validation
    Props Validation: For your props, if classroomId is expected to be a Number, you might want to add more validation to ensure that it's not only a number, but also a positive integer (if applicable). You can use a custom validator for this. This isn't strictly necessary if you're sure that classroomId will always be a correct value, but it can help catch bugs.

better naming 
    Semantic Naming: Make sure your method and variable names are clear and descriptive. For example, handleImageError might be more clear as handleIconLoadError, since it's specifically dealing with the icon image. Similarly, urlIcon might be clearer as iconUrl. Good names make the code easier to read and understand.