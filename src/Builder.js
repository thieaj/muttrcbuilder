let Backbone = require("backbone");
Backbone.$ = require("jquery");

import Colours from "./Colours";
import Categories from "./Categories";
import OptionPageView from "./OptionPageView";
import Versions from "./Versions";
import VersionView from "./VersionView";

class Router extends Backbone.Router.extend({
    routes: {
        "options/:version/:name": "optionPage",
        "colours/:version": "colourPage",
        "build/:version": "chooseBuildPage",
        "build/:version/minimal": "buildMinimal",
        "build/:version/all": "buildAllOptions",
        "build/:version/manual": "buildManual",
        "*path": "chooseVersion"
    }
}) {
    constructor() {
        super();
        this.versions = [];
    }

    addVersion(id) {
        let Version = Versions.model;
        Versions.add(new Version({id}));
    }

    chooseVersion(id) {
        let v = new VersionView({model: Versions.models});
        v.render();
        Backbone.$("body").html(v.el);
    }

    optionPage(version, name) {
        let model = Versions.get(version);
        Promise.all([
            Categories.fetch(),
            Colours.fetch(),
        ]).then(jq => {
            return model.fetch()
        }).then(jq => {
            let v = new OptionPageView({model});
            v.render(name);
            Backbone.$("body").html(v.el);
	});
    }

    start() {
        Backbone.history.start();
    }
}

export default new Router();
