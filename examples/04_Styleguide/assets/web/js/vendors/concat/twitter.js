var Twitter = function(){


	var share = function( url, message ){
		window.open('https://twitter.com/share?text='+encodeURIComponent(message)+'&url='+encodeURIComponent(url),'twitter-dialog','width=626,height=436');
	};



	return {
		share: share
	};


}();