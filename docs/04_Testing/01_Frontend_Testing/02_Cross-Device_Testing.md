Testing on devices can be pretty frustrating, since you miss tools like a good developer console or the element inspector. And how do you connect to the virtual host of your local machine from an iPhone or iPad? Here are some tips and strategies on how to test your project on different hardware.

I am usually testing our websites on
* iPhone
* iPad
* Android Phone

In more detail we aim to support theses browsers at the following level:

**Support level 1**
* iPhone 4+
* iPad 2+
* Android 4.*+

**Support level 2**

**Support level 3**
* anything else

### Device simulator

Testing your responsive design by resizing your browser window to see how the viewport size affects your layout works pretty well. But when it comes to testing of interactions on touch devices there is no other way then test it on a real device or use google chrome dev tools an the [built in device mode](https://developer.chrome.com/devtools/docs/device-mode).

<video width="100%" height="auto" id="gfyVid1" class="gfyVid" controls="" autoplay="" loop="" muted="" poster="//thumbs.gfycat.com/LeadingBlackandwhiteBorzoi-poster.jpg">
<source id="webmsource" src="//fat.gfycat.com/LeadingBlackandwhiteBorzoi.webm" type="video/webm">
<source id="mp4source" src="//fat.gfycat.com/LeadingBlackandwhiteBorzoi.mp4" type="video/mp4">
<img src="http://zippy.gfycat.com/LeadingBlackandwhiteBorzoi.gif" alt="Demoing device mode.">
</video>


### Remote debugging
Safari and Google developed mechanisms that endable us to debug on mobiel devices remotly.

#### Debug on iOS (MacOS only)
1. To use your Safari Developer Toolbar on your mobile testing device you first have to prepare your device. Therefore goto Settings > Safaria > Advanced and turn on Web Inspector.

2. To enable Safari to allow remote debugging you need to open up Safari's Preferences and click on the *Advanced* tab. There you need to make sure that *Show Develop menu in the menu bar* is checked.

3. Plugin your testing device, open your website in iOS Safari and goto Safari's menu *Develop* on your computer. Your iOS device should be visible there. Clicking on it will enable your to use the Developer Tools of Safari for that device on your computer.


#### Debug on Android
To enable remote debugging for a Android Device please follow theses instructions.
https://developer.chrome.com/devtools/docs/remote-debugging


#### Debug on other Devices and Platforms
While Apple and Google created their own remote debugging tools, there is still one left, that is platform independet and is called [weinre](http://people.apache.org/~pmuellr/weinre-docs/latest/). A complete guide of how to instal and runn *weinre* please visit http://people.apache.org/~pmuellr/weinre-docs/latest/Home.html
