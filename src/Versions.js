let _ = require("underscore");
let Backbone = require("backbone");
Backbone.$ = require("jquery");

import Categories from "./Categories";

class Attribute extends Backbone.Model {
    defaults() {
        return {
            id: "unknown",
            default: "unknown",
            type: "unknown",
            text: "unknown"
        };
    }
}

class AttributeCollection extends Backbone.Collection.extend({
    model: Attribute
}) {}

class Version extends Backbone.Model {
    defaults() {
        return {
            id: "unknown",
            text: "unknown",
            attributes: new AttributeCollection()
        };
    }

    url() {
        return "config-v" + this.get("id") + ".json";
    }

    parse(resp, options) {
	let attrs = resp.attributes.map(e => new Attribute(e));
        resp.attributes = new AttributeCollection();
	resp.attributes.add(attrs);
	return resp;
    }

    pages() {
        let ps = {}
        for(let attr of this.get("attributes").models) {
           let cat = Categories.get(attr.id);
           let page = cat ? cat.get("page") : null
           ps[page || "default"] = 1;
        }
        ps = Object.keys(ps);
        ps.sort();
        return ps;
    }
}

class VersionCollection extends Backbone.Collection.extend({
    model: Version
}) {}

export default new VersionCollection()
