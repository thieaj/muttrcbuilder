let Backbone = require("backbone");
Backbone.$ = require("jquery");

import Colours from "./Colours";

class ScreenSection extends Backbone.Model {
    defaults() {
        return {
            id: "(unknown)",
            fg: null,
            bg: null
        };
    }
}

class ScreenSectionCollection extends Backbone.Collection.extend({
    model: ScreenSection,
}) {
}

let ssc = new ScreenSectionCollection();

// Taken from a Fedora system, long long ago
ssc.add([
   new ScreenSection({id: "attachment", fg: Colours.get("brightmagenta"), bg: Colours.get("default")}),
   new ScreenSection({id: "error", fg: Colours.get("brightred"), bg: Colours.get("default")}),
   new ScreenSection({id: "hdrdefault", fg: Colours.get("red"), bg: Colours.get("default")}),
   new ScreenSection({id: "indicator", fg: Colours.get("brightyellow"), bg: Colours.get("red")}),
   new ScreenSection({id: "markers", fg: Colours.get("brightcyan"), bg: Colours.get("default")}),
   new ScreenSection({id: "message", fg: Colours.get("brightcyan"), bg: Colours.get("default")}),
   new ScreenSection({id: "normal", fg: Colours.get("default"), bg: Colours.get("default")}),
   new ScreenSection({id: "quoted", fg: Colours.get("brightblue"), bg: Colours.get("default")}),
   new ScreenSection({id: "search", fg: Colours.get("default"), bg: Colours.get("green")}),
   new ScreenSection({id: "signature", fg: Colours.get("red"), bg: Colours.get("default")}),
   new ScreenSection({id: "status", fg: Colours.get("yellow"), bg: Colours.get("blue")}),
   new ScreenSection({id: "tilde", fg: Colours.get("magenta"), bg: Colours.get("default")}),
   new ScreenSection({id: "tree", fg: Colours.get("magenta"), bg: Colours.get("default")})
]);

export default ssc;
