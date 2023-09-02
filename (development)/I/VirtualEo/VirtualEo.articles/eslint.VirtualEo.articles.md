Running eslint --fix without any target files or directories will usually do nothing. 
You generally specify which files you want to lint (and possibly fix) by passing them as arguments.

    For example:

    //This command will recursively lint all files in the ./src directory and fix any fixable issues.
    eslint --fix ./src


You can add the --debug flag for verbose output, which should give you more information about what ESLint is doing:

    eslint --fix --debug ./src

Another option is to use the --format flag to get a specific output format, which may give you more detailed information:

    eslint --fix --format=stylish ./src

There are a number of other formats available as well; you can see a full list in the ESLint documentation.
https://eslint.org/docs/latest/use/formatters/
