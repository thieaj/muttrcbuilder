let _ = require("underscore");
let $ = require("jquery");
let Backbone = require("backbone");
Backbone.$ = $;

class ChooseFormatView extends Backbone.View.extend({
    template: _.template(`
<form>
  <p>How would you like your <tt>muttrc</tt> formatted?</p>
  <p>
    <label>
      <input type="radio" name="format" value="minimal" />
      Only print out the values that are different from the default.
    </label>
    <br />
    <label>
      <input type="radio" name="format" value="all" checked="checked" />
      Print out all values, with values that are their default
      commented out.
    </label>
    <br />
    <label>
      <input type="radio" name="format" value="categories" />
      As above, but organised by category.
    </label>
    <br />
    <label>
      <input type="radio" name="format" value="full" />
      Print out the variable reference section of the mutt manual, with
      the variables filled in.
    </label>
  </p>
  <p>
    <button type="button" id="chooseFormat">Build my muttrc</button>
  </p>
</form>
        `),

    events: {
        "click #chooseFormat": "formatSelected"
    }
}) {
    render() {
        this.$el.html(this.template({versions: this.model}));
        return this.$el;
    }

    formatSelected() {
        let format = $("input[name='format']:checked").val();
        Backbone.history.navigate(`build/${this.model.get("id")}/${format}`, {trigger: true});
        this.close();
    }

    close() {
        this.remove();
        this.unbind();
    }
}

export default ChooseFormatView;
