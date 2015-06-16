### The build task

We want to build a gulp build script, that automatically compiles our `styles.scss` file and saves it as `styles.css` everytime we make changes to it.

### Install needed plugins

In order to do that, gulp needs some help of other packages that need to be declared as a dependency. For our simple task we need an additional Node.js package: gulp-sass [gulp-sass](https://www.npmjs.org/package/gulp-sass). To download and install these packages go to your project root folder using your command line and execute the following statements one after another

	$ npm install gulp-sass --save

After doing that, the project dependency to gulp-sass should be visible in your `package.json` file and is ready to be used within gulp.

### Build script

	var gulp            = require('gulp'); // Gulp core package
	var sass            = require('gulp-sass'); // Package to compile scss files
	var path            = require('path'); // Gulp path package

	var srcPath         = 'templates/src/'; // Path to our source files
	var distPath        = 'templates/dist/'; // Path to your distribution files

	// Files/Paths that need to be watched by gulp
	var watchPaths    = {
	    sass:        [srcPath+'sass/styles.scss']
	};

	// Task for sass files
	gulp.task('sass', function () {
	    gulp
	        // Load styles.sass into the stream
	        .src(srcPath + 'sass/styles.scss') 
	        // Compile the styles.scss using the gulp-sass package
	        .pipe(sass())
	        // Save the compiled file as styles.css to our distribution location
	        .pipe(gulp.dest(distPath + 'css'));

	});

	// The watch task will be executed upon each file change
	gulp.task('watch', function() {
	    gulp.watch(watchPaths.sass, ['sass']);
	});

	// Default task is executed upon execution of gulp
	gulp.task('default', ['sass', 'watch']);



This gulp description will perform the default task upon execution of gulp in your command line. It will immediatley execute the  `sass` task but also another important one – the `watch` task. This is a special kind of task that will watch changes to files in the given locations and executes the correspondent tasks. By setting up this task we can ensure, that our `scss`file will be compiled everytime we modify it.

