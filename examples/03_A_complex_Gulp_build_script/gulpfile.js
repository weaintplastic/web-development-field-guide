var gulp 			= require('gulp'); 				// Gulp
var uglify 			= require('gulp-uglify'); 		// Plugin for uglifing javascript
var less 			= require('gulp-less'); 		// Plugin to compile less
var sass 			= require('gulp-sass'); 		// Package to compile scss files
var path 			= require('path'); 				// Plugin with path utils
var cssmin 			= require('gulp-minify-css'); 	// Plugin to minfy css
var rename 			= require('gulp-rename'); 		// Plugin for renaming files
var autoprefixer 	= require('gulp-autoprefixer'); // Plugin to vendor prefix css
var include 		= require('gulp-include'); 		// Plugin to include files into others
var notify 			= require("gulp-notify"); 		// Plugin to send notifications to the operating system
var imagemin 		= require("gulp-imagemin"); 	// Plugin for minifying jpg, png, gif and svg
var livereload 		= require('gulp-livereload'); 	// Plugin for enable lievreload for your browser
var sourcemaps 		= require('gulp-sourcemaps'); 	// Plugin to enable sourcemaps

var srcPath 		= 'templates/src/';				// Path to the source files
var distPath 		= 'templates/dist/';			// Path to the distribution files


// Paths that gulp should watch
	var watchPaths		= {
		scripts: 	[srcPath+'assets/web/js/*.js', srcPath+'assets/web/js/**/*.js'],
		images: 	[srcPath+'assets/web/img/**'],
		sass: 		[srcPath+'assets/web/sass/*.scss', srcPath+'assets/web/sass/**/*.scss'],
		fonts:      [srcPath+'assets/web/fonts/**'],
		html:      	[srcPath+'**/*.html', srcPath+'**/*.php']
	};



// Task for sass files
gulp.task('sass', function () {
    gulp
        .src(srcPath + 'assets/web/sass/styles.scss')
	    .pipe(sass())
	    .on("error", notify.onError({
	        message: 	"Error: <%= error.message %>",
	        title: 		"Error running sass task"
	    }))
	    .pipe(autoprefixer({
        	browsers: 	['> 1%', 'last 2 versions'],
        	cascade: 	false
        }))
        .on("error", notify.onError({
	        message: 	"Error: <%= error.message %>",
	        title: 		"Error running sass/autoprefixer task"
	    }))
        .pipe(cssmin({
        	keepBreaks: false
        }))
        .pipe(rename({
        	suffix: 	'.min'
        }))
        .pipe(gulp.dest(distPath + 'assets/web/css'));

});


// Javscript task
	gulp.task('scripts', function(){
		gulp
			.src(srcPath + 'assets/web/js/*.js')
			.pipe(include())
			.pipe(sourcemaps.init())
			.pipe(uglify())
			.on("error", notify.onError({
		        message: 	"Error: <%= error.message %>",
		        title: 		"Error running scripts task"
		    }))
			.pipe(rename({
				suffix: 	'.min'
			}))
			.pipe(sourcemaps.write('maps'))
			.pipe(gulp.dest(distPath + 'assets/web/js'));
	});

// Font task
	gulp.task('fonts', function () {
		gulp
			.src([srcPath + 'assets/web/fonts/**'])
			.pipe(gulp.dest(distPath + 'assets/web/fonts'));
	});

// HTML task
	gulp.task('html', function () {
		gulp
			.src([srcPath + '**/*.html', srcPath + '**/*.php'])
			.pipe(include())
			.on("error", notify.onError({
                message: 	"Error: <%= error.message %>",
                title: 		"Error running html task"
            }))
			.pipe(gulp.dest(distPath));
	});

// Images task
	gulp.task('images', function () {
		gulp
			.src(srcPath + 'assets/web/img/**')
			.pipe(imagemin())
			.on("error", notify.onError({
		        message: 	"Error: <%= error.message %>",
		        title: 		"Error running image task"
		    }))
			.pipe(gulp.dest(distPath + 'assets/web/img'));
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
