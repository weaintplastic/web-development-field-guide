/****************************************/
/*										*/
/* PLUGIN NAME							*/
/*										*/
/****************************************/

;(function($){

	/**
	* PLUGIN CLASS
	*
	*/
	$.siteIntro = function(element, options) {
		
		
		// TEMPLATES
		
		// MERGE OPTIONS
		var opts		= $.extend({}, $.fn.siteIntro.defaults, options);

		// VIEW COMPONENTS
		var $this		= $(element);
		var $introTitle	= $('.intro--title', $this);
		var $introClose	= $('.intro--close', $this);
		
		// PROPERTIES
		
		
		/********************************/
		/* PUBLIC FUNCTIONS				*/
		/********************************/
		
		this.publicFunciton = function(){
		
		};
		
		
		/********************************/
		/* PRIVATE FUNCTIONS			*/
		/********************************/
		
		var init = function(){
			initListeners();
		};


		var initListeners = function(){

			$introTitle.bind('click', onIntroTitleClicked);
			$introClose.bind('click', onIntroCloseClicked);
		}
		
		
        
        /********************************/
		/* HELPER FUNCTIONS				*/
		/********************************/
		
        
		/********************************/
		/* EVENT HANDLING				*/
		/********************************/

		var onIntroTitleClicked = function( event ){
			$this.addClass('expanded');
			return false;
		};

		var onIntroCloseClicked = function( event ){
			$this.removeClass('expanded');

			return false;
		};
		
		
		
		/********************************/
		/* INIT							*/
		/********************************/
		
		init();
		
	};
	
	
	/**
	* PLUGIN INIT
	*
	*/
	$.fn.siteIntro = function(options){
		return this.each(function() {
            if (undefined === $(this).data('siteIntro')) {
                var plugin = new $.siteIntro(this, options);
                $(this).data('siteIntro', plugin);
            }
        });

	};
	
	
	/**
	* PLUGIN DEFAULTS
	*
	*/
	$.fn.siteIntro.defaults = {
		option1: 1000,
		option2: 760
	};
   
})(jQuery);