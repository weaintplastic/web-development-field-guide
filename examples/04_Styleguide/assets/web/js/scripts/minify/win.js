var Win = function(){

	var init = function(){

		$(document).on('click','.win .button.submit',function(e){
			e.preventDefault();
			
			$.ajax({
				url:'/win/processUserData',
				type:'post',
				data:$('#win_form').serialize(),
				success:function(data){
				
					if(data.indexOf('done') < 0 || data.indexOf('done') > 2){
					
						$('#win_form *').removeClass('error');
						$('#err-name label,#err-strasse label,#err-plz label').removeClass('extraerror');
					
						var err = data.split('|');
						for(var i=0;i<err.length;i++){
							$('#err-'+err[i]).addClass('error');
							if(err[i] == 'vorname'){ $('#err-name label').addClass('extraerror'); }
							if(err[i] == 'nr'){ $('#err-strasse label').addClass('extraerror'); }
							if(err[i] == 'ort'){ $('#err-plz label').addClass('extraerror'); }
						}
					
					} else {

						$('#win_form *').removeClass('error');
						$('#err-name label,#err-strasse label,#err-plz label').removeClass('extraerror');
					
						$('html,body').animate({
							'scrollTop':'0'
						},600,'easeInOutExpo');
					
						$('.main-content-wrapper').animate({
							'margin-left':'-100%'
						},600,'easeInExpo',function(){
							$(this).find('.gewinnspiel').css('display','none');
							$(this).find('.back.button,.submit.button').css('display','none');
							$(this).find('.thank_you').css('display','block');
							$(this).animate({
								'margin-left':'0px'
							},600,'easeOutExpo'); 
						});
					
					}
				}
			});
			
			
		});
		
		$(window).bind('orientationchange',function(){ re(); });
		$(window).on('resize',function(){ re(); });
		setTimeout("re();",10);
		
	};


	init();

	return {
		init: 	init
	};

}();


function re(){
	var w_height = $(window).height() - 130;
	$('.win.site-main .thank_you').css('min-height',w_height+'px');
}