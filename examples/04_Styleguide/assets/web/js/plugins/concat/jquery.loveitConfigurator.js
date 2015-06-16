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
	$.loveitConfigurator = function(element, options) {


		// TEMPLATES

		// MERGE OPTIONS
		var opts								= $.extend({}, $.fn.loveitConfigurator.defaults, options);

		// VIEW COMPONENTS
		var $this								= $(element);
		var $configBackgroundImageSelect 		= $('.config-background-image-select', $this);
		var $configBackgroundColorSelect 		= $('.config-background-color-select', $this);
		var $configSymbolImageSelect 			= $('.config-symbol-image-select', $this);
		var $configSymbolColorSelect 			= $('.config-symbol-color-select', $this);
		var $configTextColorSelect				= $('.config-text-color-select', $this);
		var $configGenerateTrigger				= $('.config-trigger-generate', $this);

		var $configShuffleButton				= $('.config-shuffle-button', $this);
		var $configHeartText					= $('.config-heart-text', $this);
		var $configHeartTextLeft				= $('.config-heart-text-left', $this);
		var $configHeartTextRight				= $('.config-heart-text-right', $this);
		var $configCopyText						= $('.config-copy-text', $this);
		var $configTextTypeSelect 				= $('.config-text-type-select', $this);
		var $uploadForm 						= $('.upload-form', $this);

		var $resultForm 						= $('.result-form', $this);
		var $resultCanvas 						= $('.result--canvas', $resultForm);
		var $resultText 						= $('.result--text', $resultCanvas);
		var $resultBackground					= $('.result--background', $resultCanvas);
		var $resultSymbol						= $('.result--symbol', $resultCanvas);

		var $cropForm 							= $('.crop-form', $this);
		var $cropCanvas 						= $('.crop--canvas', $cropForm);
		var $cropImage 							= $('.crop--image', $cropForm);
		var $cropClose 							= $('.crop--close', $cropForm);

		// PROPERTIES
		var currentStep 						= 0;
		var textTarget 							= "config-heart-text";


		/********************************/
		/* PUBLIC FUNCTIONS				*/
		/********************************/

		this.publicFunciton = function(){

		};


		/********************************/
		/* PRIVATE FUNCTIONS			*/
		/********************************/

		var init = function(){

			console.info(decodeURI("http://cdn.liebe-wie-du-willst.durex.de.s3.amazonaws.com/frontend_upload%2F18af7d740374a5b3d535f627d1428535_WM_Loveits%2BUSA+-+Copy.JPG"));

			initConfigurator();
			initUploadForm();
			initCropForm();
			initResultForm();

			onConfigShuffleButotnClick();
			
		};


		var initConfigurator = function(){


			$('.configurator--close').bind('click', onConfiguratorClose);
			$configHeartText.bind('keyup', onConfigHeartTextKeyUp);
			$configCopyText.bind('keyup', onConfigCopyTextKeyUp);
			$configGenerateTrigger.bind('click', onConfigGenerateClick);

		}


		var initUploadForm = function(){

			$('input[type="file"]', $uploadForm).change(function(){
				$uploadForm.submit();

			});

			$('.facebook-import', $uploadForm).bind('click', function(){
				$(this).addClass('loading');
				Facebook.getUserPhotos(onGetFacebookPhotosResponse);
			})

			$uploadForm.submit(function() {

				$('.button-fileupload', $uploadForm).addClass('loading');

			    // submit the form
			    $(this).ajaxSubmit({
			    	dataType: 'xml',
			    	success: onUploadFormSuccess,
			    	error: onUploadFormError
			    });
			    // return false to prevent normal browser submit and page navigation
			    return false;
			});

		}

		var initCropForm = function(){

			$cropImage.cropbox({
		        width: $cropCanvas.width(),
		        height: $cropCanvas.width()
		    });

		    $cropClose.on('click', onCropCloseClick);

			$cropImage.on('cropbox', onCropCanvasUpdate);

			$cropForm.submit(function() {
			    // submit the form
			    $('[type="submit"]', $cropForm).addClass('loading');

			    $(this).ajaxSubmit({
			    	dataType: 'text',
			    	success: onCropFormSuccess,
			    	error: onCropFormError
			    });
			    // return false to prevent normal browser submit and page navigation
			    return false;
			});

			updateCropForm();
		}

		var initResultForm = function(){

			$resultText.pep({
				constrainTo: 		'parent',
				useCSSTranslation: 	false,
				drag: 				onResultTileTextDrag,
				rest: 				onResultTileTextRest,
				shouldEase: 		false
			});

			$('a[data-loveit-type]', $this).bind('click', onLoveitTypeClick);
			$('a[data-id]', $configBackgroundImageSelect).bind('click', onBackgroundImageSelectClick);
			$('a[data-id]', $configBackgroundColorSelect).bind('click', onBackgroundColorSelectClick);
			$('a[data-id]', $configSymbolImageSelect).bind('click', onSymbolImageSelectClick);
			$('a[data-id]', $configSymbolColorSelect).bind('click', onSymbolColorSelectClick);
			$('a[data-color]', $configTextColorSelect).bind('click', onTextColorSelectClick);
			$('input[type="radio"]+label', $configTextTypeSelect).bind('click', onTextTypeSelectClick);
			$('input[name="config_text_type"]', $configTextTypeSelect).bind('change', onTextTypeSelectChange);
			$('input[name="config_text_type"]', $configTextTypeSelect).each(function(){
				$(this).parent().find('input[type="text"]').bind('focus', onConfigTextInputFocus);
				$(this).parent().find('textarea').bind('focus', onConfigTextInputFocus);
			});
			$configShuffleButton.bind('click', onConfigShuffleButotnClick);

			$('a[data-id].selected', $configSymbolImageSelect).trigger('click');

			updateResult();

			$resultForm.submit(function(){

				/*
				$('.terms-form', $this)
					.validate({
						rules: {
				            'terms': {
				                required: true
				            }
				        },
						errorPlacement: function(error, element) {
							element.next('label').addClass('invalid');
							console.info('error', error);
						},
						invalidHandler: function(event, validator){
							// console.info(validator);
						},
						submitHandler: function(form) {
							$resultForm.ajaxSubmit({
						    	dataType: 'json',
						    	success: onResultFormSuccess,
						    	error: onResultFormError
						    });
						},
						success: function(){

						}

					});

					$('.terms-form', $this).submit();

				// $('input[name="terms"]', $this).valid();
				*/



				if($('input[name="terms"]:checked', $this).length){
					$('input[name="terms"]', $this).next('label').removeClass('invalid');
					$configGenerateTrigger.addClass('loading');
					$(this).ajaxSubmit({
				    	dataType: 'json',
				    	success: onResultFormSuccess,
				    	error: onResultFormError
				    });
				}else{
					$('input[name="terms"]', $this).next('label').addClass('invalid');
				}


			    return false;
			});



		}


		var initListeners = function(){

		}



        /********************************/
		/* HELPER FUNCTIONS				*/
		/********************************/

		var setCropImage = function( imageUrl ){
			if(imageUrl){
				$cropImage.attr('src', imageUrl);
				$cropForm.fadeIn();
				$resultForm.animate({opacity: 0});

				$cropImage.cropbox({
			        width: $cropCanvas.width(),
			        height: $cropCanvas.width()
			    });
			}


		}

		var onConfigGenerateClick = function(event){
			$resultForm.submit();
			return false;
		}

		var updateCropForm = function(){

			var cropX 				= parseInt(-$cropImage.position().left);
			var cropY 				= parseInt(-$cropImage.position().top);
			var imageWidth 			= parseInt($cropImage.outerWidth());
			var imageHeight 		= parseInt($cropImage.outerHeight());
			var imageUrl 			= $cropImage.attr('src');
			var canvasWidth 		= parseInt($cropCanvas.outerWidth());
			var canvasHeight 		= parseInt($cropCanvas.outerHeight());

			$('input.crop-x', $cropForm).val(cropX);
			$('input.crop-y', $cropForm).val(cropY);
			$('input.canvas-width', $cropForm).val(canvasWidth);
			$('input.canvas-height', $cropForm).val(canvasHeight);
			$('input.image-width', $cropForm).val(imageWidth);
			$('input.image-height', $cropForm).val(imageHeight);
			$('input.image-url', $cropForm).val(imageUrl);

		}


		var updateResultBackground = function(){

			var backgroundImageId 	= $('a[data-id].selected', $configBackgroundImageSelect).data('id');
			var backgroundColorId 	= $('a[data-id].selected', $configBackgroundColorSelect).data('id');
			var backgroundImagePath = $('.result--background', $resultCanvas).data('backgroundImagePath');

			if(backgroundImageId && backgroundColorId && backgroundImagePath){
				var backgroundImageUrl	= backgroundImagePath.replace('*', backgroundImageId+'-'+backgroundColorId);
				$('.result--background[data-background-image-path]', $resultCanvas).attr('src', backgroundImageUrl);
			}


		}

		var updateResultSymbol = function(){

			var symbolImageId 	= $('a[data-id].selected', $configSymbolImageSelect).data('id');
			var symbolColorId 	= $('a[data-id].selected', $configSymbolColorSelect).data('id');
			var symbolImagePath = $('.result--symbol', $resultCanvas).data('symbolImagePath');
			var symbolType 		= $('a[data-id].selected', $configSymbolImageSelect).data('loveit-type');

			if(symbolImageId && symbolImagePath && ( symbolColorId || symbolType == 'wm')){

				console.info(symbolType);
				var finalName = symbolImageId+'-'+symbolColorId;
				if ( symbolType == "wm" ){
					finalName = symbolImageId;
				}

				var symbolImageUrl	= symbolImagePath ? symbolImagePath.replace('*', finalName) : '';
				$('.result--symbol[data-symbol-image-path]', $resultCanvas).attr('src', symbolImageUrl);
			}

		}


		var updateResultText = function(){

			var textColor 	= $('a[data-color].selected', $configTextColorSelect).data('color');
			$('span', $resultText).css({background: textColor});

		}

		var updateResult = function(){

			updateResultBackground();
			updateResultSymbol();
			updateResultText();

			var textX 			= parseInt($resultText.position().left);
			var textY 			= parseInt($resultText.position().top);
			var textWidth 		= parseInt($resultText.outerWidth());
			var textHeight 		= parseInt($resultText.outerHeight());
			var textBgColor 	= $('a[data-color].selected', $configTextColorSelect).data('color');
			var canvasWidth 	= parseInt($resultCanvas.outerWidth());
			var canvasHeight 	= parseInt($resultCanvas.outerHeight());
			var backgroundUrl 	= $resultBackground.attr('src');
			var symbolUrl 		= $resultSymbol.attr('src');

			var resultText 		= $resultText.html();
			resultText 			= resultText.replace(/<span .*?>/gi,'');
			resultText 			= resultText.replace(/<span>/gi,'');
			resultText 			= resultText.replace(/<\/span>/gi,'');
			resultText 			= resultText.replace(/<span class="word">/gi,'');
			resultText 			= resultText.replace(/<i class="icon">H<\/i>/gi,'###heart###');
			resultText 			= resultText.replace(/<i class=icon>H<\/i>/gi,'###heart###');
			resultText 			= resultText.replace(/<br.*?>/gi, '\r\n');


			if(resultText){
				$resultText.fadeIn();
			}else{
				$resultText.fadeOut();
			}

			$('input.text', $resultForm).val(resultText);
			$('input.text-x', $resultForm).val(textX);
			$('input.text-y', $resultForm).val(textY);
			$('input.text-width', $resultForm).val(textWidth);
			$('input.text-height', $resultForm).val(textHeight);
			$('input.text-bg-color', $resultForm).val(textBgColor);
			$('input.canvas-width', $resultForm).val(canvasWidth);
			$('input.canvas-height', $resultForm).val(canvasHeight);
			$('input.background-url', $resultForm).val(backgroundUrl);
			$('input.symbol-url', $resultForm).val(symbolUrl);

		}



		/********************************/
		/* EVENT HANDLING				*/
		/********************************/

		var onConfiguratorClose = function(){
			$this.addClass('hidden');
			return false;
		}

		var onConfigHeartTextKeyUp = function(){
			var html = '<span style="white-space: nowrap;">' + $configHeartTextLeft.val() + ' <i class="icon">H</i> '+$configHeartTextRight.val()+'</span>';
			$resultText.html(html);

			updateResult();
		}

		var onConfigCopyTextKeyUp = function(){

			var lines 	= $configCopyText.val().match(/[^\r\n]+/g);

			var html 	= '';

			if(lines){
				for(var i = 0; i < lines.length; i++){
					html += '<span>' + lines[i] + '</span><br/>';
				}
			}
			html 	+= '';

			$resultText.html(html);
			$('br:last-child', $resultText).remove();


			/* This code autodectes visual linebreaks */
			/*
			if(lines){
				for(var i = 0; i < lines.length; i++){
					var words 				= lines[i].split(' ');
					var wordWrappedLine 	= '';
					for( var j = 0; j < words.length; j++){
						wordWrappedLine += '<span class="word">'+ words[j] +'</span> ';
					}

					html += wordWrappedLine + '<br/>';
				}
			}
			html 	+= '</span>';
			$resultText.html(html);


			var wordPositionTop = $('.word:eq(0)', $resultText).position().top;
			$('.word', $resultText).each(function(){
				if(wordPositionTop != $(this).position().top){
					wordPositionTop 	= $(this).position().top;
					$(this).before('<span class="new-line"></span>');
				}
			});
			$resultText.html($resultText.html().replace(/<span class="new-line"><\/span>/g, '</span><br/><span>'));
			$('span > br:last-child', $resultText).remove();

			*/

			updateResult();
		}

		var onUploadFormSuccess = function(response, statusText, xhr, $form){
			$('.button-fileupload', $uploadForm).removeClass('loading');
			var imageUrl = decodeURIComponent($(response).find('Location').text());
			setCropImage( imageUrl );

		}

		var onUploadFormError = function(){
			console.info('error');
		}


		var onLoveitTypeClick = function(){

			var newType = $(this).data('loveitType');

			$('input.loveit-type', $resultForm).val(newType);

			switch(newType){
				case 'wm':
					$('[value="config-heart-copy"]', $configTextTypeSelect).closest('.column').hide();
					$configSymbolColorSelect.addClass('disabled');
					break;

				case 'normal':
					$('[value="config-heart-copy"]', $configTextTypeSelect).closest('.column').show();
					$configSymbolColorSelect.removeClass('disabled');
					break;
			}

		}

		var onBackgroundImageSelectClick = function( event ){
			$('a[data-id]', $configBackgroundImageSelect).removeClass('selected');
			$('a[data-id="'+ $(this).data('id') +'"]', $configBackgroundImageSelect).addClass('selected');
			$configBackgroundColorSelect.removeClass('disabled');
			updateResult();
			return false;
		}

		var onBackgroundColorSelectClick = function( event ){
			$('a[data-id]', $configBackgroundColorSelect).removeClass('selected');
			$('a[data-id="'+ $(this).data('id') +'"]', $configBackgroundColorSelect).addClass('selected');
			updateResult();
			return false;
		}

		var onSymbolImageSelectClick = function( event ){
			$('a[data-id]', $configSymbolImageSelect).removeClass('selected');
			$('a[data-id="'+ $(this).data('id') +'"]', $configSymbolImageSelect).addClass('selected');
			$(this).addClass('selected');
			updateResult();
			return false;
		}

		var onSymbolColorSelectClick = function( event ){
			$('a[data-id]', $configSymbolColorSelect).removeClass('selected');
			$('a[data-id="'+ $(this).data('id') +'"]', $configSymbolColorSelect).addClass('selected');
			updateResult();
			return false;

		}

		var onTextColorSelectClick = function( event ){
			$('a[data-color]', $configTextColorSelect).removeClass('selected');
			$('a[data-color="'+ $(this).data('color') +'"]', $configTextColorSelect).addClass('selected');
			updateResult();
			return false;
		}

		var onResultTileTextDrag = function( event, object ){
			updateResult();

		}

		var onResultTileTextRest = function( event, object ){
			updateResult();
		}


		var onCropCanvasUpdate = function( event, data ){
			updateCropForm();
		}



		var onResultFormSuccess = function( response, statusText, xhr, $form ){
			$configGenerateTrigger.removeClass('loading');

			window.location = $('input[name="finish_url"]', $form).val()
			window.location.reload();
		};

		var onResultFormError = function( response ){
			console.info(event);
		};


		var onCropFormSuccess = function( response, statusText, xhr, $form ){
			$('[type="submit"]', $cropForm).removeClass('loading');

			$('a.selected', $configBackgroundImageSelect).removeClass('selected');
			// $('a.selected', $configBackgroundColorSelect).removeClass('selected');

			$configBackgroundColorSelect.addClass('disabled');

			$resultBackground.attr('src', response);
			$cropForm.fadeOut();
			$resultForm.animate({opacity: 1});
			updateResult();
		};


		var onCropCloseClick = function( event ){
			$cropForm.fadeOut();
			$resultForm.animate({opacity: 1});
			return false;
		}


		var onCropFormError = function( event ){
			$cropForm.fadeOut();
			$resultForm.animate({opacity: 1});
		}

		var onTextTypeSelectClick = function(){

			$('label', $configTextTypeSelect).removeClass('checked');
			$(this).prev('input[type="radio"]').trigger('click');

		}

		var onTextTypeSelectChange = function(){

			textTarget = $("input[name='config_text_type']:checked").val();

			switch(textTarget){

				case 'config-heart-text':
					onConfigHeartTextKeyUp();
					break;

				case 'config-copy-text':
					onConfigCopyTextKeyUp();
					break;

				default:
					$resultText.html('');
					updateResult();


			}

		}

		var onConfigTextInputFocus = function(){
			var $this = $(this);
			setTimeout(function(){
				$this.unbind('focus', onConfigTextInputFocus);
				$this.focus();
				$this.bind('focus', onConfigTextInputFocus);
			}, 200);

		}

		var onGetFacebookPhotosResponse = function( response ){
			$('.facebook-import', $uploadForm).removeClass('loading');

			if(response && !response.error){
				var fancydata = [];
				for (var i = response.data.length - 1; i >= 0; i--) {
					fancydata.unshift('<div class="overlayed"><img class="responsive" src="'+response.data[i].source+'"/><div class="overlay vertical-positioned text-center"><div class="vertical-center"><a href="'+response.data[i].source+'" class="facebook-import-select button button-solid button-solid-blue-light"><i class="icon"><span>I</span></i><span>Als Hintergrund verwenden</span></span></div></div></div>');
				};
				$.fancybox.open(fancydata, {
					padding: 		0,
					margin: 		[39, 0, 0, 0],
					scrolling: 		'no',
					closeClick: 	false,
					openEffect: 	'none',
					closeEffect: 	'none',
					tpl: {
						closeBtn: 	'<a title="Close" class="button button-solid button-solid-blue button-icon-only fancybox-item fancybox-close" href="javascript:;"><i class="icon"><span>C</span></i></a>',
						next: 		'<a title="Next" class="button button-solid button-solid-blue button-icon-only fancybox-nav fancybox-next" href="javascript:;"><i class="icon icon-hover-ltr"><span>3</span><span>3</span></i></a>',
						prev: 		'<a title="Previous" class="button button-solid button-solid-blue button-icon-only fancybox-nav fancybox-prev" href="javascript:;"><i class="icon icon-hover-rtl"><span>1</span><span>1</span></i></a>'
					},
					beforeShow: function(){
						$(this.content).waitForImages(function(){
							$.fancybox.update();
						});
						$(window).trigger('resize');
						$('.facebook-import-select').bind('click', onFacebookPhotoSelectClick);
					},
					afterShow: function(){
						$(window).trigger('resize');
					}
				});


			}
		}


		var onFacebookPhotoSelectClick = function( event ){
			$.fancybox.close();
			var imageUrl = $(this).attr('href');
			setCropImage( imageUrl );
			return false;
		}

		var onConfigShuffleButotnClick = function( event ){

			var $visibleConfigBackgroundImageSelect = $configBackgroundImageSelect;
			var $visibleConfigBackgroundColorSelect = $configBackgroundColorSelect;
			var $visibleConfigSymbolImageSelect 	= $configSymbolImageSelect;
			var $visibleConfigSymbolColorSelect 	= $configSymbolColorSelect;
			var $visibleConfigTextColorSelect 		= $configTextColorSelect;


			var totalBackgroundImages 	= $('li:not(.clone) a[data-id]', $visibleConfigBackgroundImageSelect).length;
			var totalBackgroundColors 	= $('li:not(.clone) a[data-id]', $visibleConfigBackgroundColorSelect).length;
			var totalSympbolImages 		= $('li:not(.clone) a[data-id]', $visibleConfigSymbolImageSelect).length;
			var totalSympbolColors 		= $('li:not(.clone) a[data-id]', $visibleConfigSymbolColorSelect).length;
			var totalTextColors 		= $('li:not(.clone) a[data-color]', $visibleConfigTextColorSelect).length;


			$('li:not(.clone) a[data-id]', $visibleConfigBackgroundImageSelect).eq(Math.floor(Math.random()*totalBackgroundImages)).trigger('click');
			$('li:not(.clone) a[data-id]', $visibleConfigBackgroundColorSelect).eq(Math.floor(Math.random()*totalBackgroundColors)).trigger('click');
			$('li:not(.clone) a[data-id]', $visibleConfigSymbolImageSelect).eq(Math.floor(Math.random()*totalSympbolImages)).trigger('click');
			$('li:not(.clone) a[data-id]', $visibleConfigSymbolColorSelect).eq(Math.floor(Math.random()*totalSympbolColors)).trigger('click');
			$('li:not(.clone) a[data-color]', $visibleConfigTextColorSelect).eq(Math.floor(Math.random()*totalTextColors)).trigger('click');

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
	$.fn.loveitConfigurator = function(options){
		return this.each(function() {
            if (undefined === $(this).data('loveitConfigurator')) {
                var plugin = new $.loveitConfigurator(this, options);
                $(this).data('loveitConfigurator', plugin);
            }
        });

	};


	/**
	* PLUGIN DEFAULTS
	*
	*/
	$.fn.loveitConfigurator.defaults = {
		option1: 1000,
		option2: 760
	};

})(jQuery);
