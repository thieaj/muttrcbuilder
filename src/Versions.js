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
            text: "unknown",
            category: "unknown",
            value: null
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

    currentValue() {
        return (this.get("value") == null) ? this.get("default") : this.get("value");
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
            attrs: null
        };
    }

    url() {
        return "config-" + this.get("id") + ".json";
    }

    parse(resp, options) {
    let attrs = resp.attrs.map(e => {
            e.category = Categories.get(e.id)
            e.category = e.category ? e.category.get("page") : "default";
            return new Attribute(e)
        });
        resp.attrs = new AttributeCollection();
    resp.attrs.add(attrs);
    return resp;
    }

    pages() {
        let ps = {}
        for(let attr of this.get("attrs").models) {
           ps[attr.get("category")] = 1;
        }
        ps = Object.keys(ps);
        ps.sort();
        return ps;
    }

    ensureFetched() {
        if (!this.get("attrs")) { return this.fetch(); }
    }
}

class VersionCollection extends Backbone.Collection.extend({
    model: Version
}) {}

export default new VersionCollection()
