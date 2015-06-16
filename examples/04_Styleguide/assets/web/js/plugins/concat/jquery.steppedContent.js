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
	$.steppedContent = function(element, options) {
		
		
		// TEMPLATES
		
		// MERGE OPTIONS
		var opts		= $.extend({}, $.fn.steppedContent.defaults, options);

		// VIEW COMPONENTS
		var $this		= $(element);
		var $steps 		= $('.stepped-column', $this);
		
		// PROPERTIES
		var currentStep = 0;
		
		
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
			$('[data-goto-step]', $this).bind('click', onStepLegendClick);
		}
		
		
        
        /********************************/
		/* HELPER FUNCTIONS				*/
		/********************************/
		
		var triggerStep = function( index ){
			$steps.removeClass('expanded');
			$steps.eq(index).addClass('expanded');
			$('html,body').animate({scrollTop: 0}, 500);
			setTimeout(function(){
				$(window).trigger('resize');
			;},900);
			
		}
        
		/********************************/
		/* EVENT HANDLING				*/
		/********************************/


		var onStepLegendClick = function(){
		
			var index = $(this).attr('data-goto-step');
			
			if(index == '1' && $('.crop-form').is(':visible')){
				$('.crop-form button').trigger('click');
			}
			
			triggerStep(index);
			return false;
		}
	
		
		
		
		/********************************/
		/* INIT							*/
		/********************************/
		
		init();
		
	};
	
	
	/**
	* PLUGIN INIT
	*
	*/
	$.fn.steppedContent = function(options){
		return this.each(function() {
            if (undefined === $(this).data('steppedContent')) {
                var plugin = new $.steppedContent(this, options);
                $(this).data('steppedContent', plugin);
            }
        });
	};
	
	
	/**
	* PLUGIN DEFAULTS
	*
	*/
	$.fn.steppedContent.defaults = {
		option1: 1000,
		option2: 760
	};
   
})(jQuery);