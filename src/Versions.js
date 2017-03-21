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

    possibleValues() {
        let _reverse = (v) => {[].concat(...v.map((v2) => [v2, "reverse-" + v2]))};
        let t = this.get("type");
        if (t == "boolean") {
            return ["yes", "no"];
        } else if (t == "quadoption") {
            return ["yes", "ask-yes", "ask-no", "no"];
        } else if (t == "folder magic") {
            return ["mbox", "MMDF", "MH", "Maildir"];
        } else if (t == "sort order") {
            let n = this.get("name");
            if (n == "sort_alias") {
                return ["address", "alias", "unsorted"];
            } else if (n == "sort_browser") {
                return _reverse(["alpha", "data", "size", "unsorted"]);
            } else {
                return _reverse(["date", "date-received", "from", "mailbox-order", "score", "size", "spam", "subject", "threads", "to"]);
            }
        } else {
            return null;
        }
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
