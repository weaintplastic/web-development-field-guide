> #### Good reasons why you should use a naming convention
> * Good readability of your code
> * Easy to maintain since there is always a comprehensible scope
> * Self explaining HTML and CSS structure
> * Automatic modularization of your CSS code
> * Your teammates will love you


Naming classes is probably the hardest part about writing CSS and is poorly underrated. Choosing a meaningful naming-convention can improve the readability of your code and guarantee easy maintenance and extendability of your work. Even though this topic is deeply connected with the [Writing of Object Oriented CSS](./Development/Frontend_Development/Writing_CSS/Write_Object_Oriented_CSS) it deserves it's own documentation. Using a naming convention makes you automatically think of CSS objects and you are going to modularize your website's components without even noticing it. 

### BEM Naming Convention

There are different concepts of naming conventions out there. Personally I follow the rules of [BEM syntax](http://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax/) since it is pretty intuitive and easy to work with.

BEM (Block - Element - Modifier) Syntax follows this pattern:

	.block {}
	.block__element {}
	.block--modifier {}


* `block` represents the higher level of an abstraction or component.
* `block__element` represents a descendent of `.block` that helps form `.block as` a whole.
* `block--modifier` represents a different state or version of `.block`.

The reason for double rather than single hyphens and underscores is so that your block itself can be hyphen delimited, for example:

	.product-teaser {} /* Block */
	.product-teaser__image {} /* Element */
	.product-teaser--dark {} /* Modifier */
	.product-teaser--disabled {} /* Modifier */

BEM is able to tell other developers more about what your markup is meant to do just by its name. Reading through the HTML markup of a BEM based project will tell you exactly which parts are standalone components, wich parts are children or elements of that component and which component is a simple modification of its base component. To use an analogy, think how the following things and elements are related: <sup>1</sup>

	.person {}
	.person__hand {}
	.person--female {}
	.person--female__hand {}
	.person__hand--left {}


The top-level block is a *person* which has elements, for example, *hand*. A person also has variations, such as female, and that variation in turn has elements. This again, but written in *normal* CSS:

	.person {}
	.hand {}
	.female {}
	.female-hand {}
	.left-hand {}

These all make sense, but are somewhat disconnected. Take .female for example; female what? What about .hand a hand of a clock? A hand in a game of cards? By using BEM we can be more descriptive but also a lot more explicit; we tie concrete links to other elements of our code through naming alone. Powerful stuff.

<hr>
#### Ressources:
https://en.bem.info/method/ <br>
https://css-tricks.com/bem-101/ <br>
http://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax/<br>

