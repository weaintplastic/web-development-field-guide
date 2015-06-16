> #### Good reasons why you should write object oriented Javascript
> * Better overview of components of your website
> * Easy to maintain and debug since every component has it's own scope
> * Capsulated modules will guarantee scaleability and reusability
> * Your teammates will love you

Writing Object Oriented Javascript is the logical consequence when thinking of reusable and scaleable code in combination with [Object Oriented CSS](/Development/Frontend_Development/Writing_CSS/Write_Object_Oriented_CSS). Encapsulate Javscript will keep your code clean and organized, prevents you from common misstakes like overwriting your components scope and will give you a better overview of the javascript components of your website.

It figured out that one of the best ways to create and work with Objects in Javascript is using concepts of `prototype`. A pretty comprehensive guide about that can be found [here](http://javascriptissexy.com/oop-in-javascript-what-you-need-to-know/).

A very simple Javscript handeling a clickevent on our teasers might look something like this:

	/********************************/
	/* Teaser                       */
	/********************************/


	function Teaser() {
	    this.$teaser = $('.teaser');
	    this.initListeners();
	};
	​
	Teaser.prototype = {
	    constructor: Teaser,

	    /** Init Functions **********/

	    initListeners: function ()  {
	       this.$teaser.on('click', this.onTeaserClicked)
	    },

	    /** Event Listeners ********/

	    onTeaserClicked: function( event ){
	        alert('I was clicked');
	        return false;
	    }
	}

Calling `new Teaser()`in your Javascript will create one object of the type `Teaser`and you can execute its functions and access properties.
Imagine you've created a teaser component, having the HTML for it, the CSS written in a [object oriented way](/Development/Frontend_Development/Writing_CSS/Write_Object_Oriented_CSS) with nice [class namings](/Development/Frontend_Development/Writing_CSS/Follow_a_Naming_Convention), and this portion of javascript code. Now you need this component or a pretty similar one in another project. Instead of browsing through hundreds of lines of Javascript finding the right thing, and searching for the matching parts of CSS, you simply grad the `teaser.scss` and `teaser.js` and move them over to your new project.
