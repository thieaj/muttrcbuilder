let Backbone = require("backbone");
Backbone.$ = require("jquery");

import Colours from "./Colours";
import Categories from "./Categories";
import ChooseFormatView from "./ChooseFormatView";
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
        "build/:version/categories": "buildCategories",
        "build/:version/full": "buildManual",
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

    chooseVersion() {
        let v = new VersionView({model: Versions.models});
        v.render();
        Backbone.$("#main").html(v.el);
    }

    optionPage(version, name) {
        let model = Versions.get(version);
        let doRender = () => {
            let v = new OptionPageView({model});
            v.render(name);
            Backbone.$("#main").html(v.el);
        };
        if (!model.needsLoading()) {
            return doRender();
        }
        Promise.all([
            Categories.fetch(),
            Colours.fetch(),
        ]).then(jq => {
            return model.fetch();
        }).then(jq => {
            doRender();
        });
    }

    start() {
        Backbone.history.start();
    }

    chooseBuildPage(version) {
        let model = Versions.get(version);
        let v = new ChooseFormatView({model});
        v.render(name);
        Backbone.$("#main").html(v.el);
    }
}

export default new Router();
