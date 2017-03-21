let _ = require("underscore");
let Backbone = require("backbone");
Backbone.$ = require("jquery");

class AttributeCategory extends Backbone.Model {
    defaults() {
        return {
            id: "unknown",
            page: "default"
        };
    }
}

class CategoryCollection extends Backbone.Collection.extend({
    model: AttributeCategory,
    url: "categories.json"
}) {
    parse(resp, options) {
        let res = [];
        for(let k of Object.keys(resp)) {
            res.push({id: k, page: resp[k]});
        }
        return res;
    }
}

export default new CategoryCollection();
