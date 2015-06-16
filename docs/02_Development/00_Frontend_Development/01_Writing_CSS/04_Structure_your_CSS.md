> #### Good reasons why you should structure your CSS properly
> * Better overview of components of your website
> * Focused scope on one component while maintaining and updating your CSS
> * Capsulated modules will guarantee scalability and reusability
> * Your teammates will love you


If you've read the articles about [Writing Object Oriented CSS](./Development/Frontend_Development/Writing_CSS/Write_Object_Oriented_CSS) and the [Usage of naming schemes](./Development/Frontend_Development/Writing_CSS/Follow_a_Naming_Convention), structuring your CSS in a meaningfull way is the last consequence.


### Split up your files

Structuring means splitting up into files. OOCSS and Naming Conventions taught you how to think in objects or so called components. Why not splitting up these components into their own files? That's exactly the approach I'm used to follow. I try to give every CSS it's on scope of work and put that in a file. We differentiate between two majore categories

1. **Generic**
Generic styles serve a component independent look of the site. Wether it is the typography, hyperlink styling or the normalization of browser styles.
2. **Specific**
Here's where your component based styles will go. A component could be a teaser, buttons, the site's header or the footer menu.

### Use the preprocessors `@import` function

Your styles.scss is your master file which handles all the concatination of your generic and spcific as well as 3rd party styles.

More about the `@import` functionality could be found in the [Less](http://lesscss.org/features/#import-directives-feature) or [Sass](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#import) documentation.

If you are trying to include third party styles written in CSS, you probably have some hard times to import them with `@import` in SCSS. In order to preserve a clean project structure, we can use `gulp-include` to inject the CSS before compiling the SCSS using our [build script](./Development/Frontend_Development/Setting_up_your_project/Setup_Build_System).

### Your folder structure
Following these simple rules your folder structure could look like this:

	sass
	|-- specific
	|	|-- button.scss
	|	|-- button--solid.scss
	|	|-- button--outlined.scss
	|	|-- block.scss
	|	|-- block--intro.scss
	|	|-- block--products.scss
	|	|-- site-footer.scss
	|	|-- site-header.scss
	|	`-- teaser.scss
	|
	|-- generic
	|	`-- typography.scss
	|
	|- styles.scss
	|- settings.scss


As you can see, even the file names follow the BEM naming syntax. To decide wether or not outsourcing a modified block (block--modifier you remember?) depends on the complexity of the modification.
