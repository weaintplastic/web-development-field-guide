var Tinyscrollbar = function(){

	var init = function(){

		initView();
		initPlugin();
		initListener();

	};

	var initView = function(){
		$('.tinyscrollbar').wrapInner('<div class="viewport"><div class="overview"></div></div>');
		$('.tinyscrollbar').prepend('<div class="scrollbar"><div class="track"><div class="thumb"></div></div></div>');
	};

	var initListener = function(){
		$(window).on('resize', $.debounce( 250, onWindowResize));
		$('.tinyscrollbar').on('mouseenter', onTinyscrollMouseEnter);

	};

	var initPlugin = function(){

		$('.tinyscrollbar').tinyscrollbar();
		// setTimeout(function(){ $('.tinyscrollbar').data('plugin_tinyscrollbar').update();}, 1000);

	};

	var onWindowResize = function(){
		var api = $('.tinyscrollbar').data('plugin_tinyscrollbar');

		if( api ){
			api.update(0);
		}
	}

	var onTinyscrollMouseEnter = function(){
		var api = $('.tinyscrollbar').data('plugin_tinyscrollbar');

		if( api ){
			if(api.contentPosition){
				api.update("relative");
			}else{
				api.update();
			}
		}
			
	};

	init();


}();