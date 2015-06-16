/********************************/
/* Teaser                       */
/********************************/


function Teaser() {
    this.$teaser = $('.teaser');
    this.initListeners();
};
Teaser.prototype = {
    constructor: Teaser,

    /** Init Functions **********/

    initListeners: function ()  {
       this.$teaser.on('click', this.onTeaserClicked);
       console.info('this is a test to see if sourcemaps work correctly');
    },

    /** Event Listeners ********/

    onTeaserClicked: function( event ){
        alert('I was clicked');
        return false;
    }

}