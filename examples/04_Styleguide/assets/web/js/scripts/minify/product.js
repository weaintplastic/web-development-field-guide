var switch_product = 0;

var Product = function(){

	var init = function(){

		var slide_doing = 0;

		$(document).on('click','.res-container h2 img',function(){

			$this = $(this).parents('.res-container');
			if(!$this.hasClass('active') && slide_doing == 0){

				slide_doing = 1;

				// SET TOP POSITION
				var t = $('.res-red').offset().top;
				var t_img = 0;
				if($this.hasClass('res-red')){ 					}
				if($this.hasClass('res-yellow')){ 	t += 100;	}
				if($this.hasClass('res-blue')){	 	t += 200; 	}
				$('body,html').animate({
					scrollTop:t+'px'
				},800,'easeInOutExpo');

				$this.find('img.skew-content').animate({
					'top':'0px'
				},800,'easeInOutExpo');
				$(this).attr('src',$(this).attr('src').replace('.down.png','.png'));
				$this.find('.inner').slideDown(800,'easeInOutExpo',function(){
					$this.addClass('active');
					slide_doing = 0;
				});

				// CLOSE CONTAINER
				if($('.res-container.active').hasClass('res-red')){ 	t_img = -50; 	}
				if($('.res-container.active').hasClass('res-yellow')){ 	t_img = -390; 	}
				if($('.res-container.active').hasClass('res-blue')){	t_img = -280; 	}

				$('.res-container.active > .skew-container > img.skew-content').animate({
					'top':t_img+'px'
				},800,'easeInOutExpo');
				$('.res-container.active h2 img').attr('src',$('.res-container.active h2 img').attr('src').replace('.png','.down.png'));
				$('.res-container.active .inner').slideUp(800,'easeInOutExpo',function(){
					$(this).parents('.res-container').removeClass('active');
				});

			}

		});

		/*
		// READ MORE
		//$(document).on('click','.res-container .inner .button.readmore',function(e){
		//	e.preventDefault();
		//	$this = $(this);
		//	$this.parents('.inner').find('.product_text .read_more').slideDown();
		//	$this.hide(0);
		//});
		*/


		var prod_json;
		$.getJSON("public/assets/web/json/products.json", function(data){
			prod_json = data;
		});


		var pos = {
			red: { p:0, m: 5 },
			yellow: { p:0, m: 6 },
			blue: { p:0, m: 4 }
		};
		var cur_item;
		var last_id = 0;

		$(document).on('click','.res-container .inner .products .pag',function(){

			$this = $(this);

			var dir = 1;
			var col = $this.parents('.products').attr('data-color');
			if($this.hasClass('arr_left')){ dir = -1; }

			if(Number(pos[col]['p']) + Number(dir) >= 0 && Number(pos[col]['p']) + Number(dir) <= Number(pos[col]['m'])){

				pos[col]['p'] = Number(pos[col]['p']) + Number(dir);
				var id = $('.res-'+col+' .products .itemwrap .item:eq('+pos[col]['p']+')').attr('data-id');

				if(switch_product == 0 && id != last_id){

					switch_product = 1;

					$.each(prod_json.products, function(i, item) {
						if(item.id == id){
							last_id = item.id;
							cur_item = item;
						}
					});

					if(pos[col]['p'] < 0){ pos[col]['p'] = 0; }
					else if(pos[col]['p'] > pos[col]['m']){ pos[col]['p'] = pos[col]['m']; }
					else {
						goToPos(col,pos[col]['p'],cur_item);
						setTimeout("switch_product=0;",1000);
					}

				}

			}

		});

		var triggered = false;
		$(document).on('click','.res-container .inner .products .item',function(){

			$this = $(this);
			var id = $this.attr('data-id');

			if(switch_product == 0 && ($(window).width() >= 768 || triggered) && id != last_id){

				triggered = false;

				switch_product = 1;
				var col = $this.parents('.products').attr('data-color');
				pos[col]['p'] = $this.attr('data-nr');

				$.each(prod_json.products, function(i, item) {
					if(item.id == id){
						last_id = item.id;
						goToPos(col,pos[col]['p'],item);
						setTimeout("switch_product=0;",1000);
					}
				});

			}

		});

		var answers = [0,0,0,0];

		// FROM STEP 1 TO Q1
		$(document).on('click','.goto2',function(e){
			e.preventDefault();
			$('.step_1 .left.side').animate({
				left:'-100%'
			},400,'easeInQuad');
			$('.step_1 .right.side').animate({
				right:'-100%'
			},400,'easeInExpo');
			$('.step_1 .text-container').delay(150).animate({
				left:'-120%'
			},400,'easeInExpo',function(){
				// SHOW Q1
				$('.step_2.quest').css('display','block');
				$('.step_2 .side.left').delay(250).animate({
					right:'50%'
				},700,'easeOutExpo');
				$('.step_2 .side.right').delay(250).animate({
					left:'50%'
				},700,'easeOutExpo');
				$('.step_2 .side.right').delay(250).animate({
					left:'50%'
				},700,'easeOutExpo');
				$('.site-main.product .step_2.quest .text-container').delay(400).animate({
					left:'0%'
				},1200,'easeOutExpo');
				$('.site-main.product .step_2 > .button').delay(350).fadeIn();
				$('.step_1').hide(0);
			});
			$('.step_1 > .button').fadeOut();
		});

		// FROM Q TO Q
		$(document).on('click','.goto_question',function(e){

			e.preventDefault();
			$this = $(this);
			var step = Number($this.attr('data-question'));
			var next_step = step + 1;

			var a = Number($this.attr('data-answer'));
			if(a == 1){ a = 'a'; } else { a = 'b'; }
			answers[step-2] = a;

			// HIDE CURRENT QUESTION
			$('.step_'+step+' .side.left').animate({
				right:'150%'
			},500,'easeInExpo');
			$('.step_'+step+' .side.right').animate({
				left:'150%'
			},500,'easeInExpo');
			$('.site-main.product .step_'+step+'.quest .text-container').delay(400).animate({
				left:'-120%'
			},400,'easeInExpo',function(){

				if(next_step == 6){

					var found_prod = 9;

					var res_cat = 9;
					var my_res = answers.join('');
					var found = false;

					var h1 = new Array('aaaa', 'baaa', 'aabb', 'babb', 'baba');
					var h2 = new Array('aaab', 'aaba', 'abaa', 'bbaa', 'abbb', 'abba', 'abab');
					var h3 = new Array('bbba', 'bbab', 'bbbb', 'baab');

					var r = new Array(h1,h2,h3);

					for(var x=0;x<r.length;x++){
						for(var y=0;y<r[x].length;y++){
							if(my_res == r[x][y]){
								res_cat = x;
								found = true;
								break;
							}

						}
						if(found) break;
					}

					if(res_cat == 0){
						found_prod = Math.floor((Math.random() * 6));
					} else if(res_cat == 1){
						found_prod = Math.floor((Math.random() * 7) + 6);
					} else {
						found_prod = Math.floor((Math.random() * 6) + 13);
					}

					var found_col = "";

					if(found_prod < 6){ found_col = "red"; }
					else if(found_prod < 13){ found_col = "yellow"; }
					else { found_col = "blue"; }

					$('.res-container.res-'+found_col+' .wrap h2 img').attr('src',$('.res-container.res-'+found_col+' .wrap h2 img').attr('src').replace('.down.png','.png'));
					$('.res-container.res-'+found_col).addClass('active');
					triggered = true;
					$('.res-container.res-'+found_col+' .itemwrap .item[data-id='+found_prod+']').click();

					$('.step_'+step+'.quest').css('display','none');

					// $('html').css('overflow-y','hidden');
					$('.step_last').css('display','block');
					$('.step_last').animate({
						'top':'0'
					},800,'easeOutExpo',function(){
						// $('html').css('overflow-y','scroll');

						var t = $('.res-red').offset().top;
						if(found_col == 'yellow'){ t += 100; }
						if(found_col == 'blue'){ t += 200; }
						$('body,html').animate({
							scrollTop:t+'px'
						},800,'easeInOutExpo');

					})

				} else {

					$('.step_'+step+'.quest').css('display','none');

					// SHOW NEXT QUESTION
					$('.step_'+next_step+'.quest').css('display','block');
					$('.step_'+next_step+' .side.left').animate({
						right:'50%'
					},500,'easeOutExpo');
					$('.step_'+next_step+' .side.right').animate({
						left:'50%'
					},500,'easeOutExpo');
					$('.site-main.product .step_'+next_step+'.quest .text-container').delay(150).animate({
						left:'0%'
					},1200,'easeOutExpo');
					$('.site-main.product .step_'+next_step+' > .button').delay(350).fadeIn();

				}

			});
			$('.site-main.product .step_'+step+' > .button').delay(350).fadeOut();

		});


	};


	init();

	return {
		init: 	init
	};

}();

function goToPos(c,p,i){

	// CREATE HTML FOR NEW CONTENT
	$wrap = $('<div style="margin-left:100%;" class="content new"></div>');
	$i_wrap = $('<div class="content_innerwrap"></div>');
	$wrap.append($i_wrap);
	$i_wrap.append('<h4>'+i.name+'</h4>');
	$i_wrap.append(i.text);
	$i_wrap.append('<div class="read_more">'+i.readmore+'</div>');
	$('.res-'+c+' .buynow').attr('href',i.buynow);

	// REMOVE OLD TEXT CONTENT
	$('.res-'+c+' .product_text .content.old').css({
		'position':'absolute',
		'top':'0px',
		'left':'0px'
	}).fadeOut(function(){
		$(this).remove();
	});

	// SHOW NEW TEXT CONTENT
	$('.res-'+c+' .product_text').parents('.innerwrap').find('.product_text').append($wrap);
	$wrap.animate({
		'margin-left':'0%'
	},800,'easeOutExpo',function(){
		$(this).removeClass('new').addClass('old');
		switch_product = 0;
	});
	//$('.res-'+c+' .inner .button.readmore').css('display','block');

	// ANIMATE PRODUCT IMAGE
	$('.res-'+c+' .product_img img').animate({
		'margin-left':'-800px',
		'margin-right':'800px'
	},800,'easeInCubic',function(){

		var o_src = $('.res-'+c+' .product_img img').attr('src');
		var url = o_src.split('__');
		var new_url = url[0]+i.packshot;

		$('.res-'+c+' .product_img img').attr('src',new_url);
		$(this).delay(800).animate({
			'margin-left':'0px',
			'margin-right':'0px'
		},800,'easeOutExpo',function(){
			switch_product = 0;
		});
	});

	// ANIMATE SMALL PRODUCT IMAGES AND ARROW
	var mp = -200 * p;
	var tp = p * 100;

	$('.res-'+c+' .inner .products .itemwrap').animate({
		'margin-left':mp+'px'
	});

	$('.res-'+c+' .inner .products .prod-sel').animate({
		'top':tp+'px'
	},700,'easeInOutExpo');

}
