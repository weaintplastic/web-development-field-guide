var GooglePlus = function(){

	var share = function( url ){
		window.open('https://plus.google.com/share?url='+encodeURIComponent(url),'google-dialog','width=626,height=436');
	};

	return {
		share: share
	}

}();