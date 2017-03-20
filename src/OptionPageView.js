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
    <select name="page">
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
        <input class="option" name="opt_<%= option.get("id") %>" id="opt_<%= option.get("id") %>" value="<%= option.get("default") %>" />
    <% } %>
        `),

	events: {
	}
}) {
	render(page) {
		this.$el.html(this.template({version: this.model, page: page, options: this.model.get("attributes").models}));
		return this.$el;
	}

	close() {
		this.remove();
		this.unbind();
	}
}

export default OptionPageView;
