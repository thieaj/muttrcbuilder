let _ = require("underscore");
let Backbone = require("backbone");
Backbone.$ = require("jquery");

class Colour extends Backbone.Model {
    defaults() {
        return {
            name: "unknown",
            hexCode: "#000000"
        };
    }
}

class ColourCollection extends Backbone.Collection.extend({
    model: Colour,
    url: "colours.json"
}) {
    parse(resp, options) {
        return resp["colours"];
    }
}

export default new ColourCollection();
