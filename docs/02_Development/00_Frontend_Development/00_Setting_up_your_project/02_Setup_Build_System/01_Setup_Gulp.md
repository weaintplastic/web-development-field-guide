
### Installing Gulp on your system
Installing Gulp is pretty easy. The only dependency is, that you need Node.js to be installed on your system. You can download and follow the instructions on how to do that on http://nodejs.org/. After installing nodejs successfully on your computer open up your Command Line Tool and exectue

`npm install --global gulp`

This command will install gulp system wide. You should now be able to hit `gulp` in your command line.


### Setup Gulp for your project

Gulp is based on Node.js and needs do be added as a Node.js dependency to your project. Therefore use your comand line and navigate to your project root where you should have [Node.js dependency managment setup correctly ](./Development/Frontend_Development/Setting_up_your_project/Setup_Dependency_Managers/Node_Package_Manager) and execute

	npm install gulp --save

When you open up `package.json` file in your project root you'll notice that `gulp` was added to your dependencies.

### Create a gulpfile.js in the root of your project

The `gulpfile.js` is your task descriptor. It tells gulp which tasks it should perform on which files. This descriptor has to be created by hand.
So go to your project root folder and create a file called `gulpfile.js`.


### Install gulp plugins

Gulp iteself can't do much for you. For all the hard work it needs the help of gulp plugins which cover the scope of a certain task you want to do. The functionality of plugins in combination will give you endless possibilities to setup the build script of your dreams. A full list of gulp plugins can be found [here](http://gulpjs.com/plugins/).

To install a plugin you simply intall them using the Node Package Manager. To do so execute the following statement with the use of your command line in the root of your directory:

	npm install gulp-sass --save

This statement will download the gulp-sass plugin and add a new dependency to your Node.js manifest file `package.json`.

> **Make sure you don't commit and push your dependencies source files to the repository but exclude them using .gitignore when [setting up your collaborative project](./Collaboration/Setup_Collaborative_Projects) **

Please have a look at [this simple build script](./Development/Frontend_Development/Setting_up_your_project/Setup_Build_System/A_simple_Gulp_build_script) to understand the basics of how to create tasks with the use of these plugins or go directly to a [more complex example](./Development/Frontend_Development/Setting_up_your_project/Setup_Build_System/A_complex_Gulp_build_script).


### Run gulp

To run `gulp` you have to navigate to your project root using your command line and simply enter `gulp` and exectute it. `gulp` automatically detects the `gulpfile.js` in your project root and executes everything that is described there. For now on `gulp` is running in background until you stop the process using `ctrl-c` in the command line.
As long as you didn't have tasks set up in the `gulpfile.js`, gulp won't do anything. Please note that everytime you make changes to your `gulpfile.js`you have to stop and run the `gulp` process again.


### What to do next

The possiblities are endless and the requirements of your project's buid script are different every time. A list of available [gulp packages](http://gulpjs.com/plugins/) plus some [best practices](https://github.com/gulpjs/gulp/blob/master/docs/README.md#articles) and [receips](https://github.com/gulpjs/gulp/tree/master/docs/recipes) will help you to find what you need.
