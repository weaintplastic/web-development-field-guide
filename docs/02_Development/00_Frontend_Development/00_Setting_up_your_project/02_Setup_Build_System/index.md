### What is a build system and why to use it?

Using a bild system can help you to optimize your project and automate repetitive build processes like compiling SASS or LESS, concatinate and minify Javascript, perform automated tests, optimize images or update browsers automatically after files were modified. Working with a build system will streamline the build workflow of your project and ensures same building processing for every developer who is working on that files.


> <h3>3 Reasons why you should use a build system</h3>
> 1. Automate build processes (compiling, concatinating, minifiying, optimizing, testing)
> 2. Streamline and unfiy the build process for projects
> 3. Ensure the exact same build results for all team members

### Use Gulp.js

I chose to work with [Gulp](http://gulpjs.com/) for automating my build process since it has a pretty low learning curve and a pretty easy setup mechanism.

Gulp is a task based built system that runs on your commandline. You can think of gulp as a watchman on your files, that performs tasks whenever you need him to do so. Tasks like compiling LESS/SASS or Coffeescript, concatinate and minify Javascript, prefix your CSS or update your browser automatically upon changes on your project files. The description for which tasks Gulp has to perform is written in Javascript and is super easy to extend or modify. Gulp itself doesn't really do much, but a huge number of plugins are available for you to built the automated task pipeline of your dreams.
