package Mutt::Config::Version::v1_5_21;


$VARIABLES = {
	
'abort_nosubject' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '



<p>
If set to <em>yes</em>, when composing messages and no subject is given
at the subject prompt, composition will be aborted.  If set to
<em>no</em>, composing messages with no subject given at the subject
prompt will never be aborted.
</p>
'
},

'abort_unmodified' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '



<p>
If set to <em>yes</em>, composition will automatically abort after
editing the message body if no changes are made to the file (this
check only happens after the <em>first</em> edit of the file).  When set
to <em>no</em>, composition will never be aborted.
</p>
'
},

'alias_file' => {
'default' => '~/.muttrc',
'type' => 'path',
'text' => '



<p>
The default file in which to save aliases created by the
<a href="http://www.mutt.org/doc/manual/manual-6.html#create-alias"><create-alias></a> function. Entries added to this file are
encoded in the character set specified by <a href="http://www.mutt.org/doc/manual/manual-6.html#config-charset">$config_charset</a> if it
is <em>set</em> or the current character set otherwise.
</p>
<p>
<em>Note:</em> Mutt will not automatically source this file; you must
explicitly use the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#source">source</a></tt> command for it to be executed in case
this option points to a dedicated alias file.
</p>
<p>
The default for this option is the currently used muttrc file, or
<tt>~/.muttrc</tt> if no user muttrc was found.
</p>
'
},

'alias_format' => {
'default' => '%4n %2f %t %-10a   %r',
'type' => 'string',
'text' => '



<p>
Specifies the format of the data displayed for the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#alias">alias</a></tt> menu.  The
following printf(3)-style sequences are available:

</p>

<table>


<tr><td>%a </td><td>alias name
</td></tr>
<tr><td>%f </td><td>flags - currently, a <tt>d</tt> for an alias marked for deletion
</td></tr>
<tr><td>%n </td><td>index number
</td></tr>
<tr><td>%r </td><td>address which alias expands to
</td></tr>
<tr><td>%t </td><td>character which indicates if the alias is tagged for inclusion
</td></tr></table>
'
},

'allow_8bit' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Controls whether 8-bit data is converted to 7-bit using either Quoted-
Printable or Base64 encoding when sending mail.
</p>
'
},

'allow_ansi' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Controls whether ANSI color codes in messages (and color tags in
rich text messages) are to be interpreted.
Messages containing these codes are rare, but if this option is <em>set</em>,
their text will be colored accordingly. Note that this may override
your color choices, and even present a security problem, since a
message could include a line like

</p>

<pre>

[-- PGP output follows ...

</pre>
<p>
and give it the same color as your attachment color (see also
<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-timestamp">$crypt_timestamp</a>).
</p>
'
},

'arrow_cursor' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, an arrow (<tt>-></tt>) will be used to indicate the current entry
in menus instead of highlighting the whole line.  On slow network or modem
links this will make response faster because there is less that has to
be redrawn on the screen when moving to the next or previous entries
in the menu.
</p>
'
},

'ascii_chars' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, Mutt will use plain ASCII characters when displaying thread
and attachment trees, instead of the default <em>ACS</em> characters.
</p>
'
},

'askbcc' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, Mutt will prompt you for blind-carbon-copy (Bcc) recipients
before editing an outgoing message.
</p>
'
},

'askcc' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, Mutt will prompt you for carbon-copy (Cc) recipients before
editing the body of an outgoing message.
</p>
'
},

'assumed_charset' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This variable is a colon-separated list of character encoding
schemes for messages without character encoding indication.
Header field values and message body content without character encoding
indication would be assumed that they are written in one of this list.
By default, all the header fields and message body without any charset
indication are assumed to be in <tt>us-ascii</tt>.
</p>
<p>
For example, Japanese users might prefer this:

</p>

<pre>

set assumed_charset="iso-2022-jp:euc-jp:shift_jis:utf-8"

</pre>
<p>
However, only the first content is valid for the message body.
</p>
'
},

'attach_charset' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This variable is a colon-separated list of character encoding
schemes for text file attachments. Mutt uses this setting to guess
which encoding files being attached are encoded in to convert them to
a proper character set given in <a href="http://www.mutt.org/doc/manual/manual-6.html#send-charset">$send_charset</a>.
</p>
<p>
If <em>unset</em>, the value of <a href="http://www.mutt.org/doc/manual/manual-6.html#charset">$charset</a> will be used instead.
For example, the following configuration would work for Japanese
text handling:

</p>

<pre>

set attach_charset="iso-2022-jp:euc-jp:shift_jis:utf-8"

</pre>
<p>
Note: for Japanese users, <tt>iso-2022-*</tt> must be put at the head
of the value as shown above if included.
</p>
'
},

'attach_format' => {
'default' => '%u%D%I %t%4n %T%.40d%> [%.7m/%.10M, %.6e%?C?, %C?, %s] ',
'type' => 'string',
'text' => '



<p>
This variable describes the format of the <tt>attachment</tt> menu.  The
following printf(3)-style sequences are understood:

</p>

<table>


<tr><td>%C  </td><td>charset
</td></tr>
<tr><td>%c  </td><td>requires charset conversion (<tt>n</tt> or <tt>c</tt>)
</td></tr>
<tr><td>%D  </td><td>deleted flag
</td></tr>
<tr><td>%d  </td><td>description
</td></tr>
<tr><td>%e  </td><td>MIME content-transfer-encoding
</td></tr>
<tr><td>%f  </td><td>filename
</td></tr>
<tr><td>%I  </td><td>disposition (<tt>I</tt> for inline, <tt>A</tt> for attachment)
</td></tr>
<tr><td>%m  </td><td>major MIME type
</td></tr>
<tr><td>%M  </td><td>MIME subtype
</td></tr>
<tr><td>%n  </td><td>attachment number
</td></tr>
<tr><td>%Q  </td><td><tt>Q</tt>, if MIME part qualifies for attachment counting
</td></tr>
<tr><td>%s  </td><td>size
</td></tr>
<tr><td>%t  </td><td>tagged flag
</td></tr>
<tr><td>%T  </td><td>graphic tree characters
</td></tr>
<tr><td>%u  </td><td>unlink (=to delete) flag
</td></tr>
<tr><td>%X  </td><td>number of qualifying MIME parts in this part and its children
(please see the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#attachments">attachments</a></tt> section for possible speed effects)
</td></tr>
<tr><td>%>X </td><td>right justify the rest of the string and pad with character <tt>X</tt>
</td></tr>
<tr><td>%|X </td><td>pad to the end of the line with character <tt>X</tt>
</td></tr>
<tr><td>%*X </td><td>soft-fill with character <tt>X</tt> as pad
</td></tr></table>

<p>
For an explanation of <tt>soft-fill</tt>, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a> documentation.
</p>
'
},

'attach_sep' => {
'default' => '\n',
'type' => 'string',
'text' => '



<p>
The separator to add between attachments when operating (saving,
printing, piping, etc) on a list of tagged attachments.
</p>
'
},

'attach_split' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If this variable is <em>unset</em>, when operating (saving, printing, piping,
etc) on a list of tagged attachments, Mutt will concatenate the
attachments and will operate on them as a single attachment. The
<a href="http://www.mutt.org/doc/manual/manual-6.html#attach-sep">$attach_sep</a> separator is added after each attachment. When <em>set</em>,
Mutt will operate on the attachments one by one.
</p>
'
},

'attribution' => {
'default' => 'On %d, %n wrote:',
'type' => 'string',
'text' => '



<p>
This is the string that will precede a message which has been included
in a reply.  For a full listing of defined printf(3)-like sequences see
the section on <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a>.
</p>
'
},

'auto_tag' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, functions in the <em>index</em> menu which affect a message
will be applied to all tagged messages (if there are any).  When
unset, you must first use the <tag-prefix> function (bound to <tt>;</tt>
by default) to make the next function apply to all tagged messages.
</p>
'
},

'autoedit' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em> along with <a href="http://www.mutt.org/doc/manual/manual-6.html#edit-headers">$edit_headers</a>, Mutt will skip the initial
send-menu (prompting for subject and recipients) and allow you to
immediately begin editing the body of your
message.  The send-menu may still be accessed once you have finished
editing the body of your message.
</p>
<p>
<em>Note:</em> when this option is <em>set</em>, you cannot use send-hooks that depend
on the recipients when composing a new (non-reply) message, as the initial
list of recipients is empty.
</p>
<p>
Also see <a href="http://www.mutt.org/doc/manual/manual-6.html#fast-reply">$fast_reply</a>.
</p>
'
},

'beep' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When this variable is <em>set</em>, mutt will beep when an error occurs.
</p>
'
},

'beep_new' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When this variable is <em>set</em>, mutt will beep whenever it prints a message
notifying you of new mail.  This is independent of the setting of the
<a href="http://www.mutt.org/doc/manual/manual-6.html#beep">$beep</a> variable.
</p>
'
},

'bounce' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '



<p>
Controls whether you will be asked to confirm bouncing messages.
If set to <em>yes</em> you don\'t get asked if you want to bounce a
message. Setting this variable to <em>no</em> is not generally useful,
and thus not recommended, because you are unable to bounce messages.
</p>
'
},

'bounce_delivered' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When this variable is <em>set</em>, mutt will include Delivered-To headers when
bouncing messages.  Postfix users may wish to <em>unset</em> this variable.
</p>
'
},

'braille_friendly' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When this variable is <em>set</em>, mutt will place the cursor at the beginning
of the current line in menus, even when the <a href="http://www.mutt.org/doc/manual/manual-6.html#arrow-cursor">$arrow_cursor</a> variable
is <em>unset</em>, making it easier for blind persons using Braille displays to
follow these menus.  The option is <em>unset</em> by default because many
visual terminals don\'t permit making the cursor invisible.
</p>
'
},

'certificate_file' => {
'default' => '~/.mutt_certificates',
'type' => 'path',
'text' => '



<p>
This variable specifies the file where the certificates you trust
are saved. When an unknown certificate is encountered, you are asked
if you accept it or not. If you accept it, the certificate can also
be saved in this file and further connections are automatically
accepted.
</p>
<p>
You can also manually add CA certificates in this file. Any server
certificate that is signed with one of these CA certificates is
also automatically accepted.
</p>
<p>
Example:

</p>

<pre>

set certificate_file=~/.mutt/certificates

</pre>
'
},

'charset' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
Character set your terminal uses to display and enter textual data.
It is also the fallback for <a href="http://www.mutt.org/doc/manual/manual-6.html#send-charset">$send_charset</a>.
</p>
<p>
Upon startup Mutt tries to derive this value from environment variables
such as $LC_CTYPE or $LANG.
</p>
<p>
<em>Note:</em> It should only be set in case Mutt isn\'t able to determine the
character set used correctly.
</p>
'
},

'check_mbox_size' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When this variable is <em>set</em>, mutt will use file size attribute instead of
access time when checking for new mail in mbox and mmdf folders.
</p>
<p>
This variable is <em>unset</em> by default and should only be enabled when
new mail detection for these folder types is unreliable or doesn\'t work.
</p>
<p>
Note that enabling this variable should happen before any <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#mailboxes">mailboxes</a></tt>
directives occur in configuration files regarding mbox or mmdf folders
because mutt needs to determine the initial new mail status of such a
mailbox by performing a fast mailbox scan when it is defined.
Afterwards the new mail status is tracked by file size changes.
</p>
'
},

'check_new' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
<em>Note:</em> this option only affects <em>maildir</em> and <em>MH</em> style
mailboxes.
</p>
<p>
When <em>set</em>, Mutt will check for new mail delivered while the
mailbox is open.  Especially with MH mailboxes, this operation can
take quite some time since it involves scanning the directory and
checking each file to see if it has already been looked at.  If
this variable is <em>unset</em>, no check for new mail is performed
while the mailbox is open.
</p>
'
},

'collapse_unread' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>unset</em>, Mutt will not collapse a thread if it contains any
unread messages.
</p>
'
},

'compose_format' => {
'default' => '-- Mutt: Compose  [Approx. msg size: %l   Atts: %a]%>-',
'type' => 'string',
'text' => '



<p>
Controls the format of the status line displayed in the <tt>compose</tt>
menu.  This string is similar to <a href="http://www.mutt.org/doc/manual/manual-6.html#status-format">$status_format</a>, but has its own
set of printf(3)-like sequences:

</p>

<table>


<tr><td>%a </td><td>total number of attachments
</td></tr>
<tr><td>%h </td><td>local hostname
</td></tr>
<tr><td>%l </td><td>approximate size (in bytes) of the current message
</td></tr>
<tr><td>%v </td><td>Mutt version string
</td></tr></table>

<p>
See the text describing the <a href="http://www.mutt.org/doc/manual/manual-6.html#status-format">$status_format</a> option for more
information on how to set <a href="http://www.mutt.org/doc/manual/manual-6.html#compose-format">$compose_format</a>.
</p>
'
},

'config_charset' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
When defined, Mutt will recode commands in rc files from this
encoding to the current character set as specified by <a href="http://www.mutt.org/doc/manual/manual-6.html#charset">$charset</a>
and aliases written to <a href="http://www.mutt.org/doc/manual/manual-6.html#alias-file">$alias_file</a> from the current character set.
</p>
<p>
Please note that if setting <a href="http://www.mutt.org/doc/manual/manual-6.html#charset">$charset</a> it must be done before
setting <a href="http://www.mutt.org/doc/manual/manual-6.html#config-charset">$config_charset</a>.
</p>
<p>
Recoding should be avoided as it may render unconvertable
characters as question marks which can lead to undesired
side effects (for example in regular expressions).
</p>
'
},

'confirmappend' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, Mutt will prompt for confirmation when appending messages to
an existing mailbox.
</p>
'
},

'confirmcreate' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, Mutt will prompt for confirmation when saving messages to a
mailbox which does not yet exist before creating it.
</p>
'
},

'connect_timeout' => {
'default' => '30',
'type' => 'number',
'text' => '



<p>
Causes Mutt to timeout a network connection (for IMAP, POP or SMTP) after this
many seconds if the connection is not able to be established.  A negative
value causes Mutt to wait indefinitely for the connection attempt to succeed.
</p>
'
},

'content_type' => {
'default' => 'text/plain',
'type' => 'string',
'text' => '



<p>
Sets the default Content-Type for the body of newly composed messages.
</p>
'
},

'copy' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '



<p>
This variable controls whether or not copies of your outgoing messages
will be saved for later references.  Also see <a href="http://www.mutt.org/doc/manual/manual-6.html#record">$record</a>,
<a href="http://www.mutt.org/doc/manual/manual-6.html#save-name">$save_name</a>, <a href="http://www.mutt.org/doc/manual/manual-6.html#force-name">$force_name</a> and <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#fcc-hook">fcc-hook</a></tt>.
</p>
'
},

'crypt_autoencrypt' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Setting this variable will cause Mutt to always attempt to PGP
encrypt outgoing messages.  This is probably only useful in
connection to the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#send-hook">send-hook</a></tt> command.  It can be overridden
by use of the pgp menu, when encryption is not required or
signing is requested as well.  If <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-is-default">$smime_is_default</a> is <em>set</em>,
then OpenSSL is used instead to create S/MIME messages and
settings can be overridden by use of the smime menu instead.
(Crypto only)
</p>
'
},

'crypt_autopgp' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
This variable controls whether or not mutt may automatically enable
PGP encryption/signing for messages.  See also <a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-autoencrypt">$crypt_autoencrypt</a>,
<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replyencrypt">$crypt_replyencrypt</a>,
<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-autosign">$crypt_autosign</a>, <a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replysign">$crypt_replysign</a> and <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-is-default">$smime_is_default</a>.
</p>
'
},

'crypt_autosign' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Setting this variable will cause Mutt to always attempt to
cryptographically sign outgoing messages.  This can be overridden
by use of the pgp menu, when signing is not required or
encryption is requested as well. If <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-is-default">$smime_is_default</a> is <em>set</em>,
then OpenSSL is used instead to create S/MIME messages and settings can
be overridden by use of the smime menu instead of the pgp menu.
(Crypto only)
</p>
'
},

'crypt_autosmime' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
This variable controls whether or not mutt may automatically enable
S/MIME encryption/signing for messages. See also <a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-autoencrypt">$crypt_autoencrypt</a>,
<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replyencrypt">$crypt_replyencrypt</a>,
<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-autosign">$crypt_autosign</a>, <a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replysign">$crypt_replysign</a> and <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-is-default">$smime_is_default</a>.
</p>
'
},

'crypt_replyencrypt' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, automatically PGP or OpenSSL encrypt replies to messages which are
encrypted.
(Crypto only)
</p>
'
},

'crypt_replysign' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, automatically PGP or OpenSSL sign replies to messages which are
signed.
</p>
<p>
<em>Note:</em> this does not work on messages that are encrypted
<em>and</em> signed!
(Crypto only)
</p>
'
},

'crypt_replysignencrypted' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, automatically PGP or OpenSSL sign replies to messages
which are encrypted. This makes sense in combination with
<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replyencrypt">$crypt_replyencrypt</a>, because it allows you to sign all
messages which are automatically encrypted.  This works around
the problem noted in <a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replysign">$crypt_replysign</a>, that mutt is not able
to find out whether an encrypted message is also signed.
(Crypto only)
</p>
'
},

'crypt_timestamp' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, mutt will include a time stamp in the lines surrounding
PGP or S/MIME output, so spoofing such lines is more difficult.
If you are using colors to mark these lines, and rely on these,
you may <em>unset</em> this setting.
(Crypto only)
</p>
'
},

'crypt_use_gpgme' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
This variable controls the use of the GPGME-enabled crypto backends.
If it is <em>set</em> and Mutt was built with gpgme support, the gpgme code for
S/MIME and PGP will be used instead of the classic code.  Note that
you need to set this option in .muttrc; it won\'t have any effect when
used interactively.
</p>
'
},

'crypt_use_pka' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Controls whether mutt uses PKA
(see http://www.g10code.de/docs/pka-intro.de.pdf) during signature
verification (only supported by the GPGME backend).
</p>
'
},

'crypt_verify_sig' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '



<p>
If <em><tt>yes</tt></em>, always attempt to verify PGP or S/MIME signatures.
If <em><tt>ask-*</tt></em>, ask whether or not to verify the signature.
If <em><tt>no</tt></em>, never attempt to verify cryptographic signatures.
(Crypto only)
</p>
'
},

'date_format' => {
'default' => '!%a, %b %d, %Y at %I:%M:%S%p %Z',
'type' => 'string',
'text' => '



<p>
This variable controls the format of the date printed by the <tt>%d</tt>
sequence in <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a>.  This is passed to the strftime(3)
function to process the date, see the man page for the proper syntax.
</p>
<p>
Unless the first character in the string is a bang (<tt>!</tt>), the month
and week day names are expanded according to the locale specified in
the variable <a href="http://www.mutt.org/doc/manual/manual-6.html#locale">$locale</a>. If the first character in the string is a
bang, the bang is discarded, and the month and week day names in the
rest of the string are expanded in the <em>C</em> locale (that is in US
English).
</p>
'
},

'default_hook' => {
'default' => '~f %s !~P | (~P ~C %s)',
'type' => 'string',
'text' => '



<p>
This variable controls how <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#message-hook">message-hook</a></tt>, <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#reply-hook">reply-hook</a></tt>, <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#send-hook">send-hook</a></tt>,
<tt><a href="http://www.mutt.org/doc/manual/manual-6.html#send2-hook">send2-hook</a></tt>, <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#save-hook">save-hook</a></tt>, and <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#fcc-hook">fcc-hook</a></tt> will
be interpreted if they are specified with only a simple regexp,
instead of a matching pattern.  The hooks are expanded when they are
declared, so a hook will be interpreted according to the value of this
variable at the time the hook is declared.
</p>
<p>
The default value matches
if the message is either from a user matching the regular expression
given, or if it is from you (if the from address matches
<tt><a href="http://www.mutt.org/doc/manual/manual-6.html#alternates">alternates</a></tt>) and is to or cc\'ed to a user matching the given
regular expression.
</p>
'
},

'delete' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '



<p>
Controls whether or not messages are really deleted when closing or
synchronizing a mailbox.  If set to <em>yes</em>, messages marked for
deleting will automatically be purged without prompting.  If set to
<em>no</em>, messages marked for deletion will be kept in the mailbox.
</p>
'
},

'delete_untag' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If this option is <em>set</em>, mutt will untag messages when marking them
for deletion.  This applies when you either explicitly delete a message,
or when you save it to another folder.
</p>
'
},

'digest_collapse' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If this option is <em>set</em>, mutt\'s received-attachments menu will not show the subparts of
individual messages in a multipart/digest.  To see these subparts, press <tt>v</tt> on that menu.
</p>
'
},

'display_filter' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
When set, specifies a command used to filter messages.  When a message
is viewed it is passed as standard input to <a href="http://www.mutt.org/doc/manual/manual-6.html#display-filter">$display_filter</a>, and the
filtered message is read from the standard output.
</p>
'
},

'dotlock_program' => {
'default' => '/usr/local/bin/mutt_dotlock',
'type' => 'path',
'text' => '



<p>
Contains the path of the mutt_dotlock(8) binary to be used by
mutt.
</p>
'
},

'dsn_notify' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This variable sets the request for when notification is returned.  The
string consists of a comma separated list (no spaces!) of one or more
of the following: <em>never</em>, to never request notification,
<em>failure</em>, to request notification on transmission failure,
<em>delay</em>, to be notified of message delays, <em>success</em>, to be
notified of successful transmission.
</p>
<p>
Example:

</p>

<pre>

set dsn_notify="failure,delay"

</pre>
<p>
<em>Note:</em> when using <a href="http://www.mutt.org/doc/manual/manual-6.html#sendmail">$sendmail</a> for delivery, you should not enable
this unless you are either using Sendmail 8.8.x or greater or a MTA
providing a sendmail(1)-compatible interface supporting the -N option
for DSN. For SMTP delivery, DSN support is auto-detected so that it
depends on the server whether DSN will be used or not.
</p>
'
},

'dsn_return' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This variable controls how much of your message is returned in DSN
messages.  It may be set to either <em>hdrs</em> to return just the
message header, or <em>full</em> to return the full message.
</p>
<p>
Example:

</p>

<pre>

set dsn_return=hdrs

</pre>
<p>
<em>Note:</em> when using <a href="http://www.mutt.org/doc/manual/manual-6.html#sendmail">$sendmail</a> for delivery, you should not enable
this unless you are either using Sendmail 8.8.x or greater or a MTA
providing a sendmail(1)-compatible interface supporting the -R option
for DSN. For SMTP delivery, DSN support is auto-detected so that it
depends on the server whether DSN will be used or not.
</p>
'
},

'duplicate_threads' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
This variable controls whether mutt, when <a href="http://www.mutt.org/doc/manual/manual-6.html#sort">$sort</a> is set to <em>threads</em>, threads
messages with the same Message-Id together.  If it is <em>set</em>, it will indicate
that it thinks they are duplicates of each other with an equals sign
in the thread tree.
</p>
'
},

'edit_headers' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
This option allows you to edit the header of your outgoing messages
along with the body of your message.
</p>
<p>
<em>Note</em> that changes made to the References: and Date: headers are
ignored for interoperability reasons.
</p>
'
},

'editor' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
This variable specifies which editor is used by mutt.
It defaults to the value of the $VISUAL, or $EDITOR, environment
variable, or to the string <tt>vi</tt> if neither of those are set.
</p>
'
},

'encode_from' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will quoted-printable encode messages when
they contain the string <tt>From </tt> (note the trailing space) in the beginning of a line.
This is useful to avoid the tampering certain mail delivery and transport
agents tend to do with messages (in order to prevent tools from
misinterpreting the line as a mbox message separator).
</p>
'
},

'entropy_file' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
The file which includes random data that is used to initialize SSL
library functions.
</p>
'
},

'envelope_from_address' => {
'default' => '(empty)',
'type' => 'e-mail address',
'text' => '



<p>
Manually sets the <em>envelope</em> sender for outgoing messages.
This value is ignored if <a href="http://www.mutt.org/doc/manual/manual-6.html#use-envelope-from">$use_envelope_from</a> is <em>unset</em>.
</p>
'
},

'escape' => {
'default' => '~',
'type' => 'string',
'text' => '



<p>
Escape character to use for functions in the built-in editor.
</p>
'
},

'fast_reply' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, the initial prompt for recipients and subject are skipped
when replying to messages, and the initial prompt for subject is
skipped when forwarding messages.
</p>
<p>
<em>Note:</em> this variable has no effect when the <a href="http://www.mutt.org/doc/manual/manual-6.html#autoedit">$autoedit</a>
variable is <em>set</em>.
</p>
'
},

'fcc_attach' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '



<p>
This variable controls whether or not attachments on outgoing messages
are saved along with the main body of your message.
</p>
'
},

'fcc_clear' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When this variable is <em>set</em>, FCCs will be stored unencrypted and
unsigned, even when the actual message is encrypted and/or
signed.
(PGP only)
</p>
'
},

'folder' => {
'default' => '~/Mail',
'type' => 'path',
'text' => '



<p>
Specifies the default location of your mailboxes.  A <tt>+</tt> or <tt>=</tt> at the
beginning of a pathname will be expanded to the value of this
variable.  Note that if you change this variable (from the default)
value you need to make sure that the assignment occurs <em>before</em>
you use <tt>+</tt> or <tt>=</tt> for any other variables since expansion takes place
when handling the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#mailboxes">mailboxes</a></tt> command.
</p>
'
},

'folder_format' => {
'default' => '%2C %t %N %F %2l %-8.8u %-8.8g %8s %d %f',
'type' => 'string',
'text' => '



<p>
This variable allows you to customize the file browser display to your
personal taste.  This string is similar to <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a>, but has
its own set of printf(3)-like sequences:

</p>

<table>


<tr><td>%C  </td><td>current file number
</td></tr>
<tr><td>%d  </td><td>date/time folder was last modified
</td></tr>
<tr><td>%D  </td><td>date/time folder was last modified using <a href="http://www.mutt.org/doc/manual/manual-6.html#date-format">$date_format</a>.
</td></tr>
<tr><td>%f  </td><td>filename (<tt>/</tt> is appended to directory names,
<tt>@</tt> to symbolic links and <tt>*</tt> to executable
files)
</td></tr>
<tr><td>%F  </td><td>file permissions
</td></tr>
<tr><td>%g  </td><td>group name (or numeric gid, if missing)
</td></tr>
<tr><td>%l  </td><td>number of hard links
</td></tr>
<tr><td>%N  </td><td>N if folder has new mail, blank otherwise
</td></tr>
<tr><td>%s  </td><td>size in bytes
</td></tr>
<tr><td>%t  </td><td><tt>*</tt> if the file is tagged, blank otherwise
</td></tr>
<tr><td>%u  </td><td>owner name (or numeric uid, if missing)
</td></tr>
<tr><td>%>X </td><td>right justify the rest of the string and pad with character <tt>X</tt>
</td></tr>
<tr><td>%|X </td><td>pad to the end of the line with character <tt>X</tt>
</td></tr>
<tr><td>%*X </td><td>soft-fill with character <tt>X</tt> as pad
</td></tr></table>

<p>
For an explanation of <tt>soft-fill</tt>, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a> documentation.
</p>
'
},

'followup_to' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Controls whether or not the <tt>Mail-Followup-To:</tt> header field is
generated when sending mail.  When <em>set</em>, Mutt will generate this
field when you are replying to a known mailing list, specified with
the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#subscribe">subscribe</a></tt> or <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#lists">lists</a></tt> commands.
</p>
<p>
This field has two purposes.  First, preventing you from
receiving duplicate copies of replies to messages which you send
to mailing lists, and second, ensuring that you do get a reply
separately for any messages sent to known lists to which you are
not subscribed.
</p>
<p>
The header will contain only the list\'s address
for subscribed lists, and both the list address and your own
email address for unsubscribed lists.  Without this header, a
group reply to your message sent to a subscribed list will be
sent to both the list and your address, resulting in two copies
of the same email for you.
</p>
'
},

'force_name' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
This variable is similar to <a href="http://www.mutt.org/doc/manual/manual-6.html#save-name">$save_name</a>, except that Mutt will
store a copy of your outgoing message by the username of the address
you are sending to even if that mailbox does not exist.
</p>
<p>
Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#record">$record</a> variable.
</p>
'
},

'forward_decode' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Controls the decoding of complex MIME messages into text/plain when
forwarding a message.  The message header is also RFC2047 decoded.
This variable is only used, if <a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward">$mime_forward</a> is <em>unset</em>,
otherwise <a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward-decode">$mime_forward_decode</a> is used instead.
</p>
'
},

'forward_decrypt' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Controls the handling of encrypted messages when forwarding a message.
When <em>set</em>, the outer layer of encryption is stripped off.  This
variable is only used if <a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward">$mime_forward</a> is <em>set</em> and
<a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward-decode">$mime_forward_decode</a> is <em>unset</em>.
(PGP only)
</p>
'
},

'forward_edit' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '



<p>
This quadoption controls whether or not the user is automatically
placed in the editor when forwarding messages.  For those who always want
to forward with no modification, use a setting of <tt>no</tt>.
</p>
'
},

'forward_format' => {
'default' => '[%a: %s]',
'type' => 'string',
'text' => '



<p>
This variable controls the default subject when forwarding a message.
It uses the same format sequences as the <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a> variable.
</p>
'
},

'forward_quote' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, forwarded messages included in the main body of the
message (when <a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward">$mime_forward</a> is <em>unset</em>) will be quoted using
<a href="http://www.mutt.org/doc/manual/manual-6.html#indent-string">$indent_string</a>.
</p>
'
},

'from' => {
'default' => '(empty)',
'type' => 'e-mail address',
'text' => '



<p>
When <em>set</em>, this variable contains a default from address.  It
can be overridden using <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#my-hdr">my_hdr</a></tt> (including from a <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#send-hook">send-hook</a></tt>) and
<a href="http://www.mutt.org/doc/manual/manual-6.html#reverse-name">$reverse_name</a>.  This variable is ignored if <a href="http://www.mutt.org/doc/manual/manual-6.html#use-from">$use_from</a> is <em>unset</em>.
</p>
<p>
This setting defaults to the contents of the environment variable $EMAIL.
</p>
'
},

'gecos_mask' => {
'default' => '^[^,]*',
'type' => 'regular expression',
'text' => '



<p>
A regular expression used by mutt to parse the GECOS field of a password
entry when expanding the alias.  The default value
will return the string up to the first <tt>,</tt> encountered.
If the GECOS field contains a string like <tt>lastname, firstname</tt> then you
should set it to <tt>.*</tt>.
</p>
<p>
This can be useful if you see the following behavior: you address an e-mail
to user ID <tt>stevef</tt> whose full name is <tt>Steve Franklin</tt>.  If mutt expands
<tt>stevef</tt> to <tt>"Franklin" stevef@foo.bar</tt> then you should set the <a href="http://www.mutt.org/doc/manual/manual-6.html#gecos-mask">$gecos_mask</a> to
a regular expression that will match the whole name so mutt will expand
<tt>Franklin</tt> to <tt>Franklin, Steve</tt>.
</p>
'
},

'hdrs' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>unset</em>, the header fields normally added by the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#my-hdr">my_hdr</a></tt>
command are not created.  This variable <em>must</em> be unset before
composing a new message or replying in order to take effect.  If <em>set</em>,
the user defined header fields are added to every new message.
</p>
'
},

'header' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, this variable causes Mutt to include the header
of the message you are replying to into the edit buffer.
The <a href="http://www.mutt.org/doc/manual/manual-6.html#weed">$weed</a> setting applies.
</p>
'
},

'header_cache' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
This variable points to the header cache database.
If pointing to a directory Mutt will contain a header cache
database file per folder, if pointing to a file that file will
be a single global header cache. By default it is <em>unset</em> so no header
caching will be used.
</p>
<p>
Header caching can greatly improve speed when opening POP, IMAP
MH or Maildir folders, see <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#caching">caching</a></tt> for details.
</p>
'
},

'header_cache_compress' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When mutt is compiled with qdbm or tokyocabinet as header cache backend,
this option determines whether the database will be compressed.
Compression results in database files roughly being one fifth
of the usual diskspace, but the decompression can result in a
slower opening of cached folder(s) which in general is still
much faster than opening non header cached folders.
</p>
'
},

'header_cache_pagesize' => {
'default' => '16384',
'type' => 'string',
'text' => '



<p>
When mutt is compiled with either gdbm or bdb4 as the header cache backend,
this option changes the database page size.  Too large or too small
values can waste space, memory, or CPU time. The default should be more
or less optimal for most use cases.
</p>
'
},

'help' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, help lines describing the bindings for the major functions
provided by each menu are displayed on the first line of the screen.
</p>
<p>
<em>Note:</em> The binding will not be displayed correctly if the
function is bound to a sequence rather than a single keystroke.  Also,
the help line may not be updated if a binding is changed while Mutt is
running.  Since this variable is primarily aimed at new users, neither
of these should present a major problem.
</p>
'
},

'hidden_host' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will skip the host name part of <a href="http://www.mutt.org/doc/manual/manual-6.html#hostname">$hostname</a> variable
when adding the domain part to addresses.  This variable does not
affect the generation of Message-IDs, and it will not lead to the
cut-off of first-level domains.
</p>
'
},

'hide_limited' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will not show the presence of messages that are hidden
by limiting, in the thread tree.
</p>
'
},

'hide_missing' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will not show the presence of missing messages in the
thread tree.
</p>
'
},

'hide_thread_subject' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will not show the subject of messages in the thread
tree that have the same subject as their parent or closest previously
displayed sibling.
</p>
'
},

'hide_top_limited' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will not show the presence of messages that are hidden
by limiting, at the top of threads in the thread tree.  Note that when
<a href="http://www.mutt.org/doc/manual/manual-6.html#hide-limited">$hide_limited</a> is <em>set</em>, this option will have no effect.
</p>
'
},

'hide_top_missing' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will not show the presence of missing messages at the
top of threads in the thread tree.  Note that when <a href="http://www.mutt.org/doc/manual/manual-6.html#hide-missing">$hide_missing</a> is
<em>set</em>, this option will have no effect.
</p>
'
},

'history' => {
'default' => '10',
'type' => 'number',
'text' => '



<p>
This variable controls the size (in number of strings remembered) of
the string history buffer per category. The buffer is cleared each time the
variable is set.
</p>
'
},

'history_file' => {
'default' => '~/.mutthistory',
'type' => 'path',
'text' => '



<p>
The file in which Mutt will save its history.
</p>
'
},

'honor_disposition' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, Mutt will not display attachments with a
disposition of <tt>attachment</tt> inline even if it could
render the part to plain text. These MIME parts can only
be viewed from the attachment menu.
</p>
<p>
If <em>unset</em>, Mutt will render all MIME parts it can
properly transform to plain text.
</p>
'
},

'honor_followup_to' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '



<p>
This variable controls whether or not a Mail-Followup-To header is
honored when group-replying to a message.
</p>
'
},

'hostname' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
Specifies the fully-qualified hostname of the system mutt is running on
containing the host\'s name and the DNS domain it belongs to. It is used
as the domain part (after <tt>@</tt>) for local email addresses as well as
Message-Id headers.
</p>
<p>
Its value is determined at startup as follows: If the node\'s name
as returned by the uname(3) function contains the hostname and the
domain, these are used to construct <a href="http://www.mutt.org/doc/manual/manual-6.html#hostname">$hostname</a>. If there is no
domain part returned, Mutt will look for a <tt>domain</tt> or <tt>search</tt>
line in /etc/resolv.conf to determine the domain. Optionally, Mutt
can be compiled with a fixed domain name in which case a detected
one is not used.
</p>
<p>
Also see <a href="http://www.mutt.org/doc/manual/manual-6.html#use-domain">$use_domain</a> and <a href="http://www.mutt.org/doc/manual/manual-6.html#hidden-host">$hidden_host</a>.
</p>
'
},

'ignore_linear_white_space' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
This option replaces linear-white-space between encoded-word
and text to a single space to prevent the display of MIME-encoded
<tt>Subject:</tt> field from being divided into multiple lines.
</p>
'
},

'ignore_list_reply_to' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Affects the behavior of the <reply> function when replying to
messages from mailing lists (as defined by the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#subscribe">subscribe</a></tt> or
<tt><a href="http://www.mutt.org/doc/manual/manual-6.html#lists">lists</a></tt> commands).  When <em>set</em>, if the <tt>Reply-To:</tt> field is
set to the same value as the <tt>To:</tt> field, Mutt assumes that the
<tt>Reply-To:</tt> field was set by the mailing list to automate responses
to the list, and will ignore this field.  To direct a response to the
mailing list when this option is <em>set</em>, use the <a href="http://www.mutt.org/doc/manual/manual-6.html#list-reply"><list-reply></a>
function; <group-reply> will reply to both the sender and the
list.
</p>
'
},

'imap_authenticators' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This is a colon-delimited list of authentication methods mutt may
attempt to use to log in to an IMAP server, in the order mutt should
try them.  Authentication methods are either <tt>login</tt> or the right
side of an IMAP <tt>AUTH=xxx</tt> capability string, e.g. <tt>digest-md5</tt>, <tt>gssapi</tt>
or <tt>cram-md5</tt>. This option is case-insensitive. If it\'s
<em>unset</em> (the default) mutt will try all available methods,
in order from most-secure to least-secure.
</p>
<p>
Example:

</p>

<pre>

set imap_authenticators="gssapi:cram-md5:login"

</pre>
<p>
<em>Note:</em> Mutt will only fall back to other authentication methods if
the previous methods are unavailable. If a method is available but
authentication fails, mutt will not connect to the IMAP server.
</p>
'
},

'imap_check_subscribed' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will fetch the set of subscribed folders from
your server on connection, and add them to the set of mailboxes
it polls for new mail just as if you had issued individual <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#mailboxes">mailboxes</a></tt>
commands.
</p>
'
},

'imap_delim_chars' => {
'default' => '/.',
'type' => 'string',
'text' => '



<p>
This contains the list of characters which you would like to treat
as folder separators for displaying IMAP paths. In particular it
helps in using the <tt>=</tt> shortcut for your <em>folder</em> variable.
</p>
'
},

'imap_headers' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
Mutt requests these header fields in addition to the default headers
(<tt>Date:</tt>, <tt>From:</tt>, <tt>Subject:</tt>, <tt>To:</tt>, <tt>Cc:</tt>, <tt>Message-Id:</tt>,
<tt>References:</tt>, <tt>Content-Type:</tt>, <tt>Content-Description:</tt>, <tt>In-Reply-To:</tt>,
<tt>Reply-To:</tt>, <tt>Lines:</tt>, <tt>List-Post:</tt>, <tt>X-Label:</tt>) from IMAP
servers before displaying the index menu. You may want to add more
headers for spam detection.
</p>
<p>
<em>Note:</em> This is a space separated list, items should be uppercase
and not contain the colon, e.g. <tt>X-BOGOSITY X-SPAM-STATUS</tt> for the
<tt>X-Bogosity:</tt> and <tt>X-Spam-Status:</tt> header fields.
</p>
'
},

'imap_idle' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will attempt to use the IMAP IDLE extension
to check for new mail in the current mailbox. Some servers
(dovecot was the inspiration for this option) react badly
to mutt\'s implementation. If your connection seems to freeze
up periodically, try unsetting this.
</p>
'
},

'imap_keepalive' => {
'default' => '900',
'type' => 'number',
'text' => '



<p>
This variable specifies the maximum amount of time in seconds that mutt
will wait before polling open IMAP connections, to prevent the server
from closing them before mutt has finished with them. The default is
well within the RFC-specified minimum amount of time (30 minutes) before
a server is allowed to do this, but in practice the RFC does get
violated every now and then. Reduce this number if you find yourself
getting disconnected from your IMAP server due to inactivity.
</p>
'
},

'imap_list_subscribed' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
This variable configures whether IMAP folder browsing will look for
only subscribed folders or all folders.  This can be toggled in the
IMAP browser with the <toggle-subscribed> function.
</p>
'
},

'imap_login' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
Your login name on the IMAP server.
</p>
<p>
This variable defaults to the value of <a href="http://www.mutt.org/doc/manual/manual-6.html#imap-user">$imap_user</a>.
</p>
'
},

'imap_pass' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
Specifies the password for your IMAP account.  If <em>unset</em>, Mutt will
prompt you for your password when you invoke the <imap-fetch-mail> function
or try to open an IMAP folder.
</p>
<p>
<em>Warning</em>: you should only use this option when you are on a
fairly secure machine, because the superuser can read your muttrc even
if you are the only one who can read the file.
</p>
'
},

'imap_passive' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will not open new IMAP connections to check for new
mail.  Mutt will only check for new mail over existing IMAP
connections.  This is useful if you don\'t want to be prompted to
user/password pairs on mutt invocation, or if opening the connection
is slow.
</p>
'
},

'imap_peek' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will avoid implicitly marking your mail as read whenever
you fetch a message from the server. This is generally a good thing,
but can make closing an IMAP folder somewhat slower. This option
exists to appease speed freaks.
</p>
'
},

'imap_pipeline_depth' => {
'default' => '15',
'type' => 'number',
'text' => '



<p>
Controls the number of IMAP commands that may be queued up before they
are sent to the server. A deeper pipeline reduces the amount of time
mutt must wait for the server, and can make IMAP servers feel much
more responsive. But not all servers correctly handle pipelined commands,
so if you have problems you might want to try setting this variable to 0.
</p>
<p>
<em>Note:</em> Changes to this variable have no effect on open connections.
</p>
'
},

'imap_servernoise' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will display warning messages from the IMAP
server as error messages. Since these messages are often
harmless, or generated due to configuration problems on the
server which are out of the users\' hands, you may wish to suppress
them at some point.
</p>
'
},

'imap_user' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
The name of the user whose mail you intend to access on the IMAP
server.
</p>
<p>
This variable defaults to your user name on the local machine.
</p>
'
},

'implicit_autoview' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If set to <tt>yes</tt>, mutt will look for a mailcap entry with the
<tt>copiousoutput</tt> flag set for <em>every</em> MIME attachment it doesn\'t have
an internal viewer defined for.  If such an entry is found, mutt will
use the viewer defined in that entry to convert the body part to text
form.
</p>
'
},

'include' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '



<p>
Controls whether or not a copy of the message(s) you are replying to
is included in your reply.
</p>
'
},

'include_onlyfirst' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Controls whether or not Mutt includes only the first attachment
of the message you are replying.
</p>
'
},

'indent_string' => {
'default' => '> ',
'type' => 'string',
'text' => '



<p>
Specifies the string to prepend to each line of text quoted in a
message to which you are replying.  You are strongly encouraged not to
change this value, as it tends to agitate the more fanatical netizens.
</p>
<p>
The value of this option is ignored if <a href="http://www.mutt.org/doc/manual/manual-6.html#text-flowed">$text_flowed</a> is set, too because
the quoting mechanism is strictly defined for format=flowed.
</p>
<p>
This option is a format string, please see the description of
<a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a> for supported printf(3)-style sequences.
</p>
'
},

'index_format' => {
'default' => '%4C %Z %{%b %d} %-15.15L (%?l?%4l&%4c?) %s',
'type' => 'string',
'text' => '



<p>
This variable allows you to customize the message index display to
your personal taste.
</p>
<p>
<tt>Format strings</tt> are similar to the strings used in the C
function printf(3) to format output (see the man page for more details).
The following sequences are defined in Mutt:

</p>

<table>


<tr><td>%a </td><td>address of the author
</td></tr>
<tr><td>%A </td><td>reply-to address (if present; otherwise: address of author)
</td></tr>
<tr><td>%b </td><td>filename of the original message folder (think mailbox)
</td></tr>
<tr><td>%B </td><td>the list to which the letter was sent, or else the folder name (%b).
</td></tr>
<tr><td>%c </td><td>number of characters (bytes) in the message
</td></tr>
<tr><td>%C </td><td>current message number
</td></tr>
<tr><td>%d </td><td>date and time of the message in the format specified by
<a href="http://www.mutt.org/doc/manual/manual-6.html#date-format">$date_format</a> converted to sender\'s time zone
</td></tr>
<tr><td>%D </td><td>date and time of the message in the format specified by
<a href="http://www.mutt.org/doc/manual/manual-6.html#date-format">$date_format</a> converted to the local time zone
</td></tr>
<tr><td>%e </td><td>current message number in thread
</td></tr>
<tr><td>%E </td><td>number of messages in current thread
</td></tr>
<tr><td>%f </td><td>sender (address + real name), either From: or Return-Path:
</td></tr>
<tr><td>%F </td><td>author name, or recipient name if the message is from you
</td></tr>
<tr><td>%H </td><td>spam attribute(s) of this message
</td></tr>
<tr><td>%i </td><td>message-id of the current message
</td></tr>
<tr><td>%l </td><td>number of lines in the message (does not work with maildir,
mh, and possibly IMAP folders)
</td></tr>
<tr><td>%L </td><td>If an address in the <tt>To:</tt> or <tt>Cc:</tt> header field matches an address
defined by the users <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#subscribe">subscribe</a></tt> command, this displays
"To <list-name>", otherwise the same as %F.
</td></tr>
<tr><td>%m </td><td>total number of message in the mailbox
</td></tr>
<tr><td>%M </td><td>number of hidden messages if the thread is collapsed.
</td></tr>
<tr><td>%N </td><td>message score
</td></tr>
<tr><td>%n </td><td>author\'s real name (or address if missing)
</td></tr>
<tr><td>%O </td><td>original save folder where mutt would formerly have
stashed the message: list name or recipient name
if not sent to a list
</td></tr>
<tr><td>%P </td><td>progress indicator for the built-in pager (how much of the file has been displayed)
</td></tr>
<tr><td>%s </td><td>subject of the message
</td></tr>
<tr><td>%S </td><td>status of the message (<tt>N</tt>/<tt>D</tt>/<tt>d</tt>/<tt>!</tt>/<tt>r</tt>/*)
</td></tr>
<tr><td>%t </td><td><tt>To:</tt> field (recipients)
</td></tr>
<tr><td>%T </td><td>the appropriate character from the <a href="http://www.mutt.org/doc/manual/manual-6.html#to-chars">$to_chars</a> string
</td></tr>
<tr><td>%u </td><td>user (login) name of the author
</td></tr>
<tr><td>%v </td><td>first name of the author, or the recipient if the message is from you
</td></tr>
<tr><td>%X </td><td>number of attachments
(please see the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#attachments">attachments</a></tt> section for possible speed effects)
</td></tr>
<tr><td>%y </td><td><tt>X-Label:</tt> field, if present
</td></tr>
<tr><td>%Y </td><td><tt>X-Label:</tt> field, if present, and <em>(1)</em> not at part of a thread tree,
<em>(2)</em> at the top of a thread, or <em>(3)</em> <tt>X-Label:</tt> is different from
preceding message\'s <tt>X-Label:</tt>.
</td></tr>
<tr><td>%Z </td><td>message status flags
</td></tr>
<tr><td>%{fmt} </td><td>the date and time of the message is converted to sender\'s
time zone, and <tt>fmt</tt> is expanded by the library function
strftime(3); a leading bang disables locales
</td></tr>
<tr><td>%[fmt] </td><td>the date and time of the message is converted to the local
time zone, and <tt>fmt</tt> is expanded by the library function
strftime(3); a leading bang disables locales
</td></tr>
<tr><td>%(fmt) </td><td>the local date and time when the message was received.
<tt>fmt</tt> is expanded by the library function strftime(3);
a leading bang disables locales
</td></tr>
<tr><td>%<fmt> </td><td>the current local time. <tt>fmt</tt> is expanded by the library
function strftime(3); a leading bang disables locales.
</td></tr>
<tr><td>%>X    </td><td>right justify the rest of the string and pad with character <tt>X</tt>
</td></tr>
<tr><td>%|X    </td><td>pad to the end of the line with character <tt>X</tt>
</td></tr>
<tr><td>%*X    </td><td>soft-fill with character <tt>X</tt> as pad
</td></tr></table>

<p>
<tt>Soft-fill</tt> deserves some explanation: Normal right-justification
will print everything to the left of the <tt>%></tt>, displaying padding and
whatever lies to the right only if there\'s room. By contrast,
soft-fill gives priority to the right-hand side, guaranteeing space
to display it and showing padding only if there\'s still room. If
necessary, soft-fill will eat text leftwards to make room for
rightward text.
</p>
<p>
Note that these expandos are supported in
<tt><a href="http://www.mutt.org/doc/manual/manual-6.html#save-hook">save-hook</a></tt>, <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#fcc-hook">fcc-hook</a></tt> and <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#fcc-save-hook">fcc-save-hook</a></tt>, too.
</p>
'
},

'ispell' => {
'default' => 'ispell',
'type' => 'path',
'text' => '



<p>
How to invoke ispell (GNU\'s spell-checking software).
</p>
'
},

'keep_flagged' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, read messages marked as flagged will not be moved
from your spool mailbox to your <a href="http://www.mutt.org/doc/manual/manual-6.html#mbox">$mbox</a> mailbox, or as a result of
a <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#mbox-hook">mbox-hook</a></tt> command.
</p>
'
},

'locale' => {
'default' => 'C',
'type' => 'string',
'text' => '



<p>
The locale used by strftime(3) to format dates. Legal values are
the strings your system accepts for the locale environment variable $LC_TIME.
</p>
'
},

'mail_check' => {
'default' => '5',
'type' => 'number',
'text' => '



<p>
This variable configures how often (in seconds) mutt should look for
new mail. Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#timeout">$timeout</a> variable.
</p>
'
},

'mail_check_recent' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, Mutt will only notify you about new mail that has been received
since the last time you opened the mailbox.  When <em>unset</em>, Mutt will notify you
if any new mail exists in the mailbox, regardless of whether you have visited it
recently.
</p>
<p>
When <em><a href="http://www.mutt.org/doc/manual/manual-6.html#mark-old">$mark_old</a></em> is set, Mutt does not consider the mailbox to contain new
mail if only old messages exist.
</p>
'
},

'mailcap_path' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This variable specifies which files to consult when attempting to
display MIME bodies not directly supported by Mutt.
</p>
'
},

'mailcap_sanitize' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, mutt will restrict possible characters in mailcap % expandos
to a well-defined set of safe characters.  This is the safe setting,
but we are not sure it doesn\'t break some more advanced MIME stuff.
</p>
<p>
<em>DON\'T CHANGE THIS SETTING UNLESS YOU ARE REALLY SURE WHAT YOU ARE
DOING!</em>
</p>
'
},

'maildir_header_cache_verify' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Check for Maildir unaware programs other than mutt having modified maildir
files when the header cache is in use.  This incurs one stat(2) per
message every time the folder is opened (which can be very slow for NFS
folders).
</p>
'
},

'maildir_trash' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, messages marked as deleted will be saved with the maildir
trashed flag instead of unlinked.  <em>Note:</em> this only applies
to maildir-style mailboxes.  Setting it will have no effect on other
mailbox types.
</p>
'
},

'mark_old' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Controls whether or not mutt marks <em>new</em> <em>unread</em>
messages as <em>old</em> if you exit a mailbox without reading them.
With this option <em>set</em>, the next time you start mutt, the messages
will show up with an <tt>O</tt> next to them in the index menu,
indicating that they are old.
</p>
'
},

'markers' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Controls the display of wrapped lines in the internal pager. If set, a
<tt>+</tt> marker is displayed at the beginning of wrapped lines.
</p>
<p>
Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#smart-wrap">$smart_wrap</a> variable.
</p>
'
},

'mask' => {
'default' => '!^\.[^.]',
'type' => 'regular expression',
'text' => '



<p>
A regular expression used in the file browser, optionally preceded by
the <em>not</em> operator <tt>!</tt>.  Only files whose names match this mask
will be shown. The match is always case-sensitive.
</p>
'
},

'mbox' => {
'default' => '~/mbox',
'type' => 'path',
'text' => '



<p>
This specifies the folder into which read mail in your <a href="http://www.mutt.org/doc/manual/manual-6.html#spoolfile">$spoolfile</a>
folder will be appended.
</p>
<p>
Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#move">$move</a> variable.
</p>
'
},

'mbox_type' => {
'default' => 'mbox',
'type' => 'folder magic',
'text' => '



<p>
The default mailbox type used when creating new folders. May be any of
<tt>mbox</tt>, <tt>MMDF</tt>, <tt>MH</tt> and <tt>Maildir</tt>. This is overridden by the
-m command-line option.
</p>
'
},

'menu_context' => {
'default' => '0',
'type' => 'number',
'text' => '



<p>
This variable controls the number of lines of context that are given
when scrolling through menus. (Similar to <a href="http://www.mutt.org/doc/manual/manual-6.html#pager-context">$pager_context</a>.)
</p>
'
},

'menu_move_off' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>unset</em>, the bottom entry of menus will never scroll up past
the bottom of the screen, unless there are less entries than lines.
When <em>set</em>, the bottom entry may move off the bottom.
</p>
'
},

'menu_scroll' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, menus will be scrolled up or down one line when you
attempt to move across a screen boundary.  If <em>unset</em>, the screen
is cleared and the next or previous page of the menu is displayed
(useful for slow links to avoid many redraws).
</p>
'
},

'message_cache_clean' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, mutt will clean out obsolete entries from the message cache when
the mailbox is synchronized. You probably only want to set it
every once in a while, since it can be a little slow
(especially for large folders).
</p>
'
},

'message_cachedir' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
Set this to a directory and mutt will cache copies of messages from
your IMAP and POP servers here. You are free to remove entries at any
time.
</p>
<p>
When setting this variable to a directory, mutt needs to fetch every
remote message only once and can perform regular expression searches
as fast as for local folders.
</p>
<p>
Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#message-cache-clean">$message_cache_clean</a> variable.
</p>
'
},

'message_format' => {
'default' => '%s',
'type' => 'string',
'text' => '



<p>
This is the string displayed in the <tt>attachment</tt> menu for
attachments of type message/rfc822.  For a full listing of defined
printf(3)-like sequences see the section on <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a>.
</p>
'
},

'meta_key' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, forces Mutt to interpret keystrokes with the high bit (bit 8)
set as if the user had pressed the Esc key and whatever key remains
after having the high bit removed.  For example, if the key pressed
has an ASCII value of 0xf8, then this is treated as if the user had
pressed Esc then <tt>x</tt>.  This is because the result of removing the
high bit from 0xf8 is 0x78, which is the ASCII character
<tt>x</tt>.
</p>
'
},

'metoo' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>unset</em>, Mutt will remove your address (see the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#alternates">alternates</a></tt>
command) from the list of recipients when replying to a message.
</p>
'
},

'mh_purge' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>unset</em>, mutt will mimic mh\'s behavior and rename deleted messages
to <em>,<old file name></em> in mh folders instead of really deleting
them. This leaves the message on disk but makes programs reading the folder
ignore it. If the variable is <em>set</em>, the message files will simply be
deleted.
</p>
<p>
This option is similar to <a href="http://www.mutt.org/doc/manual/manual-6.html#maildir-trash">$maildir_trash</a> for Maildir folders.
</p>
'
},

'mh_seq_flagged' => {
'default' => 'flagged',
'type' => 'string',
'text' => '



<p>
The name of the MH sequence used for flagged messages.
</p>
'
},

'mh_seq_replied' => {
'default' => 'replied',
'type' => 'string',
'text' => '



<p>
The name of the MH sequence used to tag replied messages.
</p>
'
},

'mh_seq_unseen' => {
'default' => 'unseen',
'type' => 'string',
'text' => '



<p>
The name of the MH sequence used for unseen messages.
</p>
'
},

'mime_forward' => {
'default' => 'no',
'type' => 'quadoption',
'text' => '



<p>
When <em>set</em>, the message you are forwarding will be attached as a
separate message/rfc822 MIME part instead of included in the main body of the
message.  This is useful for forwarding MIME messages so the receiver
can properly view the message as it was delivered to you. If you like
to switch between MIME and not MIME from mail to mail, set this
variable to <tt>ask-no</tt> or <tt>ask-yes</tt>.
</p>
<p>
Also see <a href="http://www.mutt.org/doc/manual/manual-6.html#forward-decode">$forward_decode</a> and <a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward-decode">$mime_forward_decode</a>.
</p>
'
},

'mime_forward_decode' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Controls the decoding of complex MIME messages into text/plain when
forwarding a message while <a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward">$mime_forward</a> is <em>set</em>. Otherwise
<a href="http://www.mutt.org/doc/manual/manual-6.html#forward-decode">$forward_decode</a> is used instead.
</p>
'
},

'mime_forward_rest' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '



<p>
When forwarding multiple attachments of a MIME message from the attachment
menu, attachments which cannot be decoded in a reasonable manner will
be attached to the newly composed message if this option is <em>set</em>.
</p>
'
},

'mix_entry_format' => {
'default' => '%4n %c %-16s %a',
'type' => 'string',
'text' => '



<p>
This variable describes the format of a remailer line on the mixmaster
chain selection screen.  The following printf(3)-like sequences are
supported:

</p>

<table>


<tr><td>%n </td><td>The running number on the menu.
</td></tr>
<tr><td>%c </td><td>Remailer capabilities.
</td></tr>
<tr><td>%s </td><td>The remailer\'s short name.
</td></tr>
<tr><td>%a </td><td>The remailer\'s e-mail address.
</td></tr></table>
'
},

'mixmaster' => {
'default' => '1',
'type' => 'path',
'text' => '



<p>
This variable contains the path to the Mixmaster binary on your
system.  It is used with various sets of parameters to gather the
list of known remailers, and to finally send a message through the
mixmaster chain.
</p>
'
},

'move' => {
'default' => 'no',
'type' => 'quadoption',
'text' => '



<p>
Controls whether or not Mutt will move read messages
from your spool mailbox to your <a href="http://www.mutt.org/doc/manual/manual-6.html#mbox">$mbox</a> mailbox, or as a result of
a <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#mbox-hook">mbox-hook</a></tt> command.
</p>
'
},

'narrow_tree' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
This variable, when <em>set</em>, makes the thread tree narrower, allowing
deeper threads to fit on the screen.
</p>
'
},

'net_inc' => {
'default' => '10',
'type' => 'number',
'text' => '



<p>
Operations that expect to transfer a large amount of data over the
network will update their progress every <a href="http://www.mutt.org/doc/manual/manual-6.html#net-inc">$net_inc</a> kilobytes.
If set to 0, no progress messages will be displayed.
</p>
<p>
See also <a href="http://www.mutt.org/doc/manual/manual-6.html#read-inc">$read_inc</a>, <a href="http://www.mutt.org/doc/manual/manual-6.html#write-inc">$write_inc</a> and <a href="http://www.mutt.org/doc/manual/manual-6.html#net-inc">$net_inc</a>.
</p>
'
},

'pager' => {
'default' => 'builtin',
'type' => 'path',
'text' => '



<p>
This variable specifies which pager you would like to use to view
messages. The value <tt>builtin</tt> means to use the built-in pager, otherwise this
variable should specify the pathname of the external pager you would
like to use.
</p>
<p>
Using an external pager may have some disadvantages: Additional
keystrokes are necessary because you can\'t call mutt functions
directly from the pager, and screen resizes cause lines longer than
the screen width to be badly formatted in the help menu.
</p>
'
},

'pager_context' => {
'default' => '0',
'type' => 'number',
'text' => '



<p>
This variable controls the number of lines of context that are given
when displaying the next or previous page in the internal pager.  By
default, Mutt will display the line after the last one on the screen
at the top of the next page (0 lines of context).
</p>
<p>
This variable also specifies the amount of context given for search
results. If positive, this many lines will be given before a match,
if 0, the match will be top-aligned.
</p>
'
},

'pager_format' => {
'default' => '-%Z- %C/%m: %-20.20n   %s%*  -- (%P)',
'type' => 'string',
'text' => '



<p>
This variable controls the format of the one-line message <tt>status</tt>
displayed before each message in either the internal or an external
pager.  The valid sequences are listed in the <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a>
section.
</p>
'
},

'pager_index_lines' => {
'default' => '0',
'type' => 'number',
'text' => '



<p>
Determines the number of lines of a mini-index which is shown when in
the pager.  The current message, unless near the top or bottom of the
folder, will be roughly one third of the way down this mini-index,
giving the reader the context of a few messages before and after the
message.  This is useful, for example, to determine how many messages
remain to be read in the current thread.  One of the lines is reserved
for the status bar from the index, so a setting of 6
will only show 5 lines of the actual index.  A value of 0 results in
no index being shown.  If the number of messages in the current folder
is less than <a href="http://www.mutt.org/doc/manual/manual-6.html#pager-index-lines">$pager_index_lines</a>, then the index will only use as
many lines as it needs.
</p>
'
},

'pager_stop' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, the internal-pager will <em>not</em> move to the next message
when you are at the end of a message and invoke the <next-page>
function.
</p>
'
},

'pgp_auto_decode' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, mutt will automatically attempt to decrypt traditional PGP
messages whenever the user performs an operation which ordinarily would
result in the contents of the message being operated on.  For example,
if the user displays a pgp-traditional message which has not been manually
checked with the <a href="http://www.mutt.org/doc/manual/manual-6.html#check-traditional-pgp"><check-traditional-pgp></a> function, mutt will automatically
check the message for traditional pgp.
</p>
'
},

'pgp_autoinline' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
This option controls whether Mutt generates old-style inline
(traditional) PGP encrypted or signed messages under certain
circumstances.  This can be overridden by use of the pgp menu,
when inline is not required.
</p>
<p>
Note that Mutt might automatically use PGP/MIME for messages
which consist of more than a single MIME part.  Mutt can be
configured to ask before sending PGP/MIME messages when inline
(traditional) would not work.
</p>
<p>
Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-mime-auto">$pgp_mime_auto</a> variable.
</p>
<p>
Also note that using the old-style PGP message format is <em>strongly</em>
<em>deprecated</em>.
(PGP only)
</p>
'
},

'pgp_check_exit' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, mutt will check the exit code of the PGP subprocess when
signing or encrypting.  A non-zero exit code means that the
subprocess failed.
(PGP only)
</p>
'
},

'pgp_clearsign_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This format is used to create an old-style <tt>clearsigned</tt> PGP
message.  Note that the use of this format is <em>strongly</em>
<em>deprecated</em>.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a> command for
possible printf(3)-like sequences.
(PGP only)
</p>
'
},

'pgp_decode_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This format strings specifies a command which is used to decode
application/pgp attachments.
</p>
<p>
The PGP command formats have their own set of printf(3)-like sequences:

</p>

<table>


<tr><td>%p </td><td>Expands to PGPPASSFD=0 when a pass phrase is needed, to an empty
string otherwise. Note: This may be used with a %? construct.
</td></tr>
<tr><td>%f </td><td>Expands to the name of a file containing a message.
</td></tr>
<tr><td>%s </td><td>Expands to the name of a file containing the signature part
           of a multipart/signed attachment when verifying it.
</td></tr>
<tr><td>%a </td><td>The value of <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-sign-as">$pgp_sign_as</a>.
</td></tr>
<tr><td>%r </td><td>One or more key IDs.
</td></tr></table>

<p>
For examples on how to configure these formats for the various versions
of PGP which are floating around, see the pgp and gpg sample configuration files in
the samples/ subdirectory which has been installed on your system
alongside the documentation.
(PGP only)
</p>
'
},

'pgp_decrypt_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to decrypt a PGP encrypted message.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a> command for
possible printf(3)-like sequences.
(PGP only)
</p>
'
},

'pgp_encrypt_only_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to encrypt a body part without signing it.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a> command for
possible printf(3)-like sequences.
(PGP only)
</p>
'
},

'pgp_encrypt_sign_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to both sign and encrypt a body part.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a> command for
possible printf(3)-like sequences.
(PGP only)
</p>
'
},

'pgp_entry_format' => {
'default' => '%4n %t%f %4l/0x%k %-4a %2c %u',
'type' => 'string',
'text' => '



<p>
This variable allows you to customize the PGP key selection menu to
your personal taste. This string is similar to <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a>, but
has its own set of printf(3)-like sequences:

</p>

<table>


<tr><td>%n     </td><td>number
</td></tr>
<tr><td>%k     </td><td>key id
</td></tr>
<tr><td>%u     </td><td>user id
</td></tr>
<tr><td>%a     </td><td>algorithm
</td></tr>
<tr><td>%l     </td><td>key length
</td></tr>
<tr><td>%f     </td><td>flags
</td></tr>
<tr><td>%c     </td><td>capabilities
</td></tr>
<tr><td>%t     </td><td>trust/validity of the key-uid association
</td></tr>
<tr><td>%[<s>] </td><td>date of the key where <s> is an strftime(3) expression
</td></tr></table>

<p>
(PGP only)
</p>
'
},

'pgp_export_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to export a public key from the user\'s
key ring.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a> command for
possible printf(3)-like sequences.
(PGP only)
</p>
'
},

'pgp_getkeys_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is invoked whenever mutt will need public key information.
Of the sequences supported by <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a>, %r is the only
printf(3)-like sequence used with this format.
(PGP only)
</p>
'
},

'pgp_good_sign' => {
'default' => '(empty)',
'type' => 'regular expression',
'text' => '



<p>
If you assign a text to this variable, then a PGP signature is only
considered verified if the output from <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-verify-command">$pgp_verify_command</a> contains
the text. Use this variable if the exit code from the command is 0
even for bad signatures.
(PGP only)
</p>
'
},

'pgp_ignore_subkeys' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Setting this variable will cause Mutt to ignore OpenPGP subkeys. Instead,
the principal key will inherit the subkeys\' capabilities.  <em>Unset</em> this
if you want to play interesting key selection games.
(PGP only)
</p>
'
},

'pgp_import_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to import a key from a message into
the user\'s public key ring.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a> command for
possible printf(3)-like sequences.
(PGP only)
</p>
'
},

'pgp_list_pubring_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to list the public key ring\'s contents.  The
output format must be analogous to the one used by

</p>

<pre>

gpg --list-keys --with-colons.

</pre>
<p>
This format is also generated by the pgpring utility which comes
with mutt.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a> command for
possible printf(3)-like sequences.
(PGP only)
</p>
'
},

'pgp_list_secring_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to list the secret key ring\'s contents.  The
output format must be analogous to the one used by:

</p>

<pre>

gpg --list-keys --with-colons.

</pre>
<p>
This format is also generated by the pgpring utility which comes
with mutt.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a> command for
possible printf(3)-like sequences.
(PGP only)
</p>
'
},

'pgp_long_ids' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, use 64 bit PGP key IDs, if <em>unset</em> use the normal 32 bit key IDs.
(PGP only)
</p>
'
},

'pgp_mime_auto' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '



<p>
This option controls whether Mutt will prompt you for
automatically sending a (signed/encrypted) message using
PGP/MIME when inline (traditional) fails (for any reason).
</p>
<p>
Also note that using the old-style PGP message format is <em>strongly</em>
<em>deprecated</em>.
(PGP only)
</p>
'
},

'pgp_replyinline' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Setting this variable will cause Mutt to always attempt to
create an inline (traditional) message when replying to a
message which is PGP encrypted/signed inline.  This can be
overridden by use of the pgp menu, when inline is not
required.  This option does not automatically detect if the
(replied-to) message is inline; instead it relies on Mutt
internals for previously checked/flagged messages.
</p>
<p>
Note that Mutt might automatically use PGP/MIME for messages
which consist of more than a single MIME part.  Mutt can be
configured to ask before sending PGP/MIME messages when inline
(traditional) would not work.
</p>
<p>
Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-mime-auto">$pgp_mime_auto</a> variable.
</p>
<p>
Also note that using the old-style PGP message format is <em>strongly</em>
<em>deprecated</em>.
(PGP only)
</p>
'
},

'pgp_retainable_sigs' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, signed and encrypted messages will consist of nested
multipart/signed and multipart/encrypted body parts.
</p>
<p>
This is useful for applications like encrypted and signed mailing
lists, where the outer layer (multipart/encrypted) can be easily
removed, while the inner multipart/signed part is retained.
(PGP only)
</p>
'
},

'pgp_show_unusable' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, mutt will display non-usable keys on the PGP key selection
menu.  This includes keys which have been revoked, have expired, or
have been marked as <tt>disabled</tt> by the user.
(PGP only)
</p>
'
},

'pgp_sign_as' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
If you have more than one key pair, this option allows you to specify
which of your private keys to use.  It is recommended that you use the
keyid form to specify your key (e.g. 0x00112233).
(PGP only)
</p>
'
},

'pgp_sign_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to create the detached PGP signature for a
multipart/signed PGP/MIME body part.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a> command for
possible printf(3)-like sequences.
(PGP only)
</p>
'
},

'pgp_sort_keys' => {
'default' => 'address',
'type' => 'sort order',
'text' => '



<p>
Specifies how the entries in the pgp menu are sorted. The
following are legal values:

</p>

<table>


<tr><td>address </td><td>sort alphabetically by user id
</td></tr>
<tr><td>keyid   </td><td>sort alphabetically by key id
</td></tr>
<tr><td>date    </td><td>sort by key creation date
</td></tr>
<tr><td>trust   </td><td>sort by the trust of the key
</td></tr></table>

<p>
If you prefer reverse order of the above values, prefix it with
<tt>reverse-</tt>.
(PGP only)
</p>
'
},

'pgp_strict_enc' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, Mutt will automatically encode PGP/MIME signed messages as
quoted-printable.  Please note that unsetting this variable may
lead to problems with non-verifyable PGP signatures, so only change
this if you know what you are doing.
(PGP only)
</p>
'
},

'pgp_timeout' => {
'default' => '300',
'type' => 'number',
'text' => '



<p>
The number of seconds after which a cached passphrase will expire if
not used.
(PGP only)
</p>
'
},

'pgp_use_gpg_agent' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, mutt will use a possibly-running gpg-agent(1) process.
(PGP only)
</p>
'
},

'pgp_verify_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to verify PGP signatures.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a> command for
possible printf(3)-like sequences.
(PGP only)
</p>
'
},

'pgp_verify_key_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to verify key information from the key selection
menu.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-decode-command">$pgp_decode_command</a> command for
possible printf(3)-like sequences.
(PGP only)
</p>
'
},

'pipe_decode' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Used in connection with the <pipe-message> command.  When <em>unset</em>,
Mutt will pipe the messages without any preprocessing. When <em>set</em>, Mutt
will weed headers and will attempt to decode the messages
first.
</p>
'
},

'pipe_sep' => {
'default' => '\n',
'type' => 'string',
'text' => '



<p>
The separator to add between messages when piping a list of tagged
messages to an external Unix command.
</p>
'
},

'pipe_split' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Used in connection with the <pipe-message> function following
<tag-prefix>.  If this variable is <em>unset</em>, when piping a list of
tagged messages Mutt will concatenate the messages and will pipe them
all concatenated.  When <em>set</em>, Mutt will pipe the messages one by one.
In both cases the messages are piped in the current sorted order,
and the <a href="http://www.mutt.org/doc/manual/manual-6.html#pipe-sep">$pipe_sep</a> separator is added after each message.
</p>
'
},

'pop_auth_try_all' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, Mutt will try all available authentication methods.
When <em>unset</em>, Mutt will only fall back to other authentication
methods if the previous methods are unavailable. If a method is
available but authentication fails, Mutt will not connect to the POP server.
</p>
'
},

'pop_authenticators' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This is a colon-delimited list of authentication methods mutt may
attempt to use to log in to an POP server, in the order mutt should
try them.  Authentication methods are either <tt>user</tt>, <tt>apop</tt> or any
SASL mechanism, e.g. <tt>digest-md5</tt>, <tt>gssapi</tt> or <tt>cram-md5</tt>.
This option is case-insensitive. If this option is <em>unset</em>
(the default) mutt will try all available methods, in order from
most-secure to least-secure.
</p>
<p>
Example:

</p>

<pre>

set pop_authenticators="digest-md5:apop:user"

</pre>
'
},

'pop_checkinterval' => {
'default' => '60',
'type' => 'number',
'text' => '



<p>
This variable configures how often (in seconds) mutt should look for
new mail in the currently selected mailbox if it is a POP mailbox.
</p>
'
},

'pop_delete' => {
'default' => 'ask-no',
'type' => 'quadoption',
'text' => '



<p>
If <em>set</em>, Mutt will delete successfully downloaded messages from the POP
server when using the <a href="http://www.mutt.org/doc/manual/manual-6.html#fetch-mail"><fetch-mail></a> function.  When <em>unset</em>, Mutt will
download messages but also leave them on the POP server.
</p>
'
},

'pop_host' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
The name of your POP server for the <a href="http://www.mutt.org/doc/manual/manual-6.html#fetch-mail"><fetch-mail></a> function.  You
can also specify an alternative port, username and password, i.e.:

</p>

<pre>

[pop[s]://][username[:password]@]popserver[:port]

</pre>
<p>
where <tt>[...]</tt> denotes an optional part.
</p>
'
},

'pop_last' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If this variable is <em>set</em>, mutt will try to use the <tt>LAST</tt> POP command
for retrieving only unread messages from the POP server when using
the <a href="http://www.mutt.org/doc/manual/manual-6.html#fetch-mail"><fetch-mail></a> function.
</p>
'
},

'pop_pass' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
Specifies the password for your POP account.  If <em>unset</em>, Mutt will
prompt you for your password when you open a POP mailbox.
</p>
<p>
<em>Warning</em>: you should only use this option when you are on a
fairly secure machine, because the superuser can read your muttrc
even if you are the only one who can read the file.
</p>
'
},

'pop_reconnect' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '



<p>
Controls whether or not Mutt will try to reconnect to the POP server if
the connection is lost.
</p>
'
},

'pop_user' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
Your login name on the POP server.
</p>
<p>
This variable defaults to your user name on the local machine.
</p>
'
},

'post_indent_string' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
Similar to the <a href="http://www.mutt.org/doc/manual/manual-6.html#attribution">$attribution</a> variable, Mutt will append this
string after the inclusion of a message which is being replied to.
</p>
'
},

'postpone' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '



<p>
Controls whether or not messages are saved in the <a href="http://www.mutt.org/doc/manual/manual-6.html#postponed">$postponed</a>
mailbox when you elect not to send immediately.
</p>
<p>
Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#recall">$recall</a> variable.
</p>
'
},

'postponed' => {
'default' => '~/postponed',
'type' => 'path',
'text' => '



<p>
Mutt allows you to indefinitely <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#postpone">postpone</a> sending a message</tt> which
you are editing.  When you choose to postpone a message, Mutt saves it
in the mailbox specified by this variable.
</p>
<p>
Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#postpone">$postpone</a> variable.
</p>
'
},

'preconnect' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
If <em>set</em>, a shell command to be executed if mutt fails to establish
a connection to the server. This is useful for setting up secure
connections, e.g. with ssh(1). If the command returns a  nonzero
status, mutt gives up opening the server. Example:

</p>

<pre>

set preconnect="ssh -f -q -L 1234:mailhost.net:143 mailhost.net \
sleep 20 < /dev/null > /dev/null"

</pre>
<p>
Mailbox <tt>foo</tt> on <tt>mailhost.net</tt> can now be reached
as <tt>{localhost:1234}foo</tt>.
</p>
<p>
Note: For this example to work, you must be able to log in to the
remote machine without having to enter a password.
</p>
'
},

'print' => {
'default' => 'ask-no',
'type' => 'quadoption',
'text' => '



<p>
Controls whether or not Mutt really prints messages.
This is set to <tt>ask-no</tt> by default, because some people
accidentally hit <tt>p</tt> often.
</p>
'
},

'print_command' => {
'default' => 'lpr',
'type' => 'path',
'text' => '



<p>
This specifies the command pipe that should be used to print messages.
</p>
'
},

'print_decode' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Used in connection with the <print-message> command.  If this
option is <em>set</em>, the message is decoded before it is passed to the
external command specified by <a href="http://www.mutt.org/doc/manual/manual-6.html#print-command">$print_command</a>.  If this option
is <em>unset</em>, no processing will be applied to the message when
printing it.  The latter setting may be useful if you are using
some advanced printer filter which is able to properly format
e-mail messages for printing.
</p>
'
},

'print_split' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Used in connection with the <print-message> command.  If this option
is <em>set</em>, the command specified by <a href="http://www.mutt.org/doc/manual/manual-6.html#print-command">$print_command</a> is executed once for
each message which is to be printed.  If this option is <em>unset</em>,
the command specified by <a href="http://www.mutt.org/doc/manual/manual-6.html#print-command">$print_command</a> is executed only once, and
all the messages are concatenated, with a form feed as the message
separator.
</p>
<p>
Those who use the enscript(1) program\'s mail-printing mode will
most likely want to <em>set</em> this option.
</p>
'
},

'prompt_after' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If you use an <em>external</em> <a href="http://www.mutt.org/doc/manual/manual-6.html#pager">$pager</a>, setting this variable will
cause Mutt to prompt you for a command when the pager exits rather
than returning to the index menu.  If <em>unset</em>, Mutt will return to the
index menu when the external pager exits.
</p>
'
},

'query_command' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
This specifies the command Mutt will use to make external address
queries.  The string may contain a <tt>%s</tt>, which will be substituted
with the query string the user types.  Mutt will add quotes around the
string substituted for <tt>%s</tt> automatically according to shell quoting
rules, so you should avoid adding your own.  If no <tt>%s</tt> is found in
the string, Mutt will append the user\'s query to the end of the string.
See <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#query">query</a></tt> for more information.
</p>
'
},

'query_format' => {
'default' => '%4c %t %-25.25a %-25.25n %?e?(%e)?',
'type' => 'string',
'text' => '



<p>
This variable describes the format of the <tt>query</tt> menu. The
following printf(3)-style sequences are understood:

</p>

<table>


<tr><td>%a  </td><td>destination address
</td></tr>
<tr><td>%c  </td><td>current entry number
</td></tr>
<tr><td>%e  </td><td>extra information *
</td></tr>
<tr><td>%n  </td><td>destination name
</td></tr>
<tr><td>%t  </td><td><tt>*</tt> if current entry is tagged, a space otherwise
</td></tr>
<tr><td>%>X </td><td>right justify the rest of the string and pad with <tt>X</tt>
</td></tr>
<tr><td>%|X </td><td>pad to the end of the line with <tt>X</tt>
</td></tr>
<tr><td>%*X </td><td>soft-fill with character <tt>X</tt> as pad
</td></tr></table>

<p>
For an explanation of <tt>soft-fill</tt>, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a> documentation.
</p>
<p>
* = can be optionally printed if nonzero, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#status-format">$status_format</a> documentation.
</p>
'
},

'quit' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '



<p>
This variable controls whether <tt>quit</tt> and <tt>exit</tt> actually quit
from mutt.  If this option is <em>set</em>, they do quit, if it is <em>unset</em>, they
have no effect, and if it is set to <em>ask-yes</em> or <em>ask-no</em>, you are
prompted for confirmation when you try to quit.
</p>
'
},

'quote_regexp' => {
'default' => '^([ \t]*[|>:}#])+',
'type' => 'regular expression',
'text' => '



<p>
A regular expression used in the internal pager to determine quoted
sections of text in the body of a message. Quoted text may be filtered
out using the <toggle-quoted> command, or colored according to the
<tt>color quoted</tt> family of directives.
</p>
<p>
Higher levels of quoting may be colored differently (<tt>color quoted1</tt>,
<tt>color quoted2</tt>, etc.). The quoting level is determined by removing
the last character from the matched text and recursively reapplying
the regular expression until it fails to produce a match.
</p>
<p>
Match detection may be overridden by the <a href="http://www.mutt.org/doc/manual/manual-6.html#smileys">$smileys</a> regular expression.
</p>
'
},

'read_inc' => {
'default' => '10',
'type' => 'number',
'text' => '



<p>
If set to a value greater than 0, Mutt will display which message it
is currently on when reading a mailbox or when performing search actions
such as search and limit. The message is printed after
this many messages have been read or searched (e.g., if set to 25, Mutt will
print a message when it is at message 25, and then again when it gets
to message 50).  This variable is meant to indicate progress when
reading or searching large mailboxes which may take some time.
When set to 0, only a single message will appear before the reading
the mailbox.
</p>
<p>
Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#write-inc">$write_inc</a>, <a href="http://www.mutt.org/doc/manual/manual-6.html#net-inc">$net_inc</a> and <a href="http://www.mutt.org/doc/manual/manual-6.html#time-inc">$time_inc</a> variables and the
<tt><a href="http://www.mutt.org/doc/manual/manual-6.html#tuning">tuning</a></tt> section of the manual for performance considerations.
</p>
'
},

'read_only' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, all folders are opened in read-only mode.
</p>
'
},

'realname' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This variable specifies what <tt>real</tt> or <tt>personal</tt> name should be used
when sending messages.
</p>
<p>
By default, this is the GECOS field from /etc/passwd.  Note that this
variable will <em>not</em> be used when the user has set a real name
in the <a href="http://www.mutt.org/doc/manual/manual-6.html#from">$from</a> variable.
</p>
'
},

'recall' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '



<p>
Controls whether or not Mutt recalls postponed messages
when composing a new message.
</p>
<p>
<em>Setting</em> this variable to is not generally useful, and thus not
recommended.
</p>
<p>
Also see <a href="http://www.mutt.org/doc/manual/manual-6.html#postponed">$postponed</a> variable.
</p>
'
},

'record' => {
'default' => '~/sent',
'type' => 'path',
'text' => '



<p>
This specifies the file into which your outgoing messages should be
appended.  (This is meant as the primary method for saving a copy of
your messages, but another way to do this is using the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#my-hdr">my_hdr</a></tt>
command to create a <tt>Bcc:</tt> field with your email address in it.)
</p>
<p>
The value of <em><a href="http://www.mutt.org/doc/manual/manual-6.html#record">$record</a></em> is overridden by the <a href="http://www.mutt.org/doc/manual/manual-6.html#force-name">$force_name</a> and
<a href="http://www.mutt.org/doc/manual/manual-6.html#save-name">$save_name</a> variables, and the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#fcc-hook">fcc-hook</a></tt> command.
</p>
'
},

'reply_regexp' => {
'default' => '^(re([\[0-9\]+])*|aw):[ \t]*',
'type' => 'regular expression',
'text' => '



<p>
A regular expression used to recognize reply messages when threading
and replying. The default value corresponds to the English "Re:" and
the German "Aw:".
</p>
'
},

'reply_self' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>unset</em> and you are replying to a message sent by you, Mutt will
assume that you want to reply to the recipients of that message rather
than to yourself.
</p>
<p>
Also see the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#alternates">alternates</a></tt> command.
</p>
'
},

'reply_to' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '



<p>
If <em>set</em>, when replying to a message, Mutt will use the address listed
in the Reply-to: header as the recipient of the reply.  If <em>unset</em>,
it will use the address in the From: header field instead.  This
option is useful for reading a mailing list that sets the Reply-To:
header field to the list address and you want to send a private
message to the author of a message.
</p>
'
},

'resolve' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, the cursor will be automatically advanced to the next
(possibly undeleted) message whenever a command that modifies the
current message is executed.
</p>
'
},

'reverse_alias' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
This variable controls whether or not Mutt will display the <tt>personal</tt>
name from your aliases in the index menu if it finds an alias that
matches the message\'s sender.  For example, if you have the following
alias:

</p>

<pre>

alias juser abd30425@somewhere.net (Joe User)

</pre>
<p>
and then you receive mail which contains the following header:

</p>

<pre>

From: abd30425@somewhere.net

</pre>
<p>
It would be displayed in the index menu as <tt>Joe User</tt> instead of
<tt>abd30425@somewhere.net.</tt>  This is useful when the person\'s e-mail
address is not human friendly.
</p>
'
},

'reverse_name' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
It may sometimes arrive that you receive mail to a certain machine,
move the messages to another machine, and reply to some the messages
from there.  If this variable is <em>set</em>, the default <em>From:</em> line of
the reply messages is built using the address where you received the
messages you are replying to <em>if</em> that address matches your
<tt><a href="http://www.mutt.org/doc/manual/manual-6.html#alternates">alternates</a></tt>.  If the variable is <em>unset</em>, or the address that would be
used doesn\'t match your <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#alternates">alternates</a></tt>, the <em>From:</em> line will use
your address on the current machine.
</p>
<p>
Also see the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#alternates">alternates</a></tt> command.
</p>
'
},

'reverse_realname' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
This variable fine-tunes the behavior of the <a href="http://www.mutt.org/doc/manual/manual-6.html#reverse-name">$reverse_name</a> feature.
When it is <em>set</em>, mutt will use the address from incoming messages as-is,
possibly including eventual real names.  When it is <em>unset</em>, mutt will
override any such real names with the setting of the <a href="http://www.mutt.org/doc/manual/manual-6.html#realname">$realname</a> variable.
</p>
'
},

'rfc2047_parameters' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When this variable is <em>set</em>, Mutt will decode RFC2047-encoded MIME
parameters. You want to set this variable when mutt suggests you
to save attachments to files named like:

</p>

<pre>

=?iso-8859-1?Q?file=5F=E4=5F991116=2Ezip?=

</pre>
<p>
When this variable is <em>set</em> interactively, the change won\'t be
active until you change folders.
</p>
<p>
Note that this use of RFC2047\'s encoding is explicitly
prohibited by the standard, but nevertheless encountered in the
wild.
</p>
<p>
Also note that setting this parameter will <em>not</em> have the effect
that mutt <em>generates</em> this kind of encoding.  Instead, mutt will
unconditionally use the encoding specified in RFC2231.
</p>
'
},

'save_address' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, mutt will take the sender\'s full address when choosing a
default folder for saving a mail. If <a href="http://www.mutt.org/doc/manual/manual-6.html#save-name">$save_name</a> or <a href="http://www.mutt.org/doc/manual/manual-6.html#force-name">$force_name</a>
is <em>set</em> too, the selection of the Fcc folder will be changed as well.
</p>
'
},

'save_empty' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>unset</em>, mailboxes which contain no saved messages will be removed
when closed (the exception is <a href="http://www.mutt.org/doc/manual/manual-6.html#spoolfile">$spoolfile</a> which is never removed).
If <em>set</em>, mailboxes are never removed.
</p>
<p>
<em>Note:</em> This only applies to mbox and MMDF folders, Mutt does not
delete MH and Maildir directories.
</p>
'
},

'save_history' => {
'default' => '0',
'type' => 'number',
'text' => '



<p>
This variable controls the size of the history (per category) saved in the
<a href="http://www.mutt.org/doc/manual/manual-6.html#history-file">$history_file</a> file.
</p>
'
},

'save_name' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
This variable controls how copies of outgoing messages are saved.
When <em>set</em>, a check is made to see if a mailbox specified by the
recipient address exists (this is done by searching for a mailbox in
the <a href="http://www.mutt.org/doc/manual/manual-6.html#folder">$folder</a> directory with the <em>username</em> part of the
recipient address).  If the mailbox exists, the outgoing message will
be saved to that mailbox, otherwise the message is saved to the
<a href="http://www.mutt.org/doc/manual/manual-6.html#record">$record</a> mailbox.
</p>
<p>
Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#force-name">$force_name</a> variable.
</p>
'
},

'score' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When this variable is <em>unset</em>, scoring is turned off.  This can
be useful to selectively disable scoring for certain folders when the
<a href="http://www.mutt.org/doc/manual/manual-6.html#score-threshold-delete">$score_threshold_delete</a> variable and related are used.
</p>
'
},

'score_threshold_delete' => {
'default' => '-1',
'type' => 'number',
'text' => '



<p>
Messages which have been assigned a score equal to or lower than the value
of this variable are automatically marked for deletion by mutt.  Since
mutt scores are always greater than or equal to zero, the default setting
of this variable will never mark a message for deletion.
</p>
'
},

'score_threshold_flag' => {
'default' => '9999',
'type' => 'number',
'text' => '



<p>
Messages which have been assigned a score greater than or equal to this
variable\'s value are automatically marked "flagged".
</p>
'
},

'score_threshold_read' => {
'default' => '-1',
'type' => 'number',
'text' => '



<p>
Messages which have been assigned a score equal to or lower than the value
of this variable are automatically marked as read by mutt.  Since
mutt scores are always greater than or equal to zero, the default setting
of this variable will never mark a message read.
</p>
'
},

'search_context' => {
'default' => '0',
'type' => 'number',
'text' => '



<p>
For the pager, this variable specifies the number of lines shown
before search results. By default, search results will be top-aligned.
</p>
'
},

'send_charset' => {
'default' => 'us-ascii:iso-8859-1:utf-8',
'type' => 'string',
'text' => '



<p>
A colon-delimited list of character sets for outgoing messages. Mutt will use the
first character set into which the text can be converted exactly.
If your <a href="http://www.mutt.org/doc/manual/manual-6.html#charset">$charset</a> is not <tt>iso-8859-1</tt> and recipients may not
understand <tt>UTF-8</tt>, it is advisable to include in the list an
appropriate widely used standard character set (such as
<tt>iso-8859-2</tt>, <tt>koi8-r</tt> or <tt>iso-2022-jp</tt>) either instead of or after
<tt>iso-8859-1</tt>.
</p>
<p>
In case the text cannot be converted into one of these exactly,
mutt uses <a href="http://www.mutt.org/doc/manual/manual-6.html#charset">$charset</a> as a fallback.
</p>
'
},

'sendmail' => {
'default' => '/usr/sbin/sendmail -oem -oi',
'type' => 'path',
'text' => '



<p>
Specifies the program and arguments used to deliver mail sent by Mutt.
Mutt expects that the specified program interprets additional
arguments as recipient addresses.
</p>
'
},

'sendmail_wait' => {
'default' => '0',
'type' => 'number',
'text' => '



<p>
Specifies the number of seconds to wait for the <a href="http://www.mutt.org/doc/manual/manual-6.html#sendmail">$sendmail</a> process
to finish before giving up and putting delivery in the background.
</p>
<p>
Mutt interprets the value of this variable as follows:

</p>

<table>


<tr><td>>0 </td><td>number of seconds to wait for sendmail to finish before continuing
</td></tr>
<tr><td>0  </td><td>wait forever for sendmail to finish
</td></tr>
<tr><td><0 </td><td>always put sendmail in the background without waiting
</td></tr></table>

<p>
Note that if you specify a value other than 0, the output of the child
process will be put in a temporary file.  If there is some error, you
will be informed as to where to find the output.
</p>
'
},

'shell' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
Command to use when spawning a subshell.  By default, the user\'s login
shell from /etc/passwd is used.
</p>
'
},

'sig_dashes' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, a line containing <tt>-- </tt> (note the trailing space) will be inserted before your
<a href="http://www.mutt.org/doc/manual/manual-6.html#signature">$signature</a>.  It is <em>strongly</em> recommended that you not <em>unset</em>
this variable unless your signature contains just your name.  The
reason for this is because many software packages use <tt>-- \n</tt> to
detect your signature.  For example, Mutt has the ability to highlight
the signature in a different color in the built-in pager.
</p>
'
},

'sig_on_top' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, the signature will be included before any quoted or forwarded
text.  It is <em>strongly</em> recommended that you do not set this variable
unless you really know what you are doing, and are prepared to take
some heat from netiquette guardians.
</p>
'
},

'signature' => {
'default' => '~/.signature',
'type' => 'path',
'text' => '



<p>
Specifies the filename of your signature, which is appended to all
outgoing messages.   If the filename ends with a pipe (<tt>|</tt>), it is
assumed that filename is a shell command and input should be read from
its standard output.
</p>
'
},

'simple_search' => {
'default' => '~f %s | ~s %s',
'type' => 'string',
'text' => '



<p>
Specifies how Mutt should expand a simple search into a real search
pattern.  A simple search is one that does not contain any of the <tt>~</tt> pattern
operators.  See <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#patterns">patterns</a></tt> for more information on search patterns.
</p>
<p>
For example, if you simply type <tt>joe</tt> at a search or limit prompt, Mutt
will automatically expand it to the value specified by this variable by
replacing <tt>%s</tt> with the supplied string.
For the default value, <tt>joe</tt> would be expanded to: <tt>~f joe | ~s joe</tt>.
</p>
'
},

'sleep_time' => {
'default' => '1',
'type' => 'number',
'text' => '



<p>
Specifies time, in seconds, to pause while displaying certain informational
messages, while moving from folder to folder and after expunging
messages from the current folder.  The default is to pause one second, so
a value of zero for this option suppresses the pause.
</p>
'
},

'smart_wrap' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Controls the display of lines longer than the screen width in the
internal pager. If <em>set</em>, long lines are wrapped at a word boundary.  If
<em>unset</em>, lines are simply wrapped at the screen edge. Also see the
<a href="http://www.mutt.org/doc/manual/manual-6.html#markers">$markers</a> variable.
</p>
'
},

'smileys' => {
'default' => '(>From )|(:[-^]?[][)(><}{|/DP])',
'type' => 'regular expression',
'text' => '



<p>
The <em>pager</em> uses this variable to catch some common false
positives of <a href="http://www.mutt.org/doc/manual/manual-6.html#quote-regexp">$quote_regexp</a>, most notably smileys and not consider
a line quoted text if it also matches <a href="http://www.mutt.org/doc/manual/manual-6.html#smileys">$smileys</a>. This mostly
happens at the beginning of a line.
</p>
'
},

'smime_ask_cert_label' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
This flag controls whether you want to be asked to enter a label
for a certificate about to be added to the database or not. It is
<em>set</em> by default.
(S/MIME only)
</p>
'
},

'smime_ca_location' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
This variable contains the name of either a directory, or a file which
contains trusted certificates for use with OpenSSL.
(S/MIME only)
</p>
'
},

'smime_certificates' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
Since for S/MIME there is no pubring/secring as with PGP, mutt has to handle
storage and retrieval of keys by itself. This is very basic right
now, and keys and certificates are stored in two different
directories, both named as the hash-value retrieved from
OpenSSL. There is an index file which contains mailbox-address
keyid pairs, and which can be manually edited. This option points to
the location of the certificates.
(S/MIME only)
</p>
'
},

'smime_decrypt_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This format string specifies a command which is used to decrypt
application/x-pkcs7-mime attachments.
</p>
<p>
The OpenSSL command formats have their own set of printf(3)-like sequences
similar to PGP\'s:

</p>

<table>


<tr><td>%f </td><td>Expands to the name of a file containing a message.
</td></tr>
<tr><td>%s </td><td>Expands to the name of a file containing the signature part
           of a multipart/signed attachment when verifying it.
</td></tr>
<tr><td>%k </td><td>The key-pair specified with <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-default-key">$smime_default_key</a>
</td></tr>
<tr><td>%c </td><td>One or more certificate IDs.
</td></tr>
<tr><td>%a </td><td>The algorithm used for encryption.
</td></tr>
<tr><td>%C </td><td>CA location:  Depending on whether <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-ca-location">$smime_ca_location</a>
           points to a directory or file, this expands to
           <tt>-CApath <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-ca-location">$smime_ca_location</a></tt> or <tt>-CAfile <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-ca-location">$smime_ca_location</a></tt>.
</td></tr></table>

<p>
For examples on how to configure these formats, see the smime.rc in
the samples/ subdirectory which has been installed on your system
alongside the documentation.
(S/MIME only)
</p>
'
},

'smime_decrypt_use_default_key' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em> (default) this tells mutt to use the default key for decryption. Otherwise,
if managing multiple certificate-key-pairs, mutt will try to use the mailbox-address
to determine the key to use. It will ask you to supply a key, if it can\'t find one.
(S/MIME only)
</p>
'
},

'smime_default_key' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This is the default key-pair to use for signing. This must be set to the
keyid (the hash-value that OpenSSL generates) to work properly
(S/MIME only)
</p>
'
},

'smime_encrypt_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to create encrypted S/MIME messages.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-decrypt-command">$smime_decrypt_command</a> command for
possible printf(3)-like sequences.
(S/MIME only)
</p>
'
},

'smime_encrypt_with' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This sets the algorithm that should be used for encryption.
Valid choices are <tt>des</tt>, <tt>des3</tt>, <tt>rc2-40</tt>, <tt>rc2-64</tt>, <tt>rc2-128</tt>.
If <em>unset</em>, <tt>3des</tt> (TripleDES) is used.
(S/MIME only)
</p>
'
},

'smime_get_cert_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to extract X509 certificates from a PKCS7 structure.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-decrypt-command">$smime_decrypt_command</a> command for
possible printf(3)-like sequences.
(S/MIME only)
</p>
'
},

'smime_get_cert_email_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to extract the mail address(es) used for storing
X509 certificates, and for verification purposes (to check whether the
certificate was issued for the sender\'s mailbox).
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-decrypt-command">$smime_decrypt_command</a> command for
possible printf(3)-like sequences.
(S/MIME only)
</p>
'
},

'smime_get_signer_cert_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to extract only the signers X509 certificate from a S/MIME
signature, so that the certificate\'s owner may get compared to the
email\'s <tt>From:</tt> field.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-decrypt-command">$smime_decrypt_command</a> command for
possible printf(3)-like sequences.
(S/MIME only)
</p>
'
},

'smime_import_cert_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to import a certificate via smime_keys.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-decrypt-command">$smime_decrypt_command</a> command for
possible printf(3)-like sequences.
(S/MIME only)
</p>
'
},

'smime_is_default' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
The default behavior of mutt is to use PGP on all auto-sign/encryption
operations. To override and to use OpenSSL instead this must be <em>set</em>.
However, this has no effect while replying, since mutt will automatically
select the same application that was used to sign/encrypt the original
message.  (Note that this variable can be overridden by unsetting <a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-autosmime">$crypt_autosmime</a>.)
(S/MIME only)
</p>
'
},

'smime_keys' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
Since for S/MIME there is no pubring/secring as with PGP, mutt has to handle
storage and retrieval of keys/certs by itself. This is very basic right now,
and stores keys and certificates in two different directories, both
named as the hash-value retrieved from OpenSSL. There is an index file
which contains mailbox-address keyid pair, and which can be manually
edited. This option points to the location of the private keys.
(S/MIME only)
</p>
'
},

'smime_pk7out_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to extract PKCS7 structures of S/MIME signatures,
in order to extract the public X509 certificate(s).
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-decrypt-command">$smime_decrypt_command</a> command for
possible printf(3)-like sequences.
(S/MIME only)
</p>
'
},

'smime_sign_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to created S/MIME signatures of type
multipart/signed, which can be read by all mail clients.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-decrypt-command">$smime_decrypt_command</a> command for
possible printf(3)-like sequences.
(S/MIME only)
</p>
'
},

'smime_sign_opaque_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to created S/MIME signatures of type
application/x-pkcs7-signature, which can only be handled by mail
clients supporting the S/MIME extension.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-decrypt-command">$smime_decrypt_command</a> command for
possible printf(3)-like sequences.
(S/MIME only)
</p>
'
},

'smime_timeout' => {
'default' => '300',
'type' => 'number',
'text' => '



<p>
The number of seconds after which a cached passphrase will expire if
not used.
(S/MIME only)
</p>
'
},

'smime_verify_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to verify S/MIME signatures of type multipart/signed.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-decrypt-command">$smime_decrypt_command</a> command for
possible printf(3)-like sequences.
(S/MIME only)
</p>
'
},

'smime_verify_opaque_command' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This command is used to verify S/MIME signatures of type
application/x-pkcs7-mime.
</p>
<p>
This is a format string, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-decrypt-command">$smime_decrypt_command</a> command for
possible printf(3)-like sequences.
(S/MIME only)
</p>
'
},

'smtp_authenticators' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
This is a colon-delimited list of authentication methods mutt may
attempt to use to log in to an SMTP server, in the order mutt should
try them.  Authentication methods are any SASL mechanism, e.g.
<tt>digest-md5</tt>, <tt>gssapi</tt> or <tt>cram-md5</tt>.
This option is case-insensitive. If it is <tt>unset</tt>
(the default) mutt will try all available methods, in order from
most-secure to least-secure.
</p>
<p>
Example:

</p>

<pre>

set smtp_authenticators="digest-md5:cram-md5"

</pre>
'
},

'smtp_pass' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
Specifies the password for your SMTP account.  If <em>unset</em>, Mutt will
prompt you for your password when you first send mail via SMTP.
See <a href="http://www.mutt.org/doc/manual/manual-6.html#smtp-url">$smtp_url</a> to configure mutt to send mail via SMTP.
</p>
<p>
<em>Warning</em>: you should only use this option when you are on a
fairly secure machine, because the superuser can read your muttrc even
if you are the only one who can read the file.
</p>
'
},

'smtp_url' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
Defines the SMTP smarthost where sent messages should relayed for
delivery. This should take the form of an SMTP URL, e.g.:

</p>

<pre>

smtp[s]://[user[:pass]@]host[:port]

</pre>
<p>
where <tt>[...]</tt> denotes an optional part.
Setting this variable overrides the value of the <a href="http://www.mutt.org/doc/manual/manual-6.html#sendmail">$sendmail</a>
variable.
</p>
'
},

'sort' => {
'default' => 'date',
'type' => 'sort order',
'text' => '



<p>
Specifies how to sort messages in the <tt>index</tt> menu.  Valid values
are:

</p>

<ul>

<li><p>date or date-sent
</p></li>

<li><p>date-received
</p></li>

<li><p>from
</p></li>

<li><p>mailbox-order (unsorted)
</p></li>

<li><p>score
</p></li>

<li><p>size
</p></li>

<li><p>spam
</p></li>

<li><p>subject
</p></li>

<li><p>threads
</p></li>

<li><p>to
</p></li>

</ul>


<p>
You may optionally use the <tt>reverse-</tt> prefix to specify reverse sorting
order (example: <tt>set sort=reverse-date-sent</tt>).
</p>
'
},

'sort_alias' => {
'default' => 'alias',
'type' => 'sort order',
'text' => '



<p>
Specifies how the entries in the <tt>alias</tt> menu are sorted.  The
following are legal values:

</p>

<ul>

<li><p>address (sort alphabetically by email address)
</p></li>

<li><p>alias (sort alphabetically by alias name)
</p></li>

<li><p>unsorted (leave in order specified in .muttrc)
</p></li>

</ul>

'
},

'sort_aux' => {
'default' => 'date',
'type' => 'sort order',
'text' => '



<p>
When sorting by threads, this variable controls how threads are sorted
in relation to other threads, and how the branches of the thread trees
are sorted.  This can be set to any value that <a href="http://www.mutt.org/doc/manual/manual-6.html#sort">$sort</a> can, except
<tt>threads</tt> (in that case, mutt will just use <tt>date-sent</tt>).  You can also
specify the <tt>last-</tt> prefix in addition to the <tt>reverse-</tt> prefix, but <tt>last-</tt>
must come after <tt>reverse-</tt>.  The <tt>last-</tt> prefix causes messages to be
sorted against its siblings by which has the last descendant, using
the rest of <a href="http://www.mutt.org/doc/manual/manual-6.html#sort-aux">$sort_aux</a> as an ordering.  For instance,

</p>

<pre>

set sort_aux=last-date-received

</pre>
<p>
would mean that if a new message is received in a
thread, that thread becomes the last one displayed (or the first, if
you have <tt>set sort=reverse-threads</tt>.)
</p>
<p>
Note: For reversed <a href="http://www.mutt.org/doc/manual/manual-6.html#sort">$sort</a>
order <a href="http://www.mutt.org/doc/manual/manual-6.html#sort-aux">$sort_aux</a> is reversed again (which is not the right thing to do,
but kept to not break any existing configuration setting).
</p>
'
},

'sort_browser' => {
'default' => 'alpha',
'type' => 'sort order',
'text' => '



<p>
Specifies how to sort entries in the file browser.  By default, the
entries are sorted alphabetically.  Valid values:

</p>

<ul>

<li><p>alpha (alphabetically)
</p></li>

<li><p>date
</p></li>

<li><p>size
</p></li>

<li><p>unsorted
</p></li>

</ul>


<p>
You may optionally use the <tt>reverse-</tt> prefix to specify reverse sorting
order (example: <tt>set sort_browser=reverse-date</tt>).
</p>
'
},

'sort_re' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
This variable is only useful when sorting by threads with
<a href="http://www.mutt.org/doc/manual/manual-6.html#strict-threads">$strict_threads</a> <em>unset</em>.  In that case, it changes the heuristic
mutt uses to thread messages by subject.  With <a href="http://www.mutt.org/doc/manual/manual-6.html#sort-re">$sort_re</a> <em>set</em>, mutt will
only attach a message as the child of another message by subject if
the subject of the child message starts with a substring matching the
setting of <a href="http://www.mutt.org/doc/manual/manual-6.html#reply-regexp">$reply_regexp</a>.  With <a href="http://www.mutt.org/doc/manual/manual-6.html#sort-re">$sort_re</a> <em>unset</em>, mutt will attach
the message whether or not this is the case, as long as the
non-<a href="http://www.mutt.org/doc/manual/manual-6.html#reply-regexp">$reply_regexp</a> parts of both messages are identical.
</p>
'
},

'spam_separator' => {
'default' => ',',
'type' => 'string',
'text' => '



<p>
This variable controls what happens when multiple spam headers
are matched: if <em>unset</em>, each successive header will overwrite any
previous matches value for the spam label. If <em>set</em>, each successive
match will append to the previous, using this variable\'s value as a
separator.
</p>
'
},

'spoolfile' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
If your spool mailbox is in a non-default place where Mutt cannot find
it, you can specify its location with this variable.  Mutt will
initially set this variable to the value of the environment
variable $MAIL or $MAILDIR if either is defined.
</p>
'
},

'ssl_ca_certificates_file' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
This variable specifies a file containing trusted CA certificates.
Any server certificate that is signed with one of these CA
certificates is also automatically accepted.
</p>
<p>
Example:

</p>

<pre>

set ssl_ca_certificates_file=/etc/ssl/certs/ca-certificates.crt

</pre>
'
},

'ssl_client_cert' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
The file containing a client certificate and its associated private
key.
</p>
'
},

'ssl_force_tls' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If this variable is <em>set</em>, Mutt will require that all connections
to remote servers be encrypted. Furthermore it will attempt to
negotiate TLS even if the server does not advertise the capability,
since it would otherwise have to abort the connection anyway. This
option supersedes <a href="http://www.mutt.org/doc/manual/manual-6.html#ssl-starttls">$ssl_starttls</a>.
</p>
'
},

'ssl_min_dh_prime_bits' => {
'default' => '0',
'type' => 'number',
'text' => '



<p>
This variable specifies the minimum acceptable prime size (in bits)
for use in any Diffie-Hellman key exchange. A value of 0 will use
the default from the GNUTLS library.
</p>
'
},

'ssl_starttls' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '



<p>
If <em>set</em> (the default), mutt will attempt to use STARTTLS on servers
advertising the capability. When <em>unset</em>, mutt will not attempt to
use STARTTLS regardless of the server\'s capabilities.
</p>
'
},

'ssl_use_sslv2' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
This variable specifies whether to attempt to use SSLv2 in the
SSL authentication process.
</p>
'
},

'ssl_use_sslv3' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
This variable specifies whether to attempt to use SSLv3 in the
SSL authentication process.
</p>
'
},

'ssl_use_tlsv1' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
This variable specifies whether to attempt to use TLSv1 in the
SSL authentication process.
</p>
'
},

'ssl_usesystemcerts' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If set to <em>yes</em>, mutt will use CA certificates in the
system-wide certificate store when checking if a server certificate
is signed by a trusted CA.
</p>
'
},

'ssl_verify_dates' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em> (the default), mutt will not automatically accept a server
certificate that is either not yet valid or already expired. You should
only unset this for particular known hosts, using the
<a href="http://www.mutt.org/doc/manual/manual-6.html#account-hook"><account-hook></a> function.
</p>
'
},

'ssl_verify_host' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em> (the default), mutt will not automatically accept a server
certificate whose host name does not match the host used in your folder
URL. You should only unset this for particular known hosts, using
the <a href="http://www.mutt.org/doc/manual/manual-6.html#account-hook"><account-hook></a> function.
</p>
'
},

'status_chars' => {
'default' => '-*%A',
'type' => 'string',
'text' => '



<p>
Controls the characters used by the <tt>%r</tt> indicator in
<a href="http://www.mutt.org/doc/manual/manual-6.html#status-format">$status_format</a>. The first character is used when the mailbox is
unchanged. The second is used when the mailbox has been changed, and
it needs to be resynchronized. The third is used if the mailbox is in
read-only mode, or if the mailbox will not be written when exiting
that mailbox (You can toggle whether to write changes to a mailbox
with the <toggle-write> operation, bound by default to <tt>%</tt>). The fourth
is used to indicate that the current folder has been opened in attach-
message mode (Certain operations like composing a new mail, replying,
forwarding, etc. are not permitted in this mode).
</p>
'
},

'status_format' => {
'default' => '-%r-Mutt: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%>-(%P)---',
'type' => 'string',
'text' => '



<p>
Controls the format of the status line displayed in the <tt>index</tt>
menu.  This string is similar to <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a>, but has its own
set of printf(3)-like sequences:

</p>

<table>


<tr><td>%b  </td><td>number of mailboxes with new mail *
</td></tr>
<tr><td>%d  </td><td>number of deleted messages *
</td></tr>
<tr><td>%f  </td><td>the full pathname of the current mailbox
</td></tr>
<tr><td>%F  </td><td>number of flagged messages *
</td></tr>
<tr><td>%h  </td><td>local hostname
</td></tr>
<tr><td>%l  </td><td>size (in bytes) of the current mailbox *
</td></tr>
<tr><td>%L  </td><td>size (in bytes) of the messages shown
(i.e., which match the current limit) *
</td></tr>
<tr><td>%m  </td><td>the number of messages in the mailbox *
</td></tr>
<tr><td>%M  </td><td>the number of messages shown (i.e., which match the current limit) *
</td></tr>
<tr><td>%n  </td><td>number of new messages in the mailbox *
</td></tr>
<tr><td>%o  </td><td>number of old unread messages *
</td></tr>
<tr><td>%p  </td><td>number of postponed messages *
</td></tr>
<tr><td>%P  </td><td>percentage of the way through the index
</td></tr>
<tr><td>%r  </td><td>modified/read-only/won\'t-write/attach-message indicator,
according to <a href="http://www.mutt.org/doc/manual/manual-6.html#status-chars">$status_chars</a>
</td></tr>
<tr><td>%s  </td><td>current sorting mode (<a href="http://www.mutt.org/doc/manual/manual-6.html#sort">$sort</a>)
</td></tr>
<tr><td>%S  </td><td>current aux sorting method (<a href="http://www.mutt.org/doc/manual/manual-6.html#sort-aux">$sort_aux</a>)
</td></tr>
<tr><td>%t  </td><td>number of tagged messages *
</td></tr>
<tr><td>%u  </td><td>number of unread messages *
</td></tr>
<tr><td>%v  </td><td>Mutt version string
</td></tr>
<tr><td>%V  </td><td>currently active limit pattern, if any *
</td></tr>
<tr><td>%>X </td><td>right justify the rest of the string and pad with <tt>X</tt>
</td></tr>
<tr><td>%|X </td><td>pad to the end of the line with <tt>X</tt>
</td></tr>
<tr><td>%*X </td><td>soft-fill with character <tt>X</tt> as pad
</td></tr></table>

<p>
For an explanation of <tt>soft-fill</tt>, see the <a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">$index_format</a> documentation.
</p>
<p>
* = can be optionally printed if nonzero
</p>
<p>
Some of the above sequences can be used to optionally print a string
if their value is nonzero.  For example, you may only want to see the
number of flagged messages if such messages exist, since zero is not
particularly meaningful.  To optionally print a string based upon one
of the above sequences, the following construct is used:
</p>
<p>
%?<sequence_char>?<optional_string>?
</p>
<p>
where <em>sequence_char</em> is a character from the table above, and
<em>optional_string</em> is the string you would like printed if
<em>sequence_char</em> is nonzero.  <em>optional_string</em> <em>may</em> contain
other sequences as well as normal text, but you may <em>not</em> nest
optional strings.
</p>
<p>
Here is an example illustrating how to optionally print the number of
new messages in a mailbox:
</p>
<p>
%?n?%n new messages.?
</p>
<p>
You can also switch between two strings using the following construct:
</p>
<p>
%?<sequence_char>?<if_string>&amp;<else_string>?
</p>
<p>
If the value of <em>sequence_char</em> is non-zero, <em>if_string</em> will
be expanded, otherwise <em>else_string</em> will be expanded.
</p>
<p>
You can force the result of any printf(3)-like sequence to be lowercase
by prefixing the sequence character with an underscore (<tt>_</tt>) sign.
For example, if you want to display the local hostname in lowercase,
you would use: <tt>%_h</tt>.
</p>
<p>
If you prefix the sequence character with a colon (<tt>:</tt>) character, mutt
will replace any dots in the expansion by underscores. This might be helpful
with IMAP folders that don\'t like dots in folder names.
</p>
'
},

'status_on_top' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
Setting this variable causes the <tt>status bar</tt> to be displayed on
the first line of the screen rather than near the bottom. If <a href="http://www.mutt.org/doc/manual/manual-6.html#help">$help</a>
is <em>set</em>, too it\'ll be placed at the bottom.
</p>
'
},

'strict_threads' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
If <em>set</em>, threading will only make use of the <tt>In-Reply-To</tt> and
<tt>References:</tt> fields when you <a href="http://www.mutt.org/doc/manual/manual-6.html#sort">$sort</a> by message threads.  By
default, messages with the same subject are grouped together in
<tt>pseudo threads.</tt>. This may not always be desirable, such as in a
personal mailbox where you might have several unrelated messages with
the subjects like <tt>hi</tt> which will get grouped together. See also
<a href="http://www.mutt.org/doc/manual/manual-6.html#sort-re">$sort_re</a> for a less drastic way of controlling this
behavior.
</p>
'
},

'suspend' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>unset</em>, mutt won\'t stop when the user presses the terminal\'s
<em>susp</em> key, usually <tt>^Z</tt>. This is useful if you run mutt
inside an xterm using a command like <tt>xterm -e mutt</tt>.
</p>
'
},

'text_flowed' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will generate <tt>format=flowed</tt> bodies with a content type
of <tt>text/plain; format=flowed</tt>.
This format is easier to handle for some mailing software, and generally
just looks like ordinary text.  To actually make use of this format\'s
features, you\'ll need support in your editor.
</p>
<p>
Note that <a href="http://www.mutt.org/doc/manual/manual-6.html#indent-string">$indent_string</a> is ignored when this option is <em>set</em>.
</p>
'
},

'thorough_search' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Affects the ~b and ~h search operations described in
section <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#patterns">patterns</a></tt>.  If <em>set</em>, the headers and body/attachments of
messages to be searched are decoded before searching. If <em>unset</em>,
messages are searched as they appear in the folder.
</p>
<p>
Users searching attachments or for non-ASCII characters should <em>set</em>
this value because decoding also includes MIME parsing/decoding and possible
character set conversions. Otherwise mutt will attempt to match against the
raw message received (for example quoted-printable encoded or with encoded
headers) which may lead to incorrect search results.
</p>
'
},

'thread_received' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt uses the date received rather than the date sent
to thread messages by subject.
</p>
'
},

'tilde' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, the internal-pager will pad blank lines to the bottom of the
screen with a tilde (<tt>~</tt>).
</p>
'
},

'time_inc' => {
'default' => '0',
'type' => 'number',
'text' => '



<p>
Along with <a href="http://www.mutt.org/doc/manual/manual-6.html#read-inc">$read_inc</a>, <a href="http://www.mutt.org/doc/manual/manual-6.html#write-inc">$write_inc</a>, and <a href="http://www.mutt.org/doc/manual/manual-6.html#net-inc">$net_inc</a>, this
variable controls the frequency with which progress updates are
displayed. It suppresses updates less than <a href="http://www.mutt.org/doc/manual/manual-6.html#time-inc">$time_inc</a> milliseconds
apart. This can improve throughput on systems with slow terminals,
or when running mutt on a remote system.
</p>
<p>
Also see the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#tuning">tuning</a></tt> section of the manual for performance considerations.
</p>
'
},

'timeout' => {
'default' => '600',
'type' => 'number',
'text' => '



<p>
When Mutt is waiting for user input either idling in menus or
in an interactive prompt, Mutt would block until input is
present. Depending on the context, this would prevent certain
operations from working, like checking for new mail or keeping
an IMAP connection alive.
</p>
<p>
This variable controls how many seconds Mutt will at most wait
until it aborts waiting for input, performs these operations and
continues to wait for input.
</p>
<p>
A value of zero or less will cause Mutt to never time out.
</p>
'
},

'tmpdir' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
This variable allows you to specify where Mutt will place its
temporary files needed for displaying and composing messages.  If
this variable is not set, the environment variable $TMPDIR is
used.  If $TMPDIR is not set then <tt>/tmp</tt> is used.
</p>
'
},

'to_chars' => {
'default' => ' +TCFL',
'type' => 'string',
'text' => '



<p>
Controls the character used to indicate mail addressed to you.  The
first character is the one used when the mail is <em>not</em> addressed to your
address.  The second is used when you are the only
recipient of the message.  The third is when your address
appears in the <tt>To:</tt> header field, but you are not the only recipient of
the message.  The fourth character is used when your
address is specified in the <tt>Cc:</tt> header field, but you are not the only
recipient.  The fifth character is used to indicate mail that was sent
by <em>you</em>.  The sixth character is used to indicate when a mail
was sent to a mailing-list you subscribe to.
</p>
'
},

'tunnel' => {
'default' => '(empty)',
'type' => 'string',
'text' => '



<p>
Setting this variable will cause mutt to open a pipe to a command
instead of a raw socket. You may be able to use this to set up
preauthenticated connections to your IMAP/POP3/SMTP server. Example:

</p>

<pre>

set tunnel="ssh -q mailhost.net /usr/local/libexec/imapd"

</pre>
<p>
Note: For this example to work you must be able to log in to the remote
machine without having to enter a password.
</p>
<p>
When set, Mutt uses the tunnel for all remote connections.
Please see <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#account-hook">account-hook</a></tt> in the manual for how to use different
tunnel commands per connection.
</p>
'
},

'uncollapse_jump' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, Mutt will jump to the next unread message, if any,
when the current thread is <em>un</em>collapsed.
</p>
'
},

'use_8bitmime' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
<em>Warning:</em> do not set this variable unless you are using a version
of sendmail which supports the -B8BITMIME flag (such as sendmail
8.8.x) or you may not be able to send mail.
</p>
<p>
When <em>set</em>, Mutt will invoke <a href="http://www.mutt.org/doc/manual/manual-6.html#sendmail">$sendmail</a> with the -B8BITMIME
flag when sending 8-bit messages to enable ESMTP negotiation.
</p>
'
},

'use_domain' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, Mutt will qualify all local addresses (ones without the
<tt>@host</tt> portion) with the value of <a href="http://www.mutt.org/doc/manual/manual-6.html#hostname">$hostname</a>.  If <em>unset</em>, no
addresses will be qualified.
</p>
'
},

'use_envelope_from' => {
'default' => 'no',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will set the <em>envelope</em> sender of the message.
If <a href="http://www.mutt.org/doc/manual/manual-6.html#envelope-from-address">$envelope_from_address</a> is <em>set</em>, it will be used as the sender
address. If <em>unset</em>, mutt will attempt to derive the sender from the
<tt>From:</tt> header.
</p>
<p>
Note that this information is passed to sendmail command using the
-f command line switch. Therefore setting this option is not useful
if the <a href="http://www.mutt.org/doc/manual/manual-6.html#sendmail">$sendmail</a> variable already contains -f or if the
executable pointed to by <a href="http://www.mutt.org/doc/manual/manual-6.html#sendmail">$sendmail</a> doesn\'t support the -f switch.
</p>
'
},

'use_from' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, Mutt will generate the <tt>From:</tt> header field when
sending messages.  If <em>unset</em>, no <tt>From:</tt> header field will be
generated unless the user explicitly sets one using the <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#my-hdr">my_hdr</a></tt>
command.
</p>
'
},

'use_idn' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, Mutt will show you international domain names decoded.
Note: You can use IDNs for addresses even if this is <em>unset</em>.
This variable only affects decoding.
</p>
'
},

'use_ipv6' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, Mutt will look for IPv6 addresses of hosts it tries to
contact.  If this option is <em>unset</em>, Mutt will restrict itself to IPv4 addresses.
Normally, the default should work.
</p>
'
},

'user_agent' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will add a <tt>User-Agent:</tt> header to outgoing
messages, indicating which version of mutt was used for composing
them.
</p>
'
},

'visual' => {
'default' => '(empty)',
'type' => 'path',
'text' => '



<p>
Specifies the visual editor to invoke when the <tt>~v</tt> command is
given in the built-in editor.
</p>
'
},

'wait_key' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Controls whether Mutt will ask you to press a key after an external command
has been invoked by these functions: <shell-escape>,
<pipe-message>, <pipe-entry>, <print-message>,
and <print-entry> commands.
</p>
<p>
It is also used when viewing attachments with <tt><a href="http://www.mutt.org/doc/manual/manual-6.html#auto-view">auto_view</a></tt>, provided
that the corresponding mailcap entry has a <em>needsterminal</em> flag,
and the external program is interactive.
</p>
<p>
When <em>set</em>, Mutt will always ask for a key. When <em>unset</em>, Mutt will wait
for a key only if the external command returned a non-zero status.
</p>
'
},

'weed' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
When <em>set</em>, mutt will weed headers when displaying, forwarding,
printing, or replying to messages.
</p>
'
},

'wrap' => {
'default' => '0',
'type' => 'number',
'text' => '



<p>
When set to a positive value, mutt will wrap text at <a href="http://www.mutt.org/doc/manual/manual-6.html#wrap">$wrap</a> characters.
When set to a negative value, mutt will wrap text so that there are <a href="http://www.mutt.org/doc/manual/manual-6.html#wrap">$wrap</a>
characters of empty space on the right side of the terminal. Setting it
to zero makes mutt wrap at the terminal width.
</p>
'
},

'wrap_headers' => {
'default' => '78',
'type' => 'number',
'text' => '



<p>
This option specifies the number of characters to use for wrapping
an outgoing message\'s headers. Allowed values are between 78 and 998
inclusive.
</p>
<p>
<em>Note:</em> This option usually shouldn\'t be changed. RFC5233
recommends a line length of 78 (the default), so <em>please only change
this setting when you know what you\'re doing</em>.
</p>
'
},

'wrap_search' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Controls whether searches wrap around the end.
</p>
<p>
When <em>set</em>, searches will wrap around the first (or last) item. When
<em>unset</em>, incremental searches will not wrap.
</p>
'
},

'wrapmargin' => {
'default' => '0',
'type' => 'number',
'text' => '



<p>
(DEPRECATED) Equivalent to setting <a href="http://www.mutt.org/doc/manual/manual-6.html#wrap">$wrap</a> with a negative value.
</p>
'
},

'write_bcc' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '



<p>
Controls whether mutt writes out the <tt>Bcc:</tt> header when preparing
messages to be sent.  Exim users may wish to unset this. If mutt
is set to deliver directly via SMTP (see <a href="http://www.mutt.org/doc/manual/manual-6.html#smtp-url">$smtp_url</a>), this
option does nothing: mutt will never write out the <tt>Bcc:</tt> header
in this case.
</p>
'
},

'write_inc' => {
'default' => '10',
'type' => 'number',
'text' => '



<p>
When writing a mailbox, a message will be printed every
<a href="http://www.mutt.org/doc/manual/manual-6.html#write-inc">$write_inc</a> messages to indicate progress.  If set to 0, only a
single message will be displayed before writing a mailbox.
</p>
<p>
Also see the <a href="http://www.mutt.org/doc/manual/manual-6.html#read-inc">$read_inc</a>, <a href="http://www.mutt.org/doc/manual/manual-6.html#net-inc">$net_inc</a> and <a href="http://www.mutt.org/doc/manual/manual-6.html#time-inc">$time_inc</a> variables and the
<tt><a href="http://www.mutt.org/doc/manual/manual-6.html#tuning">tuning</a></tt> section of the manual for performance considerations.
</p>
'
},

};


__DATA__
#
#  abort_nosubject
#
#   Type: quadoption
#   Default: ask-yes
#
#   If set to yes, when composing messages and no subject is given at the
#   subject prompt, composition will be aborted. If set to no, composing
#   messages with no subject given at the subject prompt will never be
#   aborted.
#
#  abort_unmodified
#
#   Type: quadoption
#   Default: yes
#
#   If set to yes, composition will automatically abort after editing the
#   message body if no changes are made to the file (this check only
#   happens after the first edit of the file). When set to no, composition
#   will never be aborted.
#
#  alias_file
#
#   Type: path
#   Default: "~/.muttrc"
#
#   The default file in which to save aliases created by the <create-alias>
#   function. Entries added to this file are encoded in the character set
#   specified by $config_charset if it is set or the current character set
#   otherwise.
#
#   Note: Mutt will not automatically source this file; you must explicitly
#   use the "source" command for it to be executed in case this option
#   points to a dedicated alias file.
#
#   The default for this option is the currently used muttrc file, or
#   "~/.muttrc" if no user muttrc was found.
#
#  alias_format
#
#   Type: string
#   Default: "%4n %2f %t %-10a   %r"
#
#   Specifies the format of the data displayed for the "alias" menu. The
#   following printf(3)-style sequences are available:
#   %a alias name
#   %f flags - currently, a "d" for an alias marked for deletion
#   %n index number
#   %r address which alias expands to
#   %t character which indicates if the alias is tagged for inclusion
#
#  allow_8bit
#
#   Type: boolean
#   Default: yes
#
#   Controls whether 8-bit data is converted to 7-bit using either Quoted-
#   Printable or Base64 encoding when sending mail.
#
#  allow_ansi
#
#   Type: boolean
#   Default: no
#
#   Controls whether ANSI color codes in messages (and color tags in rich
#   text messages) are to be interpreted. Messages containing these codes
#   are rare, but if this option is set, their text will be colored
#   accordingly. Note that this may override your color choices, and even
#   present a security problem, since a message could include a line like
#[-- PGP output follows ...
#
#   and give it the same color as your attachment color (see also
#   $crypt_timestamp).
#
#  arrow_cursor
#
#   Type: boolean
#   Default: no
#
#   When set, an arrow ("->") will be used to indicate the current entry in
#   menus instead of highlighting the whole line. On slow network or modem
#   links this will make response faster because there is less that has to
#   be redrawn on the screen when moving to the next or previous entries in
#   the menu.
#
#  ascii_chars
#
#   Type: boolean
#   Default: no
#
#   If set, Mutt will use plain ASCII characters when displaying thread and
#   attachment trees, instead of the default ACS characters.
#
#  askbcc
#
#   Type: boolean
#   Default: no
#
#   If set, Mutt will prompt you for blind-carbon-copy (Bcc) recipients
#   before editing an outgoing message.
#
#  askcc
#
#   Type: boolean
#   Default: no
#
#   If set, Mutt will prompt you for carbon-copy (Cc) recipients before
#   editing the body of an outgoing message.
#
#  assumed_charset
#
#   Type: string
#   Default: (empty)
#
#   This variable is a colon-separated list of character encoding schemes
#   for messages without character encoding indication. Header field values
#   and message body content without character encoding indication would be
#   assumed that they are written in one of this list. By default, all the
#   header fields and message body without any charset indication are
#   assumed to be in "us-ascii".
#
#   For example, Japanese users might prefer this:
#set assumed_charset="iso-2022-jp:euc-jp:shift_jis:utf-8"
#
#   However, only the first content is valid for the message body.
#
#  attach_charset
#
#   Type: string
#   Default: (empty)
#
#   This variable is a colon-separated list of character encoding schemes
#   for text file attachments. Mutt uses this setting to guess which
#   encoding files being attached are encoded in to convert them to a
#   proper character set given in $send_charset.
#
#   If unset, the value of $charset will be used instead. For example, the
#   following configuration would work for Japanese text handling:
#set attach_charset="iso-2022-jp:euc-jp:shift_jis:utf-8"
#
#   Note: for Japanese users, "iso-2022-*" must be put at the head of the
#   value as shown above if included.
#
#  attach_format
#
#   Type: string
#   Default: "%u%D%I %t%4n %T%.40d%> [%.7m/%.10M, %.6e%?C?, %C?, %s] "
#
#   This variable describes the format of the "attachment" menu. The
#   following printf(3)-style sequences are understood:
#   %C charset
#   %c requires charset conversion ("n" or "c")
#   %D deleted flag
#   %d description
#   %e MIME content-transfer-encoding
#   %f filename
#   %I disposition ("I" for inline, "A" for attachment)
#   %m major MIME type
#   %M MIME subtype
#   %n attachment number
#   %Q "Q", if MIME part qualifies for attachment counting
#   %s size
#   %t tagged flag
#   %T graphic tree characters
#   %u unlink (=to delete) flag
#   %X number of qualifying MIME parts in this part and its children
#   (please see the "attachments" section for possible speed effects)
#   %>X right justify the rest of the string and pad with character "X"
#   %|X pad to the end of the line with character "X"
#   %*X soft-fill with character "X" as pad
#
#   For an explanation of "soft-fill", see the $index_format documentation.
#
#  attach_sep
#
#   Type: string
#   Default: "\n"
#
#   The separator to add between attachments when operating (saving,
#   printing, piping, etc) on a list of tagged attachments.
#
#  attach_split
#
#   Type: boolean
#   Default: yes
#
#   If this variable is unset, when operating (saving, printing, piping,
#   etc) on a list of tagged attachments, Mutt will concatenate the
#   attachments and will operate on them as a single attachment. The
#   $attach_sep separator is added after each attachment. When set, Mutt
#   will operate on the attachments one by one.
#
#  attribution
#
#   Type: string
#   Default: "On %d, %n wrote:"
#
#   This is the string that will precede a message which has been included
#   in a reply. For a full listing of defined printf(3)-like sequences see
#   the section on $index_format.
#
#  auto_tag
#
#   Type: boolean
#   Default: no
#
#   When set, functions in the index menu which affect a message will be
#   applied to all tagged messages (if there are any). When unset, you must
#   first use the <tag-prefix> function (bound to ";" by default) to make
#   the next function apply to all tagged messages.
#
#  autoedit
#
#   Type: boolean
#   Default: no
#
#   When set along with $edit_headers, Mutt will skip the initial send-menu
#   (prompting for subject and recipients) and allow you to immediately
#   begin editing the body of your message. The send-menu may still be
#   accessed once you have finished editing the body of your message.
#
#   Note: when this option is set, you cannot use send-hooks that depend on
#   the recipients when composing a new (non-reply) message, as the initial
#   list of recipients is empty.
#
#   Also see $fast_reply.
#
#  beep
#
#   Type: boolean
#   Default: yes
#
#   When this variable is set, mutt will beep when an error occurs.
#
#  beep_new
#
#   Type: boolean
#   Default: no
#
#   When this variable is set, mutt will beep whenever it prints a message
#   notifying you of new mail. This is independent of the setting of the
#   $beep variable.
#
#  bounce
#
#   Type: quadoption
#   Default: ask-yes
#
#   Controls whether you will be asked to confirm bouncing messages. If set
#   to yes you don't get asked if you want to bounce a message. Setting
#   this variable to no is not generally useful, and thus not recommended,
#   because you are unable to bounce messages.
#
#  bounce_delivered
#
#   Type: boolean
#   Default: yes
#
#   When this variable is set, mutt will include Delivered-To headers when
#   bouncing messages. Postfix users may wish to unset this variable.
#
#  braille_friendly
#
#   Type: boolean
#   Default: no
#
#   When this variable is set, mutt will place the cursor at the beginning
#   of the current line in menus, even when the $arrow_cursor variable is
#   unset, making it easier for blind persons using Braille displays to
#   follow these menus. The option is unset by default because many visual
#   terminals don't permit making the cursor invisible.
#
#  certificate_file
#
#   Type: path
#   Default: "~/.mutt_certificates"
#
#   This variable specifies the file where the certificates you trust are
#   saved. When an unknown certificate is encountered, you are asked if you
#   accept it or not. If you accept it, the certificate can also be saved
#   in this file and further connections are automatically accepted.
#
#   You can also manually add CA certificates in this file. Any server
#   certificate that is signed with one of these CA certificates is also
#   automatically accepted.
#
#   Example:
#set certificate_file=~/.mutt/certificates
#
#  charset
#
#   Type: string
#   Default: (empty)
#
#   Character set your terminal uses to display and enter textual data. It
#   is also the fallback for $send_charset.
#
#   Upon startup Mutt tries to derive this value from environment variables
#   such as $LC_CTYPE or $LANG.
#
#   Note: It should only be set in case Mutt isn't able to determine the
#   character set used correctly.
#
#  check_mbox_size
#
#   Type: boolean
#   Default: no
#
#   When this variable is set, mutt will use file size attribute instead of
#   access time when checking for new mail in mbox and mmdf folders.
#
#   This variable is unset by default and should only be enabled when new
#   mail detection for these folder types is unreliable or doesn't work.
#
#   Note that enabling this variable should happen before any "mailboxes"
#   directives occur in configuration files regarding mbox or mmdf folders
#   because mutt needs to determine the initial new mail status of such a
#   mailbox by performing a fast mailbox scan when it is defined.
#   Afterwards the new mail status is tracked by file size changes.
#
#  check_new
#
#   Type: boolean
#   Default: yes
#
#   Note: this option only affects maildir and MH style mailboxes.
#
#   When set, Mutt will check for new mail delivered while the mailbox is
#   open. Especially with MH mailboxes, this operation can take quite some
#   time since it involves scanning the directory and checking each file to
#   see if it has already been looked at. If this variable is unset, no
#   check for new mail is performed while the mailbox is open.
#
#  collapse_unread
#
#   Type: boolean
#   Default: yes
#
#   When unset, Mutt will not collapse a thread if it contains any unread
#   messages.
#
#  compose_format
#
#   Type: string
#   Default: "-- Mutt: Compose  [Approx. msg size: %l   Atts: %a]%>-"
#
#   Controls the format of the status line displayed in the "compose" menu.
#   This string is similar to $status_format, but has its own set of
#   printf(3)-like sequences:
#   %a total number of attachments
#   %h local hostname
#   %l approximate size (in bytes) of the current message
#   %v Mutt version string
#
#   See the text describing the $status_format option for more information
#   on how to set $compose_format.
#
#  config_charset
#
#   Type: string
#   Default: (empty)
#
#   When defined, Mutt will recode commands in rc files from this encoding
#   to the current character set as specified by $charset and aliases
#   written to $alias_file from the current character set.
#
#   Please note that if setting $charset it must be done before setting
#   $config_charset.
#
#   Recoding should be avoided as it may render unconvertable characters as
#   question marks which can lead to undesired side effects (for example in
#   regular expressions).
#
#  confirmappend
#
#   Type: boolean
#   Default: yes
#
#   When set, Mutt will prompt for confirmation when appending messages to
#   an existing mailbox.
#
#  confirmcreate
#
#   Type: boolean
#   Default: yes
#
#   When set, Mutt will prompt for confirmation when saving messages to a
#   mailbox which does not yet exist before creating it.
#
#  connect_timeout
#
#   Type: number
#   Default: 30
#
#   Causes Mutt to timeout a network connection (for IMAP, POP or SMTP)
#   after this many seconds if the connection is not able to be
#   established. A negative value causes Mutt to wait indefinitely for the
#   connection attempt to succeed.
#
#  content_type
#
#   Type: string
#   Default: "text/plain"
#
#   Sets the default Content-Type for the body of newly composed messages.
#
#  copy
#
#   Type: quadoption
#   Default: yes
#
#   This variable controls whether or not copies of your outgoing messages
#   will be saved for later references. Also see $record, $save_name,
#   $force_name and "fcc-hook".
#
#  crypt_autoencrypt
#
#   Type: boolean
#   Default: no
#
#   Setting this variable will cause Mutt to always attempt to PGP encrypt
#   outgoing messages. This is probably only useful in connection to the
#   "send-hook" command. It can be overridden by use of the pgp menu, when
#   encryption is not required or signing is requested as well. If
#   $smime_is_default is set, then OpenSSL is used instead to create S/MIME
#   messages and settings can be overridden by use of the smime menu
#   instead. (Crypto only)
#
#  crypt_autopgp
#
#   Type: boolean
#   Default: yes
#
#   This variable controls whether or not mutt may automatically enable PGP
#   encryption/signing for messages. See also $crypt_autoencrypt,
#   $crypt_replyencrypt, $crypt_autosign, $crypt_replysign and
#   $smime_is_default.
#
#  crypt_autosign
#
#   Type: boolean
#   Default: no
#
#   Setting this variable will cause Mutt to always attempt to
#   cryptographically sign outgoing messages. This can be overridden by use
#   of the pgp menu, when signing is not required or encryption is
#   requested as well. If $smime_is_default is set, then OpenSSL is used
#   instead to create S/MIME messages and settings can be overridden by use
#   of the smime menu instead of the pgp menu. (Crypto only)
#
#  crypt_autosmime
#
#   Type: boolean
#   Default: yes
#
#   This variable controls whether or not mutt may automatically enable
#   S/MIME encryption/signing for messages. See also $crypt_autoencrypt,
#   $crypt_replyencrypt, $crypt_autosign, $crypt_replysign and
#   $smime_is_default.
#
#  crypt_replyencrypt
#
#   Type: boolean
#   Default: yes
#
#   If set, automatically PGP or OpenSSL encrypt replies to messages which
#   are encrypted. (Crypto only)
#
#  crypt_replysign
#
#   Type: boolean
#   Default: no
#
#   If set, automatically PGP or OpenSSL sign replies to messages which are
#   signed.
#
#   Note: this does not work on messages that are encrypted and signed!
#   (Crypto only)
#
#  crypt_replysignencrypted
#
#   Type: boolean
#   Default: no
#
#   If set, automatically PGP or OpenSSL sign replies to messages which are
#   encrypted. This makes sense in combination with $crypt_replyencrypt,
#   because it allows you to sign all messages which are automatically
#   encrypted. This works around the problem noted in $crypt_replysign,
#   that mutt is not able to find out whether an encrypted message is also
#   signed. (Crypto only)
#
#  crypt_timestamp
#
#   Type: boolean
#   Default: yes
#
#   If set, mutt will include a time stamp in the lines surrounding PGP or
#   S/MIME output, so spoofing such lines is more difficult. If you are
#   using colors to mark these lines, and rely on these, you may unset this
#   setting. (Crypto only)
#
#  crypt_use_gpgme
#
#   Type: boolean
#   Default: no
#
#   This variable controls the use of the GPGME-enabled crypto backends. If
#   it is set and Mutt was built with gpgme support, the gpgme code for
#   S/MIME and PGP will be used instead of the classic code. Note that you
#   need to set this option in .muttrc; it won't have any effect when used
#   interactively.
#
#  crypt_use_pka
#
#   Type: boolean
#   Default: no
#
#   Controls whether mutt uses PKA (see
#   http://www.g10code.de/docs/pka-intro.de.pdf) during signature
#   verification (only supported by the GPGME backend).
#
#  crypt_verify_sig
#
#   Type: quadoption
#   Default: yes
#
#   If "yes", always attempt to verify PGP or S/MIME signatures. If
#   "ask-*", ask whether or not to verify the signature. If "no", never
#   attempt to verify cryptographic signatures. (Crypto only)
#
#  date_format
#
#   Type: string
#   Default: "!%a, %b %d, %Y at %I:%M:%S%p %Z"
#
#   This variable controls the format of the date printed by the "%d"
#   sequence in $index_format. This is passed to the strftime(3) function
#   to process the date, see the man page for the proper syntax.
#
#   Unless the first character in the string is a bang ("!"), the month and
#   week day names are expanded according to the locale specified in the
#   variable $locale. If the first character in the string is a bang, the
#   bang is discarded, and the month and week day names in the rest of the
#   string are expanded in the C locale (that is in US English).
#
#  default_hook
#
#   Type: string
#   Default: "~f %s !~P | (~P ~C %s)"
#
#   This variable controls how "message-hook", "reply-hook", "send-hook",
#   "send2-hook", "save-hook", and "fcc-hook" will be interpreted if they
#   are specified with only a simple regexp, instead of a matching pattern.
#   The hooks are expanded when they are declared, so a hook will be
#   interpreted according to the value of this variable at the time the
#   hook is declared.
#
#   The default value matches if the message is either from a user matching
#   the regular expression given, or if it is from you (if the from address
#   matches "alternates") and is to or cc'ed to a user matching the given
#   regular expression.
#
#  delete
#
#   Type: quadoption
#   Default: ask-yes
#
#   Controls whether or not messages are really deleted when closing or
#   synchronizing a mailbox. If set to yes, messages marked for deleting
#   will automatically be purged without prompting. If set to no, messages
#   marked for deletion will be kept in the mailbox.
#
#  delete_untag
#
#   Type: boolean
#   Default: yes
#
#   If this option is set, mutt will untag messages when marking them for
#   deletion. This applies when you either explicitly delete a message, or
#   when you save it to another folder.
#
#  digest_collapse
#
#   Type: boolean
#   Default: yes
#
#   If this option is set, mutt's received-attachments menu will not show
#   the subparts of individual messages in a multipart/digest. To see these
#   subparts, press "v" on that menu.
#
#  display_filter
#
#   Type: path
#   Default: (empty)
#
#   When set, specifies a command used to filter messages. When a message
#   is viewed it is passed as standard input to $display_filter, and the
#   filtered message is read from the standard output.
#
#  dotlock_program
#
#   Type: path
#   Default: "/usr/local/bin/mutt_dotlock"
#
#   Contains the path of the mutt_dotlock(8) binary to be used by mutt.
#
#  dsn_notify
#
#   Type: string
#   Default: (empty)
#
#   This variable sets the request for when notification is returned. The
#   string consists of a comma separated list (no spaces!) of one or more
#   of the following: never, to never request notification, failure, to
#   request notification on transmission failure, delay, to be notified of
#   message delays, success, to be notified of successful transmission.
#
#   Example:
#set dsn_notify="failure,delay"
#
#   Note: when using $sendmail for delivery, you should not enable this
#   unless you are either using Sendmail 8.8.x or greater or a MTA
#   providing a sendmail(1)-compatible interface supporting the -N option
#   for DSN. For SMTP delivery, DSN support is auto-detected so that it
#   depends on the server whether DSN will be used or not.
#
#  dsn_return
#
#   Type: string
#   Default: (empty)
#
#   This variable controls how much of your message is returned in DSN
#   messages. It may be set to either hdrs to return just the message
#   header, or full to return the full message.
#
#   Example:
#set dsn_return=hdrs
#
#   Note: when using $sendmail for delivery, you should not enable this
#   unless you are either using Sendmail 8.8.x or greater or a MTA
#   providing a sendmail(1)-compatible interface supporting the -R option
#   for DSN. For SMTP delivery, DSN support is auto-detected so that it
#   depends on the server whether DSN will be used or not.
#
#  duplicate_threads
#
#   Type: boolean
#   Default: yes
#
#   This variable controls whether mutt, when $sort is set to threads,
#   threads messages with the same Message-Id together. If it is set, it
#   will indicate that it thinks they are duplicates of each other with an
#   equals sign in the thread tree.
#
#  edit_headers
#
#   Type: boolean
#   Default: no
#
#   This option allows you to edit the header of your outgoing messages
#   along with the body of your message.
#
#   Note that changes made to the References: and Date: headers are ignored
#   for interoperability reasons.
#
#  editor
#
#   Type: path
#   Default: (empty)
#
#   This variable specifies which editor is used by mutt. It defaults to
#   the value of the $VISUAL, or $EDITOR, environment variable, or to the
#   string "vi" if neither of those are set.
#
#  encode_from
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will quoted-printable encode messages when they contain
#   the string "From " (note the trailing space) in the beginning of a
#   line. This is useful to avoid the tampering certain mail delivery and
#   transport agents tend to do with messages (in order to prevent tools
#   from misinterpreting the line as a mbox message separator).
#
#  entropy_file
#
#   Type: path
#   Default: (empty)
#
#   The file which includes random data that is used to initialize SSL
#   library functions.
#
#  envelope_from_address
#
#   Type: e-mail address
#   Default: (empty)
#
#   Manually sets the envelope sender for outgoing messages. This value is
#   ignored if $use_envelope_from is unset.
#
#  escape
#
#   Type: string
#   Default: "~"
#
#   Escape character to use for functions in the built-in editor.
#
#  fast_reply
#
#   Type: boolean
#   Default: no
#
#   When set, the initial prompt for recipients and subject are skipped
#   when replying to messages, and the initial prompt for subject is
#   skipped when forwarding messages.
#
#   Note: this variable has no effect when the $autoedit variable is set.
#
#  fcc_attach
#
#   Type: quadoption
#   Default: yes
#
#   This variable controls whether or not attachments on outgoing messages
#   are saved along with the main body of your message.
#
#  fcc_clear
#
#   Type: boolean
#   Default: no
#
#   When this variable is set, FCCs will be stored unencrypted and
#   unsigned, even when the actual message is encrypted and/or signed. (PGP
#   only)
#
#  folder
#
#   Type: path
#   Default: "~/Mail"
#
#   Specifies the default location of your mailboxes. A "+" or "=" at the
#   beginning of a pathname will be expanded to the value of this variable.
#   Note that if you change this variable (from the default) value you need
#   to make sure that the assignment occurs before you use "+" or "=" for
#   any other variables since expansion takes place when handling the
#   "mailboxes" command.
#
#  folder_format
#
#   Type: string
#   Default: "%2C %t %N %F %2l %-8.8u %-8.8g %8s %d %f"
#
#   This variable allows you to customize the file browser display to your
#   personal taste. This string is similar to $index_format, but has its
#   own set of printf(3)-like sequences:
#   %C current file number
#   %d date/time folder was last modified
#   %D date/time folder was last modified using $date_format.
#   %f filename ("/" is appended to directory names, "@" to symbolic links
#   and "*" to executable files)
#   %F file permissions
#   %g group name (or numeric gid, if missing)
#   %l number of hard links
#   %N N if folder has new mail, blank otherwise
#   %s size in bytes
#   %t "*" if the file is tagged, blank otherwise
#   %u owner name (or numeric uid, if missing)
#   %>X right justify the rest of the string and pad with character "X"
#   %|X pad to the end of the line with character "X"
#   %*X soft-fill with character "X" as pad
#
#   For an explanation of "soft-fill", see the $index_format documentation.
#
#  followup_to
#
#   Type: boolean
#   Default: yes
#
#   Controls whether or not the "Mail-Followup-To:" header field is
#   generated when sending mail. When set, Mutt will generate this field
#   when you are replying to a known mailing list, specified with the
#   "subscribe" or "lists" commands.
#
#   This field has two purposes. First, preventing you from receiving
#   duplicate copies of replies to messages which you send to mailing
#   lists, and second, ensuring that you do get a reply separately for any
#   messages sent to known lists to which you are not subscribed.
#
#   The header will contain only the list's address for subscribed lists,
#   and both the list address and your own email address for unsubscribed
#   lists. Without this header, a group reply to your message sent to a
#   subscribed list will be sent to both the list and your address,
#   resulting in two copies of the same email for you.
#
#  force_name
#
#   Type: boolean
#   Default: no
#
#   This variable is similar to $save_name, except that Mutt will store a
#   copy of your outgoing message by the username of the address you are
#   sending to even if that mailbox does not exist.
#
#   Also see the $record variable.
#
#  forward_decode
#
#   Type: boolean
#   Default: yes
#
#   Controls the decoding of complex MIME messages into text/plain when
#   forwarding a message. The message header is also RFC2047 decoded. This
#   variable is only used, if $mime_forward is unset, otherwise
#   $mime_forward_decode is used instead.
#
#  forward_decrypt
#
#   Type: boolean
#   Default: yes
#
#   Controls the handling of encrypted messages when forwarding a message.
#   When set, the outer layer of encryption is stripped off. This variable
#   is only used if $mime_forward is set and $mime_forward_decode is unset.
#   (PGP only)
#
#  forward_edit
#
#   Type: quadoption
#   Default: yes
#
#   This quadoption controls whether or not the user is automatically
#   placed in the editor when forwarding messages. For those who always
#   want to forward with no modification, use a setting of "no".
#
#  forward_format
#
#   Type: string
#   Default: "[%a: %s]"
#
#   This variable controls the default subject when forwarding a message.
#   It uses the same format sequences as the $index_format variable.
#
#  forward_quote
#
#   Type: boolean
#   Default: no
#
#   When set, forwarded messages included in the main body of the message
#   (when $mime_forward is unset) will be quoted using $indent_string.
#
#  from
#
#   Type: e-mail address
#   Default: (empty)
#
#   When set, this variable contains a default from address. It can be
#   overridden using "my_hdr" (including from a "send-hook") and
#   $reverse_name. This variable is ignored if $use_from is unset.
#
#   This setting defaults to the contents of the environment variable
#   $EMAIL.
#
#  gecos_mask
#
#   Type: regular expression
#   Default: "^[^,]*"
#
#   A regular expression used by mutt to parse the GECOS field of a
#   password entry when expanding the alias. The default value will return
#   the string up to the first "," encountered. If the GECOS field contains
#   a string like "lastname, firstname" then you should set it to ".*".
#
#   This can be useful if you see the following behavior: you address an
#   e-mail to user ID "stevef" whose full name is "Steve Franklin". If mutt
#   expands "stevef" to ""Franklin" stevef@foo.bar" then you should set the
#   $gecos_mask to a regular expression that will match the whole name so
#   mutt will expand "Franklin" to "Franklin, Steve".
#
#  hdrs
#
#   Type: boolean
#   Default: yes
#
#   When unset, the header fields normally added by the "my_hdr" command
#   are not created. This variable must be unset before composing a new
#   message or replying in order to take effect. If set, the user defined
#   header fields are added to every new message.
#
#  header
#
#   Type: boolean
#   Default: no
#
#   When set, this variable causes Mutt to include the header of the
#   message you are replying to into the edit buffer. The $weed setting
#   applies.
#
#  header_cache
#
#   Type: path
#   Default: (empty)
#
#   This variable points to the header cache database. If pointing to a
#   directory Mutt will contain a header cache database file per folder, if
#   pointing to a file that file will be a single global header cache. By
#   default it is unset so no header caching will be used.
#
#   Header caching can greatly improve speed when opening POP, IMAP MH or
#   Maildir folders, see "caching" for details.
#
#  header_cache_compress
#
#   Type: boolean
#   Default: yes
#
#   When mutt is compiled with qdbm or tokyocabinet as header cache
#   backend, this option determines whether the database will be
#   compressed. Compression results in database files roughly being one
#   fifth of the usual diskspace, but the decompression can result in a
#   slower opening of cached folder(s) which in general is still much
#   faster than opening non header cached folders.
#
#  header_cache_pagesize
#
#   Type: string
#   Default: "16384"
#
#   When mutt is compiled with either gdbm or bdb4 as the header cache
#   backend, this option changes the database page size. Too large or too
#   small values can waste space, memory, or CPU time. The default should
#   be more or less optimal for most use cases.
#
#  help
#
#   Type: boolean
#   Default: yes
#
#   When set, help lines describing the bindings for the major functions
#   provided by each menu are displayed on the first line of the screen.
#
#   Note: The binding will not be displayed correctly if the function is
#   bound to a sequence rather than a single keystroke. Also, the help line
#   may not be updated if a binding is changed while Mutt is running. Since
#   this variable is primarily aimed at new users, neither of these should
#   present a major problem.
#
#  hidden_host
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will skip the host name part of $hostname variable when
#   adding the domain part to addresses. This variable does not affect the
#   generation of Message-IDs, and it will not lead to the cut-off of
#   first-level domains.
#
#  hide_limited
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will not show the presence of messages that are hidden
#   by limiting, in the thread tree.
#
#  hide_missing
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will not show the presence of missing messages in the
#   thread tree.
#
#  hide_thread_subject
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will not show the subject of messages in the thread tree
#   that have the same subject as their parent or closest previously
#   displayed sibling.
#
#  hide_top_limited
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will not show the presence of messages that are hidden
#   by limiting, at the top of threads in the thread tree. Note that when
#   $hide_limited is set, this option will have no effect.
#
#  hide_top_missing
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will not show the presence of missing messages at the
#   top of threads in the thread tree. Note that when $hide_missing is set,
#   this option will have no effect.
#
#  history
#
#   Type: number
#   Default: 10
#
#   This variable controls the size (in number of strings remembered) of
#   the string history buffer per category. The buffer is cleared each time
#   the variable is set.
#
#  history_file
#
#   Type: path
#   Default: "~/.mutthistory"
#
#   The file in which Mutt will save its history.
#
#  honor_disposition
#
#   Type: boolean
#   Default: no
#
#   When set, Mutt will not display attachments with a disposition of
#   "attachment" inline even if it could render the part to plain text.
#   These MIME parts can only be viewed from the attachment menu.
#
#   If unset, Mutt will render all MIME parts it can properly transform to
#   plain text.
#
#  honor_followup_to
#
#   Type: quadoption
#   Default: yes
#
#   This variable controls whether or not a Mail-Followup-To header is
#   honored when group-replying to a message.
#
#  hostname
#
#   Type: string
#   Default: (empty)
#
#   Specifies the fully-qualified hostname of the system mutt is running on
#   containing the host's name and the DNS domain it belongs to. It is used
#   as the domain part (after "@") for local email addresses as well as
#   Message-Id headers.
#
#   Its value is determined at startup as follows: If the node's name as
#   returned by the uname(3) function contains the hostname and the domain,
#   these are used to construct $hostname. If there is no domain part
#   returned, Mutt will look for a "domain" or "search" line in
#   /etc/resolv.conf to determine the domain. Optionally, Mutt can be
#   compiled with a fixed domain name in which case a detected one is not
#   used.
#
#   Also see $use_domain and $hidden_host.
#
#  ignore_linear_white_space
#
#   Type: boolean
#   Default: no
#
#   This option replaces linear-white-space between encoded-word and text
#   to a single space to prevent the display of MIME-encoded "Subject:"
#   field from being divided into multiple lines.
#
#  ignore_list_reply_to
#
#   Type: boolean
#   Default: no
#
#   Affects the behavior of the <reply> function when replying to messages
#   from mailing lists (as defined by the "subscribe" or "lists" commands).
#   When set, if the "Reply-To:" field is set to the same value as the
#   "To:" field, Mutt assumes that the "Reply-To:" field was set by the
#   mailing list to automate responses to the list, and will ignore this
#   field. To direct a response to the mailing list when this option is
#   set, use the <list-reply> function; <group-reply> will reply to both
#   the sender and the list.
#
#  imap_authenticators
#
#   Type: string
#   Default: (empty)
#
#   This is a colon-delimited list of authentication methods mutt may
#   attempt to use to log in to an IMAP server, in the order mutt should
#   try them. Authentication methods are either "login" or the right side
#   of an IMAP "AUTH=xxx" capability string, e.g. "digest-md5", "gssapi" or
#   "cram-md5". This option is case-insensitive. If it's unset (the
#   default) mutt will try all available methods, in order from most-secure
#   to least-secure.
#
#   Example:
#set imap_authenticators="gssapi:cram-md5:login"
#
#   Note: Mutt will only fall back to other authentication methods if the
#   previous methods are unavailable. If a method is available but
#   authentication fails, mutt will not connect to the IMAP server.
#
#  imap_check_subscribed
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will fetch the set of subscribed folders from your
#   server on connection, and add them to the set of mailboxes it polls for
#   new mail just as if you had issued individual "mailboxes" commands.
#
#  imap_delim_chars
#
#   Type: string
#   Default: "/."
#
#   This contains the list of characters which you would like to treat as
#   folder separators for displaying IMAP paths. In particular it helps in
#   using the "=" shortcut for your folder variable.
#
#  imap_headers
#
#   Type: string
#   Default: (empty)
#
#   Mutt requests these header fields in addition to the default headers
#   ("Date:", "From:", "Subject:", "To:", "Cc:", "Message-Id:",
#   "References:", "Content-Type:", "Content-Description:", "In-Reply-To:",
#   "Reply-To:", "Lines:", "List-Post:", "X-Label:") from IMAP servers
#   before displaying the index menu. You may want to add more headers for
#   spam detection.
#
#   Note: This is a space separated list, items should be uppercase and not
#   contain the colon, e.g. "X-BOGOSITY X-SPAM-STATUS" for the
#   "X-Bogosity:" and "X-Spam-Status:" header fields.
#
#  imap_idle
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will attempt to use the IMAP IDLE extension to check for
#   new mail in the current mailbox. Some servers (dovecot was the
#   inspiration for this option) react badly to mutt's implementation. If
#   your connection seems to freeze up periodically, try unsetting this.
#
#  imap_keepalive
#
#   Type: number
#   Default: 900
#
#   This variable specifies the maximum amount of time in seconds that mutt
#   will wait before polling open IMAP connections, to prevent the server
#   from closing them before mutt has finished with them. The default is
#   well within the RFC-specified minimum amount of time (30 minutes)
#   before a server is allowed to do this, but in practice the RFC does get
#   violated every now and then. Reduce this number if you find yourself
#   getting disconnected from your IMAP server due to inactivity.
#
#  imap_list_subscribed
#
#   Type: boolean
#   Default: no
#
#   This variable configures whether IMAP folder browsing will look for
#   only subscribed folders or all folders. This can be toggled in the IMAP
#   browser with the <toggle-subscribed> function.
#
#  imap_login
#
#   Type: string
#   Default: (empty)
#
#   Your login name on the IMAP server.
#
#   This variable defaults to the value of $imap_user.
#
#  imap_pass
#
#   Type: string
#   Default: (empty)
#
#   Specifies the password for your IMAP account. If unset, Mutt will
#   prompt you for your password when you invoke the <imap-fetch-mail>
#   function or try to open an IMAP folder.
#
#   Warning: you should only use this option when you are on a fairly
#   secure machine, because the superuser can read your muttrc even if you
#   are the only one who can read the file.
#
#  imap_passive
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will not open new IMAP connections to check for new
#   mail. Mutt will only check for new mail over existing IMAP connections.
#   This is useful if you don't want to be prompted to user/password pairs
#   on mutt invocation, or if opening the connection is slow.
#
#  imap_peek
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will avoid implicitly marking your mail as read whenever
#   you fetch a message from the server. This is generally a good thing,
#   but can make closing an IMAP folder somewhat slower. This option exists
#   to appease speed freaks.
#
#  imap_pipeline_depth
#
#   Type: number
#   Default: 15
#
#   Controls the number of IMAP commands that may be queued up before they
#   are sent to the server. A deeper pipeline reduces the amount of time
#   mutt must wait for the server, and can make IMAP servers feel much more
#   responsive. But not all servers correctly handle pipelined commands, so
#   if you have problems you might want to try setting this variable to 0.
#
#   Note: Changes to this variable have no effect on open connections.
#
#  imap_servernoise
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will display warning messages from the IMAP server as
#   error messages. Since these messages are often harmless, or generated
#   due to configuration problems on the server which are out of the users'
#   hands, you may wish to suppress them at some point.
#
#  imap_user
#
#   Type: string
#   Default: (empty)
#
#   The name of the user whose mail you intend to access on the IMAP
#   server.
#
#   This variable defaults to your user name on the local machine.
#
#  implicit_autoview
#
#   Type: boolean
#   Default: no
#
#   If set to "yes", mutt will look for a mailcap entry with the
#   "copiousoutput" flag set for every MIME attachment it doesn't have an
#   internal viewer defined for. If such an entry is found, mutt will use
#   the viewer defined in that entry to convert the body part to text form.
#
#  include
#
#   Type: quadoption
#   Default: ask-yes
#
#   Controls whether or not a copy of the message(s) you are replying to is
#   included in your reply.
#
#  include_onlyfirst
#
#   Type: boolean
#   Default: no
#
#   Controls whether or not Mutt includes only the first attachment of the
#   message you are replying.
#
#  indent_string
#
#   Type: string
#   Default: "> "
#
#   Specifies the string to prepend to each line of text quoted in a
#   message to which you are replying. You are strongly encouraged not to
#   change this value, as it tends to agitate the more fanatical netizens.
#
#   The value of this option is ignored if $text_flowed is set, too because
#   the quoting mechanism is strictly defined for format=flowed.
#
#   This option is a format string, please see the description of
#   $index_format for supported printf(3)-style sequences.
#
#  index_format
#
#   Type: string
#   Default: "%4C %Z %{%b %d} %-15.15L (%?l?%4l&%4c?) %s"
#
#   This variable allows you to customize the message index display to your
#   personal taste.
#
#   "Format strings" are similar to the strings used in the C function
#   printf(3) to format output (see the man page for more details). The
#   following sequences are defined in Mutt:
#   %a address of the author
#   %A reply-to address (if present; otherwise: address of author)
#   %b filename of the original message folder (think mailbox)
#   %B the list to which the letter was sent, or else the folder name (%b).
#   %c number of characters (bytes) in the message
#   %C current message number
#   %d date and time of the message in the format specified by $date_format
#   converted to sender's time zone
#   %D date and time of the message in the format specified by $date_format
#   converted to the local time zone
#   %e current message number in thread
#   %E number of messages in current thread
#   %f sender (address + real name), either From: or Return-Path:
#   %F author name, or recipient name if the message is from you
#   %H spam attribute(s) of this message
#   %i message-id of the current message
#   %l number of lines in the message (does not work with maildir, mh, and
#   possibly IMAP folders)
#   %L If an address in the "To:" or "Cc:" header field matches an address
#   defined by the users "subscribe" command, this displays "To
#   <list-name>", otherwise the same as %F.
#   %m total number of message in the mailbox
#   %M number of hidden messages if the thread is collapsed.
#   %N message score
#   %n author's real name (or address if missing)
#   %O original save folder where mutt would formerly have stashed the
#   message: list name or recipient name if not sent to a list
#   %P progress indicator for the built-in pager (how much of the file has
#   been displayed)
#   %s subject of the message
#   %S status of the message ("N"/"D"/"d"/"!"/"r"/*)
#   %t "To:" field (recipients)
#   %T the appropriate character from the $to_chars string
#   %u user (login) name of the author
#   %v first name of the author, or the recipient if the message is from
#   you
#   %X number of attachments (please see the "attachments" section for
#   possible speed effects)
#   %y "X-Label:" field, if present
#   %Y "X-Label:" field, if present, and (1) not at part of a thread tree,
#   (2) at the top of a thread, or (3) "X-Label:" is different from
#   preceding message's "X-Label:".
#   %Z message status flags
#   %{fmt} the date and time of the message is converted to sender's time
#   zone, and "fmt" is expanded by the library function strftime(3); a
#   leading bang disables locales
#   %[fmt] the date and time of the message is converted to the local time
#   zone, and "fmt" is expanded by the library function strftime(3); a
#   leading bang disables locales
#   %(fmt) the local date and time when the message was received. "fmt" is
#   expanded by the library function strftime(3); a leading bang disables
#   locales
#   %<fmt> the current local time. "fmt" is expanded by the library
#   function strftime(3); a leading bang disables locales.
#   %>X right justify the rest of the string and pad with character "X"
#   %|X pad to the end of the line with character "X"
#   %*X soft-fill with character "X" as pad
#
#   "Soft-fill" deserves some explanation: Normal right-justification will
#   print everything to the left of the "%>", displaying padding and
#   whatever lies to the right only if there's room. By contrast, soft-fill
#   gives priority to the right-hand side, guaranteeing space to display it
#   and showing padding only if there's still room. If necessary, soft-fill
#   will eat text leftwards to make room for rightward text.
#
#   Note that these expandos are supported in "save-hook", "fcc-hook" and
#   "fcc-save-hook", too.
#
#  ispell
#
#   Type: path
#   Default: "ispell"
#
#   How to invoke ispell (GNU's spell-checking software).
#
#  keep_flagged
#
#   Type: boolean
#   Default: no
#
#   If set, read messages marked as flagged will not be moved from your
#   spool mailbox to your $mbox mailbox, or as a result of a "mbox-hook"
#   command.
#
#  locale
#
#   Type: string
#   Default: "C"
#
#   The locale used by strftime(3) to format dates. Legal values are the
#   strings your system accepts for the locale environment variable
#   $LC_TIME.
#
#  mail_check
#
#   Type: number
#   Default: 5
#
#   This variable configures how often (in seconds) mutt should look for
#   new mail. Also see the $timeout variable.
#
#  mail_check_recent
#
#   Type: boolean
#   Default: yes
#
#   When set, Mutt will only notify you about new mail that has been
#   received since the last time you opened the mailbox. When unset, Mutt
#   will notify you if any new mail exists in the mailbox, regardless of
#   whether you have visited it recently.
#
#   When $mark_old is set, Mutt does not consider the mailbox to contain
#   new mail if only old messages exist.
#
#  mailcap_path
#
#   Type: string
#   Default: (empty)
#
#   This variable specifies which files to consult when attempting to
#   display MIME bodies not directly supported by Mutt.
#
#  mailcap_sanitize
#
#   Type: boolean
#   Default: yes
#
#   If set, mutt will restrict possible characters in mailcap % expandos to
#   a well-defined set of safe characters. This is the safe setting, but we
#   are not sure it doesn't break some more advanced MIME stuff.
#
#   DON'T CHANGE THIS SETTING UNLESS YOU ARE REALLY SURE WHAT YOU ARE
#   DOING!
#
#  maildir_header_cache_verify
#
#   Type: boolean
#   Default: yes
#
#   Check for Maildir unaware programs other than mutt having modified
#   maildir files when the header cache is in use. This incurs one stat(2)
#   per message every time the folder is opened (which can be very slow for
#   NFS folders).
#
#  maildir_trash
#
#   Type: boolean
#   Default: no
#
#   If set, messages marked as deleted will be saved with the maildir
#   trashed flag instead of unlinked. Note: this only applies to
#   maildir-style mailboxes. Setting it will have no effect on other
#   mailbox types.
#
#  mark_old
#
#   Type: boolean
#   Default: yes
#
#   Controls whether or not mutt marks new unread messages as old if you
#   exit a mailbox without reading them. With this option set, the next
#   time you start mutt, the messages will show up with an "O" next to them
#   in the index menu, indicating that they are old.
#
#  markers
#
#   Type: boolean
#   Default: yes
#
#   Controls the display of wrapped lines in the internal pager. If set, a
#   "+" marker is displayed at the beginning of wrapped lines.
#
#   Also see the $smart_wrap variable.
#
#  mask
#
#   Type: regular expression
#   Default: "!^\.[^.]"
#
#   A regular expression used in the file browser, optionally preceded by
#   the not operator "!". Only files whose names match this mask will be
#   shown. The match is always case-sensitive.
#
#  mbox
#
#   Type: path
#   Default: "~/mbox"
#
#   This specifies the folder into which read mail in your $spoolfile
#   folder will be appended.
#
#   Also see the $move variable.
#
#  mbox_type
#
#   Type: folder magic
#   Default: mbox
#
#   The default mailbox type used when creating new folders. May be any of
#   "mbox", "MMDF", "MH" and "Maildir". This is overridden by the -m
#   command-line option.
#
#  menu_context
#
#   Type: number
#   Default: 0
#
#   This variable controls the number of lines of context that are given
#   when scrolling through menus. (Similar to $pager_context.)
#
#  menu_move_off
#
#   Type: boolean
#   Default: yes
#
#   When unset, the bottom entry of menus will never scroll up past the
#   bottom of the screen, unless there are less entries than lines. When
#   set, the bottom entry may move off the bottom.
#
#  menu_scroll
#
#   Type: boolean
#   Default: no
#
#   When set, menus will be scrolled up or down one line when you attempt
#   to move across a screen boundary. If unset, the screen is cleared and
#   the next or previous page of the menu is displayed (useful for slow
#   links to avoid many redraws).
#
#  message_cache_clean
#
#   Type: boolean
#   Default: no
#
#   If set, mutt will clean out obsolete entries from the message cache
#   when the mailbox is synchronized. You probably only want to set it
#   every once in a while, since it can be a little slow (especially for
#   large folders).
#
#  message_cachedir
#
#   Type: path
#   Default: (empty)
#
#   Set this to a directory and mutt will cache copies of messages from
#   your IMAP and POP servers here. You are free to remove entries at any
#   time.
#
#   When setting this variable to a directory, mutt needs to fetch every
#   remote message only once and can perform regular expression searches as
#   fast as for local folders.
#
#   Also see the $message_cache_clean variable.
#
#  message_format
#
#   Type: string
#   Default: "%s"
#
#   This is the string displayed in the "attachment" menu for attachments
#   of type message/rfc822. For a full listing of defined printf(3)-like
#   sequences see the section on $index_format.
#
#  meta_key
#
#   Type: boolean
#   Default: no
#
#   If set, forces Mutt to interpret keystrokes with the high bit (bit 8)
#   set as if the user had pressed the Esc key and whatever key remains
#   after having the high bit removed. For example, if the key pressed has
#   an ASCII value of 0xf8, then this is treated as if the user had pressed
#   Esc then "x". This is because the result of removing the high bit from
#   0xf8 is 0x78, which is the ASCII character "x".
#
#  metoo
#
#   Type: boolean
#   Default: no
#
#   If unset, Mutt will remove your address (see the "alternates" command)
#   from the list of recipients when replying to a message.
#
#  mh_purge
#
#   Type: boolean
#   Default: no
#
#   When unset, mutt will mimic mh's behavior and rename deleted messages
#   to ,<old file name> in mh folders instead of really deleting them. This
#   leaves the message on disk but makes programs reading the folder ignore
#   it. If the variable is set, the message files will simply be deleted.
#
#   This option is similar to $maildir_trash for Maildir folders.
#
#  mh_seq_flagged
#
#   Type: string
#   Default: "flagged"
#
#   The name of the MH sequence used for flagged messages.
#
#  mh_seq_replied
#
#   Type: string
#   Default: "replied"
#
#   The name of the MH sequence used to tag replied messages.
#
#  mh_seq_unseen
#
#   Type: string
#   Default: "unseen"
#
#   The name of the MH sequence used for unseen messages.
#
#  mime_forward
#
#   Type: quadoption
#   Default: no
#
#   When set, the message you are forwarding will be attached as a separate
#   message/rfc822 MIME part instead of included in the main body of the
#   message. This is useful for forwarding MIME messages so the receiver
#   can properly view the message as it was delivered to you. If you like
#   to switch between MIME and not MIME from mail to mail, set this
#   variable to "ask-no" or "ask-yes".
#
#   Also see $forward_decode and $mime_forward_decode.
#
#  mime_forward_decode
#
#   Type: boolean
#   Default: no
#
#   Controls the decoding of complex MIME messages into text/plain when
#   forwarding a message while $mime_forward is set. Otherwise
#   $forward_decode is used instead.
#
#  mime_forward_rest
#
#   Type: quadoption
#   Default: yes
#
#   When forwarding multiple attachments of a MIME message from the
#   attachment menu, attachments which cannot be decoded in a reasonable
#   manner will be attached to the newly composed message if this option is
#   set.
#
#  mix_entry_format
#
#   Type: string
#   Default: "%4n %c %-16s %a"
#
#   This variable describes the format of a remailer line on the mixmaster
#   chain selection screen. The following printf(3)-like sequences are
#   supported:
#   %n The running number on the menu.
#   %c Remailer capabilities.
#   %s The remailer's short name.
#   %a The remailer's e-mail address.
#
#  mixmaster
#
#   Type: path
#   Default: "1"
#
#   This variable contains the path to the Mixmaster binary on your system.
#   It is used with various sets of parameters to gather the list of known
#   remailers, and to finally send a message through the mixmaster chain.
#
#  move
#
#   Type: quadoption
#   Default: no
#
#   Controls whether or not Mutt will move read messages from your spool
#   mailbox to your $mbox mailbox, or as a result of a "mbox-hook" command.
#
#  narrow_tree
#
#   Type: boolean
#   Default: no
#
#   This variable, when set, makes the thread tree narrower, allowing
#   deeper threads to fit on the screen.
#
#  net_inc
#
#   Type: number
#   Default: 10
#
#   Operations that expect to transfer a large amount of data over the
#   network will update their progress every $net_inc kilobytes. If set to
#   0, no progress messages will be displayed.
#
#   See also $read_inc, $write_inc and $net_inc.
#
#  pager
#
#   Type: path
#   Default: "builtin"
#
#   This variable specifies which pager you would like to use to view
#   messages. The value "builtin" means to use the built-in pager,
#   otherwise this variable should specify the pathname of the external
#   pager you would like to use.
#
#   Using an external pager may have some disadvantages: Additional
#   keystrokes are necessary because you can't call mutt functions directly
#   from the pager, and screen resizes cause lines longer than the screen
#   width to be badly formatted in the help menu.
#
#  pager_context
#
#   Type: number
#   Default: 0
#
#   This variable controls the number of lines of context that are given
#   when displaying the next or previous page in the internal pager. By
#   default, Mutt will display the line after the last one on the screen at
#   the top of the next page (0 lines of context).
#
#   This variable also specifies the amount of context given for search
#   results. If positive, this many lines will be given before a match, if
#   0, the match will be top-aligned.
#
#  pager_format
#
#   Type: string
#   Default: "-%Z- %C/%m: %-20.20n   %s%*  -- (%P)"
#
#   This variable controls the format of the one-line message "status"
#   displayed before each message in either the internal or an external
#   pager. The valid sequences are listed in the $index_format section.
#
#  pager_index_lines
#
#   Type: number
#   Default: 0
#
#   Determines the number of lines of a mini-index which is shown when in
#   the pager. The current message, unless near the top or bottom of the
#   folder, will be roughly one third of the way down this mini-index,
#   giving the reader the context of a few messages before and after the
#   message. This is useful, for example, to determine how many messages
#   remain to be read in the current thread. One of the lines is reserved
#   for the status bar from the index, so a setting of 6 will only show 5
#   lines of the actual index. A value of 0 results in no index being
#   shown. If the number of messages in the current folder is less than
#   $pager_index_lines, then the index will only use as many lines as it
#   needs.
#
#  pager_stop
#
#   Type: boolean
#   Default: no
#
#   When set, the internal-pager will not move to the next message when you
#   are at the end of a message and invoke the <next-page> function.
#
#  pgp_auto_decode
#
#   Type: boolean
#   Default: no
#
#   If set, mutt will automatically attempt to decrypt traditional PGP
#   messages whenever the user performs an operation which ordinarily would
#   result in the contents of the message being operated on. For example,
#   if the user displays a pgp-traditional message which has not been
#   manually checked with the <check-traditional-pgp> function, mutt will
#   automatically check the message for traditional pgp.
#
#  pgp_autoinline
#
#   Type: boolean
#   Default: no
#
#   This option controls whether Mutt generates old-style inline
#   (traditional) PGP encrypted or signed messages under certain
#   circumstances. This can be overridden by use of the pgp menu, when
#   inline is not required.
#
#   Note that Mutt might automatically use PGP/MIME for messages which
#   consist of more than a single MIME part. Mutt can be configured to ask
#   before sending PGP/MIME messages when inline (traditional) would not
#   work.
#
#   Also see the $pgp_mime_auto variable.
#
#   Also note that using the old-style PGP message format is strongly
#   deprecated. (PGP only)
#
#  pgp_check_exit
#
#   Type: boolean
#   Default: yes
#
#   If set, mutt will check the exit code of the PGP subprocess when
#   signing or encrypting. A non-zero exit code means that the subprocess
#   failed. (PGP only)
#
#  pgp_clearsign_command
#
#   Type: string
#   Default: (empty)
#
#   This format is used to create an old-style "clearsigned" PGP message.
#   Note that the use of this format is strongly deprecated.
#
#   This is a format string, see the $pgp_decode_command command for
#   possible printf(3)-like sequences. (PGP only)
#
#  pgp_decode_command
#
#   Type: string
#   Default: (empty)
#
#   This format strings specifies a command which is used to decode
#   application/pgp attachments.
#
#   The PGP command formats have their own set of printf(3)-like sequences:
#   %p Expands to PGPPASSFD=0 when a pass phrase is needed, to an empty
#   string otherwise. Note: This may be used with a %? construct.
#   %f Expands to the name of a file containing a message.
#   %s Expands to the name of a file containing the signature part of a
#   multipart/signed attachment when verifying it.
#   %a The value of $pgp_sign_as.
#   %r One or more key IDs.
#
#   For examples on how to configure these formats for the various versions
#   of PGP which are floating around, see the pgp and gpg sample
#   configuration files in the samples/ subdirectory which has been
#   installed on your system alongside the documentation. (PGP only)
#
#  pgp_decrypt_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to decrypt a PGP encrypted message.
#
#   This is a format string, see the $pgp_decode_command command for
#   possible printf(3)-like sequences. (PGP only)
#
#  pgp_encrypt_only_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to encrypt a body part without signing it.
#
#   This is a format string, see the $pgp_decode_command command for
#   possible printf(3)-like sequences. (PGP only)
#
#  pgp_encrypt_sign_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to both sign and encrypt a body part.
#
#   This is a format string, see the $pgp_decode_command command for
#   possible printf(3)-like sequences. (PGP only)
#
#  pgp_entry_format
#
#   Type: string
#   Default: "%4n %t%f %4l/0x%k %-4a %2c %u"
#
#   This variable allows you to customize the PGP key selection menu to
#   your personal taste. This string is similar to $index_format, but has
#   its own set of printf(3)-like sequences:
#   %n     number
#   %k     key id
#   %u     user id
#   %a     algorithm
#   %l     key length
#   %f     flags
#   %c     capabilities
#   %t     trust/validity of the key-uid association
#   %[<s>] date of the key where <s> is an strftime(3) expression
#
#   (PGP only)
#
#  pgp_export_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to export a public key from the user's key ring.
#
#   This is a format string, see the $pgp_decode_command command for
#   possible printf(3)-like sequences. (PGP only)
#
#  pgp_getkeys_command
#
#   Type: string
#   Default: (empty)
#
#   This command is invoked whenever mutt will need public key information.
#   Of the sequences supported by $pgp_decode_command, %r is the only
#   printf(3)-like sequence used with this format. (PGP only)
#
#  pgp_good_sign
#
#   Type: regular expression
#   Default: (empty)
#
#   If you assign a text to this variable, then a PGP signature is only
#   considered verified if the output from $pgp_verify_command contains the
#   text. Use this variable if the exit code from the command is 0 even for
#   bad signatures. (PGP only)
#
#  pgp_ignore_subkeys
#
#   Type: boolean
#   Default: yes
#
#   Setting this variable will cause Mutt to ignore OpenPGP subkeys.
#   Instead, the principal key will inherit the subkeys' capabilities.
#   Unset this if you want to play interesting key selection games. (PGP
#   only)
#
#  pgp_import_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to import a key from a message into the user's
#   public key ring.
#
#   This is a format string, see the $pgp_decode_command command for
#   possible printf(3)-like sequences. (PGP only)
#
#  pgp_list_pubring_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to list the public key ring's contents. The output
#   format must be analogous to the one used by
#gpg --list-keys --with-colons.
#
#   This format is also generated by the pgpring utility which comes with
#   mutt.
#
#   This is a format string, see the $pgp_decode_command command for
#   possible printf(3)-like sequences. (PGP only)
#
#  pgp_list_secring_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to list the secret key ring's contents. The output
#   format must be analogous to the one used by:
#gpg --list-keys --with-colons.
#
#   This format is also generated by the pgpring utility which comes with
#   mutt.
#
#   This is a format string, see the $pgp_decode_command command for
#   possible printf(3)-like sequences. (PGP only)
#
#  pgp_long_ids
#
#   Type: boolean
#   Default: no
#
#   If set, use 64 bit PGP key IDs, if unset use the normal 32 bit key IDs.
#   (PGP only)
#
#  pgp_mime_auto
#
#   Type: quadoption
#   Default: ask-yes
#
#   This option controls whether Mutt will prompt you for automatically
#   sending a (signed/encrypted) message using PGP/MIME when inline
#   (traditional) fails (for any reason).
#
#   Also note that using the old-style PGP message format is strongly
#   deprecated. (PGP only)
#
#  pgp_replyinline
#
#   Type: boolean
#   Default: no
#
#   Setting this variable will cause Mutt to always attempt to create an
#   inline (traditional) message when replying to a message which is PGP
#   encrypted/signed inline. This can be overridden by use of the pgp menu,
#   when inline is not required. This option does not automatically detect
#   if the (replied-to) message is inline; instead it relies on Mutt
#   internals for previously checked/flagged messages.
#
#   Note that Mutt might automatically use PGP/MIME for messages which
#   consist of more than a single MIME part. Mutt can be configured to ask
#   before sending PGP/MIME messages when inline (traditional) would not
#   work.
#
#   Also see the $pgp_mime_auto variable.
#
#   Also note that using the old-style PGP message format is strongly
#   deprecated. (PGP only)
#
#  pgp_retainable_sigs
#
#   Type: boolean
#   Default: no
#
#   If set, signed and encrypted messages will consist of nested
#   multipart/signed and multipart/encrypted body parts.
#
#   This is useful for applications like encrypted and signed mailing
#   lists, where the outer layer (multipart/encrypted) can be easily
#   removed, while the inner multipart/signed part is retained. (PGP only)
#
#  pgp_show_unusable
#
#   Type: boolean
#   Default: yes
#
#   If set, mutt will display non-usable keys on the PGP key selection
#   menu. This includes keys which have been revoked, have expired, or have
#   been marked as "disabled" by the user. (PGP only)
#
#  pgp_sign_as
#
#   Type: string
#   Default: (empty)
#
#   If you have more than one key pair, this option allows you to specify
#   which of your private keys to use. It is recommended that you use the
#   keyid form to specify your key (e.g. 0x00112233). (PGP only)
#
#  pgp_sign_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to create the detached PGP signature for a
#   multipart/signed PGP/MIME body part.
#
#   This is a format string, see the $pgp_decode_command command for
#   possible printf(3)-like sequences. (PGP only)
#
#  pgp_sort_keys
#
#   Type: sort order
#   Default: address
#
#   Specifies how the entries in the pgp menu are sorted. The following are
#   legal values:
#   address sort alphabetically by user id
#   keyid   sort alphabetically by key id
#   date    sort by key creation date
#   trust   sort by the trust of the key
#
#   If you prefer reverse order of the above values, prefix it with
#   "reverse-". (PGP only)
#
#  pgp_strict_enc
#
#   Type: boolean
#   Default: yes
#
#   If set, Mutt will automatically encode PGP/MIME signed messages as
#   quoted-printable. Please note that unsetting this variable may lead to
#   problems with non-verifyable PGP signatures, so only change this if you
#   know what you are doing. (PGP only)
#
#  pgp_timeout
#
#   Type: number
#   Default: 300
#
#   The number of seconds after which a cached passphrase will expire if
#   not used. (PGP only)
#
#  pgp_use_gpg_agent
#
#   Type: boolean
#   Default: no
#
#   If set, mutt will use a possibly-running gpg-agent(1) process. (PGP
#   only)
#
#  pgp_verify_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to verify PGP signatures.
#
#   This is a format string, see the $pgp_decode_command command for
#   possible printf(3)-like sequences. (PGP only)
#
#  pgp_verify_key_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to verify key information from the key selection
#   menu.
#
#   This is a format string, see the $pgp_decode_command command for
#   possible printf(3)-like sequences. (PGP only)
#
#  pipe_decode
#
#   Type: boolean
#   Default: no
#
#   Used in connection with the <pipe-message> command. When unset, Mutt
#   will pipe the messages without any preprocessing. When set, Mutt will
#   weed headers and will attempt to decode the messages first.
#
#  pipe_sep
#
#   Type: string
#   Default: "\n"
#
#   The separator to add between messages when piping a list of tagged
#   messages to an external Unix command.
#
#  pipe_split
#
#   Type: boolean
#   Default: no
#
#   Used in connection with the <pipe-message> function following
#   <tag-prefix>. If this variable is unset, when piping a list of tagged
#   messages Mutt will concatenate the messages and will pipe them all
#   concatenated. When set, Mutt will pipe the messages one by one. In both
#   cases the messages are piped in the current sorted order, and the
#   $pipe_sep separator is added after each message.
#
#  pop_auth_try_all
#
#   Type: boolean
#   Default: yes
#
#   If set, Mutt will try all available authentication methods. When unset,
#   Mutt will only fall back to other authentication methods if the
#   previous methods are unavailable. If a method is available but
#   authentication fails, Mutt will not connect to the POP server.
#
#  pop_authenticators
#
#   Type: string
#   Default: (empty)
#
#   This is a colon-delimited list of authentication methods mutt may
#   attempt to use to log in to an POP server, in the order mutt should try
#   them. Authentication methods are either "user", "apop" or any SASL
#   mechanism, e.g. "digest-md5", "gssapi" or "cram-md5". This option is
#   case-insensitive. If this option is unset (the default) mutt will try
#   all available methods, in order from most-secure to least-secure.
#
#   Example:
#set pop_authenticators="digest-md5:apop:user"
#
#  pop_checkinterval
#
#   Type: number
#   Default: 60
#
#   This variable configures how often (in seconds) mutt should look for
#   new mail in the currently selected mailbox if it is a POP mailbox.
#
#  pop_delete
#
#   Type: quadoption
#   Default: ask-no
#
#   If set, Mutt will delete successfully downloaded messages from the POP
#   server when using the <fetch-mail> function. When unset, Mutt will
#   download messages but also leave them on the POP server.
#
#  pop_host
#
#   Type: string
#   Default: (empty)
#
#   The name of your POP server for the <fetch-mail> function. You can also
#   specify an alternative port, username and password, i.e.:
#[pop[s]://][username[:password]@]popserver[:port]
#
#   where "[...]" denotes an optional part.
#
#  pop_last
#
#   Type: boolean
#   Default: no
#
#   If this variable is set, mutt will try to use the "LAST" POP command
#   for retrieving only unread messages from the POP server when using the
#   <fetch-mail> function.
#
#  pop_pass
#
#   Type: string
#   Default: (empty)
#
#   Specifies the password for your POP account. If unset, Mutt will prompt
#   you for your password when you open a POP mailbox.
#
#   Warning: you should only use this option when you are on a fairly
#   secure machine, because the superuser can read your muttrc even if you
#   are the only one who can read the file.
#
#  pop_reconnect
#
#   Type: quadoption
#   Default: ask-yes
#
#   Controls whether or not Mutt will try to reconnect to the POP server if
#   the connection is lost.
#
#  pop_user
#
#   Type: string
#   Default: (empty)
#
#   Your login name on the POP server.
#
#   This variable defaults to your user name on the local machine.
#
#  post_indent_string
#
#   Type: string
#   Default: (empty)
#
#   Similar to the $attribution variable, Mutt will append this string
#   after the inclusion of a message which is being replied to.
#
#  postpone
#
#   Type: quadoption
#   Default: ask-yes
#
#   Controls whether or not messages are saved in the $postponed mailbox
#   when you elect not to send immediately.
#
#   Also see the $recall variable.
#
#  postponed
#
#   Type: path
#   Default: "~/postponed"
#
#   Mutt allows you to indefinitely "postpone sending a message" which you
#   are editing. When you choose to postpone a message, Mutt saves it in
#   the mailbox specified by this variable.
#
#   Also see the $postpone variable.
#
#  preconnect
#
#   Type: string
#   Default: (empty)
#
#   If set, a shell command to be executed if mutt fails to establish a
#   connection to the server. This is useful for setting up secure
#   connections, e.g. with ssh(1). If the command returns a nonzero status,
#   mutt gives up opening the server. Example:
#set preconnect="ssh -f -q -L 1234:mailhost.net:143 mailhost.net \
#sleep 20 < /dev/null > /dev/null"
#
#   Mailbox "foo" on "mailhost.net" can now be reached as
#   "{localhost:1234}foo".
#
#   Note: For this example to work, you must be able to log in to the
#   remote machine without having to enter a password.
#
#  print
#
#   Type: quadoption
#   Default: ask-no
#
#   Controls whether or not Mutt really prints messages. This is set to
#   "ask-no" by default, because some people accidentally hit "p" often.
#
#  print_command
#
#   Type: path
#   Default: "lpr"
#
#   This specifies the command pipe that should be used to print messages.
#
#  print_decode
#
#   Type: boolean
#   Default: yes
#
#   Used in connection with the <print-message> command. If this option is
#   set, the message is decoded before it is passed to the external command
#   specified by $print_command. If this option is unset, no processing
#   will be applied to the message when printing it. The latter setting may
#   be useful if you are using some advanced printer filter which is able
#   to properly format e-mail messages for printing.
#
#  print_split
#
#   Type: boolean
#   Default: no
#
#   Used in connection with the <print-message> command. If this option is
#   set, the command specified by $print_command is executed once for each
#   message which is to be printed. If this option is unset, the command
#   specified by $print_command is executed only once, and all the messages
#   are concatenated, with a form feed as the message separator.
#
#   Those who use the enscript(1) program's mail-printing mode will most
#   likely want to set this option.
#
#  prompt_after
#
#   Type: boolean
#   Default: yes
#
#   If you use an external $pager, setting this variable will cause Mutt to
#   prompt you for a command when the pager exits rather than returning to
#   the index menu. If unset, Mutt will return to the index menu when the
#   external pager exits.
#
#  query_command
#
#   Type: path
#   Default: (empty)
#
#   This specifies the command Mutt will use to make external address
#   queries. The string may contain a "%s", which will be substituted with
#   the query string the user types. Mutt will add quotes around the string
#   substituted for "%s" automatically according to shell quoting rules, so
#   you should avoid adding your own. If no "%s" is found in the string,
#   Mutt will append the user's query to the end of the string. See "query"
#   for more information.
#
#  query_format
#
#   Type: string
#   Default: "%4c %t %-25.25a %-25.25n %?e?(%e)?"
#
#   This variable describes the format of the "query" menu. The following
#   printf(3)-style sequences are understood:
#   %a  destination address
#   %c  current entry number
#   %e  extra information *
#   %n  destination name
#   %t  "*" if current entry is tagged, a space otherwise
#   %>X right justify the rest of the string and pad with "X"
#   %|X pad to the end of the line with "X"
#   %*X soft-fill with character "X" as pad
#
#   For an explanation of "soft-fill", see the $index_format documentation.
#
#   * = can be optionally printed if nonzero, see the $status_format
#   documentation.
#
#  quit
#
#   Type: quadoption
#   Default: yes
#
#   This variable controls whether "quit" and "exit" actually quit from
#   mutt. If this option is set, they do quit, if it is unset, they have no
#   effect, and if it is set to ask-yes or ask-no, you are prompted for
#   confirmation when you try to quit.
#
#  quote_regexp
#
#   Type: regular expression
#   Default: "^([ \t]*[|>:}#])+"
#
#   A regular expression used in the internal pager to determine quoted
#   sections of text in the body of a message. Quoted text may be filtered
#   out using the <toggle-quoted> command, or colored according to the
#   "color quoted" family of directives.
#
#   Higher levels of quoting may be colored differently ("color quoted1",
#   "color quoted2", etc.). The quoting level is determined by removing the
#   last character from the matched text and recursively reapplying the
#   regular expression until it fails to produce a match.
#
#   Match detection may be overridden by the $smileys regular expression.
#
#  read_inc
#
#   Type: number
#   Default: 10
#
#   If set to a value greater than 0, Mutt will display which message it is
#   currently on when reading a mailbox or when performing search actions
#   such as search and limit. The message is printed after this many
#   messages have been read or searched (e.g., if set to 25, Mutt will
#   print a message when it is at message 25, and then again when it gets
#   to message 50). This variable is meant to indicate progress when
#   reading or searching large mailboxes which may take some time. When set
#   to 0, only a single message will appear before the reading the mailbox.
#
#   Also see the $write_inc, $net_inc and $time_inc variables and the
#   "tuning" section of the manual for performance considerations.
#
#  read_only
#
#   Type: boolean
#   Default: no
#
#   If set, all folders are opened in read-only mode.
#
#  realname
#
#   Type: string
#   Default: (empty)
#
#   This variable specifies what "real" or "personal" name should be used
#   when sending messages.
#
#   By default, this is the GECOS field from /etc/passwd. Note that this
#   variable will not be used when the user has set a real name in the
#   $from variable.
#
#  recall
#
#   Type: quadoption
#   Default: ask-yes
#
#   Controls whether or not Mutt recalls postponed messages when composing
#   a new message.
#
#   Setting this variable to is not generally useful, and thus not
#   recommended.
#
#   Also see $postponed variable.
#
#  record
#
#   Type: path
#   Default: "~/sent"
#
#   This specifies the file into which your outgoing messages should be
#   appended. (This is meant as the primary method for saving a copy of
#   your messages, but another way to do this is using the "my_hdr" command
#   to create a "Bcc:" field with your email address in it.)
#
#   The value of $record is overridden by the $force_name and $save_name
#   variables, and the "fcc-hook" command.
#
#  reply_regexp
#
#   Type: regular expression
#   Default: "^(re([\[0-9\]+])*|aw):[ \t]*"
#
#   A regular expression used to recognize reply messages when threading
#   and replying. The default value corresponds to the English "Re:" and
#   the German "Aw:".
#
#  reply_self
#
#   Type: boolean
#   Default: no
#
#   If unset and you are replying to a message sent by you, Mutt will
#   assume that you want to reply to the recipients of that message rather
#   than to yourself.
#
#   Also see the "alternates" command.
#
#  reply_to
#
#   Type: quadoption
#   Default: ask-yes
#
#   If set, when replying to a message, Mutt will use the address listed in
#   the Reply-to: header as the recipient of the reply. If unset, it will
#   use the address in the From: header field instead. This option is
#   useful for reading a mailing list that sets the Reply-To: header field
#   to the list address and you want to send a private message to the
#   author of a message.
#
#  resolve
#
#   Type: boolean
#   Default: yes
#
#   When set, the cursor will be automatically advanced to the next
#   (possibly undeleted) message whenever a command that modifies the
#   current message is executed.
#
#  reverse_alias
#
#   Type: boolean
#   Default: no
#
#   This variable controls whether or not Mutt will display the "personal"
#   name from your aliases in the index menu if it finds an alias that
#   matches the message's sender. For example, if you have the following
#   alias:
#alias juser abd30425@somewhere.net (Joe User)
#
#   and then you receive mail which contains the following header:
#From: abd30425@somewhere.net
#
#   It would be displayed in the index menu as "Joe User" instead of
#   "abd30425@somewhere.net." This is useful when the person's e-mail
#   address is not human friendly.
#
#  reverse_name
#
#   Type: boolean
#   Default: no
#
#   It may sometimes arrive that you receive mail to a certain machine,
#   move the messages to another machine, and reply to some the messages
#   from there. If this variable is set, the default From: line of the
#   reply messages is built using the address where you received the
#   messages you are replying to if that address matches your "alternates".
#   If the variable is unset, or the address that would be used doesn't
#   match your "alternates", the From: line will use your address on the
#   current machine.
#
#   Also see the "alternates" command.
#
#  reverse_realname
#
#   Type: boolean
#   Default: yes
#
#   This variable fine-tunes the behavior of the $reverse_name feature.
#   When it is set, mutt will use the address from incoming messages as-is,
#   possibly including eventual real names. When it is unset, mutt will
#   override any such real names with the setting of the $realname
#   variable.
#
#  rfc2047_parameters
#
#   Type: boolean
#   Default: no
#
#   When this variable is set, Mutt will decode RFC2047-encoded MIME
#   parameters. You want to set this variable when mutt suggests you to
#   save attachments to files named like:
#=?iso-8859-1?Q?file=5F=E4=5F991116=2Ezip?=
#
#   When this variable is set interactively, the change won't be active
#   until you change folders.
#
#   Note that this use of RFC2047's encoding is explicitly prohibited by
#   the standard, but nevertheless encountered in the wild.
#
#   Also note that setting this parameter will not have the effect that
#   mutt generates this kind of encoding. Instead, mutt will
#   unconditionally use the encoding specified in RFC2231.
#
#  save_address
#
#   Type: boolean
#   Default: no
#
#   If set, mutt will take the sender's full address when choosing a
#   default folder for saving a mail. If $save_name or $force_name is set
#   too, the selection of the Fcc folder will be changed as well.
#
#  save_empty
#
#   Type: boolean
#   Default: yes
#
#   When unset, mailboxes which contain no saved messages will be removed
#   when closed (the exception is $spoolfile which is never removed). If
#   set, mailboxes are never removed.
#
#   Note: This only applies to mbox and MMDF folders, Mutt does not delete
#   MH and Maildir directories.
#
#  save_history
#
#   Type: number
#   Default: 0
#
#   This variable controls the size of the history (per category) saved in
#   the $history_file file.
#
#  save_name
#
#   Type: boolean
#   Default: no
#
#   This variable controls how copies of outgoing messages are saved. When
#   set, a check is made to see if a mailbox specified by the recipient
#   address exists (this is done by searching for a mailbox in the $folder
#   directory with the username part of the recipient address). If the
#   mailbox exists, the outgoing message will be saved to that mailbox,
#   otherwise the message is saved to the $record mailbox.
#
#   Also see the $force_name variable.
#
#  score
#
#   Type: boolean
#   Default: yes
#
#   When this variable is unset, scoring is turned off. This can be useful
#   to selectively disable scoring for certain folders when the
#   $score_threshold_delete variable and related are used.
#
#  score_threshold_delete
#
#   Type: number
#   Default: -1
#
#   Messages which have been assigned a score equal to or lower than the
#   value of this variable are automatically marked for deletion by mutt.
#   Since mutt scores are always greater than or equal to zero, the default
#   setting of this variable will never mark a message for deletion.
#
#  score_threshold_flag
#
#   Type: number
#   Default: 9999
#
#   Messages which have been assigned a score greater than or equal to this
#   variable's value are automatically marked "flagged".
#
#  score_threshold_read
#
#   Type: number
#   Default: -1
#
#   Messages which have been assigned a score equal to or lower than the
#   value of this variable are automatically marked as read by mutt. Since
#   mutt scores are always greater than or equal to zero, the default
#   setting of this variable will never mark a message read.
#
#  search_context
#
#   Type: number
#   Default: 0
#
#   For the pager, this variable specifies the number of lines shown before
#   search results. By default, search results will be top-aligned.
#
#  send_charset
#
#   Type: string
#   Default: "us-ascii:iso-8859-1:utf-8"
#
#   A colon-delimited list of character sets for outgoing messages. Mutt
#   will use the first character set into which the text can be converted
#   exactly. If your $charset is not "iso-8859-1" and recipients may not
#   understand "UTF-8", it is advisable to include in the list an
#   appropriate widely used standard character set (such as "iso-8859-2",
#   "koi8-r" or "iso-2022-jp") either instead of or after "iso-8859-1".
#
#   In case the text cannot be converted into one of these exactly, mutt
#   uses $charset as a fallback.
#
#  sendmail
#
#   Type: path
#   Default: "/usr/sbin/sendmail -oem -oi"
#
#   Specifies the program and arguments used to deliver mail sent by Mutt.
#   Mutt expects that the specified program interprets additional arguments
#   as recipient addresses.
#
#  sendmail_wait
#
#   Type: number
#   Default: 0
#
#   Specifies the number of seconds to wait for the $sendmail process to
#   finish before giving up and putting delivery in the background.
#
#   Mutt interprets the value of this variable as follows:
#   >0 number of seconds to wait for sendmail to finish before continuing
#   0  wait forever for sendmail to finish
#   <0 always put sendmail in the background without waiting
#
#   Note that if you specify a value other than 0, the output of the child
#   process will be put in a temporary file. If there is some error, you
#   will be informed as to where to find the output.
#
#  shell
#
#   Type: path
#   Default: (empty)
#
#   Command to use when spawning a subshell. By default, the user's login
#   shell from /etc/passwd is used.
#
#  sig_dashes
#
#   Type: boolean
#   Default: yes
#
#   If set, a line containing "-- " (note the trailing space) will be
#   inserted before your $signature. It is strongly recommended that you
#   not unset this variable unless your signature contains just your name.
#   The reason for this is because many software packages use "-- \n" to
#   detect your signature. For example, Mutt has the ability to highlight
#   the signature in a different color in the built-in pager.
#
#  sig_on_top
#
#   Type: boolean
#   Default: no
#
#   If set, the signature will be included before any quoted or forwarded
#   text. It is strongly recommended that you do not set this variable
#   unless you really know what you are doing, and are prepared to take
#   some heat from netiquette guardians.
#
#  signature
#
#   Type: path
#   Default: "~/.signature"
#
#   Specifies the filename of your signature, which is appended to all
#   outgoing messages. If the filename ends with a pipe ("|"), it is
#   assumed that filename is a shell command and input should be read from
#   its standard output.
#
#  simple_search
#
#   Type: string
#   Default: "~f %s | ~s %s"
#
#   Specifies how Mutt should expand a simple search into a real search
#   pattern. A simple search is one that does not contain any of the "~"
#   pattern operators. See "patterns" for more information on search
#   patterns.
#
#   For example, if you simply type "joe" at a search or limit prompt, Mutt
#   will automatically expand it to the value specified by this variable by
#   replacing "%s" with the supplied string. For the default value, "joe"
#   would be expanded to: "~f joe | ~s joe".
#
#  sleep_time
#
#   Type: number
#   Default: 1
#
#   Specifies time, in seconds, to pause while displaying certain
#   informational messages, while moving from folder to folder and after
#   expunging messages from the current folder. The default is to pause one
#   second, so a value of zero for this option suppresses the pause.
#
#  smart_wrap
#
#   Type: boolean
#   Default: yes
#
#   Controls the display of lines longer than the screen width in the
#   internal pager. If set, long lines are wrapped at a word boundary. If
#   unset, lines are simply wrapped at the screen edge. Also see the
#   $markers variable.
#
#  smileys
#
#   Type: regular expression
#   Default: "(>From )|(:[-^]?[][)(><}{|/DP])"
#
#   The pager uses this variable to catch some common false positives of
#   $quote_regexp, most notably smileys and not consider a line quoted text
#   if it also matches $smileys. This mostly happens at the beginning of a
#   line.
#
#  smime_ask_cert_label
#
#   Type: boolean
#   Default: yes
#
#   This flag controls whether you want to be asked to enter a label for a
#   certificate about to be added to the database or not. It is set by
#   default. (S/MIME only)
#
#  smime_ca_location
#
#   Type: path
#   Default: (empty)
#
#   This variable contains the name of either a directory, or a file which
#   contains trusted certificates for use with OpenSSL. (S/MIME only)
#
#  smime_certificates
#
#   Type: path
#   Default: (empty)
#
#   Since for S/MIME there is no pubring/secring as with PGP, mutt has to
#   handle storage and retrieval of keys by itself. This is very basic
#   right now, and keys and certificates are stored in two different
#   directories, both named as the hash-value retrieved from OpenSSL. There
#   is an index file which contains mailbox-address keyid pairs, and which
#   can be manually edited. This option points to the location of the
#   certificates. (S/MIME only)
#
#  smime_decrypt_command
#
#   Type: string
#   Default: (empty)
#
#   This format string specifies a command which is used to decrypt
#   application/x-pkcs7-mime attachments.
#
#   The OpenSSL command formats have their own set of printf(3)-like
#   sequences similar to PGP's:
#   %f Expands to the name of a file containing a message.
#   %s Expands to the name of a file containing the signature part of a
#   multipart/signed attachment when verifying it.
#   %k The key-pair specified with $smime_default_key
#   %c One or more certificate IDs.
#   %a The algorithm used for encryption.
#   %C CA location: Depending on whether $smime_ca_location points to a
#   directory or file, this expands to "-CApath $smime_ca_location" or
#   "-CAfile $smime_ca_location".
#
#   For examples on how to configure these formats, see the smime.rc in the
#   samples/ subdirectory which has been installed on your system alongside
#   the documentation. (S/MIME only)
#
#  smime_decrypt_use_default_key
#
#   Type: boolean
#   Default: yes
#
#   If set (default) this tells mutt to use the default key for decryption.
#   Otherwise, if managing multiple certificate-key-pairs, mutt will try to
#   use the mailbox-address to determine the key to use. It will ask you to
#   supply a key, if it can't find one. (S/MIME only)
#
#  smime_default_key
#
#   Type: string
#   Default: (empty)
#
#   This is the default key-pair to use for signing. This must be set to
#   the keyid (the hash-value that OpenSSL generates) to work properly
#   (S/MIME only)
#
#  smime_encrypt_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to create encrypted S/MIME messages.
#
#   This is a format string, see the $smime_decrypt_command command for
#   possible printf(3)-like sequences. (S/MIME only)
#
#  smime_encrypt_with
#
#   Type: string
#   Default: (empty)
#
#   This sets the algorithm that should be used for encryption. Valid
#   choices are "des", "des3", "rc2-40", "rc2-64", "rc2-128". If unset,
#   "3des" (TripleDES) is used. (S/MIME only)
#
#  smime_get_cert_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to extract X509 certificates from a PKCS7
#   structure.
#
#   This is a format string, see the $smime_decrypt_command command for
#   possible printf(3)-like sequences. (S/MIME only)
#
#  smime_get_cert_email_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to extract the mail address(es) used for storing
#   X509 certificates, and for verification purposes (to check whether the
#   certificate was issued for the sender's mailbox).
#
#   This is a format string, see the $smime_decrypt_command command for
#   possible printf(3)-like sequences. (S/MIME only)
#
#  smime_get_signer_cert_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to extract only the signers X509 certificate from
#   a S/MIME signature, so that the certificate's owner may get compared to
#   the email's "From:" field.
#
#   This is a format string, see the $smime_decrypt_command command for
#   possible printf(3)-like sequences. (S/MIME only)
#
#  smime_import_cert_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to import a certificate via smime_keys.
#
#   This is a format string, see the $smime_decrypt_command command for
#   possible printf(3)-like sequences. (S/MIME only)
#
#  smime_is_default
#
#   Type: boolean
#   Default: no
#
#   The default behavior of mutt is to use PGP on all auto-sign/encryption
#   operations. To override and to use OpenSSL instead this must be set.
#   However, this has no effect while replying, since mutt will
#   automatically select the same application that was used to sign/encrypt
#   the original message. (Note that this variable can be overridden by
#   unsetting $crypt_autosmime.) (S/MIME only)
#
#  smime_keys
#
#   Type: path
#   Default: (empty)
#
#   Since for S/MIME there is no pubring/secring as with PGP, mutt has to
#   handle storage and retrieval of keys/certs by itself. This is very
#   basic right now, and stores keys and certificates in two different
#   directories, both named as the hash-value retrieved from OpenSSL. There
#   is an index file which contains mailbox-address keyid pair, and which
#   can be manually edited. This option points to the location of the
#   private keys. (S/MIME only)
#
#  smime_pk7out_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to extract PKCS7 structures of S/MIME signatures,
#   in order to extract the public X509 certificate(s).
#
#   This is a format string, see the $smime_decrypt_command command for
#   possible printf(3)-like sequences. (S/MIME only)
#
#  smime_sign_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to created S/MIME signatures of type
#   multipart/signed, which can be read by all mail clients.
#
#   This is a format string, see the $smime_decrypt_command command for
#   possible printf(3)-like sequences. (S/MIME only)
#
#  smime_sign_opaque_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to created S/MIME signatures of type
#   application/x-pkcs7-signature, which can only be handled by mail
#   clients supporting the S/MIME extension.
#
#   This is a format string, see the $smime_decrypt_command command for
#   possible printf(3)-like sequences. (S/MIME only)
#
#  smime_timeout
#
#   Type: number
#   Default: 300
#
#   The number of seconds after which a cached passphrase will expire if
#   not used. (S/MIME only)
#
#  smime_verify_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to verify S/MIME signatures of type
#   multipart/signed.
#
#   This is a format string, see the $smime_decrypt_command command for
#   possible printf(3)-like sequences. (S/MIME only)
#
#  smime_verify_opaque_command
#
#   Type: string
#   Default: (empty)
#
#   This command is used to verify S/MIME signatures of type
#   application/x-pkcs7-mime.
#
#   This is a format string, see the $smime_decrypt_command command for
#   possible printf(3)-like sequences. (S/MIME only)
#
#  smtp_authenticators
#
#   Type: string
#   Default: (empty)
#
#   This is a colon-delimited list of authentication methods mutt may
#   attempt to use to log in to an SMTP server, in the order mutt should
#   try them. Authentication methods are any SASL mechanism, e.g.
#   "digest-md5", "gssapi" or "cram-md5". This option is case-insensitive.
#   If it is "unset" (the default) mutt will try all available methods, in
#   order from most-secure to least-secure.
#
#   Example:
#set smtp_authenticators="digest-md5:cram-md5"
#
#  smtp_pass
#
#   Type: string
#   Default: (empty)
#
#   Specifies the password for your SMTP account. If unset, Mutt will
#   prompt you for your password when you first send mail via SMTP. See
#   $smtp_url to configure mutt to send mail via SMTP.
#
#   Warning: you should only use this option when you are on a fairly
#   secure machine, because the superuser can read your muttrc even if you
#   are the only one who can read the file.
#
#  smtp_url
#
#   Type: string
#   Default: (empty)
#
#   Defines the SMTP smarthost where sent messages should relayed for
#   delivery. This should take the form of an SMTP URL, e.g.:
#smtp[s]://[user[:pass]@]host[:port]
#
#   where "[...]" denotes an optional part. Setting this variable overrides
#   the value of the $sendmail variable.
#
#  sort
#
#   Type: sort order
#   Default: date
#
#   Specifies how to sort messages in the "index" menu. Valid values are:
#     * date or date-sent
#     * date-received
#     * from
#     * mailbox-order (unsorted)
#     * score
#     * size
#     * spam
#     * subject
#     * threads
#     * to
#
#   You may optionally use the "reverse-" prefix to specify reverse sorting
#   order (example: "set sort=reverse-date-sent").
#
#  sort_alias
#
#   Type: sort order
#   Default: alias
#
#   Specifies how the entries in the "alias" menu are sorted. The following
#   are legal values:
#     * address (sort alphabetically by email address)
#     * alias (sort alphabetically by alias name)
#     * unsorted (leave in order specified in .muttrc)
#
#  sort_aux
#
#   Type: sort order
#   Default: date
#
#   When sorting by threads, this variable controls how threads are sorted
#   in relation to other threads, and how the branches of the thread trees
#   are sorted. This can be set to any value that $sort can, except
#   "threads" (in that case, mutt will just use "date-sent"). You can also
#   specify the "last-" prefix in addition to the "reverse-" prefix, but
#   "last-" must come after "reverse-". The "last-" prefix causes messages
#   to be sorted against its siblings by which has the last descendant,
#   using the rest of $sort_aux as an ordering. For instance,
#set sort_aux=last-date-received
#
#   would mean that if a new message is received in a thread, that thread
#   becomes the last one displayed (or the first, if you have "set
#   sort=reverse-threads".)
#
#   Note: For reversed $sort order $sort_aux is reversed again (which is
#   not the right thing to do, but kept to not break any existing
#   configuration setting).
#
#  sort_browser
#
#   Type: sort order
#   Default: alpha
#
#   Specifies how to sort entries in the file browser. By default, the
#   entries are sorted alphabetically. Valid values:
#     * alpha (alphabetically)
#     * date
#     * size
#     * unsorted
#
#   You may optionally use the "reverse-" prefix to specify reverse sorting
#   order (example: "set sort_browser=reverse-date").
#
#  sort_re
#
#   Type: boolean
#   Default: yes
#
#   This variable is only useful when sorting by threads with
#   $strict_threads unset. In that case, it changes the heuristic mutt uses
#   to thread messages by subject. With $sort_re set, mutt will only attach
#   a message as the child of another message by subject if the subject of
#   the child message starts with a substring matching the setting of
#   $reply_regexp. With $sort_re unset, mutt will attach the message
#   whether or not this is the case, as long as the non-$reply_regexp parts
#   of both messages are identical.
#
#  spam_separator
#
#   Type: string
#   Default: ","
#
#   This variable controls what happens when multiple spam headers are
#   matched: if unset, each successive header will overwrite any previous
#   matches value for the spam label. If set, each successive match will
#   append to the previous, using this variable's value as a separator.
#
#  spoolfile
#
#   Type: path
#   Default: (empty)
#
#   If your spool mailbox is in a non-default place where Mutt cannot find
#   it, you can specify its location with this variable. Mutt will
#   initially set this variable to the value of the environment variable
#   $MAIL or $MAILDIR if either is defined.
#
#  ssl_ca_certificates_file
#
#   Type: path
#   Default: (empty)
#
#   This variable specifies a file containing trusted CA certificates. Any
#   server certificate that is signed with one of these CA certificates is
#   also automatically accepted.
#
#   Example:
#set ssl_ca_certificates_file=/etc/ssl/certs/ca-certificates.crt
#
#  ssl_client_cert
#
#   Type: path
#   Default: (empty)
#
#   The file containing a client certificate and its associated private
#   key.
#
#  ssl_force_tls
#
#   Type: boolean
#   Default: no
#
#   If this variable is set, Mutt will require that all connections to
#   remote servers be encrypted. Furthermore it will attempt to negotiate
#   TLS even if the server does not advertise the capability, since it
#   would otherwise have to abort the connection anyway. This option
#   supersedes $ssl_starttls.
#
#  ssl_min_dh_prime_bits
#
#   Type: number
#   Default: 0
#
#   This variable specifies the minimum acceptable prime size (in bits) for
#   use in any Diffie-Hellman key exchange. A value of 0 will use the
#   default from the GNUTLS library.
#
#  ssl_starttls
#
#   Type: quadoption
#   Default: yes
#
#   If set (the default), mutt will attempt to use STARTTLS on servers
#   advertising the capability. When unset, mutt will not attempt to use
#   STARTTLS regardless of the server's capabilities.
#
#  ssl_use_sslv2
#
#   Type: boolean
#   Default: no
#
#   This variable specifies whether to attempt to use SSLv2 in the SSL
#   authentication process.
#
#  ssl_use_sslv3
#
#   Type: boolean
#   Default: yes
#
#   This variable specifies whether to attempt to use SSLv3 in the SSL
#   authentication process.
#
#  ssl_use_tlsv1
#
#   Type: boolean
#   Default: yes
#
#   This variable specifies whether to attempt to use TLSv1 in the SSL
#   authentication process.
#
#  ssl_usesystemcerts
#
#   Type: boolean
#   Default: yes
#
#   If set to yes, mutt will use CA certificates in the system-wide
#   certificate store when checking if a server certificate is signed by a
#   trusted CA.
#
#  ssl_verify_dates
#
#   Type: boolean
#   Default: yes
#
#   If set (the default), mutt will not automatically accept a server
#   certificate that is either not yet valid or already expired. You should
#   only unset this for particular known hosts, using the <account-hook>
#   function.
#
#  ssl_verify_host
#
#   Type: boolean
#   Default: yes
#
#   If set (the default), mutt will not automatically accept a server
#   certificate whose host name does not match the host used in your folder
#   URL. You should only unset this for particular known hosts, using the
#   <account-hook> function.
#
#  status_chars
#
#   Type: string
#   Default: "-*%A"
#
#   Controls the characters used by the "%r" indicator in $status_format.
#   The first character is used when the mailbox is unchanged. The second
#   is used when the mailbox has been changed, and it needs to be
#   resynchronized. The third is used if the mailbox is in read-only mode,
#   or if the mailbox will not be written when exiting that mailbox (You
#   can toggle whether to write changes to a mailbox with the
#   <toggle-write> operation, bound by default to "%"). The fourth is used
#   to indicate that the current folder has been opened in attach- message
#   mode (Certain operations like composing a new mail, replying,
#   forwarding, etc. are not permitted in this mode).
#
#  status_format
#
#   Type: string
#   Default: "-%r-Mutt: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del
#   :%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%
#   S)-%>-(%P)---"
#
#   Controls the format of the status line displayed in the "index" menu.
#   This string is similar to $index_format, but has its own set of
#   printf(3)-like sequences:
#   %b number of mailboxes with new mail *
#   %d number of deleted messages *
#   %f the full pathname of the current mailbox
#   %F number of flagged messages *
#   %h local hostname
#   %l size (in bytes) of the current mailbox *
#   %L size (in bytes) of the messages shown (i.e., which match the current
#   limit) *
#   %m the number of messages in the mailbox *
#   %M the number of messages shown (i.e., which match the current limit) *
#   %n number of new messages in the mailbox *
#   %o number of old unread messages *
#   %p number of postponed messages *
#   %P percentage of the way through the index
#   %r modified/read-only/won't-write/attach-message indicator, according
#   to $status_chars
#   %s current sorting mode ($sort)
#   %S current aux sorting method ($sort_aux)
#   %t number of tagged messages *
#   %u number of unread messages *
#   %v Mutt version string
#   %V currently active limit pattern, if any *
#   %>X right justify the rest of the string and pad with "X"
#   %|X pad to the end of the line with "X"
#   %*X soft-fill with character "X" as pad
#
#   For an explanation of "soft-fill", see the $index_format documentation.
#
#   * = can be optionally printed if nonzero
#
#   Some of the above sequences can be used to optionally print a string if
#   their value is nonzero. For example, you may only want to see the
#   number of flagged messages if such messages exist, since zero is not
#   particularly meaningful. To optionally print a string based upon one of
#   the above sequences, the following construct is used:
#
#   %?<sequence_char>?<optional_string>?
#
#   where sequence_char is a character from the table above, and
#   optional_string is the string you would like printed if sequence_char
#   is nonzero. optional_string may contain other sequences as well as
#   normal text, but you may not nest optional strings.
#
#   Here is an example illustrating how to optionally print the number of
#   new messages in a mailbox:
#
#   %?n?%n new messages.?
#
#   You can also switch between two strings using the following construct:
#
#   %?<sequence_char>?<if_string>&<else_string>?
#
#   If the value of sequence_char is non-zero, if_string will be expanded,
#   otherwise else_string will be expanded.
#
#   You can force the result of any printf(3)-like sequence to be lowercase
#   by prefixing the sequence character with an underscore ("_") sign. For
#   example, if you want to display the local hostname in lowercase, you
#   would use: "%_h".
#
#   If you prefix the sequence character with a colon (":") character, mutt
#   will replace any dots in the expansion by underscores. This might be
#   helpful with IMAP folders that don't like dots in folder names.
#
#  status_on_top
#
#   Type: boolean
#   Default: no
#
#   Setting this variable causes the "status bar" to be displayed on the
#   first line of the screen rather than near the bottom. If $help is set,
#   too it'll be placed at the bottom.
#
#  strict_threads
#
#   Type: boolean
#   Default: no
#
#   If set, threading will only make use of the "In-Reply-To" and
#   "References:" fields when you $sort by message threads. By default,
#   messages with the same subject are grouped together in "pseudo
#   threads.". This may not always be desirable, such as in a personal
#   mailbox where you might have several unrelated messages with the
#   subjects like "hi" which will get grouped together. See also $sort_re
#   for a less drastic way of controlling this behavior.
#
#  suspend
#
#   Type: boolean
#   Default: yes
#
#   When unset, mutt won't stop when the user presses the terminal's susp
#   key, usually "^Z". This is useful if you run mutt inside an xterm using
#   a command like "xterm -e mutt".
#
#  text_flowed
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will generate "format=flowed" bodies with a content type
#   of "text/plain; format=flowed". This format is easier to handle for
#   some mailing software, and generally just looks like ordinary text. To
#   actually make use of this format's features, you'll need support in
#   your editor.
#
#   Note that $indent_string is ignored when this option is set.
#
#  thorough_search
#
#   Type: boolean
#   Default: yes
#
#   Affects the ~b and ~h search operations described in section
#   "patterns". If set, the headers and body/attachments of messages to be
#   searched are decoded before searching. If unset, messages are searched
#   as they appear in the folder.
#
#   Users searching attachments or for non-ASCII characters should set this
#   value because decoding also includes MIME parsing/decoding and possible
#   character set conversions. Otherwise mutt will attempt to match against
#   the raw message received (for example quoted-printable encoded or with
#   encoded headers) which may lead to incorrect search results.
#
#  thread_received
#
#   Type: boolean
#   Default: no
#
#   When set, mutt uses the date received rather than the date sent to
#   thread messages by subject.
#
#  tilde
#
#   Type: boolean
#   Default: no
#
#   When set, the internal-pager will pad blank lines to the bottom of the
#   screen with a tilde ("~").
#
#  time_inc
#
#   Type: number
#   Default: 0
#
#   Along with $read_inc, $write_inc, and $net_inc, this variable controls
#   the frequency with which progress updates are displayed. It suppresses
#   updates less than $time_inc milliseconds apart. This can improve
#   throughput on systems with slow terminals, or when running mutt on a
#   remote system.
#
#   Also see the "tuning" section of the manual for performance
#   considerations.
#
#  timeout
#
#   Type: number
#   Default: 600
#
#   When Mutt is waiting for user input either idling in menus or in an
#   interactive prompt, Mutt would block until input is present. Depending
#   on the context, this would prevent certain operations from working,
#   like checking for new mail or keeping an IMAP connection alive.
#
#   This variable controls how many seconds Mutt will at most wait until it
#   aborts waiting for input, performs these operations and continues to
#   wait for input.
#
#   A value of zero or less will cause Mutt to never time out.
#
#  tmpdir
#
#   Type: path
#   Default: (empty)
#
#   This variable allows you to specify where Mutt will place its temporary
#   files needed for displaying and composing messages. If this variable is
#   not set, the environment variable $TMPDIR is used. If $TMPDIR is not
#   set then "/tmp" is used.
#
#  to_chars
#
#   Type: string
#   Default: " +TCFL"
#
#   Controls the character used to indicate mail addressed to you. The
#   first character is the one used when the mail is not addressed to your
#   address. The second is used when you are the only recipient of the
#   message. The third is when your address appears in the "To:" header
#   field, but you are not the only recipient of the message. The fourth
#   character is used when your address is specified in the "Cc:" header
#   field, but you are not the only recipient. The fifth character is used
#   to indicate mail that was sent by you. The sixth character is used to
#   indicate when a mail was sent to a mailing-list you subscribe to.
#
#  tunnel
#
#   Type: string
#   Default: (empty)
#
#   Setting this variable will cause mutt to open a pipe to a command
#   instead of a raw socket. You may be able to use this to set up
#   preauthenticated connections to your IMAP/POP3/SMTP server. Example:
#set tunnel="ssh -q mailhost.net /usr/local/libexec/imapd"
#
#   Note: For this example to work you must be able to log in to the remote
#   machine without having to enter a password.
#
#   When set, Mutt uses the tunnel for all remote connections. Please see
#   "account-hook" in the manual for how to use different tunnel commands
#   per connection.
#
#  uncollapse_jump
#
#   Type: boolean
#   Default: no
#
#   When set, Mutt will jump to the next unread message, if any, when the
#   current thread is uncollapsed.
#
#  use_8bitmime
#
#   Type: boolean
#   Default: no
#
#   Warning: do not set this variable unless you are using a version of
#   sendmail which supports the -B8BITMIME flag (such as sendmail 8.8.x) or
#   you may not be able to send mail.
#
#   When set, Mutt will invoke $sendmail with the -B8BITMIME flag when
#   sending 8-bit messages to enable ESMTP negotiation.
#
#  use_domain
#
#   Type: boolean
#   Default: yes
#
#   When set, Mutt will qualify all local addresses (ones without the
#   "@host" portion) with the value of $hostname. If unset, no addresses
#   will be qualified.
#
#  use_envelope_from
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will set the envelope sender of the message. If
#   $envelope_from_address is set, it will be used as the sender address.
#   If unset, mutt will attempt to derive the sender from the "From:"
#   header.
#
#   Note that this information is passed to sendmail command using the -f
#   command line switch. Therefore setting this option is not useful if the
#   $sendmail variable already contains -f or if the executable pointed to
#   by $sendmail doesn't support the -f switch.
#
#  use_from
#
#   Type: boolean
#   Default: yes
#
#   When set, Mutt will generate the "From:" header field when sending
#   messages. If unset, no "From:" header field will be generated unless
#   the user explicitly sets one using the "my_hdr" command.
#
#  use_idn
#
#   Type: boolean
#   Default: yes
#
#   When set, Mutt will show you international domain names decoded. Note:
#   You can use IDNs for addresses even if this is unset. This variable
#   only affects decoding.
#
#  use_ipv6
#
#   Type: boolean
#   Default: yes
#
#   When set, Mutt will look for IPv6 addresses of hosts it tries to
#   contact. If this option is unset, Mutt will restrict itself to IPv4
#   addresses. Normally, the default should work.
#
#  user_agent
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will add a "User-Agent:" header to outgoing messages,
#   indicating which version of mutt was used for composing them.
#
#  visual
#
#   Type: path
#   Default: (empty)
#
#   Specifies the visual editor to invoke when the "~v" command is given in
#   the built-in editor.
#
#  wait_key
#
#   Type: boolean
#   Default: yes
#
#   Controls whether Mutt will ask you to press a key after an external
#   command has been invoked by these functions: <shell-escape>,
#   <pipe-message>, <pipe-entry>, <print-message>, and <print-entry>
#   commands.
#
#   It is also used when viewing attachments with "auto_view", provided
#   that the corresponding mailcap entry has a needsterminal flag, and the
#   external program is interactive.
#
#   When set, Mutt will always ask for a key. When unset, Mutt will wait
#   for a key only if the external command returned a non-zero status.
#
#  weed
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will weed headers when displaying, forwarding, printing,
#   or replying to messages.
#
#  wrap
#
#   Type: number
#   Default: 0
#
#   When set to a positive value, mutt will wrap text at $wrap characters.
#   When set to a negative value, mutt will wrap text so that there are
#   $wrap characters of empty space on the right side of the terminal.
#   Setting it to zero makes mutt wrap at the terminal width.
#
#  wrap_headers
#
#   Type: number
#   Default: 78
#
#   This option specifies the number of characters to use for wrapping an
#   outgoing message's headers. Allowed values are between 78 and 998
#   inclusive.
#
#   Note: This option usually shouldn't be changed. RFC5233 recommends a
#   line length of 78 (the default), so please only change this setting
#   when you know what you're doing.
#
#  wrap_search
#
#   Type: boolean
#   Default: yes
#
#   Controls whether searches wrap around the end.
#
#   When set, searches will wrap around the first (or last) item. When
#   unset, incremental searches will not wrap.
#
#  wrapmargin
#
#   Type: number
#   Default: 0
#
#   (DEPRECATED) Equivalent to setting $wrap with a negative value.
#
#  write_bcc
#
#   Type: boolean
#   Default: yes
#
#   Controls whether mutt writes out the "Bcc:" header when preparing
#   messages to be sent. Exim users may wish to unset this. If mutt is set
#   to deliver directly via SMTP (see $smtp_url), this option does nothing:
#   mutt will never write out the "Bcc:" header in this case.
#
#  write_inc
#
#   Type: number
#   Default: 10
#
#   When writing a mailbox, a message will be printed every $write_inc
#   messages to indicate progress. If set to 0, only a single message will
#   be displayed before writing a mailbox.
#
#   Also see the $read_inc, $net_inc and $time_inc variables and the
#   "tuning" section of the manual for performance considerations.
#
#  END
