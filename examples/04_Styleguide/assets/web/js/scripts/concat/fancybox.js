var Fancybox = function(){

	var fancyboxOptions = {
		padding: 		0,
		margin: 		[39, 0, 0, 0],
		scrolling: 		'no',
		closeClick: 	false,
		openEffect: 	'none',
		closeEffect: 	'none',
		scrollOutside: 	true,
		ajax: 			{
			method: 	'POST',
			data: 		{ajax: true}
		},
		tpl: {
			closeBtn: 	'<a title="Close" class="button button-solid button-solid-blue button-icon-only fancybox-item fancybox-close" href="javascript:;"><i class="icon"><span>C</span></i></a>',
			next: 		'<a title="Next" class="button button-solid button-solid-blue button-icon-only fancybox-nav fancybox-next" href="javascript:;"><i class="icon icon-hover-ltr"><span>3</span><span>3</span></i></a>',
			prev: 		'<a title="Previous" class="button button-solid button-solid-blue button-icon-only fancybox-nav fancybox-prev" href="javascript:;"><i class="icon icon-hover-rtl"><span>1</span><span>1</span></i></a>'
		},
		beforeShow: function(){
			$(this.content).find(this.selector).waitForImages(function(){
				$.fancybox.update();
			});
			$(window).trigger('resize');
		},
		afterShow: function(){
			$(window).trigger('resize');
		}
	};


	var init = function(){

		$(".fancybox-video").fancybox(

			$.extend({}, {
				maxWidth	: 800,
				maxHeight	: 600,
				fitToView	: false,
				width		: '70%',
				height		: '70%',
				autoSize	: false
			}, fancyboxOptions)
		);

		$(".fancybox-download").fancybox(
			$.extend({}, {
				fitToView	: true,
				autoSize	: true
			}, fancyboxOptions)
		);

		$(".fancybox-loveit").fancybox(
			$.extend({}, {
				fitToView	: true,
				autoSize	: true,
				beforeLoad  : function(){
					this.selector = '#loveit-detail';
				}
			}, fancyboxOptions)
		);
		$('#loveit-detail').each(function(){
			$.fancybox(
				$.extend({}, {
					content: 	$(this),
					fitToView	: true,
					autoSize	: true
				}, fancyboxOptions)
			);
		});
		
			
			
			
			


	};

	return {
		init: init
	};

}();

$(Fancybox.init);