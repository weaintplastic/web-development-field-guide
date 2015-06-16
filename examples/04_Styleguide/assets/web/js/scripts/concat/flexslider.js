var Flexslider = function(){

	var init = function(){
		$('.flexslider').flexslider({
			animation: "slide",
			allowOneSlide: false,
			nextText: '<i class="icon">3</i>',
			prevText: '<i class="icon">1</i>',
			slideshow: false
		});
	};

	return {
		init: init
	};


}();

$(Flexslider.init);