### Use Preprocessors
You probably already heard of [Less](http://lesscss.org/) or [Sass](http://sass-lang.com/). Both languages extend css by adding features that allow varibles, mixins, functions and many other techniques that will make your CSS more structured, dynamic and maintainable. Basically the workflow is to write your styles in one of those languages (.less or .scss files), use a compiler and compile them to plain CSS. To see how to setup this workflow please have a look at how to [Setup a Build System](./Development/Frontend_Development/Setting_up_your_project/Setup_Build_System).

Sass and Less are pretty similar in their basic functionality and just differ a little bit in their syntax. A good comparison can be found [here](https://gist.github.com/chriseppstein/674726). So if you are familiar with one of them, you shouldn't run into problems maintaining and updating the code of the other.

#### So what should you use?

If you are already using Less and feel happy with it, then it's cool. If you are new to preprocessor languages you should definitely start with Sass. The learning curve is the same in both languages since they share a similar basic functionality, but Sass can do much more for you and complex solutions can be solved much cleaner.

#### Start playing

To get comfortably with the new language go ahead explore the [documentation](http://sass-lang.com/documentation/file.SASS_REFERENCE.html) and start playing around with all the different functionalites. Use the setup of the [Simple Gulp Build Script](./Development/Frontend_Development/Setting_up_your_project/Setup_Build_System/A_simple_Gulp_build_script) to directly start with writing SCSS without the hustle of compiling.
