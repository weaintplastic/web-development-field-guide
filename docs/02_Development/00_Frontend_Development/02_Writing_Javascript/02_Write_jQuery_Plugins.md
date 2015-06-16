> #### Good reasons why you should write jQuery plugins
> * Scale and reuse your plugin's functionality in other projects
> * Seperate the websites logic from your components logic
> * Use the full potential of jQuery
> * Your teammates will love you

jQuery offers a very powerful API to write plugins. You are used to import solutions for complex requiremnts from other coders as jQuery Plugins. And guess what, you can also write your own jQuery Plugins. But why should you do that? Simple answer is, you have more controll about your jQuery code that gets executed for elements in your DOM following the same concept as for third-party plugins.

Usually you can handle simple things like keeping track on some events on an object using the Object Oriented concept. But as soon your logic becomes more complex you should think of creating a jQuery Plugin for that.

There are several (jQuery Boilderplates)(http://jqueryboilerplate.com/) that will help you setting up a plugin based on your sepcific needs.

Shifting the functionality of your teaser to a dedicated jQuery Plugin would look like this:

    ;(function($){

        $.teaser = function(element, options) {
            
            // MERGE OPTIONS
            var opts        = $.extend({}, $.fn.teaser.defaults, options);

            // VIEW COMPONENTS
            var $this       = $(element);
            
            /********************************/
            /* PRIVATE FUNCTIONS            */
            /********************************/
            
            var init = function(){
                initListeners();
            };

            var initListeners = function(){
                $this.on('click', onClick);
            };
                
            /********************************/
            /* EVENT HANDLING               */
            /********************************/
            
            var onClick = function( event ){
                alert('I was clicked');
                return false; 
            };
            
            /********************************/
            /* INIT                         */
            /********************************/
            
            init();
            
        };
        
        /**
        * PLUGIN INIT
        *
        */
        $.fn.teaser = function(options){
            return this.each(function() {
                if (undefined === $(this).data('teaser')) {
                    var plugin = new $.teaser(this, options);
                    $(this).data('teaser', plugin);
                }
            });
        };
        
        /**
        * PLUGIN DEFAULTS
        *
        */
        $.fn.teaser.defaults = { };
       
    })(jQuery);


Our `teaser.js` from the [Object Oriented Javascript Article](./Development/Frontend_Development/Writing_Javascript/Write_Object_Oriented_Javascript) will look like that.

    function Teaser() {
        this.initPlugins();
    };
    ​
    Teaser.prototype = {
        constructor: Teaser,

        /** Init Functions **********/
        initPlugins: function ()  {
           $('.teaser').teaser();
        }
    
    }

The only thing that this Javscript is doing is executing out jQuery Plugin `teaser` on all elements with the class `.teaser`


For that simple example creating a plugin is proably overkill, but for more complex funtionalities that probably can be reused like your own lightbox, slider or map, it definitely makes sense to outsource it as a jQuery Plugin.

When coding the Javascript for your website, you'd probably need to react on different breakpoints in your responsive design not just with CSS but also with your Javascript functionality. A slider plugin for example, is only needed on mobile versions, on desktop the slides can remain as floating items. But why should your slider plugin handle this requirements – they definitely belong to your website and maybe another website that uses the same slider plugin, needs a slider even on the desktop version. Separting the websites logic for your slider from the slider logic itself, makes total sense.
