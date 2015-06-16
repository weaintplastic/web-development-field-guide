var SiteHeader = function(){


	var $this 				= $('.site-header');
	var $siteHeaderToggle 	= $('.site-header--toggle', $this);

	var init = function(){
		console.info('SiteHeader.init');
		initListener();
	};


	var initListener = function(){
		$siteHeaderToggle.bind('click', onSiteHeaderToggleClicked);
	};



	var onSiteHeaderToggleClicked = function( event ){
		$this.toggleClass('toggled');
		return false;
	};

	return {
		init: 	init
	};

}();


$(SiteHeader.init);