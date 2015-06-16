This buildscript usually serves as the initial setup when building a new build task for a new project. It is performing a lot of different tasks.

- watches any source files for changes and executes the build process
- compiles `scss` to `css` and injects vendor css (using `gulp-inclue`), auto prefixes the css and minfies it for prodction
- concatinates and minifies `js` and generates sourcemaps
- minifies images
- concatinates `html` and `php` files (using `gulp-inclue`)
- simply copy font files (this would be the perfect place to `gzip` your fonts)
- notfies you with system dialogs whenever an error happens
- sets up live-reload to work with the [Chrome Livereload Extension](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei)


### Build script

	var gulp    		   = require('gulp'); 			
	var fs 				= require('fs');
	var es 				= require('event-stream');
	var path 			  = require('path');
	var uglify  		   = require('gulp-uglify'); 
	var sass               = require('gulp-sass');
	var cssmin 			= require('gulp-minify-css');
	var rename			 = require('gulp-rename'); 
	var autoprefixer   	= require('gulp-autoprefixer');
	var include 		   = require('gulp-include');
	var notify 			= require("gulp-notify");
	var imagemin 		  = require("gulp-imagemin"); 
	var livereload 		= require('gulp-livereload');
	var sourcemaps 		= require('gulp-sourcemaps');

	var srcPath 		   = 'templates/src/';			// Path to the source files
	var distPath 		  = 'templates/dist/';			// Path to the distribution files


	// Paths that gulp should watch
	var watchPaths		= {
		scripts: 	[
			srcPath+'assets/js/*.js',
			srcPath+'assets/js/**/*.js'
		],
		images: 	[
			srcPath+'assets/img/**'
		],
		sass: 		[
			srcPath+'assets/sass/*.scss',
			srcPath+'assets/sass/**/*.scss'
		],
		fonts:      [
			srcPath+'assets/fonts/**'
		],
		html:      	[
			srcPath+'**/*.html',
			srcPath+'**/*.php'
		]
	};

	// Task for sass files
	gulp.task('sass', function () {
		gulp
			.src(srcPath + 'assets/sass/styles.scss')
			.pipe(include())
			.pipe(sass())
			.on("error", notify.onError({ message: "Error: <%= error.message %>", title: "Error running sass task" }))
			.pipe(autoprefixer({ browsers: ['> 1%', 'last 2 versions'], cascade: false }))
			.on("error", notify.onError({ message: "Error: <%= error.message %>", title: "Error running sass task" }))
			.pipe(cssmin({ keepBreaks: false }))
			.on("error", notify.onError({ message: "Error: <%= error.message %>", title: "Error running sass task" }))
			.pipe(rename({ suffix: '.min' }))
			.pipe(gulp.dest(distPath + 'assets/css'));
	});

	// Javscript task
	gulp.task('scripts', function(){
		gulp
			.src(srcPath + 'assets/js/*.js')
			.pipe(include())
			.pipe(sourcemaps.init())
			.pipe(uglify())
			.on("error", notify.onError({ message: "Error: <%= error.message %>", title: "Error running scripts task" }))
			.pipe(rename({ suffix: '.min' }))
			.pipe(sourcemaps.write('maps'))
			.pipe(gulp.dest(distPath + 'assets/js'));
	});

	// Font task
	gulp.task('fonts', function () {
		gulp
			.src([srcPath + 'assets/fonts/**'])
			.pipe(gulp.dest(distPath + 'assets/fonts'));
	});

	// HTML task
	gulp.task('html', function () {
		gulp
			.src([srcPath + '*.html'])
			.pipe(include())
			.on("error", notify.onError({ message: "Error: <%= error.message %>", title: "Error running html task" }))
			.pipe(gulp.dest(distPath));
	});

	// Images task
	gulp.task('images', function () {
		gulp
			.src(srcPath + 'assets/img/**')
			.pipe(imagemin())
			.on("error", notify.onError({ message: "Error: <%= error.message %>", title: "Error running image task" }))
			.pipe(gulp.dest(distPath + 'assets/img'));
	});


	// Watch task
	gulp.task('watch', function() {
		gulp.watch(watchPaths.scripts, ['scripts']);
		gulp.watch(watchPaths.images, ['images']);
		gulp.watch(watchPaths.sass, ['sass']);
		gulp.watch(watchPaths.html, ['html']);
		gulp.watch(watchPaths.fonts, ['fonts']);

		livereload.listen();
		gulp.watch(distPath + '**').on('change', livereload.changed);
	});

	// Default task
	gulp.task('default', ['scripts', 'images', 'sass', 'fonts', 'html', 'watch']);
