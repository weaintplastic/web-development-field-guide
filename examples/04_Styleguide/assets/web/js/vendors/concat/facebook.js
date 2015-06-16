var Facebook = function(){


  var init = function(){

      FB.init({
        appId      : '1498032073764426',
        xfbml      : true,
        version    : 'v2.0'
      });

  };


  var ui = function( params ){
    FB.ui( params );
  };

  var login = function( permissions, callback ){
    FB.login(function(response){
        checkPermissions(response, permissions, callback);
    }, {scope: permissions.join(',')});
  }


  var getUserPhotos = function( callback ){
    
    // This function is called after getting the needed permissions to fetch the users images
    var requestPhotos = function( response ){

        if (response.status === 'not_all_permissions') {
            callback(response);
            return false;
        }

        FB.api(
            "/me/photos/uploaded?limit=999",
            function (response) {
              if (response && !response.error) {
                callback(response);
              }
              callback(response);
            }
        );
    };

    // First request all permissions that are needed
    requestPermission(['user_photos'], requestPhotos);

  };



  var requestPermission = function( permissions, callback ){

    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {
            checkPermissions(response, permissions, callback, true);
        }else{
            login( permissions, callback );
        }
    });

  }


  function checkPermissions( response, permissions, callback, trigger_login ){
    if (response.status === 'connected') {
        FB.api('/me/permissions', function(perm_response){
            var response_permissions = perm_response.data;
            var gave_permissions = false;

            for (var i = response_permissions.length - 1; i >= 0; i--) {
                if(response_permissions[i].status == "granted" && permissions.indexOf(response_permissions[i].permission) != -1){
                    permissions.splice(permissions.indexOf(response_permissions[i].permission), 1);
                    
                }
            };
            
            if(permissions.length == 0){
                console.info('gave all permissons');
                callback(response);
            }else{
                console.info('not all permissons');
                if(trigger_login)
                    login(permissions, callback);
                else
                    callback({authResponse: null, status: "not_all_permissions"});
            }
        }); 
    }else{
        callback(response);
    }   
}





  return {
    init: init,
    ui: ui,
    getUserPhotos: getUserPhotos
  }

}();



window.fbAsyncInit = Facebook.init;

(function(d, s, id){
   var js, fjs = d.getElementsByTagName(s)[0];
   if (d.getElementById(id)) {return;}
   js = d.createElement(s); js.id = id;
   js.src = "//connect.facebook.net/en_US/sdk.js";
   fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));