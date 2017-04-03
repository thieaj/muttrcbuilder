let _ = require("underscore");
let $ = require("jquery");
let Backbone = require("backbone");
Backbone.$ = $;

import Colours from "./Colours";
import ScreenSections from "./ScreenSections";

class ColourPageView extends Backbone.View.extend({
    template: _.template(`
<hr />
<form>
<p>
    <strong>Change page:</strong>
    <select name="page" id="page">
        <% for (let _page of version.pages()) { %>
         <option<% if (_page == page) { %> selected="selected"<% } %>><%= _page %></option>
    <% } %>
         <option value="_colour" >color</option>
         <option value="_finish">FINISH &amp; BUILD MUTTRC</option>
    </select>
    <button type="button" id="changePage">Change</button>
    <br />
    Once you're done, select <tt>finish &AMP; build muttrc</tt> from the list above.
</p>
<pre class="normal mockScreen" width="80">
<span class="status">i:Exit  -:PrevPg  <Space>:NextPg v:View Attachm.  d:Del  r:Reply  j:Next ?:Help        </span>

  26     Jul 28 Foo Bar        (3.9K) Your telephone call...                    
  27     Jul 28 Someone Else   (1.6K) <span class="tree">+-></span>                                       
  28   + Jul 28 John Smith     (  62)  <span class="tree">+-></span>                                      
<span class="indicator">  29 O F Jul 28 To Foo Bar     (   5) Test                                      </span>

<span class="status">-*-Mutt: imap://euphrates/INBOX [Msgs:29]---(threads/date)--------------(end)---</span>
<span class="hdrdefault">
Date: Thu, 28 Jul 2005 16:26:37 +0100                                           
From: A friend &lt;friend@example.com&gt;                                             
To: Me &lt;me@example.org&gt;                                                         
Subject: New email                                                              
User-Agent: Mutt/1.5.9i                                                         
X-SA-Exim-Scanned: No (on mail.example.com); Mail filter running algorithm was  
<span class="markers">+</span>false                                                                          
X-Delivered-To: me@example.org                                                  
</span>
                                                                                
<span class="quoted">&gt; Test message                                                                  </span>

Yes <span class="search">that</span> works.                                                                 
<span class="signature">--                                                                              
Foo Bar                                  Acme Widgets Ltd                       </span>

<span class="tilde">~</span>                                                                               
<span class="tilde">~</span>                                                                               
<span class="tilde">~</span>                                                                               
<span class="status">-O F- 29/29: Foo Bar                 Test                              -- (87%) </span>

<span class="message">30 kept, 1 deleted.</span>                                                             
</pre>
<form>
<table>
<tr><th>Section</th><th>Foreground</th><th>Background</th></tr>
<% for (let sec of sections.models) { %>
<tr><td><%= sec.get("id") %></td>
<% for (let col of ["fg", "bg"]) { %>
<td>
<select name="<%= sec.get("id") %>_<%= col %>" class="colourSelector">
<% for (let colour of colours.models) { %>
<option value="<%= colour.get("id") %>"
<% if (sec[col]().get("id") == colour.get("id")) { %>selected="selected"<% } %>
><%= colour.get("id") %></option>
<% } %>
</section>
</td>
<% } %>
</tr>
<% } %>
</p>
</form>
        `),

    events: {
        "click #changePage": "displayOptionPage",
        "change .colourSelector": "updateColours"
    }
}) {
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

    updateColours(e) {
        let formElement = $(e.target);
        let eleParts = formElement.attr("name").split("_");
        ScreenSections.get(eleParts[0]).set(
            eleParts[1] == "fg" ? "currentForeground" : "currentBackground",
            Colours.get(formElement.val())
        );
        this.updateCSS();
    }

    updateCSS() {
        for (let sec of ScreenSections.models) {
            let nodes = this.$el.find("." + sec.get("id"));
            nodes.css("color", sec.fg().get("css"));
            nodes.css("backgroundColor", sec.bg().get("css"));
        }
    }

    render(page) {
        this.$el.html(this.template({version: this.model, page: page, sections: ScreenSections, colours: Colours}));
        this.updateCSS();
        return this.$el;
    }

    close() {
        this.remove();
        this.unbind();
    }
}

export default ColourPageView;
