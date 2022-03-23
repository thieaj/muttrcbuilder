let _ = require("underscore");
let $ = require("jquery");
let Backbone = require("backbone");
Backbone.$ = $;

class VersionView extends Backbone.View.extend({
    template: _.template(`
<p>
    This site lets you create a <tt>muttrc</tt> configuration file for
    the <a href="http://www.mutt.org/">Mutt email program</a>. You
    specify your preferences in the boxes on the next few pages, and
    you get a muttrc configuration file you can use.
</p>
<p>
    The idea is based on netliberte's sadly-defunct muttrc builder.
</p>

<p>
     This service is provided in the hope that you'll find it useful,
     but no warranty is offered.
</p>

<h2>Ready? Let's Begin</h2>
<p>
    To start, please select which version of mutt you want to generate
    a config file for. If your version isn't listed, select the one
    with the closest version number.
</p>

<form>
    <p>
         <select name="version" id="version">
<% for(i = 0; i < versions.length; i++) { %>
             <option value="<%= versions[i].get('id') %>">mutt-<%= versions[i].get('id') %></option>
<% } %>
         </select>
         <button id="chooseVersion" type="button">Next</button>
    </p>

</form>
        `),

    events: {
        "click #chooseVersion": "displayOptionPage"
    }
}) {
    render() {
        this.$el.html(this.template({versions: this.model}));
        return this.$el;
    }

    displayOptionPage() {
        let vid = $("#version").val();
        Backbone.history.navigate(`options/${vid}/essential`, {trigger: true});
        this.close();
    }

    close() {
        this.remove();
        this.unbind();
    }
}

export default VersionView;
