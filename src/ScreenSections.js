let Backbone = require("backbone");
Backbone.$ = require("jquery");

import Colours from "./Colours";

class ScreenSection extends Backbone.Model {
    defaults() {
        return {
            id: "(unknown)",
            defaultForeground: null,
            defaultBackground: null,
            currentForeground: null,
            currentBackground: null
        };
    }

    isSet() {
        return (this.get("currentForeground") != null) || (this.get("currentBackground") != null);
    }

    fg() {
        return this.get("currentForeground") || this.get("defaultForeground");
    }

    bg() {
        return this.get("currentBackground") || this.get("defaultBackground");
    }
}

class ScreenSectionCollection extends Backbone.Collection.extend({
    model: ScreenSection,
}) {
}

let ssc = new ScreenSectionCollection();

// Taken from a Fedora system, long long ago
ssc.add([
    new ScreenSection({id: "attachment", defaultForeground: Colours.get("brightmagenta"), defaultBackground: Colours.get("default")}),
    new ScreenSection({id: "error", defaultForeground: Colours.get("brightred"), defaultBackground: Colours.get("default")}),
    new ScreenSection({id: "hdrdefault", defaultForeground: Colours.get("red"), defaultBackground: Colours.get("default")}),
    new ScreenSection({id: "indicator", defaultForeground: Colours.get("brightyellow"), defaultBackground: Colours.get("red")}),
    new ScreenSection({id: "markers", defaultForeground: Colours.get("brightcyan"), defaultBackground: Colours.get("default")}),
    new ScreenSection({id: "message", defaultForeground: Colours.get("brightcyan"), defaultBackground: Colours.get("default")}),
    new ScreenSection({id: "normal", defaultForeground: Colours.get("default"), defaultBackground: Colours.get("default")}),
    new ScreenSection({id: "quoted", defaultForeground: Colours.get("brightblue"), defaultBackground: Colours.get("default")}),
    new ScreenSection({id: "search", defaultForeground: Colours.get("default"), defaultBackground: Colours.get("green")}),
    new ScreenSection({id: "signature", defaultForeground: Colours.get("red"), defaultBackground: Colours.get("default")}),
    new ScreenSection({id: "status", defaultForeground: Colours.get("yellow"), defaultBackground: Colours.get("blue")}),
    new ScreenSection({id: "tilde", defaultForeground: Colours.get("magenta"), defaultBackground: Colours.get("default")}),
    new ScreenSection({id: "tree", defaultForeground: Colours.get("magenta"), defaultBackground: Colours.get("default")})
]);

export default ssc;
