let _ = require("underscore");
let $ = require("jquery")
let Backbone = require("backbone");
Backbone.$ = $

class OptionPageView extends Backbone.View.extend({
	template: _.template(`
<hr />
<form>
<p>
    <strong>Change page:</strong>
    <select name="page" id="page">
        <% for (let _page of version.pages()) { %>
	     <option<% if (_page == page) { %> selected="selected"<% } %>><%= _page %></option>
	<% } %>
         <option value="_color" >color</option>
         <option value="_finish">FINISH &amp; BUILD MUTTRC</option>
    </select>
    <button type="button" id="changePage">Change</button>
    <br />
    Once you're done, select <tt>finish &AMP; build muttrc</tt> from the list above.
</p>
    <% for (let option of options) { %>
        <hr />
        <h3><%= option.get("id") %></h3>
        <p>
            <strong>Type:</strong> <%= option.get("type") %>
            <strong>Default:</strong> <%= option.get("default") %>
        <p>
        <div class="htmldesc"><%= option.get("text") %></div>
        <% if (option.possibleValues()) { %>
        <select class="option" name="<%= option.get("id") %>">
        <% for(let v of option.possibleValues()) { %>
            <option value="<%= v %>"<% if (v == option.currentValue()) { %> selected="selected"<% } %>><%= v %></option>
        <% } %>
        </select>
        <% } else { %>
        <input class="option" name="<%= option.get("id") %>" value="<%= option.currentValue() %>" />
        <% } %>
    <% } %>
        `),

	events: {
		"click #changePage": "displayOptionPage",
                "change .option": "updateAttr"
	}
}) {
        updateAttr(e) {
            let formElement = $(e.target);
            this.model.get("attrs").get(formElement.attr("name")).set("value", formElement.val());
        }

	displayOptionPage() {
            let pg = $("#page").val();
            Backbone.history.navigate(`options/${this.model.get("id")}/${pg}`, {trigger: true});
            this.close();
	}

	render(page) {
		this.$el.html(this.template({version: this.model, page: page, options: this.model.get("attrs").where({"category": page})}));
		return this.$el;
	}

	close() {
		this.remove();
		this.unbind();
	}
}

export default OptionPageView;
