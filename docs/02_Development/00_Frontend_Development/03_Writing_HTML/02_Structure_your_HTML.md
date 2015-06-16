As already done with your [CSS](./Development/Frontend_Development/Writing_CSS/Structure_your_CSS) and [Javascript](./Development/Frontend_Development/Writing_Javascript/Structure_your_Javascript) you should also think of reusable elements in your HTML and therefore outsource them as components to be included.

	src
	|-- inc
	|	|-- site-header.inc.html
	|	|-- site-footer.inc.html
	|	`-- teaser.inc.html
	|
	|-- index.html			// Includes site-header.inc.html and site-footer.inc.html
	`-- products.html		 // Includes site-header.inc.html,
							     site-footer.inc.html and teaser.inc.html


Using the power of our [build script](./Development/Frontend_Development/Setting_up_your_project/Setup_Build_System/A_complex_Gulp_build_script) we don't need to give up on including outsourced files. By simply adding the following snippet anywhere in our HMTL source, the build script takes care to include the given files when building our distribution version

	<body>

		//= include inc/site-header.inc.html

		<div class="site-main">

		</div>

		//= include inc/site-footer.inc.html

	</body>
