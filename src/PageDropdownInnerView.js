let _ = require("underscore");
let $ = require("jquery");
let Backbone = require("backbone");
Backbone.$ = $;

class PageDropdownInnerView extends Backbone.View.extend({
    template: _.template(`
    <strong>Change page:</strong>
    <select name="page" id="page">
        <% for (let _page of version.pages()) { %>
         <option<% if (_page == page) { %> selected="selected"<% } %>><%= _page %></option>
    <% } %>
         <option value="_colour" <% if (page == "_colour") { %> selected="selected"<% } %> >color</option>
         <option value="_finish">FINISH &amp; BUILD MUTTRC</option>
    </select>
    <br />
    Once you're done, select <tt>finish &AMP; build muttrc</tt> from the list above.
        `),

    events: {
        "change #page": "displayOptionPage",
    }
}) {
    updateAttr(e) {
        let formElement = $(e.target);
        this.model.get("attrs").get(formElement.attr("name")).set("value", formElement.val());
    }

    displayOptionPage() {
        let pg = $("#page").val();
        if (pg == "_finish") {
            Backbone.history.navigate(`build/${this.model.get("id")}`, {trigger: true});
        } else if (pg == "_colour") {
            Backbone.history.navigate(`colours/${this.model.get("id")}`, {trigger: true});
        } else {
            Backbone.history.navigate(`options/${this.model.get("id")}/${pg}`, {trigger: true});
        }
        this.close();
    }

    render(page) {
        this.$el.html(this.template({version: this.model, page: page}));
        return this.$el;
    }
}

export default PageDropdownInnerView;
