/********************************/
/* Main                         */
/********************************/

function Main() {
    this.teaser = new Teaser();
};
Main.prototype = {
    constructor: Main
};

var main = new Main();
