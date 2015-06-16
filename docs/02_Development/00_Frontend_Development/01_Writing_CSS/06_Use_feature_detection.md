### Responsive Design vs Feature Detection

Guess what, optimizing your website for touch input doesn't necessarily mean that your are dealing with a mobile device. Touch input is a feature that is independent from any kind of device. Even desktop computer can have touch input nowadays. So before you start building alternative ways of showing a hover state on a mobile device for example, you should think twice if you have to build a workaround because of the device's viewport size (responsive design) or because of a feature that is required (feature detection).

For using feature detection in your CSS we recommend to use [Modernizr](http://modernizr.com/) which won't just add feature detection for CSS but also for Javascript. Basically Modernizr consists of a set of tests that will add a class depending on the result of that test to the `html` tag. For a browser that passes the test for supporting touch input the class is called `touch`, for browsers that don't the class is called `no-touch`. Now it is super easy for you to apply different styles to browsers depending on the fact if they pass or fail a certain test.

	.teaser{
		.teaser_copy{
			display: block;
		}
	}

	// for touch disabled devices
	.no-touch{
		.teaser{
			.teaser_copy{
				display: none;
			}
			&:hover{
				.teaser_copy{
					display: block;
				}
			}
		}
	}
