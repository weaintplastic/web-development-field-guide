> #### Good reasons why you should follow the principles of OOCSS
> * Lighter websites since there is less CSS code needed to describe your website's styling
> * Faster websites since CSS parsing is much easier due to the simplification of your styles
> * Code is easy to be maintained since changes have to be made in just one location instead of hundreds
> * Your teammates will love you


Did you ever had the feeling that your CSS became messed up, super complicated and way to complex when working on a website? Or have you ever been super frustrated when working on the CSS of somebody else and didn't know about existing styles and how to reuse them proberly without redundancy? Then object oriented CSS is the answer to these problems. It’s an approach for writing CSS that’s fast, maintainable, and standards-based. It adds much needed predictability to CSS so that even beginners can participate in writing beautiful websites.

### What is a CSS object (a basic example)
Basically, a CSS object is a repeating visual pattern, that can be abstracted into an independent snippet of HTML, CSS, and possibly JavaScript. That object can then be reused throughout a site. To show you exactly what this means, it is worth to take a look at the two main principles of OOCSS:

#### 1. Separate structure and skin

This means to define repeating visual features (like background and border styles) as separate “skins” that you can mix-and-match with your various objects to achieve a large amount of visual variety without much code. Imagine we have a header and a footer on our websites, both with their own styles but some shared properties like the background color.

	.header{
		background: 	white;
		border-bottom: 	1px solid red;
		height: 		20px;
	}

	.footer{
		background: 	white;
		height: 		40px;
		position: 		absolute;
		left: 			0;
		top: 			0;
	}

So the first principle of OOCSS advices us to separate potential commonly shared properties (skin) from the structure (element styles). The HTML and CSS following the first principle of OOCSS will look like this:


	.header{
		border-bottom: 	1px solid red;
		height: 		20px;
	}

	.footer{
		height: 		40px;
		position: 		absolute;
		left: 			0;
		top: 			0;
	}

	.background-white{
		background: 	white;
	}

	<header class="header background-white"></header>
	<footer class="footer background-white"></footer>



#### 2. Separate container and content

Essentially, this means "rarely use location-dependent styles". An object should look the same no matter where you put it. So instead of styling a specific `<h2>` with ``.myObject h2 {...}``, create and apply a class that describes the `<h2>`, like `<h2 class="category">`.

This gives you the assurance that:
1. all unclassed `<h2>`s will look the same
2. all elements with the category class (called a mixin) will look the same;
3. you won’t need to create an override style for the case when you actually do want .myObject h2 to look like the normal `<h2>`
