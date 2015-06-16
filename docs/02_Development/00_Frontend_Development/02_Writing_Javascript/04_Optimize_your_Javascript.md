### Minify, Mangle and Compress

**Minification** means that you remove all unnecessary characters without changing the functionality. These unnecessary characters usually include white space characters, new line characters, comments, and sometimes block delimiters, which are used to add readability to the code but are not required for it to execute.

**Mangling** your script means renaming your local variables to (usually) single letters.

**Compressing** means to optimize your script like joining variable declarations, optimizing if-statements, discard unused variables or joining simple statements using a comma operator.

Luckily we don't have to do this by hand since we are using the power of our [build script](/Development/Frontend_Development/Setting_up_your_project/Setup_Build_System) that use [uglifyJS](http://lisperator.net/uglifyjs/) that is doing a great job on all theses three topics.
