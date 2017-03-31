let Backbone = require("backbone");
Backbone.$ = require("jquery");

class Colour extends Backbone.Model {
    defaults() {
        return {
            id: "unknown",
            css: "#000000"
        };
    }
}

class ColourCollection extends Backbone.Collection.extend({
    model: Colour
}) {
}

let cc = new ColourCollection();
cc.add([
    new Colour({id: "default", css: "default"}),
    new Colour({id: "white", css: "grey"}),
    new Colour({id: "black", css: "black"}),
    new Colour({id: "green", css: "green"}),
    new Colour({id: "magenta", css: "#800080"}),
    new Colour({id: "blue", css: "#000080"}),
    new Colour({id: "cyan", css: "#008080"}),
    new Colour({id: "yellow", css: "brown"}),
    new Colour({id: "red", css: "#800000"}),
    new Colour({id: "brightwhite", css: "white"}),
    new Colour({id: "brightblack", css: "#404040"}),
    new Colour({id: "brightgreen", css: "#00ff00"}),
    new Colour({id: "brightmagenta", css: "#ff00ff"}),
    new Colour({id: "brightblue", css: "blue"}),
    new Colour({id: "brightcyan", css: "cyan"}),
    new Colour({id: "brightyellow", css: "yellow"}),
    new Colour({id: "brightred", css: "red"})
]);

export default cc;
