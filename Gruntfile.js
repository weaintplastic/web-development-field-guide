module.exports = function (grunt) {
    'use strict';

    grunt.loadNpmTasks('grunt-php');
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.initConfig({
        less: {
            development: {
                options: {
                    cleancss: true,
                    report: 'min'
                },
                files: {
                    "templates/default/themes/daux-blue/css/daux-blue.css": "less/daux-blue.less",
                    "templates/default/themes/daux-green/css/daux-green.css": "less/daux-green.less",
                    "templates/default/themes/daux-navy/css/daux-navy.css": "less/daux-navy.less",
                    "templates/default/themes/daux-red/css/daux-red.css": "less/daux-red.less",
                    "templates/weaintplastic/themes/daux-weaintplastic/css/daux-weaintplastic.css": "less/daux-weaintplastic.less",
                }
            }
        },
        watch: {
            scripts: {
                files: ['less/**/*.less'],
                tasks: ['less'],
                options: {
                    nospawn: true
                },
            },
        },
    });

    //grunt.registerTask('default', ['less', 'watch']);
    grunt.registerTask('default', ['less']);
};