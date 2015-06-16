var Wall = function(){

	var init = function(){

		//show intro
		setTimeout(function(){
			$('.wall-intro').addClass('expanded');

		}, 1000);


		initListener();
		initIsotope();
		loadTiles();
	};




	var initListener = function(){

		$('a[rel^="configurator"]').bind('click', onConfiguratorTriggerClicked);
		$('a[rel^="split-screen"]').bind('click', onSplitScreenTriggerClicked);
		$('a.splitscreen--close').bind('click', onSplitScreenCloseClicked);

		$(window).bind('resize', $.throttle(1000, onWindowResize));
		$(window).bind('scroll', $.throttle(300, onWindowScroll));
	};


	var initIsotope = function(){
		

		$('.loveit-wall').isotope({
		  // options
		  itemSelector: '.loveit-tile',
		  layoutMode: 	'masonry'

		});



		$('.loveit-wall').infinitescroll({
			navSelector  	: "#infscr-next:last",
			nextSelector 	: "a#infscr-next:last",
			itemSelector 	: ".loveit-wall .loveit-tile",
			debug		 	: true,
			loading: {
		        finishedMsg: '<div class="vertical-positioned text-center"><div class="vertical-center"><div class="button button-solid button-solid-blue-light"><span>Du hast das Ende der Love-it Wall erreicht</span></div></div></div>',
				img: null,
				msg: null,
		        msgText: '<div class="vertical-positioned text-center"><div class="vertical-center"><div class="button button-solid button-solid-blue-light loading"><i class="icon"><span>a</span></i><span>Loading</span></div></div></div>',
		        selector: null,
		        speed: 1,
		        start: undefined
		    }
		}, function(newElements) {
			// 
			$('.loveit-wall').isotope('appended',newElements);
			$('.loveit-wall').isotope('appended', $('.loveit-wall [data-loveit-filter="*"]'));
			
			// $('.loveit-wall').isotope('layout');

			$(window).trigger('scroll');
			$('a[rel^="configurator"]').bind('click', onConfiguratorTriggerClicked);
			$('a[rel^="split-screen"]').bind('click', onSplitScreenTriggerClicked);
			$('[data-loveit-filter]').bind('click', onLoveitFilterClicked);

		return false;
		});

		//$(window).unbind('.infscr');
		$('a#infscr-next').click(function(){
			// $(document).trigger('retrieve.infscr');return false;
			$('.loveit-wall').infinitescroll('retrieve');
			return false;
		});



		$('.loveit-configurator').loveitConfigurator();

		$('[data-loveit-filter]').bind('click', onLoveitFilterClicked);
	};


	/********************************/
	/* HELPER FUNCTIONS				*/
	/********************************/

	var loadTiles = function(){
		var top = $(window).scrollTop();
		var fold = top + $(window).height();
		var showStart = null;

		// $('.loveit-wall .loveit-tile').each(function(i){
		// 	if(($(this).position().top + $(this).height()) > top && $(this).position().top < fold){
		// 		if(!showStart)
		// 			showStart = i;
		// 		$('img:not([src])', this).each(function(){
		// 			$(this).hide();
		// 			$(this).attr('src', $(this).data('src'));
		// 			$(this).delay(Math.random() * (i-showStart) * 10).fadeIn();
		// 		});
		// 	}
		// });
	};


	var openConfigurator = function(configurator){

		// $('.configurator-split-screen .static').removeClass('static');
		$('.configurator-split-screen').addClass('hidden');
		$('html,body').animate({scrollTop: 0}, 600);
		setTimeout(function(){
			$('.'+configurator).removeClass('hidden');
		}, 600);

		setTimeout(function(){
			$(window).trigger('resize');
		}, 1400);
	};





	/********************************/
	/* EVENT LISTENER				*/
	/********************************/

	var onSplitScreenCloseClicked = function( event ){

		$('.configurator-split-screen').addClass('hidden');

	}

	var onSplitScreenTriggerClicked = function(){
		$('html,body').animate({scrollTop: 0}, 600);
		$('.site-intro').removeClass('expanded');
		setTimeout(function(){
			$('.configurator-split-screen').removeClass('hidden');
		}, 600);
		return false;
	}

	var onConfiguratorTriggerClicked = function(){
		openConfigurator($(this).attr('rel'));
		return false;
	};

	var onLoveitFilterClicked = function(){

		var filter = $(this).data('loveitFilter');

		console.info('filter: ' + filter);

		$('.loveit-wall').isotope({ filter: filter});

		$('.site-intro').removeClass('expanded');
		if(filter != '*')
			$('.site-intro'+filter).addClass('expanded');

		$('html,body').animate({scrollTop: 0}, 500);

		return false;
	};


	var onWindowResize = function(){

		// update tiles
		$('.tile--text').each(function(){

			var maxWidth 		= $(this).css('maxWidth');

			if(maxWidth != 'none'){
				var fontSize 		= 50;
				$(this).css('fontSize', fontSize);
				var targetWidth 	= $(this).outerWidth();
				$(this).css('maxWidth', '');


				while(fontSize > 0){
					fontSize -= .5;
					$(this).css('fontSize', fontSize);

					if($(this).outerWidth() < targetWidth)
						break;
				}

				$(this).css('maxWidth', maxWidth);

			}

		});

		loadTiles();
	}


	var onWindowScroll = function(){

		loadTiles();

	}


	return {
		init: 	init
	};

}();

$(Wall.init);
