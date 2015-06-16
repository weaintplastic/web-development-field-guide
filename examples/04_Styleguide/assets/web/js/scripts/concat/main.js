var breakpoint_xs 	= 	1;
var breakpoint_s 	= 	480;
var breakpoint_m 	=	768;
var breakpoint_l 	=	992;
var breakpoint_xl 	=	1200;

var Main = function(){


	var fancyboxOptions = {
		maxWidth 	: 900,
		scrolling   : 'no',
		fitToView	: false,
		autoHeight 	: true,
		width		: '100%',
		autoSize	: false,
		closeClick	: false,
		padding     : 0,
		margin 		: 0,
		openEffect	: 'fade',
		closeEffect	: 'fade',
	    helpers:  {
	        title:  null
	    },
	    tpl 		: {
	    	closeBtn : '',
	    	next     : '',
			prev     : ''
	    }
	};

	var init = function(){
		initBreakpoints();
		initListener();
		initPlugins();
	};

	var initBreakpoints = function(){
		$(window).setBreakpoints({
			distinct: true,
			breakpoints: [
				breakpoint_xs,
				breakpoint_s,
				breakpoint_m,
				breakpoint_l,
				breakpoint_xl
			]
		});
	};


	var initPlugins = function(){
		$('.site-intro').siteIntro();
		$('.stepped-row').steppedContent();
		$('input[type="radio"], input[type="checkbox"]').checkedPolyfill();
	};

	var initListener = function(){

		/* we need this only on touch devices */
		if (Modernizr.touch) {
		    /* cache dom references */
		    var $body = jQuery('body');

		    /* bind events */
		    $(document)
		    .on('focus', 'input', function(e) {
		        $body.addClass('fixfixed');
		    })
		    .on('blur', 'input', function(e) {
		        $body.removeClass('fixfixed');
		    });
		}

		// Event Tracking
		$('a[data-event-tracking-category][data-event-tracking-action]').on('click', onEventTracking);
		$('a[data-page-tracking-url]').on('click', onPageTracking);


		// Breakpoints
		$(window).bind('enterBreakpoint'+breakpoint_xs,function() {

		});

		$(window).bind('enterBreakpoint'+breakpoint_s,function() {

		});

		$(window).bind('enterBreakpoint'+breakpoint_m,function() {

		});

		$(window).bind('enterBreakpoint'+breakpoint_l,function() {

		});

		$(window).bind('enterBreakpoint'+breakpoint_xl,function() {

		});

		// Lightbox
		// $(".fancybox").fancybox(
		// 	$.extend({}, fancyboxOptions, {

		// 	})
		// );

	};

	/******************/
	/* HELPER 		*/
	/******************/

	var trackPage = function( url ){

		if ( typeof window._gaq !== 'undefined' ) {
			window._gaq.push(['_trackPageview', url]);
		}
	};

	var trackEvent = function( category,  action, origin ){

		if ( typeof window._gaq !== 'undefined' ) {
			window._gaq.push(['_trackEvent', category, action, origin]);
		}
	};

	/******************/
	/* EVENT LISTENER */
	/******************/

	var onEventTracking = function( event ){

		var category 	= $(this).data('eventTrackingCategory');
		var action 	  = $(this).data('eventTrackingAction');
		var origin 	  = window.location.href;

		trackEvent(category, action, origin);

	};

	var onPageTracking = function( event ){
		var url 		= $(this).data('pageTrackingUrl');

		trackPage(url);

	};

	return {
		init: 	init
	};


}();

$(function(){
	Main.init();

});
