package Mutt::Config::Version::v20050909_ng;

$VARIABLES = {
	

'abort_noattach' => {
'default' => 'no',
'type' => 'quadoption',
'text' => '<p>
This variable specifies whether to abort sending if no attachment
was made but the content references them, i.e. the content
matches the regular expression given in
<a href="http://www.mutt.org/doc/manual/manual-6.html#attach-remind-regexp">
$attach_remind_regexp</a>. If a match was found and this
variable is set to <em>yes</em>, message sending will be aborted
but the mail will be send nevertheless if set to <em>no</em>.
</p><p>
This variable and <a href="http://www.mutt.org/doc/manual/manual-6.html#attach-remind-regexp">
$attach_remind_regexp</a> are intended to
remind the user to attach files if the message\'s text
references them.
</p><p>
See also the <a href="http://www.mutt.org/doc/manual/manual-6.html#attach-remind-regexp">
$attach_remind_regexp</a> variable.
</p>'
},





'abort_nosubject' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
If set to <em>yes</em>, when composing messages and no subject is given
at the subject prompt, composition will be aborted.  If set to
<em>no</em>, composing messages with no subject given at the subject
prompt will never be aborted.
</p>'
},





'abort_unmodified' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '<p>
If set to <em>yes</em>, composition will automatically abort after
editing the message body if no changes are made to the file (this
check only happens after the <em>first</em> edit of the file).  When set
to <em>no</em>, composition will never be aborted.
</p>'
},





'agent_string' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will add a ``User-Agent:\'\' header to outgoing
messages, indicating which version of Mutt-ng was used for composing
them.
</p>'
},





'alias_file' => {
'default' => '~/.muttngrc',
'type' => 'path',
'text' => '<p>
The default file in which to save aliases created by the 
``<a href="http://www.mutt.org/doc/manual/manual-6.html#create-alias">
create-alias</a>\'\' function.
</p><p>
<em>Note:</em> Mutt-ng will not automatically source this file; you must
explicitly use the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#source">
source</a>\'\' command for it to be executed.
</p>'
},





'alias_format' => {
'default' => '%4n %2f %t %-10a   %r',
'type' => 'string',
'text' => '<p>
Specifies the format of the data displayed for the ``alias\'\' menu. The
following printf(3)-style sequences are available:
</p><p>


<dl>

<dt><strong>%a </strong></dt>
<dd><p>
alias name
</p></dd>
<dt><strong>%f </strong></dt>
<dd><p>
flags - currently, a "d" for an alias marked for deletion
</p></dd>
<dt><strong>%n </strong></dt>
<dd><p>
index number
</p></dd>
<dt><strong>%r </strong></dt>
<dd><p>
address which alias expands to
</p></dd>
<dt><strong>%t </strong></dt>
<dd><p>
character which indicates if the alias is tagged for inclusion
</p></dd>
</dl>

</p>'
},





'allow_8bit' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Controls whether 8-bit data is converted to 7-bit using either
quoted-printable or base64 encoding when sending mail.
</p>'
},





'allow_ansi' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Controls whether ANSI color codes in messages (and color tags in 
rich text messages) are to be interpreted.
Messages containing these codes are rare, but if this option is set,
their text will be colored accordingly. Note that this may override
your color choices, and even present a security problem, since a
message could include a line like ``[-- PGP output follows ..." and
give it the same color as your attachment color.
</p>'
},





'arrow_cursor' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, an arrow (``->\'\') will be used to indicate the current entry
in menus instead of highlighting the whole line.  On slow network or modem
links this will make response faster because there is less that has to
be redrawn on the screen when moving to the next or previous entries
in the menu.
</p>'
},





'ascii_chars' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will use plain ASCII characters when displaying thread
and attachment trees, instead of the default ACS characters.
</p>'
},





'askbcc' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will prompt you for blind-carbon-copy (Bcc) recipients
before editing an outgoing message.
</p>'
},





'askcc' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will prompt you for carbon-copy (Cc) recipients before
editing the body of an outgoing message.
</p>'
},





'assumed_charset' => {
'default' => 'us-ascii',
'type' => 'string',
'text' => '<p>
This variable is a colon-separated list of character encoding
schemes for messages without character encoding indication.
Header field values and message body content without character encoding
indication would be assumed that they are written in one of this list.
By default, all the header fields and message body without any charset
indication are assumed to be in us-ascii.
</p><p>
For example, Japanese users might prefer this:
</p><p>
set assumed_charset="iso-2022-jp:euc-jp:shift_jis:utf-8"
</p><p>
However, only the first content is valid for the message body.
This variable is valid only if <a href="http://www.mutt.org/doc/manual/manual-6.html#strict-mime">
$strict_mime</a> is unset.
</p>'
},





'attach_format' => {
'default' => '%u%D%I %t%4n %T%.40d%> [%.7m/%.10M, %.6e%?C?, %C?, %s] ',
'type' => 'string',
'text' => '<p>
This variable describes the format of the ``attachment\'\' menu.  The
following printf(3)-style sequences are understood:
</p><p>


<dl>

<dt><strong>%C  </strong></dt>
<dd><p>
charset
</p></dd>
<dt><strong>%c  </strong></dt>
<dd><p>
requires charset conversion (n or c)
</p></dd>
<dt><strong>%D  </strong></dt>
<dd><p>
deleted flag
</p></dd>
<dt><strong>%d  </strong></dt>
<dd><p>
description
</p></dd>
<dt><strong>%e  </strong></dt>
<dd><p>
MIME Content-Transfer-Encoding: header field
</p></dd>
<dt><strong>%f  </strong></dt>
<dd><p>
filename
</p></dd>
<dt><strong>%I  </strong></dt>
<dd><p>
MIME Content-Disposition: header field (I=inline, A=attachment)
</p></dd>
<dt><strong>%m  </strong></dt>
<dd><p>
major MIME type
</p></dd>
<dt><strong>%M  </strong></dt>
<dd><p>
MIME subtype
</p></dd>
<dt><strong>%n  </strong></dt>
<dd><p>
attachment number
</p></dd>
<dt><strong>%s  </strong></dt>
<dd><p>
size
</p></dd>
<dt><strong>%t  </strong></dt>
<dd><p>
tagged flag
</p></dd>
<dt><strong>%T  </strong></dt>
<dd><p>
graphic tree characters
</p></dd>
<dt><strong>%u  </strong></dt>
<dd><p>
unlink (=to delete) flag
</p></dd>
<dt><strong>%>X </strong></dt>
<dd><p>
right justify the rest of the string and pad with character "X"
</p></dd>
<dt><strong>%|X </strong></dt>
<dd><p>
pad to the end of the line with character "X"
</p></dd>
</dl>

</p>'
},





'attach_remind_regexp' => {
'default' => 'attach',
'type' => 'regular expression',
'text' => '<p>
If this variable is non-empty, muttng will scan a message\'s contents
before sending for this regular expression. If it is found, it will
ask for what to do depending on the setting of <a href="http://www.mutt.org/doc/manual/manual-6.html#abort-noattach">
$abort_noattach</a>.
</p><p>
This variable and <a href="http://www.mutt.org/doc/manual/manual-6.html#abort-noattach">
$abort_noattach</a> are intended to remind the user
to attach files if the message\'s text references them.
</p>'
},





'attach_sep' => {
'default' => '\n',
'type' => 'string',
'text' => '<p>
The separator to add between attachments when operating (saving,
printing, piping, etc) on a list of tagged attachments.
</p>'
},





'attach_split' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If this variable is <em>unset</em>, when operating (saving, printing, piping,
etc) on a list of tagged attachments, Mutt-ng will concatenate the
attachments and will operate on them as a single attachment. The
``<a href="http://www.mutt.org/doc/manual/manual-6.html#attach-sep">
$attach_sep</a>\'\' separator is added after each attachment. When <em>set</em>,
Mutt-ng will operate on the attachments one by one.
</p>'
},





'attribution' => {
'default' => 'On %d, %n wrote:',
'type' => 'string',
'text' => '<p>
This is the string that will precede a message which has been included
in a reply.  For a full listing of defined printf(3)-like sequences see
the section on ``<a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">
$index_format</a>\'\'.
</p>'
},





'auto_tag' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, functions in the <em>index</em> menu which affect a message
will be applied to all tagged messages (if there are any).  When
unset, you must first use the ``tag-prefix\'\' function (default: ";") to
make the next function apply to all tagged messages.
</p>'
},





'autoedit' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em> along with ``<a href="http://www.mutt.org/doc/manual/manual-6.html#edit-headers">
$edit_headers</a>\'\', Mutt-ng will skip the initial
send-menu and allow you to immediately begin editing the body of your
message.  The send-menu may still be accessed once you have finished
editing the body of your message.
</p><p>
Also see ``<a href="http://www.mutt.org/doc/manual/manual-6.html#fast-reply">
$fast_reply</a>\'\'.
</p>'
},





'beep' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When this variable is <em>set</em>, Mutt-ng will beep when an error occurs.
</p>'
},





'beep_new' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When this variable is <em>set</em>, Mutt-ng will beep whenever it prints a message
notifying you of new mail.  This is independent of the setting of the
``<a href="http://www.mutt.org/doc/manual/manual-6.html#beep">
$beep</a>\'\' variable.
</p>'
},





'bounce' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
Controls whether you will be asked to confirm bouncing messages.
If set to <em>yes</em> you don\'t get asked if you want to bounce a
message. Setting this variable to <em>no</em> is not generally useful,
and thus not recommended, because you are unable to bounce messages.
</p>'
},





'bounce_delivered' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When this variable is <em>set</em>, Mutt-ng will include 
Delivered-To: header fields when bouncing messages.
Postfix users may wish to <em>unset</em> this variable.
</p>'
},





'braille_friendly' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When this variable is set, mutt will place the cursor at the beginning
of the current line in menus, even when the arrow_cursor variable
is unset, making it easier for blind persons using Braille displays to 
follow these menus.  The option is disabled by default because many 
visual terminals don\'t permit making the cursor invisible.
</p>'
},





'certificate_file' => {
'default' => '~/.mutt_certificates',
'type' => 'path',
'text' => '<p>
Availability: SSL or GNUTLS
</p><p>
This variable specifies the file where the certificates you trust
are saved. When an unknown certificate is encountered, you are asked
if you accept it or not. If you accept it, the certificate can also 
be saved in this file and further connections are automatically 
accepted.
</p><p>
You can also manually add CA certificates in this file. Any server
certificate that is signed with one of these CA certificates are 
also automatically accepted.
</p><p>
Example: set certificate_file=˜/.muttng/certificates
</p>'
},





'charset' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Character set your terminal uses to display and enter textual data.
</p>'
},





'check_new' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
<em>Note:</em> this option only affects <em>maildir</em> and <em>MH</em> style
mailboxes.
</p><p>
When <em>set</em>, Mutt-ng will check for new mail delivered while the
mailbox is open.  Especially with MH mailboxes, this operation can
take quite some time since it involves scanning the directory and
checking each file to see if it has already been looked at.  If it\'s
<em>unset</em>, no check for new mail is performed while the mailbox is open.
</p>'
},





'collapse_unread' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>unset</em>, Mutt-ng will not collapse a thread if it contains any
unread messages.
</p>'
},





'compose_format' => {
'default' => '-- Mutt-ng: Compose  [Approx. msg size: %l   Atts: %a]%>-',
'type' => 'string',
'text' => '<p>
Controls the format of the status line displayed in the ``compose\'\'
menu.  This string is similar to ``<a href="http://www.mutt.org/doc/manual/manual-6.html#status-format">
$status_format</a>\'\', but has its own
set of printf(3)-like sequences:
</p><p>


<dl>

<dt><strong>%a </strong></dt>
<dd><p>
total number of attachments 
</p></dd>
<dt><strong>%h </strong></dt>
<dd><p>
local hostname
</p></dd>
<dt><strong>%l </strong></dt>
<dd><p>
approximate size (in bytes) of the current message
</p></dd>
<dt><strong>%v </strong></dt>
<dd><p>
Mutt-ng version string
</p></dd>
</dl>


</p><p>
See the text describing the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#status-format">
$status_format</a>\'\' option for more 
information on how to set ``<a href="http://www.mutt.org/doc/manual/manual-6.html#compose-format">
$compose_format</a>\'\'.
</p>'
},





'config_charset' => {
'default' => '',
'type' => 'string',
'text' => '<p>
When defined, Mutt-ng will recode commands in rc files from this
encoding.
</p>'
},





'confirmappend' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will prompt for confirmation when appending messages to
an existing mailbox.
</p>'
},





'confirmcreate' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will prompt for confirmation when saving messages to a
mailbox which does not yet exist before creating it.
</p>'
},





'connect_timeout' => {
'default' => '30',
'type' => 'number',
'text' => '<p>
Causes Mutt-ng to timeout a network connection (for IMAP or POP) after this
many seconds if the connection is not able to be established.  A negative
value causes Mutt-ng to wait indefinitely for the connection to succeed.
</p>'
},





'content_type' => {
'default' => 'text/plain',
'type' => 'string',
'text' => '<p>
Sets the default Content-Type: header field for the body
of newly composed messages.
</p>'
},





'copy' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '<p>
This variable controls whether or not copies of your outgoing messages
will be saved for later references.  Also see ``<a href="http://www.mutt.org/doc/manual/manual-6.html#record">
$record</a>\'\',
``<a href="http://www.mutt.org/doc/manual/manual-6.html#save-name">
$save_name</a>\'\', ``<a href="http://www.mutt.org/doc/manual/manual-6.html#force-name">
$force_name</a>\'\' and ``<a href="http://www.mutt.org/doc/manual/manual-6.html#fcc-hook">
fcc-hook</a>\'\'.
</p>'
},





'crypt_autoencrypt' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Setting this variable will cause Mutt-ng to always attempt to PGP
encrypt outgoing messages.  This is probably only useful in
connection to the <em>send-hook</em> command.  It can be overridden
by use of the <em>pgp-menu</em>, when encryption is not required or
signing is requested as well.  If ``<a href="http://www.mutt.org/doc/manual/manual-6.html#smime-is-default">
$smime_is_default</a>\'\' is <em>set</em>,
then OpenSSL is used instead to create S/MIME messages and
settings can be overridden by use of the <em>smime-menu</em>.
(Crypto only)
</p>'
},





'crypt_autopgp' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
This variable controls whether or not Mutt-ng may automatically enable
PGP encryption/signing for messages.  See also ``<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-autoencrypt">
$crypt_autoencrypt</a>\'\',
``<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replyencrypt">
$crypt_replyencrypt</a>\'\',
``<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-autosign">
$crypt_autosign</a>\'\', ``<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replysign">
$crypt_replysign</a>\'\' and ``<a href="http://www.mutt.org/doc/manual/manual-6.html#smime-is-default">
$smime_is_default</a>\'\'.
</p>'
},





'crypt_autosign' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Setting this variable will cause Mutt-ng to always attempt to
cryptographically sign outgoing messages.  This can be overridden
by use of the <em>pgp-menu</em>, when signing is not required or
encryption is requested as well. If ``<a href="http://www.mutt.org/doc/manual/manual-6.html#smime-is-default">
$smime_is_default</a>\'\' is <em>set</em>,
then OpenSSL is used instead to create S/MIME messages and settings can
be overridden by use of the <em>smime-menu</em>.
(Crypto only)
</p>'
},





'crypt_autosmime' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
This variable controls whether or not Mutt-ng may automatically enable
S/MIME encryption/signing for messages. See also ``<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-autoencrypt">
$crypt_autoencrypt</a>\'\',
``<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replyencrypt">
$crypt_replyencrypt</a>\'\',
``<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-autosign">
$crypt_autosign</a>\'\', ``<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replysign">
$crypt_replysign</a>\'\' and ``<a href="http://www.mutt.org/doc/manual/manual-6.html#smime-is-default">
$smime_is_default</a>\'\'.
</p>'
},





'crypt_replyencrypt' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, automatically PGP or OpenSSL encrypt replies to messages which are
encrypted.
(Crypto only)
</p>'
},





'crypt_replysign' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, automatically PGP or OpenSSL sign replies to messages which are
signed.
</p><p>
<em>Note:</em> this does not work on messages that are encrypted <em>and</em> signed!
(Crypto only)
</p>'
},





'crypt_replysignencrypted' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, automatically PGP or OpenSSL sign replies to messages
which are encrypted. This makes sense in combination with
``<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replyencrypt">
$crypt_replyencrypt</a>\'\', because it allows you to sign all
messages which are automatically encrypted.  This works around
the problem noted in ``<a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-replysign">
$crypt_replysign</a>\'\', that Mutt-ng is not able
to find out whether an encrypted message is also signed.
(Crypto only)
</p>'
},





'crypt_timestamp' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will include a time stamp in the lines surrounding
PGP or S/MIME output, so spoofing such lines is more difficult.
If you are using colors to mark these lines, and rely on these,
you may <em>unset</em> this setting.
(Crypto only)
</p>'
},





'crypt_use_gpgme' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
This variable controls the use the GPGME enabled crypto backends.
If it is <em>set</em> and Mutt-ng was build with gpgme support, the gpgme code for
S/MIME and PGP will be used instead of the classic code.
</p><p>
<em>Note</em>: You need to use this option in your .muttngrc configuration
file as it won\'t have any effect when used interactively.
</p>'
},





'crypt_verify_sig' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '<p>
If ``<em>yes</em>\'\', always attempt to verify PGP or S/MIME signatures.
If ``<em>ask</em>\'\', ask whether or not to verify the signature. 
If ``<em>no</em>\'\', never attempt to verify cryptographic signatures.
(Crypto only)
</p>'
},





'date_format' => {
'default' => '!%a, %b %d, %Y at %I:%M:%S%p %Z',
'type' => 'string',
'text' => '<p>
This variable controls the format of the date printed by the ``%d\'\'
sequence in ``<a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">
$index_format</a>\'\'.  This is passed to strftime(3)
to process the date.
</p><p>
Unless the first character in the string is a bang (``!\'\'), the month
and week day names are expanded according to the locale specified in
the variable ``<a href="http://www.mutt.org/doc/manual/manual-6.html#locale">
$locale</a>\'\'. If the first character in the string is a
bang, the bang is discarded, and the month and week day names in the
rest of the string are expanded in the <em>C</em> locale (that is in US
English).
</p>'
},





'default_hook' => {
'default' => '~f %s !~P | (~P ~C %s)',
'type' => 'string',
'text' => '<p>
This variable controls how send-hooks, message-hooks, save-hooks,
and fcc-hooks will
be interpreted if they are specified with only a simple regexp,
instead of a matching pattern.  The hooks are expanded when they are
declared, so a hook will be interpreted according to the value of this
variable at the time the hook is declared.  The default value matches
if the message is either from a user matching the regular expression
given, or if it is from you (if the from address matches
``alternates\'\') and is to or cc\'ed to a user matching the given
regular expression.
</p>'
},





'delete' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
Controls whether or not messages are really deleted when closing or
synchronizing a mailbox.  If set to <em>yes</em>, messages marked for
deleting will automatically be purged without prompting.  If set to
<em>no</em>, messages marked for deletion will be kept in the mailbox.
</p>'
},





'delete_space' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When sending messages with format=flowed by <em>setting</em> the
<a href="http://www.mutt.org/doc/manual/manual-6.html#text-flowed">
$text_flowed</a> variable, this variable specifies whether to also
set the DelSp parameter to yes. If this is <em>unset</em>,
no additional parameter will be send as a value of no already
is the default behavior.
</p><p>
<em>Note:</em> this variable only has an effect on <em>outgoing</em> messages
(if <a href="http://www.mutt.org/doc/manual/manual-6.html#text-flowed">
$text_flowed</a> is <em>set</em>) but not on incomming.
</p>'
},





'delete_untag' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If this option is <em>set</em>, Mutt-ng will untag messages when marking them
for deletion.  This applies when you either explicitly delete a message,
or when you save it to another folder.
</p>'
},





'digest_collapse' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If this option is <em>set</em>, Mutt-ng\'s received-attachments menu will not show the subparts of
individual messages in a multipart/digest.  To see these subparts, press \'v\' on that menu.
</p>'
},





'display_filter' => {
'default' => '',
'type' => 'path',
'text' => '<p>
When <em>set</em>, specifies a command used to filter messages.  When a message
is viewed it is passed as standard input to <a href="http://www.mutt.org/doc/manual/manual-6.html#display-filter">
$display_filter</a>, and the
filtered message is read from the standard output.
</p>'
},





'dotlock_program' => {
'default' => '$muttng_bindir/muttng_dotlock',
'type' => 'path',
'text' => '<p>
Availability: Standalone and Dotlock
</p><p>
Contains the path of the muttng_dotlock(1) binary to be used by
Mutt-ng.
</p>'
},





'dsn_notify' => {
'default' => '',
'type' => 'string',
'text' => '<p>
<em>Note:</em> you should not enable this unless you are using Sendmail
8.8.x or greater or in connection with the SMTP support via libESMTP.
</p><p>
This variable sets the request for when notification is returned.  The
string consists of a comma separated list (no spaces!) of one or more
of the following: <em>never</em>, to never request notification,
<em>failure</em>, to request notification on transmission failure,
<em>delay</em>, to be notified of message delays, <em>success</em>, to be
notified of successful transmission.
</p><p>
Example: set dsn_notify="failure,delay"
</p>'
},





'dsn_return' => {
'default' => '',
'type' => 'string',
'text' => '<p>
<em>Note:</em> you should not enable this unless you are using Sendmail
8.8.x or greater or in connection with the SMTP support via libESMTP.
</p><p>
This variable controls how much of your message is returned in DSN
messages.  It may be set to either <em>hdrs</em> to return just the
message header, or <em>full</em> to return the full message.
</p><p>
Example: set dsn_return=hdrs
</p>'
},





'duplicate_threads' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
This variable controls whether Mutt-ng, when sorting by threads, threads
messages with the same Message-Id: header field together.
If it is <em>set</em>, it will indicate that it thinks they are duplicates
of each other with an equals sign in the thread diagram.
</p>'
},





'edit_headers' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
This option allows you to edit the header of your outgoing messages
along with the body of your message.
</p><p>
Which empty header fields to show is controlled by the
<a href="http://www.mutt.org/doc/manual/manual-6.html#editor-headers">
$editor_headers</a> option.
</p>'
},





'editor' => {
'default' => '',
'type' => 'path',
'text' => '<p>
This variable specifies which editor is used by Mutt-ng.
It defaults to the value of the $VISUAL, or $EDITOR, environment
variable, or to the string "vi" if neither of those are set.
</p>'
},





'editor_headers' => {
'default' => 'From: To: Cc: Bcc: Subject: Reply-To: Newsgroups: Followup-To: X-Comment-To:',
'type' => 'string',
'text' => '<p>
If <a href="http://www.mutt.org/doc/manual/manual-6.html#edit-headers">
$edit_headers</a> is <em>set</em>, this space-separated list specifies
which <em>non-empty</em> header fields to edit in addition to
user-defined headers.
</p><p>
Note: if <a href="http://www.mutt.org/doc/manual/manual-6.html#edit-headers">
$edit_headers</a> had to be turned on by force because
<a href="http://www.mutt.org/doc/manual/manual-6.html#strict-mailto">
$strict_mailto</a> is <em>unset</em>, this option has no effect.
</p>'
},





'encode_from' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will quoted-printable encode messages when
they contain the string ``From \'\' (note the trailing space)
in the beginning of a line. Useful to avoid the tampering certain mail
delivery and transport agents tend to do with messages.
</p><p>
<em>Note:</em> as mutt-ng currently violates RfC3676 defining
format=flowed, it\'s <em/strongly/ advised to <em>set</em>
this option although discouraged by the standard. Alternatively,
you must take care of space-stuffing <tt/From / lines (with a trailing
space) yourself.
</p>'
},





'entropy_file' => {
'default' => '',
'type' => 'path',
'text' => '<p>
Availability: SSL
</p><p>
The file which includes random data that is used to initialize SSL
library functions.
</p>'
},





'envelope_from' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will try to derive the message\'s <em>envelope</em>
sender from the ``From:\'\' header field. Note that this information is passed 
to the sendmail command using the ``-f" command line switch, so don\'t set this
option if you are using that switch in <a href="http://www.mutt.org/doc/manual/manual-6.html#sendmail">
$sendmail</a> yourself,
or if the sendmail on your machine doesn\'t support that command
line switch.
</p>'
},





'escape' => {
'default' => '~',
'type' => 'string',
'text' => '<p>
Escape character to use for functions in the builtin editor.
</p>'
},





'fast_reply' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, the initial prompt for recipients and subject are skipped
when replying to messages, and the initial prompt for subject is
skipped when forwarding messages.
</p><p>
<em>Note:</em> this variable has no effect when the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#autoedit">
$autoedit</a>\'\'
variable is <em>set</em>.
</p>'
},





'fcc_attach' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
This variable controls whether or not attachments on outgoing messages
are saved along with the main body of your message.
</p>'
},





'fcc_clear' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When this variable is <em>set</em>, FCCs will be stored unencrypted and
unsigned, even when the actual message is encrypted and/or
signed.
(PGP only)
</p>'
},





'file_charset' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This variable is a colon-separated list of character encoding
schemes for text file attatchments.
If <em>unset</em>, <a href="http://www.mutt.org/doc/manual/manual-6.html#charset">
$charset</a> value will be used instead.
For example, the following configuration would work for Japanese
text handling:
</p><p>
set file_charset="iso-2022-jp:euc-jp:shift_jis:utf-8"
</p><p>
Note: ``iso-2022-*\'\' must be put at the head of the value as shown above
if included.
</p>'
},





'folder' => {
'default' => '~/Mail',
'type' => 'path',
'text' => '<p>
Specifies the default location of your mailboxes.  A ``+\'\' or ``=\'\' at the
beginning of a pathname will be expanded to the value of this
variable.  Note that if you change this variable from the default
value you need to make sure that the assignment occurs <em>before</em>
you use ``+\'\' or ``=\'\' for any other variables since expansion takes place
during the ``set\'\' command.
</p>'
},





'folder_format' => {
'default' => '%2C %t %N %F %2l %-8.8u %-8.8g %8s %d %f',
'type' => 'string',
'text' => '<p>
This variable allows you to customize the file browser display to your
personal taste.  This string is similar to ``<a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">
$index_format</a>\'\', but has
its own set of printf(3)-like sequences:
</p><p>


<dl>

<dt><strong>%C  </strong></dt>
<dd><p>
current file number
</p></dd>
<dt><strong>%d  </strong></dt>
<dd><p>
date/time folder was last modified
</p></dd>
<dt><strong>%f  </strong></dt>
<dd><p>
filename
</p></dd>
<dt><strong>%F  </strong></dt>
<dd><p>
file permissions
</p></dd>
<dt><strong>%g  </strong></dt>
<dd><p>
group name (or numeric gid, if missing)
</p></dd>
<dt><strong>%l  </strong></dt>
<dd><p>
number of hard links
</p></dd>
<dt><strong>%N  </strong></dt>
<dd><p>
N if folder has new mail, blank otherwise
</p></dd>
<dt><strong>%s  </strong></dt>
<dd><p>
size in bytes
</p></dd>
<dt><strong>%t  </strong></dt>
<dd><p>
* if the file is tagged, blank otherwise
</p></dd>
<dt><strong>%u  </strong></dt>
<dd><p>
owner name (or numeric uid, if missing)
</p></dd>
<dt><strong>%>X </strong></dt>
<dd><p>
right justify the rest of the string and pad with character "X"
</p></dd>
<dt><strong>%|X </strong></dt>
<dd><p>
pad to the end of the line with character "X"
</p></dd>
</dl>

</p>'
},





'followup_to' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Controls whether or not the Mail-Followup-To: header field is
generated when sending mail.  When <em>set</em>, Mutt-ng will generate this
field when you are replying to a known mailing list, specified with
the ``subscribe\'\' or ``<a href="http://www.mutt.org/doc/manual/manual-6.html#lists">
lists</a>\'\' commands or detected by common mailing list
headers.
</p><p>
This field has two purposes.  First, preventing you from
receiving duplicate copies of replies to messages which you send
to mailing lists. Second, ensuring that you do get a reply
separately for any messages sent to known lists to which you are
not subscribed.  The header will contain only the list\'s address
for subscribed lists, and both the list address and your own
email address for unsubscribed lists.  Without this header, a
group reply to your message sent to a subscribed list will be
sent to both the list and your address, resulting in two copies
of the same email for you.
</p>'
},





'force_buffy_check' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, it causes Mutt-ng to check for new mail when the
<em>buffy-list</em> command is invoked. When <em>unset</em>, <em>buffy_list</em>
will just list all mailboxes which are already known to have new mail.
</p><p>
Also see the following variables: ``<a href="http://www.mutt.org/doc/manual/manual-6.html#timeout">
$timeout</a>\'\', ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mail-check">
$mail_check</a>\'\' and
``<a href="http://www.mutt.org/doc/manual/manual-6.html#imap-mail-check">
$imap_mail_check</a>\'\'.
</p>'
},





'force_name' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
This variable is similar to ``<a href="http://www.mutt.org/doc/manual/manual-6.html#save-name">
$save_name</a>\'\', except that Mutt-ng will
store a copy of your outgoing message by the username of the address
you are sending to even if that mailbox does not exist.
</p><p>
Also see the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#record">
$record</a>\'\' variable.
</p>'
},





'forward_decode' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Controls the decoding of complex MIME messages into text/plain when
forwarding a message.  The message header is also RFC2047 decoded.
This variable is only used, if ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward">
$mime_forward</a>\'\' is <em>unset</em>,
otherwise ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward-decode">
$mime_forward_decode</a>\'\' is used instead.
</p>'
},





'forward_decrypt' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Controls the handling of encrypted messages when forwarding a message.
When <em>set</em>, the outer layer of encryption is stripped off.  This
variable is only used if ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward">
$mime_forward</a>\'\' is <em>set</em> and
``<a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward-decode">
$mime_forward_decode</a>\'\' is <em>unset</em>.
(PGP only)
</p>'
},





'forward_edit' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '<p>
This quadoption controls whether or not the user is automatically
placed in the editor when forwarding messages.  For those who always want
to forward with no modification, use a setting of <em>no</em>.
</p>'
},





'forward_format' => {
'default' => '[%a: %s]',
'type' => 'string',
'text' => '<p>
This variable controls the default subject when forwarding a message.
It uses the same format sequences as the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">
$index_format</a>\'\' variable.
</p>'
},





'forward_quote' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em> forwarded messages included in the main body of the
message (when ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward">
$mime_forward</a>\'\' is <em>unset</em>) will be quoted using
``<a href="http://www.mutt.org/doc/manual/manual-6.html#indent-string">
$indent_string</a>\'\'.
</p>'
},





'from' => {
'default' => '',
'type' => 'e-mail address',
'text' => '<p>
This variable contains a default from address.  It
can be overridden using my_hdr (including from send-hooks) and
``<a href="http://www.mutt.org/doc/manual/manual-6.html#reverse-name">
$reverse_name</a>\'\'.  This variable is ignored if ``<a href="http://www.mutt.org/doc/manual/manual-6.html#use-from">
$use_from</a>\'\'
is unset.
</p><p>
E.g. you can use 
send-hook Mutt-ng-devel@lists.berlios.de \'my_hdr From: Foo Bar <foo@bar.fb>\'
when replying to the mutt-ng developer\'s mailing list and Mutt-ng takes this email address.
</p><p>
Defaults to the contents of the environment variable $EMAIL.
</p>'
},





'gecos_mask' => {
'default' => '^[^,]*',
'type' => 'regular expression',
'text' => '<p>
A regular expression used by Mutt-ng to parse the GECOS field of a password
entry when expanding the alias.  By default the regular expression is set
to ``^[^,]*\'\' which will return the string up to the first ``,\'\' encountered.
If the GECOS field contains a string like "lastname, firstname" then you
should do: set gecos_mask=".*".
</p><p>
This can be useful if you see the following behavior: you address a e-mail
to user ID stevef whose full name is Steve Franklin.  If Mutt-ng expands 
stevef to ``Franklin\'\' stevef@foo.bar then you should set the gecos_mask to
a regular expression that will match the whole name so Mutt-ng will expand
``Franklin\'\' to ``Franklin, Steve\'\'.
</p>'
},





'hdrs' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>unset</em>, the header fields normally added by the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#my-hdr">
my_hdr</a>\'\'
command are not created.  This variable <em>must</em> be <em>unset</em> before
composing a new message or replying in order to take effect.  If <em>set</em>,
the user defined header fields are added to every new message.
</p>'
},





'header' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, this variable causes Mutt-ng to include the header
of the message you are replying to into the edit buffer.
The ``<a href="http://www.mutt.org/doc/manual/manual-6.html#weed">
$weed</a>\'\' setting applies.
</p>'
},





'header_cache' => {
'default' => '',
'type' => 'path',
'text' => '<p>
Availability: Header Cache
</p><p>
The <a href="http://www.mutt.org/doc/manual/manual-6.html#header-cache">
$header_cache</a> variable points to the header cache database.
</p><p>
If <a href="http://www.mutt.org/doc/manual/manual-6.html#header-cache">
$header_cache</a> points to a directory it will contain a header cache
database  per folder. If <a href="http://www.mutt.org/doc/manual/manual-6.html#header-cache">
$header_cache</a> points to a file that file will
be a single global header cache. By default it is <em>unset</em> so no
header caching will be used.
</p>'
},





'header_cache_pagesize' => {
'default' => '16384',
'type' => 'string',
'text' => '<p>
Availability: Header Cache
</p><p>
Change the maildir header cache database page size.
</p><p>
Too large
or too small of a page size for the common header can waste
space, memory effectiveness, or CPU time. The default should be more or
less the best you can get. For details google for mutt header
cache (first hit).
</p>'
},





'help' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, help lines describing the bindings for the major functions
provided by each menu are displayed on the first line of the screen.
</p><p>
<em>Note:</em> The binding will not be displayed correctly if the
function is bound to a sequence rather than a single keystroke.  Also,
the help line may not be updated if a binding is changed while Mutt-ng is
running.  Since this variable is primarily aimed at new users, neither
of these should present a major problem.
</p>'
},





'hidden_host' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will skip the host name part of ``<a href="http://www.mutt.org/doc/manual/manual-6.html#hostname">
$hostname</a>\'\' variable
when adding the domain part to addresses.  This variable does not
affect the generation of Message-ID: header fields, and it will not lead to the 
cut-off of first-level domains.
</p>'
},





'hide_limited' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will not show the presence of messages that are hidden
by limiting, in the thread tree.
</p>'
},





'hide_missing' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will not show the presence of missing messages in the
thread tree.
</p>'
},





'hide_thread_subject' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will not show the subject of messages in the thread
tree that have the same subject as their parent or closest previously
displayed sibling.
</p>'
},





'hide_top_limited' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will not show the presence of messages that are hidden
by limiting, at the top of threads in the thread tree.  Note that when
<a href="http://www.mutt.org/doc/manual/manual-6.html#hide-missing">
$hide_missing</a> is <em>set</em>, this option will have no effect.
</p>'
},





'hide_top_missing' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will not show the presence of missing messages at the
top of threads in the thread tree.  Note that when <a href="http://www.mutt.org/doc/manual/manual-6.html#hide-limited">
$hide_limited</a> is
<em>set</em>, this option will have no effect.
</p>'
},





'history' => {
'default' => '10',
'type' => 'number',
'text' => '<p>
This variable controls the size (in number of strings remembered) of
the string history buffer. The buffer is cleared each time the
variable is changed.
</p>'
},





'honor_followup_to' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '<p>
This variable controls whether or not a Mail-Followup-To: header field is
honored when group-replying to a message.
</p>'
},





'hostname' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Specifies the hostname to use after the ``@\'\' in local e-mail
addresses and during generation of Message-Id: headers.
</p><p>
Please be sure to really know what you are doing when changing this variable
to configure a custom domain part of Message-IDs.
</p>'
},





'ignore_list_reply_to' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Affects the behaviour of the <em>reply</em> function when replying to
messages from mailing lists.  When <em>set</em>, if the ``Reply-To:\'\' header field is
set to the same value as the ``To:\'\' header field, Mutt-ng assumes that the
``Reply-To:\'\' header field was set by the mailing list to automate responses
to the list, and will ignore this field.  To direct a response to the
mailing list when this option is set, use the <em>list-reply</em>
function; <em>group-reply</em> will reply to both the sender and the
list.
</p>'
},





'imap_authenticators' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: IMAP
</p><p>
This is a colon-delimited list of authentication methods Mutt-ng may
attempt to use to log in to an IMAP server, in the order Mutt-ng should
try them.  Authentication methods are either ``login\'\' or the right
side of an IMAP ``AUTH=\'\' capability string, e.g. ``digest-md5\'\',
``gssapi\'\' or ``cram-md5\'\'. This parameter is case-insensitive.
</p><p>
If this
parameter is <em>unset</em> (the default) Mutt-ng will try all available methods,
in order from most-secure to least-secure.
</p><p>
Example: set imap_authenticators="gssapi:cram-md5:login"
</p><p>
<em>Note:</em> Mutt-ng will only fall back to other authentication methods if
the previous methods are unavailable. If a method is available but
authentication fails, Mutt-ng will not connect to the IMAP server.
</p>'
},





'imap_check_subscribed' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, mutt will fetch the set of subscribed folders from
your server on connection, and add them to the set of mailboxes
it polls for new mail. See also the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mailboxes">
mailboxes</a>\'\' command.
</p>'
},





'imap_delim_chars' => {
'default' => '/.',
'type' => 'string',
'text' => '<p>
Availability: IMAP
</p><p>
This contains the list of characters which you would like to treat
as folder separators for displaying IMAP paths. In particular it
helps in using the \'=\' shortcut for your <a href="http://www.mutt.org/doc/manual/manual-6.html#folder">
$folder</a> variable.
</p>'
},





'imap_headers' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: IMAP
</p><p>
Mutt-ng requests these header fields in addition to the default headers
(``DATE FROM SUBJECT TO CC MESSAGE-ID REFERENCES CONTENT-TYPE
CONTENT-DESCRIPTION IN-REPLY-TO REPLY-TO LINES X-LABEL\'\') from IMAP
servers before displaying the ``index\'\' menu. You may want to add more
headers for spam detection.
</p><p>
<em>Note:</em> This is a space separated list.
</p>'
},





'imap_home_namespace' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: IMAP
</p><p>
You normally want to see your personal folders alongside
your INBOX in the IMAP browser. If you see something else, you may set
this variable to the IMAP path to your folders.
</p>'
},





'imap_keepalive' => {
'default' => '900',
'type' => 'number',
'text' => '<p>
Availability: IMAP
</p><p>
This variable specifies the maximum amount of time in seconds that Mutt-ng
will wait before polling open IMAP connections, to prevent the server
from closing them before Mutt-ng has finished with them.
</p><p>
The default is
well within the RFC-specified minimum amount of time (30 minutes) before
a server is allowed to do this, but in practice the RFC does get
violated every now and then.
</p><p>
Reduce this number if you find yourself
getting disconnected from your IMAP server due to inactivity.
</p>'
},





'imap_list_subscribed' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Availability: IMAP
</p><p>
This variable configures whether IMAP folder browsing will look for
only subscribed folders or all folders.  This can be toggled in the
IMAP browser with the <em>toggle-subscribed</em> function.
</p>'
},





'imap_login' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: IMAP
</p><p>
Your login name on the IMAP server.
</p><p>
This variable defaults to the value of ``<a href="http://www.mutt.org/doc/manual/manual-6.html#imap-user">
$imap_user</a>.\'\'
</p>'
},





'imap_mail_check' => {
'default' => '300',
'type' => 'number',
'text' => '<p>
This variable configures how often (in seconds) Mutt-ng should look for
new mail in IMAP folders. This is split from the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mail-check">
mail_check</a>\'\' variable
to generate less traffic and get more accurate information for local folders.
</p>'
},





'imap_pass' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: IMAP
</p><p>
Specifies the password for your IMAP account.  If <em>unset</em>, Mutt-ng will
prompt you for your password when you invoke the fetch-mail function.
</p><p>
<em>Warning</em>: you should only use this option when you are on a
fairly secure machine, because the superuser can read your configuration even
if you are the only one who can read the file.
</p>'
},





'imap_passive' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: IMAP
</p><p>
When <em>set</em>, Mutt-ng will not open new IMAP connections to check for new
mail.  Mutt-ng will only check for new mail over existing IMAP
connections.  This is useful if you don\'t want to be prompted to
user/password pairs on Mutt-ng invocation, or if opening the connection
is slow.
</p>'
},





'imap_peek' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: IMAP
</p><p>
If <em>set</em>, Mutt-ng will avoid implicitly marking your mail as read whenever
you fetch a message from the server. This is generally a good thing,
but can make closing an IMAP folder somewhat slower. This option
exists to appease speed freaks.
</p>'
},





'imap_reconnect' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
Availability: IMAP
</p><p>
Controls whether or not Mutt-ng will try to reconnect to IMAP server when
the connection is lost.
</p>'
},





'imap_servernoise' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: IMAP
</p><p>
When <em>set</em>, Mutt-ng will display warning messages from the IMAP
server as error messages. Since these messages are often
harmless, or generated due to configuration problems on the
server which are out of the users\' hands, you may wish to suppress
them at some point.
</p>'
},





'imap_user' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: IMAP
</p><p>
The name of the user whose mail you intend to access on the IMAP
server.
</p><p>
This variable defaults to your user name on the local machine.
</p>'
},





'implicit_autoview' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will look for a mailcap entry with the
``copiousoutput\'\' flag set for <em>every</em> MIME attachment it doesn\'t have
an internal viewer defined for.  If such an entry is found, Mutt-ng will
use the viewer defined in that entry to convert the body part to text
form.
</p>'
},





'include' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
Controls whether or not a copy of the message(s) you are replying to
is included in your reply.
</p>'
},





'include_onlyfirst' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Controls whether or not Mutt-ng includes only the first attachment
of the message you are replying.
</p>'
},





'indent_string' => {
'default' => '> ',
'type' => 'string',
'text' => '<p>
Specifies the string to prepend to each line of text quoted in a
message to which you are replying.  You are strongly encouraged not to
change this value, as it tends to agitate the more fanatical netizens.
</p>'
},





'index_format' => {
'default' => '%4C %Z %{%b %d} %-15.15L (%?l?%4l&%4c?) %s',
'type' => 'string',
'text' => '<p>
This variable allows you to customize the message index display to
your personal taste.
</p><p>
``Format strings\'\' are similar to the strings used in the ``C\'\'
function printf(3) to format output (see the man page for more detail).
The following sequences are defined in Mutt-ng:
</p><p>


<dl>

<dt><strong>%a </strong></dt>
<dd><p>
address of the author
</p></dd>
<dt><strong>%A </strong></dt>
<dd><p>
reply-to address (if present; otherwise: address of author)
</p></dd>
<dt><strong>%b </strong></dt>
<dd><p>
filename of the original message folder (think mailBox)
</p></dd>
<dt><strong>%B </strong></dt>
<dd><p>
the list to which the letter was sent, or else the folder name (%b).
</p></dd>
<dt><strong>%c </strong></dt>
<dd><p>
number of characters (bytes) in the message
</p></dd>
<dt><strong>%C </strong></dt>
<dd><p>
current message number
</p></dd>
<dt><strong>%d </strong></dt>
<dd><p>
date and time of the message in the format specified by
``date_format\'\' converted to sender\'s time zone
</p></dd>
<dt><strong>%D </strong></dt>
<dd><p>
date and time of the message in the format specified by
``date_format\'\' converted to the local time zone
</p></dd>
<dt><strong>%e </strong></dt>
<dd><p>
current message number in thread
</p></dd>
<dt><strong>%E </strong></dt>
<dd><p>
number of messages in current thread
</p></dd>
<dt><strong>%f </strong></dt>
<dd><p>
entire From: line (address + real name)
</p></dd>
<dt><strong>%F </strong></dt>
<dd><p>
author name, or recipient name if the message is from you
</p></dd>
<dt><strong>%H </strong></dt>
<dd><p>
spam attribute(s) of this message
</p></dd>
<dt><strong>%g </strong></dt>
<dd><p>
newsgroup name (if compiled with nntp support)
</p></dd>
<dt><strong>%i </strong></dt>
<dd><p>
message-id of the current message
</p></dd>
<dt><strong>%l </strong></dt>
<dd><p>
number of lines in the message (does not work with maildir,
mh, and possibly IMAP folders)
</p></dd>
<dt><strong>%L </strong></dt>
<dd><p>
If an address in the To or CC header field matches an address
defined by the users ``subscribe\'\' command, this displays
"To <list-name>", otherwise the same as %F.
</p></dd>
<dt><strong>%m </strong></dt>
<dd><p>
total number of message in the mailbox
</p></dd>
<dt><strong>%M </strong></dt>
<dd><p>
number of hidden messages if the thread is collapsed.
</p></dd>
<dt><strong>%N </strong></dt>
<dd><p>
message score
</p></dd>
<dt><strong>%n </strong></dt>
<dd><p>
author\'s real name (or address if missing)
</p></dd>
<dt><strong>%O </strong></dt>
<dd><p>
(_O_riginal save folder)  Where Mutt-ng would formerly have
stashed the message: list name or recipient name if no list
</p></dd>
<dt><strong>%s </strong></dt>
<dd><p>
subject of the message
</p></dd>
<dt><strong>%S </strong></dt>
<dd><p>
status of the message (N/D/d/!/r/*)
</p></dd>
<dt><strong>%t </strong></dt>
<dd><p>
`to:\' field (recipients)
</p></dd>
<dt><strong>%T </strong></dt>
<dd><p>
the appropriate character from the <a href="http://www.mutt.org/doc/manual/manual-6.html#to-chars">
$to_chars</a> string
</p></dd>
<dt><strong>%u </strong></dt>
<dd><p>
user (login) name of the author
</p></dd>
<dt><strong>%v </strong></dt>
<dd><p>
first name of the author, or the recipient if the message is from you
</p></dd>
<dt><strong>%W </strong></dt>
<dd><p>
name of organization of author (`organization:\' field)
</p></dd>
<dt><strong>%y </strong></dt>
<dd><p>
`x-label:\' field, if present
</p></dd>
<dt><strong>%Y </strong></dt>
<dd><p>
`x-label\' field, if present, and (1) not at part of a thread tree,
(2) at the top of a thread, or (3) `x-label\' is different from
preceding message\'s `x-label\'.
</p></dd>
<dt><strong>%Z </strong></dt>
<dd><p>
message status flags
</p></dd>
<dt><strong>%{fmt} </strong></dt>
<dd><p>
the date and time of the message is converted to sender\'s
time zone, and ``fmt\'\' is expanded by the library function
``strftime\'\'; a leading bang disables locales
</p></dd>
<dt><strong>%[fmt] </strong></dt>
<dd><p>
the date and time of the message is converted to the local
time zone, and ``fmt\'\' is expanded by the library function
``strftime\'\'; a leading bang disables locales
</p></dd>
<dt><strong>%(fmt) </strong></dt>
<dd><p>
the local date and time when the message was received.
``fmt\'\' is expanded by the library function ``strftime\'\';
a leading bang disables locales
</p></dd>
<dt><strong>%<fmt> </strong></dt>
<dd><p>
the current local time. ``fmt\'\' is expanded by the library
function ``strftime\'\'; a leading bang disables locales.
</p></dd>
<dt><strong>%>X    </strong></dt>
<dd><p>
right justify the rest of the string and pad with character "X"
</p></dd>
<dt><strong>%|X    </strong></dt>
<dd><p>
pad to the end of the line with character "X"
</p></dd>
</dl>


</p><p>
See also: ``<a href="http://www.mutt.org/doc/manual/manual-6.html#to-chars">
$to_chars</a>\'\'.
</p>'
},





'ispell' => {
'default' => '/usr/bin/ispell',
'type' => 'path',
'text' => '<p>
How to invoke ispell (GNU\'s spell-checking software).
</p>'
},





'keep_flagged' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, read messages marked as flagged will not be moved
from your spool mailbox to your ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mbox">
$mbox</a>\'\' mailbox, or as a result of
a ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mbox-hook">
mbox-hook</a>\'\' command.
</p>'
},





'list_reply' => {
'default' => 'no',
'type' => 'quadoption',
'text' => '<p>
When <em>set</em>, address replies to the mailing list the original message came
from (instead to the author only). Setting this option to ``<em>ask-yes</em>\'\' or
``<em>ask-no</em>\'\' will ask if you really intended to reply to the author only.
</p>'
},





'locale' => {
'default' => 'C',
'type' => 'string',
'text' => '<p>
The locale used by strftime(3) to format dates. Legal values are
the strings your system accepts for the locale variable LC_TIME.
</p>'
},





'mail_check' => {
'default' => '5',
'type' => 'number',
'text' => '<p>
This variable configures how often (in seconds) Mutt-ng should look for
new mail.
</p><p>
<em>Note:</em> This does not apply to IMAP mailboxes, see <a href="http://www.mutt.org/doc/manual/manual-6.html#imap-mail-check">
$imap_mail_check</a>.
</p>'
},





'mailcap_path' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This variable specifies which files to consult when attempting to
display MIME bodies not directly supported by Mutt-ng.
</p>'
},





'mailcap_sanitize' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will restrict possible characters in mailcap % expandos
to a well-defined set of safe characters.  This is the safe setting,
but we are not sure it doesn\'t break some more advanced MIME stuff.
</p><p>
<em>DON\'T CHANGE THIS SETTING UNLESS YOU ARE REALLY SURE WHAT YOU ARE
DOING!</em>
</p>'
},





'maildir_header_cache_verify' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: Header Cache
</p><p>
Check for Maildir unaware programs other than Mutt-ng having modified maildir
files when the header cache is in use. This incurs one stat(2) per
message every time the folder is opened.
</p>'
},





'maildir_trash' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, messages marked as deleted will be saved with the maildir
(T)rashed flag instead of physically deleted.
</p><p>
<em>NOTE:</em> this only applies
to maildir-style mailboxes. Setting it will have no effect on other
mailbox types.
</p><p>
It is similiar to the trash option.
</p>'
},





'mark_old' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Controls whether or not Mutt-ng marks <em>new</em> <em>unread</em>
messages as <em>old</em> if you exit a mailbox without reading them.
</p><p>
With this option <em>set</em>, the next time you start Mutt-ng, the messages
will show up with an "O" next to them in the ``index\'\' menu,
indicating that they are old.
</p>'
},





'markers' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Controls the display of wrapped lines in the internal pager. If set, a
``+\'\' marker is displayed at the beginning of wrapped lines. Also see
the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#smart-wrap">
$smart_wrap</a>\'\' variable.
</p>'
},





'mask' => {
'default' => '!^\.[^.]',
'type' => 'regular expression',
'text' => '<p>
A regular expression used in the file browser, optionally preceded by
the <em>not</em> operator ``!\'\'.  Only files whose names match this mask
will be shown. The match is always case-sensitive.
</p>'
},





'max_display_recips' => {
'default' => '0',
'type' => 'number',
'text' => '<p>
When set non-zero, this specifies the maximum number of recipient header
lines (To:, Cc: and Bcc:) to display in the pager if header
weeding is turned on. In case the number of lines exeeds its value, the
last line will have 3 dots appended.
</p>'
},





'max_line_length' => {
'default' => '0',
'type' => 'number',
'text' => '<p>
When <em>set</em>, the maximum line length for displaying ``format = flowed\'\' messages is limited
to this length. A value of 0 (which is also the default) means that the
maximum line length is determined by the terminal width and <a href="http://www.mutt.org/doc/manual/manual-6.html#wrapmargin">
$wrapmargin</a>.
</p>'
},





'mbox' => {
'default' => '~/mbox',
'type' => 'path',
'text' => '<p>
This specifies the folder into which read mail in your ``<a href="http://www.mutt.org/doc/manual/manual-6.html#spoolfile">
$spoolfile</a>\'\'
folder will be appended.
</p>'
},





'mbox_type' => {
'default' => 'mbox',
'type' => 'folder magic',
'text' => '<p>
The default mailbox type used when creating new folders. May be any of
mbox, MMDF, MH and Maildir.
</p>'
},





'menu_context' => {
'default' => '0',
'type' => 'number',
'text' => '<p>
This variable controls the number of lines of context that are given
when scrolling through menus. (Similar to ``<a href="http://www.mutt.org/doc/manual/manual-6.html#pager-context">
$pager_context</a>\'\'.)
</p>'
},





'menu_move_off' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>unset</em>, the bottom entry of menus will never scroll up past
the bottom of the screen, unless there are less entries than lines.
When <em>set</em>, the bottom entry may move off the bottom.
</p>'
},





'menu_scroll' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, menus will be scrolled up or down one line when you
attempt to move across a screen boundary.  If <em>unset</em>, the screen
is cleared and the next or previous page of the menu is displayed
(useful for slow links to avoid many redraws).
</p>'
},





'message_format' => {
'default' => '%s',
'type' => 'string',
'text' => '<p>
This is the string displayed in the ``attachment\'\' menu for
attachments of type message/rfc822.  For a full listing of defined
printf(3)-like sequences see the section on ``<a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">
$index_format</a>\'\'.
</p>'
},





'meta_key' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, forces Mutt-ng to interpret keystrokes with the high bit (bit 8)
set as if the user had pressed the ESC key and whatever key remains
after having the high bit removed.  For example, if the key pressed
has an ASCII value of 0xf4, then this is treated as if the user had
pressed ESC then ``x\'\'.  This is because the result of removing the
high bit from ``0xf4\'\' is ``0x74\'\', which is the ASCII character
``x\'\'.
</p>'
},





'metoo' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>unset</em>, Mutt-ng will remove your address (see the ``alternates\'\'
command) from the list of recipients when replying to a message.
</p>'
},





'mh_purge' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>unset</em>, Mutt-ng will mimic mh\'s behaviour and rename deleted messages
to <em>,<old file name></em> in mh folders instead of really deleting
them.  If the variable is set, the message files will simply be
deleted.
</p>'
},





'mh_seq_flagged' => {
'default' => 'flagged',
'type' => 'string',
'text' => '<p>
The name of the MH sequence used for flagged messages.
</p>'
},





'mh_seq_replied' => {
'default' => 'replied',
'type' => 'string',
'text' => '<p>
The name of the MH sequence used to tag replied messages.
</p>'
},





'mh_seq_unseen' => {
'default' => 'unseen',
'type' => 'string',
'text' => '<p>
The name of the MH sequence used for unseen messages.
</p>'
},





'mime_forward' => {
'default' => 'no',
'type' => 'quadoption',
'text' => '<p>
When <em>set</em>, the message you are forwarding will be attached as a
separate MIME part instead of included in the main body of the
message.
</p><p>
This is useful for forwarding MIME messages so the receiver
can properly view the message as it was delivered to you. If you like
to switch between MIME and not MIME from mail to mail, set this
variable to ask-no or ask-yes.
</p><p>
Also see ``<a href="http://www.mutt.org/doc/manual/manual-6.html#forward-decode">
$forward_decode</a>\'\' and ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward-decode">
$mime_forward_decode</a>\'\'.
</p>'
},





'mime_forward_decode' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Controls the decoding of complex MIME messages into text/plain when
forwarding a message while ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mime-forward">
$mime_forward</a>\'\' is <em>set</em>. Otherwise
``<a href="http://www.mutt.org/doc/manual/manual-6.html#forward-decode">
$forward_decode</a>\'\' is used instead.
</p>'
},





'mime_forward_rest' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '<p>
When forwarding multiple attachments of a MIME message from the recvattach
menu, attachments which cannot be decoded in a reasonable manner will
be attached to the newly composed message if this option is set.
</p>'
},





'mix_entry_format' => {
'default' => '%4n %c %-16s %a',
'type' => 'string',
'text' => '<p>
Availability: Mixmaster
</p><p>
This variable describes the format of a remailer line on the mixmaster
chain selection screen.  The following printf(3)-like sequences are 
supported:
</p><p>


<dl>

<dt><strong>%n </strong></dt>
<dd><p>
The running number on the menu.
</p></dd>
<dt><strong>%c </strong></dt>
<dd><p>
Remailer capabilities.
</p></dd>
<dt><strong>%s </strong></dt>
<dd><p>
The remailer\'s short name.
</p></dd>
<dt><strong>%a </strong></dt>
<dd><p>
The remailer\'s e-mail address.
</p></dd>
</dl>

</p>'
},





'mixmaster' => {
'default' => 'mixmaster',
'type' => 'path',
'text' => '<p>
Availability: Mixmaster
</p><p>
This variable contains the path to the Mixmaster binary on your
system.  It is used with various sets of parameters to gather the
list of known remailers, and to finally send a message through the
mixmaster chain.
</p>'
},





'move' => {
'default' => 'ask-no',
'type' => 'quadoption',
'text' => '<p>
Controls whether or not Mutt-ng will move read messages
from your spool mailbox to your ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mbox">
$mbox</a>\'\' mailbox, or as a result of
a ``<a href="http://www.mutt.org/doc/manual/manual-6.html#mbox-hook">
mbox-hook</a>\'\' command.
</p>'
},





'msgid_format' => {
'default' => '%Y%m%d%h%M%s.G%P%p',
'type' => 'string',
'text' => '<p>
This is the format for the ``local part\'\' of the Message-Id: header
field generated by Mutt-ng. If this variable is empty, no Message-Id:
headers will be generated. The \'%\'
character marks that certain data will be added to the string, similar to
printf(3). The following characters are allowed:
</p><p>


<dl>

<dt><strong>%d </strong></dt>
<dd><p>
the current day of month
</p></dd>
<dt><strong>%h </strong></dt>
<dd><p>
the current hour
</p></dd>
<dt><strong>%m </strong></dt>
<dd><p>
the current month
</p></dd>
<dt><strong>%M </strong></dt>
<dd><p>
the current minute
</p></dd>
<dt><strong>%O </strong></dt>
<dd><p>
the current UNIX timestamp (octal)
</p></dd>
<dt><strong>%p </strong></dt>
<dd><p>
the process ID
</p></dd>
<dt><strong>%P </strong></dt>
<dd><p>
the current Message-ID prefix (a character rotating with 
every Message-ID being generated)
</p></dd>
<dt><strong>%r </strong></dt>
<dd><p>
a random integer value (decimal)
</p></dd>
<dt><strong>%R </strong></dt>
<dd><p>
a random integer value (hexadecimal)
</p></dd>
<dt><strong>%s </strong></dt>
<dd><p>
the current second
</p></dd>
<dt><strong>%T </strong></dt>
<dd><p>
the current UNIX timestamp (decimal)
</p></dd>
<dt><strong>%X </strong></dt>
<dd><p>
the current UNIX timestamp (hexadecimal)
</p></dd>
<dt><strong>%Y </strong></dt>
<dd><p>
the current year (Y2K compliant)
</p></dd>
<dt><strong>%% </strong></dt>
<dd><p>
the \'%\' character
</p></dd>
</dl>


</p><p>
<em>Note:</em> Please only change this setting if you know what you are doing.
Also make sure to consult RFC2822 to produce technically <em>valid</em> strings.
</p>'
},





'muttng_bindir' => {
'default' => '/usr/local/bin',
'type' => 'system property',
'text' => '<p>
<em>This is a read-only system property and specifies the
directory containing the muttng binary.</em>
</p>'
},





'muttng_docdir' => {
'default' => 'NONE/doc/muttng',
'type' => 'system property',
'text' => '<p>
<em>This is a read-only system property and specifies the
directory containing the muttng documentation.</em>
</p>'
},





'muttng_folder_name' => {
'default' => '',
'type' => 'system property',
'text' => '<p>
<em>This is a read-only system property and, at runtime,
specifies the last part of the full path or URI of the
folder currently open (if any), i.e. everything after
the last ``/\'\'.</em>
</p>'
},





'muttng_folder_path' => {
'default' => '',
'type' => 'system property',
'text' => '<p>
<em>This is a read-only system property and, at runtime,
specifies the full path or URI of the folder currently
open (if any).</em>
</p>'
},





'muttng_hcache_backend' => {
'default' => 'gdbm',
'type' => 'system property',
'text' => '<p>
<em>This is a read-only system property and specifies the
header chaching\'s database backend.</em>
</p>'
},





'muttng_pwd' => {
'default' => '',
'type' => 'system property',
'text' => '<p>
<em>This is a read-only system property and, at runtime,
specifies the current working directory of the muttng
binary.</em>
</p>'
},





'muttng_revision' => {
'default' => '502',
'type' => 'system property',
'text' => '<p>
<em>This is a read-only system property and specifies muttng\'s
subversion revision string.</em>
</p>'
},





'muttng_sysconfdir' => {
'default' => '/usr/local/etc',
'type' => 'system property',
'text' => '<p>
<em>This is a read-only system property and specifies the
directory containing the muttng system-wide configuration.</em>
</p>'
},





'muttng_version' => {
'default' => 'devel',
'type' => 'system property',
'text' => '<p>
<em>This is a read-only system property and specifies muttng\'s
version string.</em>
</p>'
},





'narrow_tree' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
This variable, when <em>set</em>, makes the thread tree narrower, allowing
deeper threads to fit on the screen.
</p>'
},





'net_inc' => {
'default' => '10',
'type' => 'number',
'text' => '<p>
Operations that expect to transfer a large amount of data over the
network will update their progress every <em>net_inc</em> kilobytes.
If set to 0, no progress messages will be displayed.
</p><p>
See also ``<a href="http://www.mutt.org/doc/manual/manual-6.html#read-inc">
$read_inc</a>\'\' and ``<a href="http://www.mutt.org/doc/manual/manual-6.html#write-inc">
$write_inc</a>\'\'.
</p>'
},





'nntp_ask_followup_to' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Availability: NNTP
</p><p>
If <em>set</em>, Mutt-ng will prompt you for the Followup-To: header
field before editing the body of an outgoing news article.
</p>'
},





'nntp_ask_x_comment_to' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Availability: NNTP
</p><p>
If <em>set</em>, Mutt-ng will prompt you for the X-Comment-To: header
field before editing the body of an outgoing news article.
</p>'
},





'nntp_cache_dir' => {
'default' => '~/.muttng',
'type' => 'path',
'text' => '<p>
Availability: NNTP
</p><p>
This variable points to directory where Mutt-ng will cache news
article headers. If <em>unset</em>, headers will not be saved at all
and will be reloaded each time when you enter a newsgroup.
</p><p>
As for the header caching in connection with IMAP and/or Maildir,
this drastically increases speed and lowers traffic.
</p>'
},





'nntp_catchup' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
Availability: NNTP
</p><p>
If this variable is <em>set</em>, Mutt-ng will mark all articles in a newsgroup
as read when you leaving it.
</p>'
},





'nntp_context' => {
'default' => '1000',
'type' => 'number',
'text' => '<p>
Availability: NNTP
</p><p>
This variable controls how many news articles to cache per newsgroup
(if caching is enabled, see <a href="http://www.mutt.org/doc/manual/manual-6.html#nntp-cache-dir">
$nntp_cache_dir</a>) and how many news articles
to show in the ``index\'\' menu.
</p><p>
If there\'re more articles than defined with <a href="http://www.mutt.org/doc/manual/manual-6.html#nntp-context">
$nntp_context</a>, all older ones
will be removed/not shown in the index.
</p>'
},





'nntp_followup_to_poster' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
Availability: NNTP
</p><p>
If this variable is <em>set</em> and the keyword "poster" is present in
the Followup-To: header field, a follow-up to the newsgroup is not
permitted.  The message will be mailed to the submitter of the
message via mail.
</p>'
},





'nntp_group_index_format' => {
'default' => '%4C %M%N %5s  %-45.45f %d',
'type' => 'string',
'text' => '<p>
Availability: NNTP
</p><p>
This variable allows you to customize the newsgroup browser display to
your personal taste.  This string is similar to ``<a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">
index_format</a>\'\', but
has its own set of printf(3)-like sequences:
</p><p>

<pre>

%C      current newsgroup number
%d      description of newsgroup (retrieved from server)
%f      newsgroup name
%M      ``-\'\' if newsgroup not allowed for direct post (moderated for example)
%N      ``N\'\' if newsgroup is new, ``u\'\' if unsubscribed, blank otherwise
%n      number of new articles in newsgroup
%s      number of unread articles in newsgroup
%>X     right justify the rest of the string and pad with character "X"
%|X     pad to the end of the line with character "X"


</pre>
</p>'
},





'nntp_host' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: NNTP
</p><p>
This variable specifies the name (or address) of the NNTP server to be used.
</p><p>
It
defaults to the value specified via the environment variable
$NNTPSERVER or contained in the file /etc/nntpserver.
</p><p>
You can also
specify a username and an alternative port for each newsserver, e.g.
</p><p>
[nntp[s]://][username[:password]@]newsserver[:port]
</p><p>
<em>Note:</em> Using a password as shown and stored in a configuration file
presents a security risk since the superuser of your machine may read it
regardless of the file\'s permissions.
</p>'
},





'nntp_inews' => {
'default' => '',
'type' => 'path',
'text' => '<p>
Availability: NNTP
</p><p>
If <em>set</em>, specifies the program and arguments used to deliver news posted
by Mutt-ng.  Otherwise, Mutt-ng posts article using current connection.
The following printf(3)-style sequence is understood:
</p><p>

<pre>

%s      newsserver name


</pre>
</p><p>
Example: set inews="/usr/local/bin/inews -hS"
</p>'
},





'nntp_load_description' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: NNTP
</p><p>
This variable controls whether or not descriptions for newsgroups
are to be loaded when subscribing to a newsgroup.
</p>'
},





'nntp_mail_check' => {
'default' => '60',
'type' => 'number',
'text' => '<p>
Availability: NNTP
</p><p>
The time in seconds until any operations on a newsgroup except posting a new
article will cause a recheck for new news. If set to 0, Mutt-ng will
recheck on each operation in index (stepping, read article, etc.).
</p>'
},





'nntp_mime_subject' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: NNTP
</p><p>
If <em>unset</em>, an 8-bit ``Subject:\'\' header field in a news article
will not be encoded according to RFC2047.
</p><p>
<em>Note:</em> Only change this setting if you know what you are doing.
</p>'
},





'nntp_newsrc' => {
'default' => '~/.newsrc',
'type' => 'path',
'text' => '<p>
Availability: NNTP
</p><p>
This file contains information about subscribed newsgroup and
articles read so far.
</p><p>
To ease the use of multiple news servers, the following printf(3)-style
sequence is understood:
</p><p>

<pre>

%s      newsserver name


</pre>
</p>'
},





'nntp_pass' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: NNTP
</p><p>
Your password for NNTP account.
</p><p>
<em>Note:</em> Storing passwords in a configuration file
presents a security risk since the superuser of your machine may read it
regardless of the file\'s permissions.
</p>'
},





'nntp_post_moderated' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
Availability: NNTP
</p><p>
If set to <em>yes</em>, Mutt-ng will post articles to newsgroup that have
not permissions to post (e.g. moderated).
</p><p>
<em>Note:</em> if the newsserver
does not support posting to that newsgroup or a group is totally read-only, that
posting will not have any effect.
</p>'
},





'nntp_reconnect' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
Availability: NNTP
</p><p>
Controls whether or not Mutt-ng will try to reconnect to a newsserver when the
was connection lost.
</p>'
},





'nntp_save_unsubscribed' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Availability: NNTP
</p><p>
When <em>set</em>, info about unsubscribed newsgroups will be saved into the
``newsrc\'\' file and into the news cache.
</p>'
},





'nntp_show_new_news' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: NNTP
</p><p>
If <em>set</em>, the newsserver will be asked for new newsgroups on entering
the browser.  Otherwise, it will be done only once for a newsserver.
Also controls whether or not the number of new articles of subscribed
newsgroups will be checked.
</p>'
},





'nntp_show_only_unread' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Availability: NNTP
</p><p>
If <em>set</em>, only subscribed newsgroups that contain unread articles
will be displayed in the newsgroup browser.
</p>'
},





'nntp_user' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: NNTP
</p><p>
Your login name on the NNTP server.  If <em>unset</em> and the server requires
authentification, Mutt-ng will prompt you for your account name.
</p>'
},





'nntp_x_comment_to' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Availability: NNTP
</p><p>
If <em>set</em>, Mutt-ng will add a ``X-Comment-To:\'\' header field
(that contains full name of the original article author) to articles that 
you followup to.
</p>'
},





'operating_system' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This specifies the operating system name for the User-Agent: header field. If
this is <em>unset</em>, it will be set to the operating system name that uname(2)
returns. If uname(2) fails, ``UNIX\'\' will be used.
</p><p>
It may, for example, look as: ``mutt-ng 1.5.9i (Linux)\'\'.
</p>'
},





'pager' => {
'default' => 'builtin',
'type' => 'path',
'text' => '<p>
This variable specifies which pager you would like to use to view
messages. ``builtin\'\' means to use the builtin pager, otherwise this
variable should specify the pathname of the external pager you would
like to use.
</p><p>
Using an external pager may have some disadvantages: Additional
keystrokes are necessary because you can\'t call Mutt-ng functions
directly from the pager, and screen resizes cause lines longer than
the screen width to be badly formatted in the help menu.
</p>'
},





'pager_context' => {
'default' => '0',
'type' => 'number',
'text' => '<p>
This variable controls the number of lines of context that are given
when displaying the next or previous page in the internal pager.  By
default, Mutt-ng will display the line after the last one on the screen
at the top of the next page (0 lines of context).
</p>'
},





'pager_format' => {
'default' => '-%Z- %C/%m: %-20.20n   %s',
'type' => 'string',
'text' => '<p>
This variable controls the format of the one-line message ``status\'\'
displayed before each message in either the internal or an external
pager.  The valid sequences are listed in the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">
$index_format</a>\'\'
section.
</p>'
},





'pager_index_lines' => {
'default' => '0',
'type' => 'number',
'text' => '<p>
Determines the number of lines of a mini-index which is shown when in
the pager.  The current message, unless near the top or bottom of the
folder, will be roughly one third of the way down this mini-index,
giving the reader the context of a few messages before and after the
message.  This is useful, for example, to determine how many messages
remain to be read in the current thread.  One of the lines is reserved
for the status bar from the index, so a <em>pager_index_lines</em> of 6
will only show 5 lines of the actual index.  A value of 0 results in
no index being shown.  If the number of messages in the current folder
is less than <em>pager_index_lines</em>, then the index will only use as
many lines as it needs.
</p>'
},





'pager_stop' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, the internal-pager will <em>not</em> move to the next message
when you are at the end of a message and invoke the <em>next-page</em>
function.
</p>'
},





'pgp_auto_decode' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will automatically attempt to decrypt traditional PGP
messages whenever the user performs an operation which ordinarily would
result in the contents of the message being operated on.  For example,
if the user displays a pgp-traditional message which has not been manually
checked with the check-traditional-pgp function, Mutt-ng will automatically
check the message for traditional pgp.
</p>'
},





'pgp_autoinline' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
This option controls whether Mutt-ng generates old-style inline
(traditional) PGP encrypted or signed messages under certain
circumstances.  This can be overridden by use of the <em>pgp-menu</em>,
when inline is not required.
</p><p>
Note that Mutt-ng might automatically use PGP/MIME for messages
which consist of more than a single MIME part.  Mutt-ng can be
configured to ask before sending PGP/MIME messages when inline
(traditional) would not work.
See also: ``<a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-mime-auto">
$pgp_mime_auto</a>\'\'.
</p><p>
Also note that using the old-style PGP message format is <em>strongly</em>
<em>deprecated</em>.
(PGP only)
</p>'
},





'pgp_check_exit' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will check the exit code of the PGP subprocess when
signing or encrypting.  A non-zero exit code means that the
subprocess failed.
(PGP only)
</p>'
},





'pgp_clearsign_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This format is used to create a old-style ``clearsigned\'\' PGP message.
</p><p>
Note that the use of this format is <em>strongly</em> <em>deprecated</em>.
(PGP only)
</p>'
},





'pgp_decode_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This format strings specifies a command which is used to decode 
application/pgp attachments.
</p><p>
The PGP command formats have their own set of printf(3)-like sequences:
</p><p>


<dl>

<dt><strong>%p </strong></dt>
<dd><p>
Expands to PGPPASSFD=0 when a pass phrase is needed, to an empty
string otherwise. Note: This may be used with a %? construct.
</p></dd>
<dt><strong>%f </strong></dt>
<dd><p>
Expands to the name of a file containing a message.
</p></dd>
<dt><strong>%s </strong></dt>
<dd><p>
Expands to the name of a file containing the signature part
           of a multipart/signed attachment when verifying it.
</p></dd>
<dt><strong>%a </strong></dt>
<dd><p>
The value of <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-sign-as">
$pgp_sign_as</a>.
</p></dd>
<dt><strong>%r </strong></dt>
<dd><p>
One or more key IDs.
</p></dd>
</dl>


</p><p>
For examples on how to configure these formats for the various versions
of PGP which are floating around, see the pgp*.rc and gpg.rc files in
the samples/ subdirectory which has been installed on your system
alongside the documentation.
(PGP only)
</p>'
},





'pgp_decrypt_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to decrypt a PGP encrypted message.
(PGP only)
</p>'
},





'pgp_encrypt_only_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to encrypt a body part without signing it.
(PGP only)
</p>'
},





'pgp_encrypt_sign_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to both sign and encrypt a body part.
(PGP only)
</p>'
},





'pgp_entry_format' => {
'default' => '%4n %t%f %4l/0x%k %-4a %2c %u',
'type' => 'string',
'text' => '<p>
This variable allows you to customize the PGP key selection menu to
your personal taste. This string is similar to ``<a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">
$index_format</a>\'\', but
has its own set of printf(3)-like sequences:
</p><p>


<dl>

<dt><strong>%n     </strong></dt>
<dd><p>
number
</p></dd>
<dt><strong>%k     </strong></dt>
<dd><p>
key id
</p></dd>
<dt><strong>%u     </strong></dt>
<dd><p>
user id
</p></dd>
<dt><strong>%a     </strong></dt>
<dd><p>
algorithm
</p></dd>
<dt><strong>%l     </strong></dt>
<dd><p>
key length
</p></dd>
<dt><strong>%f     </strong></dt>
<dd><p>
flags
</p></dd>
<dt><strong>%c     </strong></dt>
<dd><p>
capabilities
</p></dd>
<dt><strong>%t     </strong></dt>
<dd><p>
trust/validity of the key-uid association
</p></dd>
<dt><strong>%[<s>] </strong></dt>
<dd><p>
date of the key where <s> is an strftime(3) expression
</p></dd>
</dl>


</p><p>
(PGP only)
</p>'
},





'pgp_export_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to export a public key from the user\'s
key ring.
(PGP only)
</p>'
},





'pgp_getkeys_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is invoked whenever Mutt-ng will need public key information.
%r is the only printf(3)-like sequence used with this format.
(PGP only)
</p>'
},





'pgp_good_sign' => {
'default' => '',
'type' => 'regular expression',
'text' => '<p>
If you assign a text to this variable, then a PGP signature is only
considered verified if the output from <a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-verify-command">
$pgp_verify_command</a> contains
the text. Use this variable if the exit code from the command is 0
even for bad signatures.
(PGP only)
</p>'
},





'pgp_ignore_subkeys' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Setting this variable will cause Mutt-ng to ignore OpenPGP subkeys. Instead,
the principal key will inherit the subkeys\' capabilities. <em>Unset</em> this
if you want to play interesting key selection games.
(PGP only)
</p>'
},





'pgp_import_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to import a key from a message into 
the user\'s public key ring.
(PGP only)
</p>'
},





'pgp_list_pubring_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to list the public key ring\'s contents.  The
output format must be analogous to the one used by 
gpg --list-keys --with-colons.
</p><p>
This format is also generated by the pgpring utility which comes 
with Mutt-ng.
(PGP only)
</p>'
},





'pgp_list_secring_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to list the secret key ring\'s contents.  The
output format must be analogous to the one used by 
gpg --list-keys --with-colons.
</p><p>
This format is also generated by the pgpring utility which comes 
with Mutt-ng.
(PGP only)
</p>'
},





'pgp_long_ids' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, use 64 bit PGP key IDs. <em>Unset</em> uses the normal 32 bit Key IDs.
(PGP only)
</p>'
},





'pgp_mime_auto' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
This option controls whether Mutt-ng will prompt you for
automatically sending a (signed/encrypted) message using
PGP/MIME when inline (traditional) fails (for any reason).
</p><p>
Also note that using the old-style PGP message format is <em>strongly</em>
<em>deprecated</em>.
(PGP only)
</p>'
},





'pgp_replyinline' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Setting this variable will cause Mutt-ng to always attempt to
create an inline (traditional) message when replying to a
message which is PGP encrypted/signed inline.  This can be
overridden by use of the <em>pgp-menu</em>, when inline is not
required.  This option does not automatically detect if the
(replied-to) message is inline; instead it relies on Mutt-ng
internals for previously checked/flagged messages.
</p><p>
Note that Mutt-ng might automatically use PGP/MIME for messages
which consist of more than a single MIME part.  Mutt-ng can be
configured to ask before sending PGP/MIME messages when inline
(traditional) would not work.
See also: ``<a href="http://www.mutt.org/doc/manual/manual-6.html#pgp-mime-auto">
$pgp_mime_auto</a>\'\'.
</p><p>
Also note that using the old-style PGP message format is <em>strongly</em>
<em>deprecated</em>.
(PGP only)
</p>'
},





'pgp_retainable_sigs' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, signed and encrypted messages will consist of nested
multipart/signed and multipart/encrypted body parts.
</p><p>
This is useful for applications like encrypted and signed mailing
lists, where the outer layer (multipart/encrypted) can be easily
removed, while the inner multipart/signed part is retained.
(PGP only)
</p>'
},





'pgp_show_unusable' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will display non-usable keys on the PGP key selection
menu.  This includes keys which have been revoked, have expired, or
have been marked as ``disabled\'\' by the user.
(PGP only)
</p>'
},





'pgp_sign_as' => {
'default' => '',
'type' => 'string',
'text' => '<p>
If you have more than one key pair, this option allows you to specify
which of your private keys to use.  It is recommended that you use the
keyid form to specify your key (e.g., ``0x00112233\'\').
(PGP only)
</p>'
},





'pgp_sign_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to create the detached PGP signature for a 
multipart/signed PGP/MIME body part.
(PGP only)
</p>'
},





'pgp_sort_keys' => {
'default' => 'address',
'type' => 'sort order',
'text' => '<p>
Specifies how the entries in the ``pgp keys\'\' menu are sorted. The
following are legal values:
</p><p>


<dl>

<dt><strong>address </strong></dt>
<dd><p>
sort alphabetically by user id
</p></dd>
<dt><strong>keyid   </strong></dt>
<dd><p>
sort alphabetically by key id
</p></dd>
<dt><strong>date    </strong></dt>
<dd><p>
sort by key creation date
</p></dd>
<dt><strong>trust   </strong></dt>
<dd><p>
sort by the trust of the key
</p></dd>
</dl>


</p><p>
If you prefer reverse order of the above values, prefix it with
``reverse-\'\'.
(PGP only)
</p>'
},





'pgp_strict_enc' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will automatically encode PGP/MIME signed messages as
quoted-printable.  Please note that unsetting this variable may
lead to problems with non-verifyable PGP signatures, so only change
this if you know what you are doing.
(PGP only)
</p>'
},





'pgp_timeout' => {
'default' => '300',
'type' => 'number',
'text' => '<p>
The number of seconds after which a cached passphrase will expire if
not used. Default: 300.
(PGP only)
</p>'
},





'pgp_use_gpg_agent' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will use a possibly-running gpg-agent process.
(PGP only)
</p>'
},





'pgp_verify_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to verify PGP signatures.
(PGP only)
</p>'
},





'pgp_verify_key_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to verify key information from the key selection
menu.
(PGP only)
</p>'
},





'pipe_decode' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Used in connection with the <em>pipe-message</em> command.  When <em>unset</em>,
Mutt-ng will pipe the messages without any preprocessing. When <em>set</em>, Mutt-ng
will weed headers and will attempt to PGP/MIME decode the messages
first.
</p>'
},





'pipe_sep' => {
'default' => '\n',
'type' => 'string',
'text' => '<p>
The separator to add between messages when piping a list of tagged
messages to an external Unix command.
</p>'
},





'pipe_split' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Used in connection with the <em>pipe-message</em> command and the ``tag-
prefix\'\' or ``tag-prefix-cond\'\' operators. 
If this variable is <em>unset</em>, when piping a list of
tagged messages Mutt-ng will concatenate the messages and will pipe them
as a single folder.  When <em>set</em>, Mutt-ng will pipe the messages one by one.
In both cases the messages are piped in the current sorted order,
and the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#pipe-sep">
$pipe_sep</a>\'\' separator is added after each message.
</p>'
},





'pop_auth_try_all' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: POP
</p><p>
If <em>set</em>, Mutt-ng will try all available methods. When <em>unset</em>, Mutt-ng will
only fall back to other authentication methods if the previous
methods are unavailable. If a method is available but authentication
fails, Mutt-ng will not connect to the POP server.
</p>'
},





'pop_authenticators' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: POP
</p><p>
This is a colon-delimited list of authentication methods Mutt-ng may
attempt to use to log in to an POP server, in the order Mutt-ng should
try them.  Authentication methods are either ``user\'\', ``apop\'\'
or any SASL mechanism, eg ``digest-md5\'\', ``gssapi\'\' or ``cram-md5\'\'.
</p><p>
This parameter is case-insensitive. If this parameter is <em>unset</em>
(the default) Mutt-ng will try all available methods, in order from
most-secure to least-secure.
</p><p>
Example: set pop_authenticators="digest-md5:apop:user"
</p>'
},





'pop_delete' => {
'default' => 'ask-no',
'type' => 'quadoption',
'text' => '<p>
Availability: POP
</p><p>
If <em>set</em>, Mutt-ng will delete successfully downloaded messages from the POP
server when using the ``fetch-mail\'\' function.  When <em>unset</em>, Mutt-ng will
download messages but also leave them on the POP server.
</p>'
},





'pop_host' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: POP
</p><p>
The name of your POP server for the ``fetch-mail\'\' function.  You
can also specify an alternative port, username and password, i.e.:
</p><p>
[pop[s]://][username[:password]@]popserver[:port]
</p><p>
<em>Note:</em> Storing passwords in a configuration file
presents a security risk since the superuser of your machine may read it
regardless of the file\'s permissions.
</p>'
},





'pop_last' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Availability: POP
</p><p>
If this variable is <em>set</em>, Mutt-ng will try to use the ``LAST\'\' POP command
for retrieving only unread messages from the POP server when using
the ``fetch-mail\'\' function.
</p>'
},





'pop_mail_check' => {
'default' => '60',
'type' => 'number',
'text' => '<p>
Availability: POP
</p><p>
This variable configures how often (in seconds) POP should look for
new mail.
</p>'
},





'pop_pass' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: POP
</p><p>
Specifies the password for your POP account.  If <em>unset</em>, Mutt-ng will
prompt you for your password when you open POP mailbox.
</p><p>
<em>Note:</em> Storing passwords in a configuration file
presents a security risk since the superuser of your machine may read it
regardless of the file\'s permissions.
</p>'
},





'pop_reconnect' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
Availability: POP
</p><p>
Controls whether or not Mutt-ng will try to reconnect to a POP server when the
connection is lost.
</p>'
},





'pop_user' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: POP
</p><p>
Your login name on the POP server.
</p><p>
This variable defaults to your user name on the local machine.
</p>'
},





'post_indent_string' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Similar to the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#attribution">
$attribution</a>\'\' variable, Mutt-ng will append this
string after the inclusion of a message which is being replied to.
</p>'
},





'postpone' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
Controls whether or not messages are saved in the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#postponed">
$postponed</a>\'\'
mailbox when you elect not to send immediately.
</p>'
},





'postponed' => {
'default' => '~/postponed',
'type' => 'path',
'text' => '<p>
Mutt-ng allows you to indefinitely ``<a href="http://www.mutt.org/doc/manual/manual-6.html#postpone">
postpone</a> sending a message\'\' which
you are editing.  When you choose to postpone a message, Mutt-ng saves it
in the mailbox specified by this variable.  Also see the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#postpone">
$postpone</a>\'\'
variable.
</p>'
},





'preconnect' => {
'default' => '',
'type' => 'string',
'text' => '<p>
If <em>set</em>, a shell command to be executed if Mutt-ng fails to establish
a connection to the server. This is useful for setting up secure
connections, e.g. with ssh(1). If the command returns a  nonzero
status, Mutt-ng gives up opening the server. Example:
</p><p>
preconnect="ssh -f -q -L 1234:mailhost.net:143 mailhost.net
sleep 20 < /dev/null > /dev/null"
</p><p>
Mailbox ``foo\'\' on mailhost.net can now be reached
as ``{localhost:1234}foo\'\'.
</p><p>
<em>Note:</em> For this example to work, you must be able to log in to the
remote machine without having to enter a password.
</p>'
},





'print' => {
'default' => 'ask-no',
'type' => 'quadoption',
'text' => '<p>
Controls whether or not Mutt-ng really prints messages.
This is set to <em>ask-no</em> by default, because some people
accidentally hit ``p\'\' often.
</p>'
},





'print_command' => {
'default' => 'lpr',
'type' => 'path',
'text' => '<p>
This specifies the command pipe that should be used to print messages.
</p>'
},





'print_decode' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Used in connection with the print-message command.  If this
option is <em>set</em>, the message is decoded before it is passed to the
external command specified by <a href="http://www.mutt.org/doc/manual/manual-6.html#print-command">
$print_command</a>.  If this option
is <em>unset</em>, no processing will be applied to the message when
printing it.  The latter setting may be useful if you are using
some advanced printer filter which is able to properly format
e-mail messages for printing.
</p>'
},





'print_split' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Used in connection with the print-message command.  If this option
is <em>set</em>, the command specified by <a href="http://www.mutt.org/doc/manual/manual-6.html#print-command">
$print_command</a> is executed once for
each message which is to be printed.  If this option is <em>unset</em>, 
the command specified by <a href="http://www.mutt.org/doc/manual/manual-6.html#print-command">
$print_command</a> is executed only once, and
all the messages are concatenated, with a form feed as the message
separator.
</p><p>
Those who use the enscript(1) program\'s mail-printing mode will
most likely want to set this option.
</p>'
},





'prompt_after' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If you use an <em>external</em> ``<a href="http://www.mutt.org/doc/manual/manual-6.html#pager">
$pager</a>\'\', setting this variable will
cause Mutt-ng to prompt you for a command when the pager exits rather
than returning to the index menu.  If <em>unset</em>, Mutt-ng will return to the
index menu when the external pager exits.
</p>'
},





'query_command' => {
'default' => '',
'type' => 'path',
'text' => '<p>
This specifies the command that Mutt-ng will use to make external address
queries.  The string should contain a %s, which will be substituted
with the query string the user types.  See ``<a href="http://www.mutt.org/doc/manual/manual-6.html#query">
query</a>\'\' for more
information.
</p>'
},





'quit' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '<p>
This variable controls whether ``quit\'\' and ``exit\'\' actually quit
from Mutt-ng.  If it set to <em>yes</em>, they do quit, if it is set to <em>no</em>, they
have no effect, and if it is set to <em>ask-yes</em> or <em>ask-no</em>, you are
prompted for confirmation when you try to quit.
</p>'
},





'quote_empty' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Controls whether or not empty lines will be quoted using
``<a href="http://www.mutt.org/doc/manual/manual-6.html#indent-string">
indent_string</a>\'\'.
</p>'
},





'quote_quoted' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Controls how quoted lines will be quoted. If <em>set</em>, one quote
character will be added to the end of existing prefix.  Otherwise,
quoted lines will be prepended by ``<a href="http://www.mutt.org/doc/manual/manual-6.html#indent-string">
indent_string</a>\'\'.
</p>'
},





'quote_regexp' => {
'default' => '^([ \t]*[|>:}#])+',
'type' => 'regular expression',
'text' => '<p>
A regular expression used in the internal-pager to determine quoted
sections of text in the body of a message.
</p><p>
<em>Note:</em> In order to use the <em>quoted</em><em>x</em> patterns in the
internal pager, you need to set this to a regular expression that
matches <em>exactly</em> the quote characters at the beginning of quoted
lines.
</p>'
},





'read_inc' => {
'default' => '10',
'type' => 'number',
'text' => '<p>
If set to a value greater than 0, Mutt-ng will display which message it
is currently on when reading a mailbox.  The message is printed after
<em>read_inc</em> messages have been read (e.g., if set to 25, Mutt-ng will
print a message when it reads message 25, and then again when it gets
to message 50).  This variable is meant to indicate progress when
reading large mailboxes which may take some time.
When set to 0, only a single message will appear before the reading
the mailbox.
</p><p>
Also see the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#write-inc">
$write_inc</a>\'\' variable.
</p>'
},





'read_only' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If set, all folders are opened in read-only mode.
</p>'
},





'realname' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This variable specifies what ``real\'\' or ``personal\'\' name should be used
when sending messages.
</p><p>
By default, this is the GECOS field from /etc/passwd.
</p><p>
<em>Note:</em> This
variable will <em>not</em> be used when the user has set a real name
in the <a href="http://www.mutt.org/doc/manual/manual-6.html#from">
$from</a> variable.
</p>'
},





'recall' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
Controls whether or not Mutt-ng recalls postponed messages
when composing a new message.  Also see ``<a href="http://www.mutt.org/doc/manual/manual-6.html#postponed">
$postponed</a>\'\'.
</p><p>
Setting this variable to <em>yes</em> is not generally useful, and thus not
recommended.
</p>'
},





'record' => {
'default' => '',
'type' => 'path',
'text' => '<p>
This specifies the file into which your outgoing messages should be
appended.  (This is meant as the primary method for saving a copy of
your messages, but another way to do this is using the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#my-hdr">
my_hdr</a>\'\'
command to create a Bcc: header field with your email address in it.)
</p><p>
The value of <em><a href="http://www.mutt.org/doc/manual/manual-6.html#record">
$record</a></em> is overridden by the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#force-name">
$force_name</a>\'\' and
``<a href="http://www.mutt.org/doc/manual/manual-6.html#save-name">
$save_name</a>\'\' variables, and the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#fcc-hook">
fcc-hook</a>\'\' command.
</p>'
},





'reply_regexp' => {
'default' => '^(re([\[0-9\]+])*|aw):[ \t]*',
'type' => 'regular expression',
'text' => '<p>
A regular expression used to recognize reply messages when threading
and replying. The default value corresponds to the English ``Re:\'\' and
the German ``Aw:\'\'.
</p>'
},





'reply_self' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>unset</em> and you are replying to a message sent by you, Mutt-ng will
assume that you want to reply to the recipients of that message rather
than to yourself.
</p>'
},





'reply_to' => {
'default' => 'ask-yes',
'type' => 'quadoption',
'text' => '<p>
If <em>set</em>, when replying to a message, Mutt-ng will use the address listed
in the ``Reply-To:\'\' header field as the recipient of the reply.  If <em>unset</em>,
it will use the address in the ``From:\'\' header field instead.
</p><p>
This
option is useful for reading a mailing list that sets the ``Reply-To:\'\'
header field to the list address and you want to send a private
message to the author of a message.
</p>'
},





'resolve' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When set, the cursor will be automatically advanced to the next
(possibly undeleted) message whenever a command that modifies the
current message is executed.
</p>'
},





'reverse_alias' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
This variable controls whether or not Mutt-ng will display the ``personal\'\'
name from your aliases in the index menu if it finds an alias that
matches the message\'s sender.  For example, if you have the following
alias:
</p><p>
alias juser abd30425@somewhere.net (Joe User)
</p><p>
and then you receive mail which contains the following header:
</p><p>
From: abd30425@somewhere.net
</p><p>
It would be displayed in the index menu as ``Joe User\'\' instead of
``abd30425@somewhere.net.\'\'  This is useful when the person\'s e-mail
address is not human friendly (like CompuServe addresses).
</p>'
},





'reverse_name' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
It may sometimes arrive that you receive mail to a certain machine,
move the messages to another machine, and reply to some the messages
from there.  If this variable is <em>set</em>, the default From: line of
the reply messages is built using the address where you received the
messages you are replying to <em>if</em> that address matches your
alternates.  If the variable is <em>unset</em>, or the address that would be
used doesn\'t match your alternates, the From: line will use
your address on the current machine.
</p>'
},





'reverse_realname' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
This variable fine-tunes the behaviour of the <a href="http://www.mutt.org/doc/manual/manual-6.html#reverse-name">
reverse_name</a> feature.
When it is <em>set</em>, Mutt-ng will use the address from incoming messages as-is,
possibly including eventual real names.  When it is <em>unset</em>, Mutt-ng will
override any such real names with the setting of the <a href="http://www.mutt.org/doc/manual/manual-6.html#realname">
realname</a> variable.
</p>'
},





'rfc2047_parameters' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When this variable is <em>set</em>, Mutt-ng will decode RFC-2047-encoded MIME 
parameters. You want to set this variable when Mutt-ng suggests you
to save attachments to files named like this:
</p><p>
=?iso-8859-1?Q?file=5F=E4=5F991116=2Ezip?=
</p><p>
When this variable is <em>set</em> interactively, the change doesn\'t have
the desired effect before you have changed folders.
</p><p>
Note that this use of RFC 2047\'s encoding is explicitly,
prohibited by the standard, but nevertheless encountered in the
wild.
</p><p>
Also note that setting this parameter will <em>not</em> have the effect 
that Mutt-ng <em>generates</em> this kind of encoding.  Instead, Mutt-ng will
unconditionally use the encoding specified in RFC 2231.
</p>'
},





'save_address' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, Mutt-ng will take the sender\'s full address when choosing a
default folder for saving a mail. If ``<a href="http://www.mutt.org/doc/manual/manual-6.html#save-name">
$save_name</a>\'\' or ``<a href="http://www.mutt.org/doc/manual/manual-6.html#force-name">
$force_name</a>\'\'
is <em>set</em> too, the selection of the fcc folder will be changed as well.
</p>'
},





'save_empty' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>unset</em>, mailboxes which contain no saved messages will be removed
when closed (the exception is ``<a href="http://www.mutt.org/doc/manual/manual-6.html#spoolfile">
$spoolfile</a>\'\' which is never removed).
If <em>set</em>, mailboxes are never removed.
</p><p>
<em>Note:</em> This only applies to mbox and MMDF folders, Mutt-ng does not
delete MH and Maildir directories.
</p>'
},





'save_name' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
This variable controls how copies of outgoing messages are saved.
When set, a check is made to see if a mailbox specified by the
recipient address exists (this is done by searching for a mailbox in
the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#folder">
$folder</a>\'\' directory with the <em>username</em> part of the
recipient address).  If the mailbox exists, the outgoing message will
be saved to that mailbox, otherwise the message is saved to the
``<a href="http://www.mutt.org/doc/manual/manual-6.html#record">
$record</a>\'\' mailbox.
</p><p>
Also see the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#force-name">
$force_name</a>\'\' variable.
</p>'
},





'score' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When this variable is <em>unset</em>, scoring is turned off.  This can
be useful to selectively disable scoring for certain folders when the
``<a href="http://www.mutt.org/doc/manual/manual-6.html#score-threshold-delete">
$score_threshold_delete</a>\'\' variable and friends are used.
</p>'
},





'score_threshold_delete' => {
'default' => '-1',
'type' => 'number',
'text' => '<p>
Messages which have been assigned a score equal to or lower than the value
of this variable are automatically marked for deletion by Mutt-ng.  Since
Mutt-ng scores are always greater than or equal to zero, the default setting
of this variable will never mark a message for deletion.
</p>'
},





'score_threshold_flag' => {
'default' => '9999',
'type' => 'number',
'text' => '<p>
Messages which have been assigned a score greater than or equal to this 
variable\'s value are automatically marked ``flagged\'\'.
</p>'
},





'score_threshold_read' => {
'default' => '-1',
'type' => 'number',
'text' => '<p>
Messages which have been assigned a score equal to or lower than the value
of this variable are automatically marked as read by Mutt-ng.  Since
Mutt-ng scores are always greater than or equal to zero, the default setting
of this variable will never mark a message read.
</p>'
},





'send_charset' => {
'default' => 'us-ascii:iso-8859-1:utf-8',
'type' => 'string',
'text' => '<p>
A list of character sets for outgoing messages. Mutt-ng will use the
first character set into which the text can be converted exactly.
If your ``<a href="http://www.mutt.org/doc/manual/manual-6.html#charset">
$charset</a>\'\' is not iso-8859-1 and recipients may not
understand UTF-8, it is advisable to include in the list an
appropriate widely used standard character set (such as
iso-8859-2, koi8-r or iso-2022-jp) either
instead of or after iso-8859-1.
</p>'
},





'sendmail' => {
'default' => '/usr/sbin/sendmail -oem -oi',
'type' => 'path',
'text' => '<p>
Specifies the program and arguments used to deliver mail sent by Mutt-ng.
Mutt-ng expects that the specified program interprets additional
arguments as recipient addresses.
</p>'
},





'sendmail_wait' => {
'default' => '0',
'type' => 'number',
'text' => '<p>
Specifies the number of seconds to wait for the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#sendmail">
$sendmail</a>\'\' process
to finish before giving up and putting delivery in the background.
</p><p>
Mutt-ng interprets the value of this variable as follows:


<dl>

<dt><strong>>0 </strong></dt>
<dd><p>
number of seconds to wait for sendmail to finish before continuing
</p></dd>
<dt><strong>0  </strong></dt>
<dd><p>
wait forever for sendmail to finish
</p></dd>
<dt><strong><0 </strong></dt>
<dd><p>
always put sendmail in the background without waiting
</p></dd>
</dl>


</p><p>
Note that if you specify a value other than 0, the output of the child
process will be put in a temporary file.  If there is some error, you
will be informed as to where to find the output.
</p>'
},





'shell' => {
'default' => '',
'type' => 'path',
'text' => '<p>
Command to use when spawning a subshell.  By default, the user\'s login
shell from /etc/passwd is used.
</p>'
},





'sidebar_boundary' => {
'default' => '.',
'type' => 'string',
'text' => '<p>
When the sidebar is displayed and <a href="http://www.mutt.org/doc/manual/manual-6.html#sidebar-shorten-hierarchy">
$sidebar_shorten_hierarchy</a> is <em>set</em>, this
variable specifies the characters at which to split a folder name into
``hierarchy items.\'\'
</p>'
},





'sidebar_delim' => {
'default' => '|',
'type' => 'string',
'text' => '<p>
This specifies the delimiter between the sidebar (if visible) and 
other screens.
</p>'
},





'sidebar_newmail_only' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, only folders with new mail will be shown in the sidebar.
</p>'
},





'sidebar_number_format' => {
'default' => '%m%?n?(%n)?%?f?[%f]?',
'type' => 'string',
'text' => '<p>
This variable controls how message counts are printed when the sidebar
is enabled. If this variable is <em>empty</em> (<em>and only if</em>), no numbers
will be printed <em>and</em> mutt-ng won\'t frequently count mail (which
may be a great speedup esp. with mbox-style mailboxes.)
</p><p>
The following printf(3)-like sequences are supported all of which
may be printed non-zero:
</p><p>


<dl>

<dt><strong>%d </strong></dt>
<dd><p>
Number of deleted messages. 1)
</p></dd>
<dt><strong>%F </strong></dt>
<dd><p>
Number of flagged messages.
</p></dd>
<dt><strong>%m </strong></dt>
<dd><p>
Total number of messages.
</p></dd>
<dt><strong>%M </strong></dt>
<dd><p>
Total number of messages shown, i.e. not hidden by a limit. 1)
</p></dd>
<dt><strong>%n </strong></dt>
<dd><p>
Number of new messages.
</p></dd>
<dt><strong>%t </strong></dt>
<dd><p>
Number of tagged messages. 1)
</p></dd>
</dl>


</p><p>
1) These expandos only have a non-zero value for the current mailbox and
will always be zero otherwise.
</p>'
},





'sidebar_shorten_hierarchy' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, the ``hierarchy\'\' of the sidebar entries will be shortened
only if they cannot be printed in full length (because ``<a href="http://www.mutt.org/doc/manual/manual-6.html#sidebar-width">
$sidebar_width</a>\'\'
is set to a too low value). For example, if the newsgroup name 
``de.alt.sysadmin.recovery\'\' doesn\'t fit on the screen, it\'ll get shortened
``d.a.s.recovery\'\' while ``de.alt.d0\'\' still would and thus will not get 
shortened.
</p><p>
At which characters this compression is done is controled via the
<a href="http://www.mutt.org/doc/manual/manual-6.html#sidebar-boundary">
$sidebar_boundary</a> variable.
</p>'
},





'sidebar_visible' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
This specifies whether or not to show the sidebar (a list of folders specified
with the ``mailboxes\'\' command).
</p>'
},





'sidebar_width' => {
'default' => '0',
'type' => 'number',
'text' => '<p>
The width of the sidebar.
</p>'
},





'sig_dashes' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If set, a line containing ``-- \'\' (dash, dash, space)
will be inserted before your ``<a href="http://www.mutt.org/doc/manual/manual-6.html#signature">
$signature</a>\'\'.  It is <em>strongly</em>
recommended that you not unset this variable unless your ``signature\'\'
contains just your name. The reason for this is because many software
packages use ``-- \n\'\' to detect your signature.
</p><p>
For example, Mutt-ng has the ability to highlight
the signature in a different color in the builtin pager.
</p>'
},





'sig_on_top' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, the signature will be included before any quoted or forwarded
text.  It is <em>strongly</em> recommended that you do not set this variable
unless you really know what you are doing, and are prepared to take
some heat from netiquette guardians.
</p>'
},





'signature' => {
'default' => '~/.signature',
'type' => 'path',
'text' => '<p>
Specifies the filename of your signature, which is appended to all
outgoing messages.   If the filename ends with a pipe (``|\'\'), it is
assumed that filename is a shell command and input should be read from
its stdout.
</p>'
},





'signoff_string' => {
'default' => '',
'type' => 'string',
'text' => '<p>
If <em>set</em>, this string will be inserted before the signature. This is useful
for people that want to sign off every message they send with their name.
</p><p>
If you want to insert your website\'s URL, additional contact information or 
witty quotes into your mails, better use a signature file instead of
the signoff string.
</p>'
},





'simple_search' => {
'default' => '~f %s | ~s %s',
'type' => 'string',
'text' => '<p>
Specifies how Mutt-ng should expand a simple search into a real search
pattern.  A simple search is one that does not contain any of the ˜
operators.  See ``<a href="http://www.mutt.org/doc/manual/manual-6.html#patterns">
patterns</a>\'\' for more information on search patterns.
</p><p>
For example, if you simply type ``joe\'\' at a search or limit prompt, Mutt-ng
will automatically expand it to the value specified by this variable.
For the default value it would be:
</p><p>
˜f joe | ˜s joe
</p>'
},





'sleep_time' => {
'default' => '1',
'type' => 'number',
'text' => '<p>
Specifies time, in seconds, to pause while displaying certain informational
messages, while moving from folder to folder and after expunging
messages from the current folder.  The default is to pause one second, so 
a value of zero for this option suppresses the pause.
</p>'
},





'smart_wrap' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Controls the display of lines longer than the screen width in the
internal pager. If <em>set</em>, long lines are wrapped at a word boundary.
If <em>unset</em>, lines are simply wrapped at the screen edge. Also see the
``<a href="http://www.mutt.org/doc/manual/manual-6.html#markers">
$markers</a>\'\' variable.
</p>'
},





'smileys' => {
'default' => '(>From )|(:[-^]?[][)(><}{|/DP])',
'type' => 'regular expression',
'text' => '<p>
The <em>pager</em> uses this variable to catch some common false
positives of ``<a href="http://www.mutt.org/doc/manual/manual-6.html#quote-regexp">
$quote_regexp</a>\'\', most notably smileys in the beginning
of a line
</p>'
},





'smime_ask_cert_label' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
This flag controls whether you want to be asked to enter a label
for a certificate about to be added to the database or not. It is
<em>set</em> by default.
(S/MIME only)
</p>'
},





'smime_ca_location' => {
'default' => '',
'type' => 'path',
'text' => '<p>
This variable contains the name of either a directory, or a file which
contains trusted certificates for use with OpenSSL.
(S/MIME only)
</p>'
},





'smime_certificates' => {
'default' => '',
'type' => 'path',
'text' => '<p>
Since there is no pubring/secring as with PGP, Mutt-ng has to handle
storage and retrieval of keys by itself. This is very basic right
now, and keys and certificates are stored in two different
directories, both named as the hash-value retrieved from
OpenSSL. There is an index file which contains mailbox-address
keyid pairs, and which can be manually edited. This one points to
the location of the certificates.
(S/MIME only)
</p>'
},





'smime_decrypt_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This format string specifies a command which is used to decrypt
application/x-pkcs7-mime attachments.
</p><p>
The OpenSSL command formats have their own set of printf(3)-like sequences
similar to PGP\'s:
</p><p>


<dl>

<dt><strong>%f </strong></dt>
<dd><p>
Expands to the name of a file containing a message.
</p></dd>
<dt><strong>%s </strong></dt>
<dd><p>
Expands to the name of a file containing the signature part
           of a multipart/signed attachment when verifying it.
</p></dd>
<dt><strong>%k </strong></dt>
<dd><p>
The key-pair specified with <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-default-key">
$smime_default_key</a>
</p></dd>
<dt><strong>%c </strong></dt>
<dd><p>
One or more certificate IDs.
</p></dd>
<dt><strong>%a </strong></dt>
<dd><p>
The algorithm used for encryption.
</p></dd>
<dt><strong>%C </strong></dt>
<dd><p>
CA location:  Depending on whether <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-ca-location">
$smime_ca_location</a>
           points to a directory or file, this expands to 
           "-CApath <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-ca-location">
$smime_ca_location</a>" or "-CAfile <a href="http://www.mutt.org/doc/manual/manual-6.html#smime-ca-location">
$smime_ca_location</a>".
</p></dd>
</dl>


</p><p>
For examples on how to configure these formats, see the smime.rc in
the samples/ subdirectory which has been installed on your system
alongside the documentation.
(S/MIME only)
</p>'
},





'smime_decrypt_use_default_key' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
If <em>set</em> (default) this tells Mutt-ng to use the default key for decryption. Otherwise,
if manage multiple certificate-key-pairs, Mutt-ng will try to use the mailbox-address
to determine the key to use. It will ask you to supply a key, if it can\'t find one.
(S/MIME only)
</p>'
},





'smime_default_key' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This is the default key-pair to use for signing. This must be set to the
keyid (the hash-value that OpenSSL generates) to work properly
(S/MIME only)
</p>'
},





'smime_encrypt_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to create encrypted S/MIME messages.
(S/MIME only)
</p>'
},





'smime_encrypt_with' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This sets the algorithm that should be used for encryption.
Valid choices are ``des\'\', ``des3\'\', ``rc2-40\'\',
``rc2-64\'\', ``\frc2-128\'\'.
</p><p>
If <em>unset</em> ``<em>3des</em>\'\' (TripleDES) is used.
(S/MIME only)
</p>'
},





'smime_get_cert_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to extract X509 certificates from a PKCS7 structure.
(S/MIME only)
</p>'
},





'smime_get_cert_email_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to extract the mail address(es) used for storing
X509 certificates, and for verification purposes (to check whether the
certificate was issued for the sender\'s mailbox).
(S/MIME only)
</p>'
},





'smime_get_signer_cert_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to extract only the signers X509 certificate from a S/MIME
signature, so that the certificate\'s owner may get compared to the
email\'s ``From:\'\' header field.
(S/MIME only)
</p>'
},





'smime_import_cert_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to import a certificate via smime_keysng.
(S/MIME only)
</p>'
},





'smime_is_default' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
The default behaviour of Mutt-ng is to use PGP on all auto-sign/encryption
operations. To override and to use OpenSSL instead this must be <em>set</em>.
</p><p>
However, this has no effect while replying, since Mutt-ng will automatically 
select the same application that was used to sign/encrypt the original
message.
</p><p>
(Note that this variable can be overridden by unsetting <a href="http://www.mutt.org/doc/manual/manual-6.html#crypt-autosmime">
$crypt_autosmime</a>.)
(S/MIME only)
</p>'
},





'smime_keys' => {
'default' => '',
'type' => 'path',
'text' => '<p>
Since there is no pubring/secring as with PGP, Mutt-ng has to handle
storage ad retrieval of keys/certs by itself. This is very basic right now,
and stores keys and certificates in two different directories, both
named as the hash-value retrieved from OpenSSL. There is an index file
which contains mailbox-address keyid pair, and which can be manually
edited. This one points to the location of the private keys.
(S/MIME only)
</p>'
},





'smime_pk7out_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to extract PKCS7 structures of S/MIME signatures,
in order to extract the public X509 certificate(s).
(S/MIME only)
</p>'
},





'smime_sign_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to created S/MIME signatures of type
multipart/signed, which can be read by all mail clients.
(S/MIME only)
</p>'
},





'smime_sign_opaque_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to created S/MIME signatures of type
application/x-pkcs7-signature, which can only be handled by mail
clients supporting the S/MIME extension.
(S/MIME only)
</p>'
},





'smime_timeout' => {
'default' => '300',
'type' => 'number',
'text' => '<p>
The number of seconds after which a cached passphrase will expire if
not used.
(S/MIME only)
</p>'
},





'smime_verify_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to verify S/MIME signatures of type multipart/signed.
(S/MIME only)
</p>'
},





'smime_verify_opaque_command' => {
'default' => '',
'type' => 'string',
'text' => '<p>
This command is used to verify S/MIME signatures of type
application/x-pkcs7-mime.
(S/MIME only)
</p>'
},





'smtp_envelope' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: SMTP
</p><p>
If this variable is non-empty, it\'ll be used as the envelope sender. If it\'s empty
(the default), the value of the regular From: header will be used.
</p><p>
This may be necessary as some providers don\'t allow for arbitrary values
as the envelope sender but only a particular one which may not be the same as the
user\'s desired From: header.
</p>'
},





'smtp_host' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: SMTP
</p><p>
Defines the SMTP host which will be used to deliver mail, as opposed
to invoking the sendmail binary.  Setting this variable overrides the
value of ``<a href="http://www.mutt.org/doc/manual/manual-6.html#sendmail">
$sendmail</a>\'\', and any associated variables.
</p>'
},





'smtp_pass' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: SMTP
</p><p>
Defines the password to use with SMTP AUTH.  If ``<a href="http://www.mutt.org/doc/manual/manual-6.html#smtp-user">
$smtp_user</a>\'\'
is set, but this variable is not, you will be prompted for a password
when sending.
</p><p>
<em>Note:</em> Storing passwords in a configuration file
presents a security risk since the superuser of your machine may read it
regardless of the file\'s permissions.  
</p>'
},





'smtp_port' => {
'default' => '25',
'type' => 'number',
'text' => '<p>
Availability: SMTP
</p><p>
Defines the port that the SMTP host is listening on for mail delivery.
Must be specified as a number.
</p><p>
Defaults to 25, the standard SMTP port, but RFC 2476-compliant SMTP
servers will probably desire 587, the mail submission port.
</p>'
},





'smtp_use_tls' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: SMTP (and SSL)
</p><p>
Defines wether to use STARTTLS. If this option is set to ``<em>required</em>\'\'
and the server does not support STARTTLS or there is an error in the
TLS Handshake, the connection will fail. Setting this to ``<em>enabled</em>\'\'
will try to start TLS and continue without TLS in case of an error.
Muttng still needs to have SSL support enabled in order to use it.
</p>'
},





'smtp_user' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Availability: SMTP
</p><p>
Defines the username to use with SMTP AUTH.  Setting this variable will
cause Mutt-ng to attempt to use SMTP AUTH when sending.
</p>'
},





'sort' => {
'default' => 'date',
'type' => 'sort order',
'text' => '<p>
Specifies how to sort messages in the <em>index</em> menu.  Valid values
are:
</p><p>

<pre>

   date or date-sent
   date-received
   from
   mailbox-order (unsorted)
   score
   size
   spam
   subject
   threads
   to


</pre>
</p><p>
You may optionally use the ``reverse-\'\' prefix to specify reverse sorting
order (example: set sort=reverse-date-sent).
</p>'
},





'sort_alias' => {
'default' => 'alias',
'type' => 'sort order',
'text' => '<p>
Specifies how the entries in the ``alias\'\' menu are sorted.  The
following are legal values:
</p><p>

<pre>

   address (sort alphabetically by email address)
   alias (sort alphabetically by alias name)
   unsorted (leave in order specified in .muttrc)


</pre>
</p>'
},





'sort_aux' => {
'default' => 'date',
'type' => 'sort order',
'text' => '<p>
When sorting by threads, this variable controls how threads are sorted
in relation to other threads, and how the branches of the thread trees
are sorted.  This can be set to any value that ``<a href="http://www.mutt.org/doc/manual/manual-6.html#sort">
$sort</a>\'\' can, except
threads (in that case, Mutt-ng will just use date-sent).  You can also
specify the ``last-\'\' prefix in addition to ``reverse-\'\' prefix, but last-
must come after reverse-.  The last- prefix causes messages to be
sorted against its siblings by which has the last descendant, using
the rest of sort_aux as an ordering.
</p><p>
For instance, set sort_aux=last-date-received would mean that if
a new message is received in a thread, that thread becomes the last one
displayed (or the first, if you have set sort=reverse-threads.)
</p><p>
<em>Note:</em> For reversed ``<a href="http://www.mutt.org/doc/manual/manual-6.html#sort">
$sort</a>\'\' order <a href="http://www.mutt.org/doc/manual/manual-6.html#sort-aux">
$sort_aux</a> is reversed again
(which is not the right thing to do, but kept to not break any existing
configuration setting).
</p>'
},





'sort_browser' => {
'default' => 'alpha',
'type' => 'sort order',
'text' => '<p>
Specifies how to sort entries in the file browser.  By default, the
entries are sorted alphabetically.  Valid values:
</p><p>

<pre>

   alpha (alphabetically)
   date
   size
   unsorted


</pre>
</p><p>
You may optionally use the ``reverse-\'\' prefix to specify reverse sorting
order (example: set sort_browser=reverse-date).
</p>'
},





'sort_re' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
This variable is only useful when sorting by threads with
``<a href="http://www.mutt.org/doc/manual/manual-6.html#strict-threads">
$strict_threads</a>\'\' <em>unset</em>. In that case, it changes the heuristic
Mutt-ng uses to thread messages by subject.  With <a href="http://www.mutt.org/doc/manual/manual-6.html#sort-re">
$sort_re</a> <em>set</em>,
Mutt-ng will only attach a message as the child of another message by
subject if the subject of the child message starts with a substring
matching the setting of ``<a href="http://www.mutt.org/doc/manual/manual-6.html#reply-regexp">
$reply_regexp</a>\'\'. With <a href="http://www.mutt.org/doc/manual/manual-6.html#sort-re">
$sort_re</a> <em>unset</em>,
Mutt-ng will attach the message whether or not this is the case,
as long as the non-``<a href="http://www.mutt.org/doc/manual/manual-6.html#reply-regexp">
$reply_regexp</a>\'\' parts of both messages are identical.
</p>'
},





'spam_separator' => {
'default' => ',',
'type' => 'string',
'text' => '<p>
``<a href="http://www.mutt.org/doc/manual/manual-6.html#spam-separator">
spam_separator</a>\'\' controls what happens when multiple spam headers
are matched: if <em>unset</em>, each successive header will overwrite any
previous matches value for the spam label. If <em>set</em>, each successive
match will append to the previous, using ``<a href="http://www.mutt.org/doc/manual/manual-6.html#spam-separator">
spam_separator</a>\'\' as a
separator.
</p>'
},





'spoolfile' => {
'default' => '',
'type' => 'path',
'text' => '<p>
If your spool mailbox is in a non-default place where Mutt-ng cannot find
it, you can specify its location with this variable.  Mutt-ng will
automatically set this variable to the value of the environment
variable $MAIL if it is not set.
</p>'
},





'ssl_ca_certificates_file' => {
'default' => '',
'type' => 'path',
'text' => '<p>
This variable specifies a file containing trusted CA certificates.
Any server certificate that is signed with one of these CA
certificates are also automatically accepted.
</p><p>
Example: set ssl_ca_certificates_file=/etc/ssl/certs/ca-certificates.crt
</p>'
},





'ssl_client_cert' => {
'default' => '',
'type' => 'path',
'text' => '<p>
Availability: SSL
</p><p>
The file containing a client certificate and its associated private
key.
</p>'
},





'ssl_force_tls' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If this variable is <em>set</em>, mutt-ng will require that all connections
to remote servers be encrypted. Furthermore it will attempt to
negotiate TLS even if the server does not advertise the capability,
since it would otherwise have to abort the connection anyway. This
option supersedes ``<a href="http://www.mutt.org/doc/manual/manual-6.html#ssl-starttls">
$ssl_starttls</a>\'\'.
</p>'
},





'ssl_min_dh_prime_bits' => {
'default' => '0',
'type' => 'number',
'text' => '<p>
Availability: GNUTLS
</p><p>
This variable specifies the minimum acceptable prime size (in bits)
for use in any Diffie-Hellman key exchange. A value of 0 will use
the default from the GNUTLS library.
</p>'
},





'ssl_starttls' => {
'default' => 'yes',
'type' => 'quadoption',
'text' => '<p>
Availability: SSL or GNUTLS
</p><p>
If <em>set</em> (the default), Mutt-ng will attempt to use STARTTLS on servers
advertising the capability. When <em>unset</em>, Mutt-ng will not attempt to
use STARTTLS regardless of the server\'s capabilities.
</p>'
},





'ssl_use_sslv2' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: SSL
</p><p>
This variables specifies whether to attempt to use SSLv2 in the
SSL authentication process.
</p>'
},





'ssl_use_sslv3' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: SSL or GNUTLS
</p><p>
This variables specifies whether to attempt to use SSLv3 in the
SSL authentication process.
</p>'
},





'ssl_use_tlsv1' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: SSL or GNUTLS
</p><p>
This variables specifies whether to attempt to use TLSv1 in the
SSL authentication process.
</p>'
},





'ssl_usesystemcerts' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: SSL
</p><p>
If set to <em>yes</em>, Mutt-ng will use CA certificates in the
system-wide certificate store when checking if server certificate 
is signed by a trusted CA.
</p>'
},





'status_chars' => {
'default' => '-*%A',
'type' => 'string',
'text' => '<p>
Controls the characters used by the ``%r\'\' indicator in
``<a href="http://www.mutt.org/doc/manual/manual-6.html#status-format">
$status_format</a>\'\'. The first character is used when the mailbox is
unchanged. The second is used when the mailbox has been changed, and
it needs to be resynchronized. The third is used if the mailbox is in
read-only mode, or if the mailbox will not be written when exiting
that mailbox (You can toggle whether to write changes to a mailbox
with the toggle-write operation, bound by default to ``%\'\').
The fourth  is used to indicate that the current folder has been
opened in attach-message mode (Certain operations like composing
a new mail, replying, forwarding, etc. are not permitted in this mode).
</p>'
},





'status_format' => {
'default' => '-%r-Mutt-ng: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%>-(%P)---',
'type' => 'string',
'text' => '<p>
Controls the format of the status line displayed in the <em>index</em>
menu.  This string is similar to ``<a href="http://www.mutt.org/doc/manual/manual-6.html#index-format">
$index_format</a>\'\', but has its own
set of printf(3)-like sequences:
</p><p>


<dl>

<dt><strong>%b  </strong></dt>
<dd><p>
number of mailboxes with new mail *
</p></dd>
<dt><strong>%B  </strong></dt>
<dd><p>
the short pathname of the current mailbox
</p></dd>
<dt><strong>%d  </strong></dt>
<dd><p>
number of deleted messages *
</p></dd>
<dt><strong>%f  </strong></dt>
<dd><p>
the full pathname of the current mailbox
</p></dd>
<dt><strong>%F  </strong></dt>
<dd><p>
number of flagged messages *
</p></dd>
<dt><strong>%h  </strong></dt>
<dd><p>
local hostname
</p></dd>
<dt><strong>%l  </strong></dt>
<dd><p>
size (in bytes) of the current mailbox *
</p></dd>
<dt><strong>%L  </strong></dt>
<dd><p>
size (in bytes) of the messages shown 
(i.e., which match the current limit) *
</p></dd>
<dt><strong>%m  </strong></dt>
<dd><p>
the number of messages in the mailbox *
</p></dd>
<dt><strong>%M  </strong></dt>
<dd><p>
the number of messages shown (i.e., which match the current limit) *
</p></dd>
<dt><strong>%n  </strong></dt>
<dd><p>
number of new messages in the mailbox *
</p></dd>
<dt><strong>%o  </strong></dt>
<dd><p>
number of old unread messages *
</p></dd>
<dt><strong>%p  </strong></dt>
<dd><p>
number of postponed messages *
</p></dd>
<dt><strong>%P  </strong></dt>
<dd><p>
percentage of the way through the index
</p></dd>
<dt><strong>%r  </strong></dt>
<dd><p>
modified/read-only/won\'t-write/attach-message indicator,
according to <a href="http://www.mutt.org/doc/manual/manual-6.html#status-chars">
$status_chars</a>
</p></dd>
<dt><strong>%s  </strong></dt>
<dd><p>
current sorting mode (<a href="http://www.mutt.org/doc/manual/manual-6.html#sort">
$sort</a>)
</p></dd>
<dt><strong>%S  </strong></dt>
<dd><p>
current aux sorting method (<a href="http://www.mutt.org/doc/manual/manual-6.html#sort-aux">
$sort_aux</a>)
</p></dd>
<dt><strong>%t  </strong></dt>
<dd><p>
number of tagged messages *
</p></dd>
<dt><strong>%u  </strong></dt>
<dd><p>
number of unread messages *
</p></dd>
<dt><strong>%v  </strong></dt>
<dd><p>
Mutt-ng version string
</p></dd>
<dt><strong>%V  </strong></dt>
<dd><p>
currently active limit pattern, if any *
</p></dd>
<dt><strong>%>X </strong></dt>
<dd><p>
right justify the rest of the string and pad with "X"
</p></dd>
<dt><strong>%|X </strong></dt>
<dd><p>
pad to the end of the line with "X"
</p></dd>
</dl>


</p><p>
* = can be optionally printed if nonzero
</p><p>
Some of the above sequences can be used to optionally print a string
if their value is nonzero.  For example, you may only want to see the
number of flagged messages if such messages exist, since zero is not
particularly meaningful.  To optionally print a string based upon one
of the above sequences, the following construct is used
</p><p>
%?<sequence_char>?<optional_string>?
</p><p>
where <em>sequence_char</em> is a character from the table above, and
<em>optional_string</em> is the string you would like printed if
<em>sequence_char</em> is nonzero.  <em>optional_string</em> <em>may</em> contain
other sequences as well as normal text, but you may <em>not</em> nest
optional strings.
</p><p>
Here is an example illustrating how to optionally print the number of
new messages in a mailbox:
</p><p>
%?n?%n new messages.?
</p><p>
Additionally you can switch between two strings, the first one, if a
value is zero, the second one, if the value is nonzero, by using the
following construct:
</p><p>
%?<sequence_char>?<if_string>&amp;<else_string>?
</p><p>
You can additionally force the result of any printf(3)-like sequence
to be lowercase by prefixing the sequence character with an underscore
(_) sign.  For example, if you want to display the local hostname in
lowercase, you would use:
</p><p>
%_h
</p><p>
If you prefix the sequence character with a colon (:) character, Mutt-ng
will replace any dots in the expansion by underscores. This might be helpful 
with IMAP folders that don\'t like dots in folder names.
</p>'
},





'status_on_top' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Setting this variable causes the ``status bar\'\' to be displayed on
the first line of the screen rather than near the bottom.
</p>'
},





'strict_mailto' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
With mailto: style links, a body as well as arbitrary header information
may be embedded. This may lead to (user) headers being overwriten without note
if ``<a href="http://www.mutt.org/doc/manual/manual-6.html#edit-headers">
$edit_headers</a>\'\' is unset.
</p><p>
If this variable is <em>set</em>, mutt-ng is strict and allows anything to be
changed. If it\'s <em>unset</em>, all headers given will be prefixed with
``X-Mailto-\'\' and the message including headers will be shown in the editor
regardless of what ``<a href="http://www.mutt.org/doc/manual/manual-6.html#edit-headers">
$edit_headers</a>\'\' is set to.
</p>'
},





'strict_mime' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>unset</em>, non MIME-compliant messages that doesn\'t have any
charset indication in the ``Content-Type:\'\' header field can 
be displayed (non MIME-compliant messages are often generated by old
mailers or buggy mailers like MS Outlook Express).
See also <a href="http://www.mutt.org/doc/manual/manual-6.html#assumed-charset">
$assumed_charset</a>.
</p><p>
This option also replaces linear-white-space between encoded-word
and *text to a single space to prevent the display of MIME-encoded
``Subject:\'\' header field from being devided into multiple lines.
</p>'
},





'strict_threads' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, threading will only make use of the ``In-Reply-To:\'\' and
``References:\'\' header fields when you ``<a href="http://www.mutt.org/doc/manual/manual-6.html#sort">
$sort</a>\'\' by message threads.  By
default, messages with the same subject are grouped together in
``pseudo threads.\'\'  This may not always be desirable, such as in a
personal mailbox where you might have several unrelated messages with
the subject ``hi\'\' which will get grouped together. See also
``<a href="http://www.mutt.org/doc/manual/manual-6.html#sort-re">
$sort_re</a>\'\' for a less drastic way of controlling this
behaviour.
</p>'
},





'strip_was' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, mutt-ng will remove the trailing part of the ``Subject:\'\'
line which matches <a href="http://www.mutt.org/doc/manual/manual-6.html#strip-was-regex">
$strip_was_regex</a> when replying. This is useful to
properly react on subject changes and reduce ``subject noise.\'\' (esp. in Usenet)
</p>'
},





'strip_was_regex' => {
'default' => '\([Ww][Aa][RrSs]: .*\)[ ]*$',
'type' => 'regular expression',
'text' => '<p>
When non-empty and <a href="http://www.mutt.org/doc/manual/manual-6.html#strip-was">
$strip_was</a> is <em>set</em>, mutt-ng will remove this
trailing part of the ``Subject\'\' line when replying if it won\'t be empty
afterwards.
</p>'
},





'stuff_quoted' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
If <em>set</em>, attachments with flowed format will have their quoting ``stuffed\'\',
i.e. a space will be inserted between the quote characters and the actual
text.
</p>'
},





'suspend' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>unset</em>, Mutt-ng won\'t stop when the user presses the terminal\'s
<em>susp</em> key, usually CTRL+Z. This is useful if you run Mutt-ng
inside an xterm using a command like ``xterm -e muttng.\'\'
</p>'
},





'text_flowed' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will generate text/plain; format=flowed attachments.
This format is easier to handle for some mailing software, and generally
just looks like ordinary text.  To actually make use of this format\'s 
features, you\'ll need support in your editor.
</p><p>
Note that <a href="http://www.mutt.org/doc/manual/manual-6.html#indent-string">
$indent_string</a> is ignored when this option is set.
</p>'
},





'thorough_search' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Affects the ˜b and ˜h search operations described in
section ``<a href="http://www.mutt.org/doc/manual/manual-6.html#patterns">
patterns</a>\'\' above.  If <em>set</em>, the headers and attachments of
messages to be searched are decoded before searching.  If <em>unset</em>,
messages are searched as they appear in the folder.
</p>'
},





'thread_received' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng uses the date received rather than the date sent
to thread messages by subject.
</p>'
},





'tilde' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, the internal-pager will pad blank lines to the bottom of the
screen with a tilde (˜).
</p>'
},





'timeout' => {
'default' => '600',
'type' => 'number',
'text' => '<p>
This variable controls the <em>number of seconds</em> Mutt-ng will wait
for a key to be pressed in the main menu before timing out and
checking for new mail.  A value of zero or less will cause Mutt-ng
to never time out.
</p>'
},





'tmpdir' => {
'default' => '',
'type' => 'path',
'text' => '<p>
This variable allows you to specify where Mutt-ng will place its
temporary files needed for displaying and composing messages.  If
this variable is not set, the environment variable $TMPDIR is
used.  If $TMPDIR is not set then "/tmp" is used.
</p>'
},





'to_chars' => {
'default' => ' +TCFL',
'type' => 'string',
'text' => '<p>
Controls the character used to indicate mail addressed to you.  The
first character is the one used when the mail is NOT addressed to your
address (default: space).  The second is used when you are the only
recipient of the message (default: +).  The third is when your address
appears in the ``To:\'\' header field, but you are not the only recipient of
the message (default: T).  The fourth character is used when your
address is specified in the ``Cc:\'\' header field, but you are not the only
recipient.  The fifth character is used to indicate mail that was sent
by <em>you</em>.  The sixth character is used to indicate when a mail
was sent to a mailing-list you\'re subscribe to (default: L).
</p>'
},





'trash' => {
'default' => '',
'type' => 'path',
'text' => '<p>
If <em>set</em>, this variable specifies the path of the trash folder where the
mails marked for deletion will be moved, instead of being irremediably
purged.
</p><p>
<em>Note</em>: When you delete a message in the trash folder, it is really
deleted, so that there is no way to recover mail.
</p>'
},





'tunnel' => {
'default' => '',
'type' => 'string',
'text' => '<p>
Setting this variable will cause Mutt-ng to open a pipe to a command
instead of a raw socket. You may be able to use this to set up
preauthenticated connections to your IMAP/POP3 server. Example:
</p><p>
tunnel="ssh -q mailhost.net /usr/local/libexec/imapd"
</p><p>
<em>Note:</em> For this example to work you must be able to log in to the remote
machine without having to enter a password.
</p>'
},





'umask' => {
'default' => '0077',
'type' => 'number',
'text' => '<p>
This sets the umask that will be used by Mutt-ng when creating all
kinds of files. If <em>unset</em>, the default value is 077.
</p>'
},





'uncollapse_jump' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will jump to the next unread message, if any,
when the current thread is <em>un</em>collapsed.
</p>'
},





'use_8bitmime' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
<em>Warning:</em> do not set this variable unless you are using a version
of sendmail which supports the -B8BITMIME flag (such as sendmail
8.8.x) or in connection with the SMTP support via libESMTP.
Otherwise you may not be able to send mail.
</p><p>
When <em>set</em>, Mutt-ng will either invoke ``<a href="http://www.mutt.org/doc/manual/manual-6.html#sendmail">
$sendmail</a>\'\' with the -B8BITMIME
flag when sending 8-bit messages to enable ESMTP negotiation or tell
libESMTP to do so.
</p>'
},





'use_domain' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will qualify all local addresses (ones without the
@host portion) with the value of ``<a href="http://www.mutt.org/doc/manual/manual-6.html#hostname">
$hostname</a>\'\'.  If <em>unset</em>, no
addresses will be qualified.
</p>'
},





'use_from' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will generate the ``From:\'\' header field when
sending messages. If <em>unset</em>, no ``From:\'\' header field will be
generated unless the user explicitly sets one using the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#my-hdr">
my_hdr</a>\'\'
command.
</p>'
},





'use_idn' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Availability: IDN
</p><p>
When <em>set</em>, Mutt-ng will show you international domain names decoded.
</p><p>
<em>Note:</em> You can use IDNs for addresses even if this is <em>unset</em>.
This variable only affects decoding.
</p>'
},





'use_ipv6' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will look for IPv6 addresses of hosts it tries to
contact.  If this option is <em>unset</em>, Mutt-ng will restrict itself to IPv4 addresses.
Normally, the default should work.
</p>'
},





'visual' => {
'default' => '',
'type' => 'path',
'text' => '<p>
Specifies the visual editor to invoke when the <em>˜v</em> command is
given in the builtin editor.
</p>'
},





'wait_key' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Controls whether Mutt-ng will ask you to press a key after <em>shell-
escape</em>, <em>pipe-message</em>, <em>pipe-entry</em>, <em>print-message</em>,
and <em>print-entry</em> commands.
</p><p>
It is also used when viewing attachments with ``<a href="http://www.mutt.org/doc/manual/manual-6.html#auto-view">
auto_view</a>\'\', provided
that the corresponding mailcap entry has a needsterminal flag,
and the external program is interactive.
</p><p>
When <em>set</em>, Mutt-ng will always ask for a key. When <em>unset</em>, Mutt-ng will wait
for a key only if the external command returned a non-zero status.
</p>'
},





'weed' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
When <em>set</em>, Mutt-ng will weed headers when displaying, forwarding,
printing, or replying to messages.
</p>'
},





'wrap_search' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Controls whether searches wrap around the end of the mailbox.
</p><p>
When <em>set</em>, searches will wrap around the first (or last) message. When
<em>unset</em>, searches will not wrap.
</p>'
},





'wrapmargin' => {
'default' => '0',
'type' => 'number',
'text' => '<p>
Controls the size of the margin remaining at the right side of
the terminal when Mutt-ng\'s pager does smart wrapping.
</p>'
},





'write_bcc' => {
'default' => 'yes',
'type' => 'boolean',
'text' => '<p>
Controls whether Mutt-ng writes out the Bcc header when preparing
messages to be sent.  Exim users may wish to <em>unset</em> this.
</p>'
},





'write_inc' => {
'default' => '10',
'type' => 'number',
'text' => '<p>
When writing a mailbox, a message will be printed every
<em>write_inc</em> messages to indicate progress.  If set to 0, only a
single message will be displayed before writing a mailbox.
</p><p>
Also see the ``<a href="http://www.mutt.org/doc/manual/manual-6.html#read-inc">
$read_inc</a>\'\' variable.
</p>'
},





'xterm_icon' => {
'default' => 'M%?n?AIL&ail?',
'type' => 'string',
'text' => '<p>
Controls the format of the X11 icon title, as long as <a href="http://www.mutt.org/doc/manual/manual-6.html#xterm-set-titles">
$xterm_set_titles</a>
is <em>set</em>. This string is identical in formatting to the one used by
``<a href="http://www.mutt.org/doc/manual/manual-6.html#status-format">
$status_format</a>\'\'.
</p>'
},





'xterm_leave' => {
'default' => '',
'type' => 'string',
'text' => '<p>
If <a href="http://www.mutt.org/doc/manual/manual-6.html#xterm-set-titles">
$xterm_set_titles</a> is <em>set</em>, this string will be used to
set the title when leaving mutt-ng. For terminal-based programs,
there\'s no easy and portable way to read the current title so mutt-ng
cannot read it upon startup and restore it when exiting.
</p><p>
Based on the xterm FAQ, the following might work:
</p><p>
set xterm_leave = "`test x$DISPLAY != x &amp;&amp; xprop -id $WINDOWID | grep WM_NAME | cut -d \'"\' -f 2`"
</p>'
},





'xterm_set_titles' => {
'default' => 'no',
'type' => 'boolean',
'text' => '<p>
Controls whether Mutt-ng sets the xterm title bar and icon name
(as long as you\'re in an appropriate terminal). The default must
be <em>unset</em> to force in the validity checking.
</p>'
},





'xterm_title' => {
'default' => 'Mutt-ng with %?m?%m messages&no messages?%?n? [%n New]?',
'type' => 'string',
'text' => '<p>
Controls the format of the title bar of the xterm provided that
<a href="http://www.mutt.org/doc/manual/manual-6.html#xterm-set-titles">
$xterm_set_titles</a> has been <em>set</em>. This string is identical in formatting
to the one used by ``<a href="http://www.mutt.org/doc/manual/manual-6.html#status-format">
$status_format</a>\'\'.
</p>'
},



};

1;
__DATA__
#
#  abort_noattach
#
#   Type: quadoption
#
#   Default: no
#
#   This variable specifies whether to abort sending if no attachment was made
#   but  the content references them, i.e. the content matches the regular
#   expression given in $attach_remind_regexp. If a match was found and this
#   variable is set to yes, message sending will be aborted but the mail will be
#   send nevertheless if set to no.
#
#   This variable and $attach_remind_regexp are intended to remind the user to
#   attach files if the message's text references them.
#
#   See also the $attach_remind_regexp variable.
#
#  abort_nosubject
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   If  set to yes, when composing messages and no subject is given at the
#   subject  prompt,  composition will be aborted. If set to no, composing
#   messages with no subject given at the subject prompt will never be aborted.
#
#  abort_unmodified
#
#   Type: quadoption
#
#   Default: yes
#
#   If  set to yes, composition will automatically abort after editing the
#   message body if no changes are made to the file (this check only happens
#   after the first edit of the file). When set to no, composition will never be
#   aborted.
#
#  agent_string
#
#   Type: boolean
#
#   Default: yes
#
#   When set, Mutt-ng will add a ``User-Agent:'' header to outgoing messages,
#   indicating which version of Mutt-ng was used for composing them.
#
#  alias_file
#
#   Type: path
#
#   Default: "˜/.muttngrc"
#
#   The default file in which to save aliases created by the ``create-alias''
#   function.
#
#   Note: Mutt-ng will not automatically source this file; you must explicitly
#   use the `` source'' command for it to be executed.
#
#  alias_format
#
#   Type: string
#
#   Default: "%4n %2f %t %-10a %r"
#
#   Specifies the format of the data displayed for the ``alias'' menu. The
#   following printf(3)-style sequences are available:
#
#   %a
#          alias name
#
#   %f
#          flags - currently, a "d" for an alias marked for deletion
#
#   %n
#          index number
#
#   %r
#          address which alias expands to
#
#   %t
#          character which indicates if the alias is tagged for inclusion
#
#  allow_8bit
#
#   Type: boolean
#
#   Default: yes
#
#   Controls  whether  8-bit  data  is  converted  to  7-bit  using either
#   quoted-printable or base64 encoding when sending mail.
#
#  allow_ansi
#
#   Type: boolean
#
#   Default: no
#
#   Controls whether ANSI color codes in messages (and color tags in rich text
#   messages) are to be interpreted. Messages containing these codes are rare,
#   but if this option is set, their text will be colored accordingly. Note that
#   this may override your color choices, and even present a security problem,
#   since a message could include a line like ``[-- PGP output follows ..." and
#   give it the same color as your attachment color.
#
#  arrow_cursor
#
#   Type: boolean
#
#   Default: no
#
#   When set, an arrow (``->'') will be used to indicate the current entry in
#   menus instead of highlighting the whole line. On slow network or modem links
#   this will make response faster because there is less that has to be redrawn
#   on the screen when moving to the next or previous entries in the menu.
#
#  ascii_chars
#
#   Type: boolean
#
#   Default: no
#
#   If set, Mutt-ng will use plain ASCII characters when displaying thread and
#   attachment trees, instead of the default ACS characters.
#
#  askbcc
#
#   Type: boolean
#
#   Default: no
#
#   If set, Mutt-ng will prompt you for blind-carbon-copy (Bcc) recipients
#   before editing an outgoing message.
#
#  askcc
#
#   Type: boolean
#
#   Default: no
#
#   If set, Mutt-ng will prompt you for carbon-copy (Cc) recipients before
#   editing the body of an outgoing message.
#
#  assumed_charset
#
#   Type: string
#
#   Default: "us-ascii"
#
#   This variable is a colon-separated list of character encoding schemes for
#   messages without character encoding indication. Header field values and
#   message body content without character encoding indication would be assumed
#   that they are written in one of this list. By default, all the header fields
#   and  message  body without any charset indication are assumed to be in
#   us-ascii.
#
#   For example, Japanese users might prefer this:
#
#   set assumed_charset="iso-2022-jp:euc-jp:shift_jis:utf-8"
#
#   However, only the first content is valid for the message body. This variable
#   is valid only if $strict_mime is unset.
#
#  attach_format
#
#   Type: string
#
#   Default: "%u%D%I %t%4n %T%.40d%> [%.7m/%.10M, %.6e%?C?, %C?, %s] "
#
#   This variable describes the format of the ``attachment'' menu. The following
#   printf(3)-style sequences are understood:
#
#   %C
#          charset
#
#   %c
#          requires charset conversion (n or c)
#
#   %D
#          deleted flag
#
#   %d
#          description
#
#   %e
#          MIME Content-Transfer-Encoding: header field
#
#   %f
#          filename
#
#   %I
#          MIME Content-Disposition: header field (I=inline, A=attachment)
#
#   %m
#          major MIME type
#
#   %M
#          MIME subtype
#
#   %n
#          attachment number
#
#   %s
#          size
#
#   %t
#          tagged flag
#
#   %T
#          graphic tree characters
#
#   %u
#          unlink (=to delete) flag
#
#   %>X
#          right justify the rest of the string and pad with character "X"
#
#   %|X
#          pad to the end of the line with character "X"
#
#  attach_remind_regexp
#
#   Type: regular expression
#
#   Default: "attach"
#
#   If this variable is non-empty, muttng will scan a message's contents before
#   sending for this regular expression. If it is found, it will ask for what to
#   do depending on the setting of $abort_noattach.
#
#   This variable and $abort_noattach are intended to remind the user to attach
#   files if the message's text references them.
#
#  attach_sep
#
#   Type: string
#
#   Default: "\n"
#
#   The separator to add between attachments when operating (saving, printing,
#   piping, etc) on a list of tagged attachments.
#
#  attach_split
#
#   Type: boolean
#
#   Default: yes
#
#   If this variable is unset, when operating (saving, printing, piping, etc) on
#   a list of tagged attachments, Mutt-ng will concatenate the attachments and
#   will operate on them as a single attachment. The ``$attach_sep'' separator
#   is  added after each attachment. When set, Mutt-ng will operate on the
#   attachments one by one.
#
#  attribution
#
#   Type: string
#
#   Default: "On %d, %n wrote:"
#
#   This is the string that will precede a message which has been included in a
#   reply.  For a full listing of defined printf(3)-like sequences see the
#   section on ``$index_format''.
#
#  auto_tag
#
#   Type: boolean
#
#   Default: no
#
#   When set, functions in the index menu which affect a message will be applied
#   to all tagged messages (if there are any). When unset, you must first use
#   the ``tag-prefix'' function (default: ";") to make the next function apply
#   to all tagged messages.
#
#  autoedit
#
#   Type: boolean
#
#   Default: no
#
#   When  set  along with ``$edit_headers'', Mutt-ng will skip the initial
#   send-menu  and allow you to immediately begin editing the body of your
#   message. The send-menu may still be accessed once you have finished editing
#   the body of your message.
#
#   Also see ``$fast_reply''.
#
#  beep
#
#   Type: boolean
#
#   Default: yes
#
#   When this variable is set, Mutt-ng will beep when an error occurs.
#
#  beep_new
#
#   Type: boolean
#
#   Default: no
#
#   When this variable is set, Mutt-ng will beep whenever it prints a message
#   notifying  you  of new mail. This is independent of the setting of the
#   ``$beep'' variable.
#
#  bounce
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   Controls whether you will be asked to confirm bouncing messages. If set to
#   yes  you don't get asked if you want to bounce a message. Setting this
#   variable to no is not generally useful, and thus not recommended, because
#   you are unable to bounce messages.
#
#  bounce_delivered
#
#   Type: boolean
#
#   Default: yes
#
#   When this variable is set, Mutt-ng will include Delivered-To: header fields
#   when bouncing messages. Postfix users may wish to unset this variable.
#
#  braille_friendly
#
#   Type: boolean
#
#   Default: no
#
#   When this variable is set, mutt will place the cursor at the beginning of
#   the current line in menus, even when the arrow_cursor variable is unset,
#   making it easier for blind persons using Braille displays to follow these
#   menus. The option is disabled by default because many visual terminals don't
#   permit making the cursor invisible.
#
#  certificate_file
#
#   Type: path
#
#   Default: "˜/.mutt_certificates"
#
#   Availability: SSL or GNUTLS
#
#   This variable specifies the file where the certificates you trust are saved.
#   When an unknown certificate is encountered, you are asked if you accept it
#   or not. If you accept it, the certificate can also be saved in this file and
#   further connections are automatically accepted.
#
#   You  can  also  manually  add CA certificates in this file. Any server
#   certificate  that is signed with one of these CA certificates are also
#   automatically accepted.
#
#   Example: set certificate_file=˜/.muttng/certificates
#
#  charset
#
#   Type: string
#
#   Default: ""
#
#   Character set your terminal uses to display and enter textual data.
#
#  check_new
#
#   Type: boolean
#
#   Default: yes
#
#   Note: this option only affects maildir and MH style mailboxes.
#
#   When set, Mutt-ng will check for new mail delivered while the mailbox is
#   open. Especially with MH mailboxes, this operation can take quite some time
#   since it involves scanning the directory and checking each file to see if it
#   has  already  been  looked at. If it's unset, no check for new mail is
#   performed while the mailbox is open.
#
#  collapse_unread
#
#   Type: boolean
#
#   Default: yes
#
#   When unset, Mutt-ng will not collapse a thread if it contains any unread
#   messages.
#
#  compose_format
#
#   Type: string
#
#   Default: "-- Mutt-ng: Compose [Approx. msg size: %l Atts: %a]%>-"
#
#   Controls the format of the status line displayed in the ``compose'' menu.
#   This  string  is similar to ``$status_format'', but has its own set of
#   printf(3)-like sequences:
#
#   %a
#          total number of attachments
#
#   %h
#          local hostname
#
#   %l
#          approximate size (in bytes) of the current message
#
#   %v
#          Mutt-ng version string
#
#   See the text describing the ``$status_format'' option for more information
#   on how to set ``$compose_format''.
#
#  config_charset
#
#   Type: string
#
#   Default: ""
#
#   When defined, Mutt-ng will recode commands in rc files from this encoding.
#
#  confirmappend
#
#   Type: boolean
#
#   Default: yes
#
#   When set, Mutt-ng will prompt for confirmation when appending messages to an
#   existing mailbox.
#
#  confirmcreate
#
#   Type: boolean
#
#   Default: yes
#
#   When set, Mutt-ng will prompt for confirmation when saving messages to a
#   mailbox which does not yet exist before creating it.
#
#  connect_timeout
#
#   Type: number
#
#   Default: 30
#
#   Causes Mutt-ng to timeout a network connection (for IMAP or POP) after this
#   many seconds if the connection is not able to be established. A negative
#   value causes Mutt-ng to wait indefinitely for the connection to succeed.
#
#  content_type
#
#   Type: string
#
#   Default: "text/plain"
#
#   Sets the default Content-Type: header field for the body of newly composed
#   messages.
#
#  copy
#
#   Type: quadoption
#
#   Default: yes
#
#   This variable controls whether or not copies of your outgoing messages will
#   be  saved  for later references. Also see ``$record'', ``$save_name'',
#   ``$force_name'' and ``fcc-hook''.
#
#  crypt_autoencrypt
#
#   Type: boolean
#
#   Default: no
#
#   Setting this variable will cause Mutt-ng to always attempt to PGP encrypt
#   outgoing  messages.  This is probably only useful in connection to the
#   send-hook  command.  It can be overridden by use of the pgp-menu, when
#   encryption  is  not  required  or  signing  is  requested  as well. If
#   ``$smime_is_default'' is set, then OpenSSL is used instead to create S/MIME
#   messages and settings can be overridden by use of the smime-menu. (Crypto
#   only)
#
#  crypt_autopgp
#
#   Type: boolean
#
#   Default: yes
#
#   This variable controls whether or not Mutt-ng may automatically enable PGP
#   encryption/signing  for  messages.  See  also  ``$crypt_autoencrypt'',
#   ``$crypt_replyencrypt'', ``$crypt_autosign'', ``$crypt_replysign'' and
#   ``$smime_is_default''.
#
#  crypt_autosign
#
#   Type: boolean
#
#   Default: no
#
#   Setting  this  variable  will  cause  Mutt-ng  to  always  attempt  to
#   cryptographically sign outgoing messages. This can be overridden by use of
#   the pgp-menu, when signing is not required or encryption is requested as
#   well. If ``$smime_is_default'' is set, then OpenSSL is used instead to
#   create  S/MIME  messages  and settings can be overridden by use of the
#   smime-menu. (Crypto only)
#
#  crypt_autosmime
#
#   Type: boolean
#
#   Default: yes
#
#   This variable controls whether or not Mutt-ng may automatically enable
#   S/MIME encryption/signing for messages. See also ``$crypt_autoencrypt'',
#   ``$crypt_replyencrypt'', ``$crypt_autosign'', ``$crypt_replysign'' and
#   ``$smime_is_default''.
#
#  crypt_replyencrypt
#
#   Type: boolean
#
#   Default: yes
#
#   If set, automatically PGP or OpenSSL encrypt replies to messages which are
#   encrypted. (Crypto only)
#
#  crypt_replysign
#
#   Type: boolean
#
#   Default: no
#
#   If set, automatically PGP or OpenSSL sign replies to messages which are
#   signed.
#
#   Note: this does not work on messages that are encrypted and signed! (Crypto
#   only)
#
#  crypt_replysignencrypted
#
#   Type: boolean
#
#   Default: no
#
#   If set, automatically PGP or OpenSSL sign replies to messages which are
#   encrypted. This makes sense in combination with ``$crypt_replyencrypt'',
#   because  it  allows  you  to sign all messages which are automatically
#   encrypted. This works around the problem noted in ``$crypt_replysign'', that
#   Mutt-ng is not able to find out whether an encrypted message is also signed.
#   (Crypto only)
#
#  crypt_timestamp
#
#   Type: boolean
#
#   Default: yes
#
#   If set, Mutt-ng will include a time stamp in the lines surrounding PGP or
#   S/MIME output, so spoofing such lines is more difficult. If you are using
#   colors to mark these lines, and rely on these, you may unset this setting.
#   (Crypto only)
#
#  crypt_use_gpgme
#
#   Type: boolean
#
#   Default: no
#
#   This variable controls the use the GPGME enabled crypto backends. If it is
#   set and Mutt-ng was build with gpgme support, the gpgme code for S/MIME and
#   PGP will be used instead of the classic code.
#
#   Note: You need to use this option in your .muttngrc configuration file as it
#   won't have any effect when used interactively.
#
#  crypt_verify_sig
#
#   Type: quadoption
#
#   Default: yes
#
#   If ``yes'', always attempt to verify PGP or S/MIME signatures. If ``ask'',
#   ask whether or not to verify the signature. If ``no'', never attempt to
#   verify cryptographic signatures. (Crypto only)
#
#  date_format
#
#   Type: string
#
#   Default: "!%a, %b %d, %Y at %I:%M:%S%p %Z"
#
#   This variable controls the format of the date printed by the ``%d'' sequence
#   in ``$index_format''. This is passed to strftime(3) to process the date.
#
#   Unless the first character in the string is a bang (``!''), the month and
#   week  day  names are expanded according to the locale specified in the
#   variable ``$locale''. If the first character in the string is a bang, the
#   bang is discarded, and the month and week day names in the rest of the
#   string are expanded in the C locale (that is in US English).
#
#  default_hook
#
#   Type: string
#
#   Default: "˜f %s !˜P | (˜P ˜C %s)"
#
#   This  variable controls how send-hooks, message-hooks, save-hooks, and
#   fcc-hooks will be interpreted if they are specified with only a simple
#   regexp, instead of a matching pattern. The hooks are expanded when they are
#   declared, so a hook will be interpreted according to the value of this
#   variable at the time the hook is declared. The default value matches if the
#   message is either from a user matching the regular expression given, or if
#   it is from you (if the from address matches ``alternates'') and is to or
#   cc'ed to a user matching the given regular expression.
#
#  delete
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   Controls  whether  or  not messages are really deleted when closing or
#   synchronizing a mailbox. If set to yes, messages marked for deleting will
#   automatically be purged without prompting. If set to no, messages marked for
#   deletion will be kept in the mailbox.
#
#  delete_space
#
#   Type: boolean
#
#   Default: no
#
#   When  sending  messages with format=flowed by setting the $text_flowed
#   variable, this variable specifies whether to also set the DelSp parameter to
#   yes. If this is unset, no additional parameter will be send as a value of no
#   already is the default behavior.
#
#   Note: this variable only has an effect on outgoing messages (if $text_flowed
#   is set) but not on incomming.
#
#  delete_untag
#
#   Type: boolean
#
#   Default: yes
#
#   If this option is set, Mutt-ng will untag messages when marking them for
#   deletion. This applies when you either explicitly delete a message, or when
#   you save it to another folder.
#
#  digest_collapse
#
#   Type: boolean
#
#   Default: yes
#
#   If this option is set, Mutt-ng's received-attachments menu will not show the
#   subparts  of  individual  messages in a multipart/digest. To see these
#   subparts, press 'v' on that menu.
#
#  display_filter
#
#   Type: path
#
#   Default: ""
#
#   When set, specifies a command used to filter messages. When a message is
#   viewed it is passed as standard input to $display_filter, and the filtered
#   message is read from the standard output.
#
#  dotlock_program
#
#   Type: path
#
#   Default: "$muttng_bindir/muttng_dotlock"
#
#   Availability: Standalone and Dotlock
#
#   Contains the path of the muttng_dotlock(1) binary to be used by Mutt-ng.
#
#  dsn_notify
#
#   Type: string
#
#   Default: ""
#
#   Note: you should not enable this unless you are using Sendmail 8.8.x or
#   greater or in connection with the SMTP support via libESMTP.
#
#   This variable sets the request for when notification is returned. The string
#   consists  of a comma separated list (no spaces!) of one or more of the
#   following:  never,  to never request notification, failure, to request
#   notification on transmission failure, delay, to be notified of message
#   delays, success, to be notified of successful transmission.
#
#   Example: set dsn_notify="failure,delay"
#
#  dsn_return
#
#   Type: string
#
#   Default: ""
#
#   Note: you should not enable this unless you are using Sendmail 8.8.x or
#   greater or in connection with the SMTP support via libESMTP.
#
#   This variable controls how much of your message is returned in DSN messages.
#   It may be set to either hdrs to return just the message header, or full to
#   return the full message.
#
#   Example: set dsn_return=hdrs
#
#  duplicate_threads
#
#   Type: boolean
#
#   Default: yes
#
#   This variable controls whether Mutt-ng, when sorting by threads, threads
#   messages with the same Message-Id: header field together. If it is set, it
#   will indicate that it thinks they are duplicates of each other with an
#   equals sign in the thread diagram.
#
#  edit_headers
#
#   Type: boolean
#
#   Default: no
#
#   This option allows you to edit the header of your outgoing messages along
#   with the body of your message.
#
#   Which empty header fields to show is controlled by the $editor_headers
#   option.
#
#  editor
#
#   Type: path
#
#   Default: ""
#
#   This variable specifies which editor is used by Mutt-ng. It defaults to the
#   value of the $VISUAL, or $EDITOR, environment variable, or to the string
#   "vi" if neither of those are set.
#
#  editor_headers
#
#   Type: string
#
#   Default: "From: To: Cc: Bcc: Subject: Reply-To: Newsgroups: Followup-To:
#   X-Comment-To:"
#
#   If $edit_headers is set, this space-separated list specifies which non-empty
#   header fields to edit in addition to user-defined headers.
#
#   Note: if $edit_headers had to be turned on by force because $strict_mailto
#   is unset, this option has no effect.
#
#  encode_from
#
#   Type: boolean
#
#   Default: no
#
#   When set, Mutt-ng will quoted-printable encode messages when they contain
#   the string ``From '' (note the trailing space) in the beginning of a line.
#   Useful to avoid the tampering certain mail delivery and transport agents
#   tend to do with messages.
#
#   Note: as mutt-ng currently violates RfC3676 defining format=flowed, it's
#   <em/strongly/  advised  to set this option although discouraged by the
#   standard. Alternatively, you must take care of space-stuffing <tt/From /
#   lines (with a trailing space) yourself.
#
#  entropy_file
#
#   Type: path
#
#   Default: ""
#
#   Availability: SSL
#
#   The file which includes random data that is used to initialize SSL library
#   functions.
#
#  envelope_from
#
#   Type: boolean
#
#   Default: no
#
#   When set, Mutt-ng will try to derive the message's envelope sender from the
#   ``From:'' header field. Note that this information is passed to the sendmail
#   command using the ``-f" command line switch, so don't set this option if you
#   are using that switch in $sendmail yourself, or if the sendmail on your
#   machine doesn't support that command line switch.
#
#  escape
#
#   Type: string
#
#   Default: "˜"
#
#   Escape character to use for functions in the builtin editor.
#
#  fast_reply
#
#   Type: boolean
#
#   Default: no
#
#   When set, the initial prompt for recipients and subject are skipped when
#   replying to messages, and the initial prompt for subject is skipped when
#   forwarding messages.
#
#   Note: this variable has no effect when the ``$autoedit'' variable is set.
#
#  fcc_attach
#
#   Type: boolean
#
#   Default: yes
#
#   This variable controls whether or not attachments on outgoing messages are
#   saved along with the main body of your message.
#
#  fcc_clear
#
#   Type: boolean
#
#   Default: no
#
#   When this variable is set, FCCs will be stored unencrypted and unsigned,
#   even when the actual message is encrypted and/or signed. (PGP only)
#
#  file_charset
#
#   Type: string
#
#   Default: ""
#
#   This variable is a colon-separated list of character encoding schemes for
#   text file attatchments. If unset, $charset value will be used instead. For
#   example, the following configuration would work for Japanese text handling:
#
#   set file_charset="iso-2022-jp:euc-jp:shift_jis:utf-8"
#
#   Note: ``iso-2022-*'' must be put at the head of the value as shown above if
#   included.
#
#  folder
#
#   Type: path
#
#   Default: "˜/Mail"
#
#   Specifies the default location of your mailboxes. A ``+'' or ``='' at the
#   beginning of a pathname will be expanded to the value of this variable. Note
#   that if you change this variable from the default value you need to make
#   sure that the assignment occurs before you use ``+'' or ``='' for any other
#   variables since expansion takes place during the ``set'' command.
#
#  folder_format
#
#   Type: string
#
#   Default: "%2C %t %N %F %2l %-8.8u %-8.8g %8s %d %f"
#
#   This variable allows you to customize the file browser display to your
#   personal taste. This string is similar to ``$index_format'', but has its own
#   set of printf(3)-like sequences:
#
#   %C
#          current file number
#
#   %d
#          date/time folder was last modified
#
#   %f
#          filename
#
#   %F
#          file permissions
#
#   %g
#          group name (or numeric gid, if missing)
#
#   %l
#          number of hard links
#
#   %N
#          N if folder has new mail, blank otherwise
#
#   %s
#          size in bytes
#
#   %t
#          * if the file is tagged, blank otherwise
#
#   %u
#          owner name (or numeric uid, if missing)
#
#   %>X
#          right justify the rest of the string and pad with character "X"
#
#   %|X
#          pad to the end of the line with character "X"
#
#  followup_to
#
#   Type: boolean
#
#   Default: yes
#
#   Controls whether or not the Mail-Followup-To: header field is generated when
#   sending  mail. When set, Mutt-ng will generate this field when you are
#   replying  to a known mailing list, specified with the ``subscribe'' or
#   ``lists'' commands or detected by common mailing list headers.
#
#   This field has two purposes. First, preventing you from receiving duplicate
#   copies of replies to messages which you send to mailing lists. Second,
#   ensuring that you do get a reply separately for any messages sent to known
#   lists to which you are not subscribed. The header will contain only the
#   list's address for subscribed lists, and both the list address and your own
#   email address for unsubscribed lists. Without this header, a group reply to
#   your message sent to a subscribed list will be sent to both the list and
#   your address, resulting in two copies of the same email for you.
#
#  force_buffy_check
#
#   Type: boolean
#
#   Default: no
#
#   When  set, it causes Mutt-ng to check for new mail when the buffy-list
#   command is invoked. When unset, buffy_list will just list all mailboxes
#   which are already known to have new mail.
#
#   Also  see  the  following variables: ``$timeout'', ``$mail_check'' and
#   ``$imap_mail_check''.
#
#  force_name
#
#   Type: boolean
#
#   Default: no
#
#   This variable is similar to ``$save_name'', except that Mutt-ng will store a
#   copy of your outgoing message by the username of the address you are sending
#   to even if that mailbox does not exist.
#
#   Also see the ``$record'' variable.
#
#  forward_decode
#
#   Type: boolean
#
#   Default: yes
#
#   Controls  the  decoding  of complex MIME messages into text/plain when
#   forwarding a message. The message header is also RFC2047 decoded. This
#   variable  is  only  used,  if  ``$mime_forward''  is  unset, otherwise
#   ``$mime_forward_decode'' is used instead.
#
#  forward_decrypt
#
#   Type: boolean
#
#   Default: yes
#
#   Controls the handling of encrypted messages when forwarding a message. When
#   set, the outer layer of encryption is stripped off. This variable is only
#   used if ``$mime_forward'' is set and ``$mime_forward_decode'' is unset. (PGP
#   only)
#
#  forward_edit
#
#   Type: quadoption
#
#   Default: yes
#
#   This quadoption controls whether or not the user is automatically placed in
#   the editor when forwarding messages. For those who always want to forward
#   with no modification, use a setting of no.
#
#  forward_format
#
#   Type: string
#
#   Default: "[%a: %s]"
#
#   This variable controls the default subject when forwarding a message. It
#   uses the same format sequences as the ``$index_format'' variable.
#
#  forward_quote
#
#   Type: boolean
#
#   Default: no
#
#   When set forwarded messages included in the main body of the message (when
#   ``$mime_forward'' is unset) will be quoted using ``$indent_string''.
#
#  from
#
#   Type: e-mail address
#
#   Default: ""
#
#   This variable contains a default from address. It can be overridden using
#   my_hdr (including from send-hooks) and ``$reverse_name''. This variable is
#   ignored if ``$use_from'' is unset.
#
#   E.g. you can use send-hook Mutt-ng-devel@lists.berlios.de 'my_hdr From: Foo
#   Bar <foo@bar.fb>' when replying to the mutt-ng developer's mailing list and
#   Mutt-ng takes this email address.
#
#   Defaults to the contents of the environment variable $EMAIL.
#
#  gecos_mask
#
#   Type: regular expression
#
#   Default: "^[^,]*"
#
#   A regular expression used by Mutt-ng to parse the GECOS field of a password
#   entry when expanding the alias. By default the regular expression is set to
#   ``^[^,]*'' which will return the string up to the first ``,'' encountered.
#   If the GECOS field contains a string like "lastname, firstname" then you
#   should do: set gecos_mask=".*".
#
#   This can be useful if you see the following behavior: you address a e-mail
#   to user ID stevef whose full name is Steve Franklin. If Mutt-ng expands
#   stevef to ``Franklin'' stevef@foo.bar then you should set the gecos_mask to
#   a regular expression that will match the whole name so Mutt-ng will expand
#   ``Franklin'' to ``Franklin, Steve''.
#
#  hdrs
#
#   Type: boolean
#
#   Default: yes
#
#   When unset, the header fields normally added by the ``my_hdr'' command are
#   not created. This variable must be unset before composing a new message or
#   replying in order to take effect. If set, the user defined header fields are
#   added to every new message.
#
#  header
#
#   Type: boolean
#
#   Default: no
#
#   When set, this variable causes Mutt-ng to include the header of the message
#   you are replying to into the edit buffer. The ``$weed'' setting applies.
#
#  header_cache
#
#   Type: path
#
#   Default: ""
#
#   Availability: Header Cache
#
#   The $header_cache variable points to the header cache database.
#
#   If  $header_cache points to a directory it will contain a header cache
#   database per folder. If $header_cache points to a file that file will be a
#   single global header cache. By default it is unset so no header caching will
#   be used.
#
#  header_cache_pagesize
#
#   Type: string
#
#   Default: "16384"
#
#   Availability: Header Cache
#
#   Change the maildir header cache database page size.
#
#   Too large or too small of a page size for the common header can waste space,
#   memory effectiveness, or CPU time. The default should be more or less the
#   best you can get. For details google for mutt header cache (first hit).
#
#  help
#
#   Type: boolean
#
#   Default: yes
#
#   When  set,  help lines describing the bindings for the major functions
#   provided by each menu are displayed on the first line of the screen.
#
#   Note: The binding will not be displayed correctly if the function is bound
#   to a sequence rather than a single keystroke. Also, the help line may not be
#   updated  if  a binding is changed while Mutt-ng is running. Since this
#   variable is primarily aimed at new users, neither of these should present a
#   major problem.
#
#  hidden_host
#
#   Type: boolean
#
#   Default: no
#
#   When set, Mutt-ng will skip the host name part of ``$hostname'' variable
#   when adding the domain part to addresses. This variable does not affect the
#   generation of Message-ID: header fields, and it will not lead to the cut-off
#   of first-level domains.
#
#  hide_limited
#
#   Type: boolean
#
#   Default: no
#
#   When set, Mutt-ng will not show the presence of messages that are hidden by
#   limiting, in the thread tree.
#
#  hide_missing
#
#   Type: boolean
#
#   Default: yes
#
#   When set, Mutt-ng will not show the presence of missing messages in the
#   thread tree.
#
#  hide_thread_subject
#
#   Type: boolean
#
#   Default: yes
#
#   When set, Mutt-ng will not show the subject of messages in the thread tree
#   that have the same subject as their parent or closest previously displayed
#   sibling.
#
#  hide_top_limited
#
#   Type: boolean
#
#   Default: no
#
#   When set, Mutt-ng will not show the presence of messages that are hidden by
#   limiting,  at  the  top  of threads in the thread tree. Note that when
#   $hide_missing is set, this option will have no effect.
#
#  hide_top_missing
#
#   Type: boolean
#
#   Default: yes
#
#   When set, Mutt-ng will not show the presence of missing messages at the top
#   of threads in the thread tree. Note that when $hide_limited is set, this
#   option will have no effect.
#
#  history
#
#   Type: number
#
#   Default: 10
#
#   This variable controls the size (in number of strings remembered) of the
#   string history buffer. The buffer is cleared each time the variable is
#   changed.
#
#  honor_followup_to
#
#   Type: quadoption
#
#   Default: yes
#
#   This variable controls whether or not a Mail-Followup-To: header field is
#   honored when group-replying to a message.
#
#  hostname
#
#   Type: string
#
#   Default: ""
#
#   Specifies the hostname to use after the ``@'' in local e-mail addresses and
#   during generation of Message-Id: headers.
#
#   Please be sure to really know what you are doing when changing this variable
#   to configure a custom domain part of Message-IDs.
#
#  ignore_list_reply_to
#
#   Type: boolean
#
#   Default: no
#
#   Affects the behaviour of the reply function when replying to messages from
#   mailing lists. When set, if the ``Reply-To:'' header field is set to the
#   same  value  as  the  ``To:''  header  field, Mutt-ng assumes that the
#   ``Reply-To:'' header field was set by the mailing list to automate responses
#   to the list, and will ignore this field. To direct a response to the mailing
#   list when this option is set, use the list-reply function; group-reply will
#   reply to both the sender and the list.
#
#  imap_authenticators
#
#   Type: string
#
#   Default: ""
#
#   Availability: IMAP
#
#   This is a colon-delimited list of authentication methods Mutt-ng may attempt
#   to use to log in to an IMAP server, in the order Mutt-ng should try them.
#   Authentication methods are either ``login'' or the right side of an IMAP
#   ``AUTH=''   capability  string,  e.g.  ``digest-md5'',  ``gssapi''  or
#   ``cram-md5''. This parameter is case-insensitive.
#
#   If this parameter is unset (the default) Mutt-ng will try all available
#   methods, in order from most-secure to least-secure.
#
#   Example: set imap_authenticators="gssapi:cram-md5:login"
#
#   Note: Mutt-ng will only fall back to other authentication methods if the
#   previous  methods  are  unavailable.  If  a  method  is  available but
#   authentication fails, Mutt-ng will not connect to the IMAP server.
#
#  imap_check_subscribed
#
#   Type: boolean
#
#   Default: no
#
#   When set, mutt will fetch the set of subscribed folders from your server on
#   connection, and add them to the set of mailboxes it polls for new mail. See
#   also the ``mailboxes'' command.
#
#  imap_delim_chars
#
#   Type: string
#
#   Default: "/."
#
#   Availability: IMAP
#
#   This contains the list of characters which you would like to treat as folder
#   separators for displaying IMAP paths. In particular it helps in using the
#   '=' shortcut for your $folder variable.
#
#  imap_headers
#
#   Type: string
#
#   Default: ""
#
#   Availability: IMAP
#
#   Mutt-ng requests these header fields in addition to the default headers
#   (``DATE   FROM   SUBJECT  TO  CC  MESSAGE-ID  REFERENCES  CONTENT-TYPE
#   CONTENT-DESCRIPTION IN-REPLY-TO REPLY-TO LINES X-LABEL'') from IMAP servers
#   before displaying the ``index'' menu. You may want to add more headers for
#   spam detection.
#
#   Note: This is a space separated list.
#
#  imap_home_namespace
#
#   Type: string
#
#   Default: ""
#
#   Availability: IMAP
#
#   You normally want to see your personal folders alongside your INBOX in the
#   IMAP browser. If you see something else, you may set this variable to the
#   IMAP path to your folders.
#
#  imap_keepalive
#
#   Type: number
#
#   Default: 900
#
#   Availability: IMAP
#
#   This variable specifies the maximum amount of time in seconds that Mutt-ng
#   will wait before polling open IMAP connections, to prevent the server from
#   closing them before Mutt-ng has finished with them.
#
#   The default is well within the RFC-specified minimum amount of time (30
#   minutes) before a server is allowed to do this, but in practice the RFC does
#   get violated every now and then.
#
#   Reduce this number if you find yourself getting disconnected from your IMAP
#   server due to inactivity.
#
#  imap_list_subscribed
#
#   Type: boolean
#
#   Default: no
#
#   Availability: IMAP
#
#   This variable configures whether IMAP folder browsing will look for only
#   subscribed folders or all folders. This can be toggled in the IMAP browser
#   with the toggle-subscribed function.
#
#  imap_login
#
#   Type: string
#
#   Default: ""
#
#   Availability: IMAP
#
#   Your login name on the IMAP server.
#
#   This variable defaults to the value of ``$imap_user.''
#
#  imap_mail_check
#
#   Type: number
#
#   Default: 300
#
#   This variable configures how often (in seconds) Mutt-ng should look for new
#   mail in IMAP folders. This is split from the ``mail_check'' variable to
#   generate less traffic and get more accurate information for local folders.
#
#  imap_pass
#
#   Type: string
#
#   Default: ""
#
#   Availability: IMAP
#
#   Specifies the password for your IMAP account. If unset, Mutt-ng will prompt
#   you for your password when you invoke the fetch-mail function.
#
#   Warning: you should only use this option when you are on a fairly secure
#   machine, because the superuser can read your configuration even if you are
#   the only one who can read the file.
#
#  imap_passive
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: IMAP
#
#   When set, Mutt-ng will not open new IMAP connections to check for new mail.
#   Mutt-ng will only check for new mail over existing IMAP connections. This is
#   useful if you don't want to be prompted to user/password pairs on Mutt-ng
#   invocation, or if opening the connection is slow.
#
#  imap_peek
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: IMAP
#
#   If set, Mutt-ng will avoid implicitly marking your mail as read whenever you
#   fetch a message from the server. This is generally a good thing, but can
#   make closing an IMAP folder somewhat slower. This option exists to appease
#   speed freaks.
#
#  imap_reconnect
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   Availability: IMAP
#
#   Controls whether or not Mutt-ng will try to reconnect to IMAP server when
#   the connection is lost.
#
#  imap_servernoise
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: IMAP
#
#   When set, Mutt-ng will display warning messages from the IMAP server as
#   error messages. Since these messages are often harmless, or generated due to
#   configuration problems on the server which are out of the users' hands, you
#   may wish to suppress them at some point.
#
#  imap_user
#
#   Type: string
#
#   Default: ""
#
#   Availability: IMAP
#
#   The name of the user whose mail you intend to access on the IMAP server.
#
#   This variable defaults to your user name on the local machine.
#
#  implicit_autoview
#
#   Type: boolean
#
#   Default: no
#
#   If set, Mutt-ng will look for a mailcap entry with the ``copiousoutput''
#   flag  set for every MIME attachment it doesn't have an internal viewer
#   defined for. If such an entry is found, Mutt-ng will use the viewer defined
#   in that entry to convert the body part to text form.
#
#  include
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   Controls whether or not a copy of the message(s) you are replying to is
#   included in your reply.
#
#  include_onlyfirst
#
#   Type: boolean
#
#   Default: no
#
#   Controls whether or not Mutt-ng includes only the first attachment of the
#   message you are replying.
#
#  indent_string
#
#   Type: string
#
#   Default: "> "
#
#   Specifies the string to prepend to each line of text quoted in a message to
#   which you are replying. You are strongly encouraged not to change this
#   value, as it tends to agitate the more fanatical netizens.
#
#  index_format
#
#   Type: string
#
#   Default: "%4C %Z %{%b %d} %-15.15L (%?l?%4l&%4c?) %s"
#
#   This variable allows you to customize the message index display to your
#   personal taste.
#
#   ``Format strings'' are similar to the strings used in the ``C'' function
#   printf(3) to format output (see the man page for more detail). The following
#   sequences are defined in Mutt-ng:
#
#   %a
#          address of the author
#
#   %A
#          reply-to address (if present; otherwise: address of author)
#
#   %b
#          filename of the original message folder (think mailBox)
#
#   %B
#          the list to which the letter was sent, or else the folder name (%b).
#
#   %c
#          number of characters (bytes) in the message
#
#   %C
#          current message number
#
#   %d
#          date  and  time  of  the  message  in  the  format specified by
#          ``date_format'' converted to sender's time zone
#
#   %D
#          date  and  time  of  the  message  in  the  format specified by
#          ``date_format'' converted to the local time zone
#
#   %e
#          current message number in thread
#
#   %E
#          number of messages in current thread
#
#   %f
#          entire From: line (address + real name)
#
#   %F
#          author name, or recipient name if the message is from you
#
#   %H
#          spam attribute(s) of this message
#
#   %g
#          newsgroup name (if compiled with nntp support)
#
#   %i
#          message-id of the current message
#
#   %l
#          number of lines in the message (does not work with maildir, mh, and
#          possibly IMAP folders)
#
#   %L
#          If an address in the To or CC header field matches an address defined
#          by the users ``subscribe'' command, this displays "To <list-name>",
#          otherwise the same as %F.
#
#   %m
#          total number of message in the mailbox
#
#   %M
#          number of hidden messages if the thread is collapsed.
#
#   %N
#          message score
#
#   %n
#          author's real name (or address if missing)
#
#   %O
#          (_O_riginal save folder) Where Mutt-ng would formerly have stashed
#          the message: list name or recipient name if no list
#
#   %s
#          subject of the message
#
#   %S
#          status of the message (N/D/d/!/r/*)
#
#   %t
#          `to:' field (recipients)
#
#   %T
#          the appropriate character from the $to_chars string
#
#   %u
#          user (login) name of the author
#
#   %v
#          first name of the author, or the recipient if the message is from you
#
#   %W
#          name of organization of author (`organization:' field)
#
#   %y
#          `x-label:' field, if present
#
#   %Y
#          `x-label' field, if present, and (1) not at part of a thread tree,
#          (2)  at the top of a thread, or (3) `x-label' is different from
#          preceding message's `x-label'.
#
#   %Z
#          message status flags
#
#   %{fmt}
#          the date and time of the message is converted to sender's time zone,
#          and ``fmt'' is expanded by the library function ``strftime''; a
#          leading bang disables locales
#
#   %[fmt]
#          the date and time of the message is converted to the local time zone,
#          and ``fmt'' is expanded by the library function ``strftime''; a
#          leading bang disables locales
#
#   %(fmt)
#          the local date and time when the message was received. ``fmt'' is
#          expanded  by  the library function ``strftime''; a leading bang
#          disables locales
#
#   %<fmt>
#          the current local time. ``fmt'' is expanded by the library function
#          ``strftime''; a leading bang disables locales.
#
#   %>X
#          right justify the rest of the string and pad with character "X"
#
#   %|X
#          pad to the end of the line with character "X"
#
#   See also: ``$to_chars''.
#
#  ispell
#
#   Type: path
#
#   Default: "/usr/bin/ispell"
#
#   How to invoke ispell (GNU's spell-checking software).
#
#  keep_flagged
#
#   Type: boolean
#
#   Default: no
#
#   If set, read messages marked as flagged will not be moved from your spool
#   mailbox  to  your ``$mbox'' mailbox, or as a result of a ``mbox-hook''
#   command.
#
#  list_reply
#
#   Type: quadoption
#
#   Default: no
#
#   When set, address replies to the mailing list the original message came from
#   (instead  to  the  author only). Setting this option to ``ask-yes'' or
#   ``ask-no'' will ask if you really intended to reply to the author only.
#
#  locale
#
#   Type: string
#
#   Default: "C"
#
#   The locale used by strftime(3) to format dates. Legal values are the strings
#   your system accepts for the locale variable LC_TIME.
#
#  mail_check
#
#   Type: number
#
#   Default: 5
#
#   This variable configures how often (in seconds) Mutt-ng should look for new
#   mail.
#
#   Note: This does not apply to IMAP mailboxes, see $imap_mail_check.
#
#  mailcap_path
#
#   Type: string
#
#   Default: ""
#
#   This variable specifies which files to consult when attempting to display
#   MIME bodies not directly supported by Mutt-ng.
#
#  mailcap_sanitize
#
#   Type: boolean
#
#   Default: yes
#
#   If set, Mutt-ng will restrict possible characters in mailcap % expandos to a
#   well-defined set of safe characters. This is the safe setting, but we are
#   not sure it doesn't break some more advanced MIME stuff.
#
#   DON'T CHANGE THIS SETTING UNLESS YOU ARE REALLY SURE WHAT YOU ARE DOING!
#
#  maildir_header_cache_verify
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: Header Cache
#
#   Check  for Maildir unaware programs other than Mutt-ng having modified
#   maildir files when the header cache is in use. This incurs one stat(2) per
#   message every time the folder is opened.
#
#  maildir_trash
#
#   Type: boolean
#
#   Default: no
#
#   If set, messages marked as deleted will be saved with the maildir (T)rashed
#   flag instead of physically deleted.
#
#   NOTE: this only applies to maildir-style mailboxes. Setting it will have no
#   effect on other mailbox types.
#
#   It is similiar to the trash option.
#
#  mark_old
#
#   Type: boolean
#
#   Default: yes
#
#   Controls whether or not Mutt-ng marks new unread messages as old if you exit
#   a mailbox without reading them.
#
#   With this option set, the next time you start Mutt-ng, the messages will
#   show up with an "O" next to them in the ``index'' menu, indicating that they
#   are old.
#
#  markers
#
#   Type: boolean
#
#   Default: yes
#
#   Controls the display of wrapped lines in the internal pager. If set, a ``+''
#   marker  is  displayed  at the beginning of wrapped lines. Also see the
#   ``$smart_wrap'' variable.
#
#  mask
#
#   Type: regular expression
#
#   Default: "!^\.[^.]"
#
#   A regular expression used in the file browser, optionally preceded by the
#   not operator ``!''. Only files whose names match this mask will be shown.
#   The match is always case-sensitive.
#
#  max_display_recips
#
#   Type: number
#
#   Default: 0
#
#   When set non-zero, this specifies the maximum number of recipient header
#   lines (To:, Cc: and Bcc:) to display in the pager if header weeding is
#   turned on. In case the number of lines exeeds its value, the last line will
#   have 3 dots appended.
#
#  max_line_length
#
#   Type: number
#
#   Default: 0
#
#   When  set,  the maximum line length for displaying ``format = flowed''
#   messages is limited to this length. A value of 0 (which is also the default)
#   means that the maximum line length is determined by the terminal width and
#   $wrapmargin.
#
#  mbox
#
#   Type: path
#
#   Default: "˜/mbox"
#
#   This specifies the folder into which read mail in your ``$spoolfile'' folder
#   will be appended.
#
#  mbox_type
#
#   Type: folder magic
#
#   Default: mbox
#
#   The default mailbox type used when creating new folders. May be any of mbox,
#   MMDF, MH and Maildir.
#
#  menu_context
#
#   Type: number
#
#   Default: 0
#
#   This variable controls the number of lines of context that are given when
#   scrolling through menus. (Similar to ``$pager_context''.)
#
#  menu_move_off
#
#   Type: boolean
#
#   Default: yes
#
#   When unset, the bottom entry of menus will never scroll up past the bottom
#   of the screen, unless there are less entries than lines. When set, the
#   bottom entry may move off the bottom.
#
#  menu_scroll
#
#   Type: boolean
#
#   Default: no
#
#   When set, menus will be scrolled up or down one line when you attempt to
#   move across a screen boundary. If unset, the screen is cleared and the next
#   or previous page of the menu is displayed (useful for slow links to avoid
#   many redraws).
#
#  message_format
#
#   Type: string
#
#   Default: "%s"
#
#   This is the string displayed in the ``attachment'' menu for attachments of
#   type message/rfc822. For a full listing of defined printf(3)-like sequences
#   see the section on ``$index_format''.
#
#  meta_key
#
#   Type: boolean
#
#   Default: no
#
#   If set, forces Mutt-ng to interpret keystrokes with the high bit (bit 8) set
#   as if the user had pressed the ESC key and whatever key remains after having
#   the high bit removed. For example, if the key pressed has an ASCII value of
#   0xf4, then this is treated as if the user had pressed ESC then ``x''. This
#   is because the result of removing the high bit from ``0xf4'' is ``0x74'',
#   which is the ASCII character ``x''.
#
#  metoo
#
#   Type: boolean
#
#   Default: no
#
#   If unset, Mutt-ng will remove your address (see the ``alternates'' command)
#   from the list of recipients when replying to a message.
#
#  mh_purge
#
#   Type: boolean
#
#   Default: no
#
#   When unset, Mutt-ng will mimic mh's behaviour and rename deleted messages to
#   ,<old file name> in mh folders instead of really deleting them. If the
#   variable is set, the message files will simply be deleted.
#
#  mh_seq_flagged
#
#   Type: string
#
#   Default: "flagged"
#
#   The name of the MH sequence used for flagged messages.
#
#  mh_seq_replied
#
#   Type: string
#
#   Default: "replied"
#
#   The name of the MH sequence used to tag replied messages.
#
#  mh_seq_unseen
#
#   Type: string
#
#   Default: "unseen"
#
#   The name of the MH sequence used for unseen messages.
#
#  mime_forward
#
#   Type: quadoption
#
#   Default: no
#
#   When set, the message you are forwarding will be attached as a separate MIME
#   part instead of included in the main body of the message.
#
#   This is useful for forwarding MIME messages so the receiver can properly
#   view the message as it was delivered to you. If you like to switch between
#   MIME and not MIME from mail to mail, set this variable to ask-no or ask-yes.
#
#   Also see ``$forward_decode'' and ``$mime_forward_decode''.
#
#  mime_forward_decode
#
#   Type: boolean
#
#   Default: no
#
#   Controls  the  decoding  of complex MIME messages into text/plain when
#   forwarding   a  message  while  ``$mime_forward''  is  set.  Otherwise
#   ``$forward_decode'' is used instead.
#
#  mime_forward_rest
#
#   Type: quadoption
#
#   Default: yes
#
#   When forwarding multiple attachments of a MIME message from the recvattach
#   menu, attachments which cannot be decoded in a reasonable manner will be
#   attached to the newly composed message if this option is set.
#
#  mix_entry_format
#
#   Type: string
#
#   Default: "%4n %c %-16s %a"
#
#   Availability: Mixmaster
#
#   This variable describes the format of a remailer line on the mixmaster chain
#   selection screen. The following printf(3)-like sequences are supported:
#
#   %n
#          The running number on the menu.
#
#   %c
#          Remailer capabilities.
#
#   %s
#          The remailer's short name.
#
#   %a
#          The remailer's e-mail address.
#
#  mixmaster
#
#   Type: path
#
#   Default: "mixmaster"
#
#   Availability: Mixmaster
#
#   This variable contains the path to the Mixmaster binary on your system. It
#   is  used  with  various sets of parameters to gather the list of known
#   remailers, and to finally send a message through the mixmaster chain.
#
#  move
#
#   Type: quadoption
#
#   Default: ask-no
#
#   Controls whether or not Mutt-ng will move read messages from your spool
#   mailbox  to  your ``$mbox'' mailbox, or as a result of a ``mbox-hook''
#   command.
#
#  msgid_format
#
#   Type: string
#
#   Default: "%Y%m%d%h%M%s.G%P%p"
#
#   This is the format for the ``local part'' of the Message-Id: header field
#   generated by Mutt-ng. If this variable is empty, no Message-Id: headers will
#   be generated. The '%' character marks that certain data will be added to the
#   string, similar to printf(3). The following characters are allowed:
#
#   %d
#          the current day of month
#
#   %h
#          the current hour
#
#   %m
#          the current month
#
#   %M
#          the current minute
#
#   %O
#          the current UNIX timestamp (octal)
#
#   %p
#          the process ID
#
#   %P
#          the  current Message-ID prefix (a character rotating with every
#          Message-ID being generated)
#
#   %r
#          a random integer value (decimal)
#
#   %R
#          a random integer value (hexadecimal)
#
#   %s
#          the current second
#
#   %T
#          the current UNIX timestamp (decimal)
#
#   %X
#          the current UNIX timestamp (hexadecimal)
#
#   %Y
#          the current year (Y2K compliant)
#
#   %%
#          the '%' character
#
#   Note: Please only change this setting if you know what you are doing. Also
#   make sure to consult RFC2822 to produce technically valid strings.
#
#  muttng_bindir
#
#   Type: system property
#
#   Value: /usr/local/bin
#
#   This is a read-only system property and specifies the directory containing
#   the muttng binary.
#
#  muttng_docdir
#
#   Type: system property
#
#   Value: NONE/doc/muttng
#
#   This is a read-only system property and specifies the directory containing
#   the muttng documentation.
#
#  muttng_folder_name
#
#   Type: system property
#
#   Value:
#
#   This is a read-only system property and, at runtime, specifies the last part
#   of  the  full  path or URI of the folder currently open (if any), i.e.
#   everything after the last ``/''.
#
#  muttng_folder_path
#
#   Type: system property
#
#   Value:
#
#   This is a read-only system property and, at runtime, specifies the full path
#   or URI of the folder currently open (if any).
#
#  muttng_hcache_backend
#
#   Type: system property
#
#   Value: gdbm
#
#   This is a read-only system property and specifies the header chaching's
#   database backend.
#
#  muttng_pwd
#
#   Type: system property
#
#   Value:
#
#   This is a read-only system property and, at runtime, specifies the current
#   working directory of the muttng binary.
#
#  muttng_revision
#
#   Type: system property
#
#   Value: 502
#
#   This  is a read-only system property and specifies muttng's subversion
#   revision string.
#
#  muttng_sysconfdir
#
#   Type: system property
#
#   Value: /usr/local/etc
#
#   This is a read-only system property and specifies the directory containing
#   the muttng system-wide configuration.
#
#  muttng_version
#
#   Type: system property
#
#   Value: devel
#
#   This is a read-only system property and specifies muttng's version string.
#
#  narrow_tree
#
#   Type: boolean
#
#   Default: no
#
#   This variable, when set, makes the thread tree narrower, allowing deeper
#   threads to fit on the screen.
#
#  net_inc
#
#   Type: number
#
#   Default: 10
#
#   Operations that expect to transfer a large amount of data over the network
#   will update their progress every net_inc kilobytes. If set to 0, no progress
#   messages will be displayed.
#
#   See also ``$read_inc'' and ``$write_inc''.
#
#  nntp_ask_followup_to
#
#   Type: boolean
#
#   Default: no
#
#   Availability: NNTP
#
#   If set, Mutt-ng will prompt you for the Followup-To: header field before
#   editing the body of an outgoing news article.
#
#  nntp_ask_x_comment_to
#
#   Type: boolean
#
#   Default: no
#
#   Availability: NNTP
#
#   If set, Mutt-ng will prompt you for the X-Comment-To: header field before
#   editing the body of an outgoing news article.
#
#  nntp_cache_dir
#
#   Type: path
#
#   Default: "˜/.muttng"
#
#   Availability: NNTP
#
#   This variable points to directory where Mutt-ng will cache news article
#   headers. If unset, headers will not be saved at all and will be reloaded
#   each time when you enter a newsgroup.
#
#   As for the header caching in connection with IMAP and/or Maildir, this
#   drastically increases speed and lowers traffic.
#
#  nntp_catchup
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   Availability: NNTP
#
#   If this variable is set, Mutt-ng will mark all articles in a newsgroup as
#   read when you leaving it.
#
#  nntp_context
#
#   Type: number
#
#   Default: 1000
#
#   Availability: NNTP
#
#   This variable controls how many news articles to cache per newsgroup (if
#   caching is enabled, see $nntp_cache_dir) and how many news articles to show
#   in the ``index'' menu.
#
#   If there're more articles than defined with $nntp_context, all older ones
#   will be removed/not shown in the index.
#
#  nntp_followup_to_poster
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   Availability: NNTP
#
#   If  this  variable  is  set and the keyword "poster" is present in the
#   Followup-To: header field, a follow-up to the newsgroup is not permitted.
#   The message will be mailed to the submitter of the message via mail.
#
#  nntp_group_index_format
#
#   Type: string
#
#   Default: "%4C %M%N %5s %-45.45f %d"
#
#   Availability: NNTP
#
#   This variable allows you to customize the newsgroup browser display to your
#   personal taste. This string is similar to ``index_format'', but has its own
#   set of printf(3)-like sequences:
#%C      current newsgroup number
#%d      description of newsgroup (retrieved from server)
#%f      newsgroup name
#%M      ``-'' if newsgroup not allowed for direct post (moderated for example)
#%N      ``N'' if newsgroup is new, ``u'' if unsubscribed, blank otherwise
#%n      number of new articles in newsgroup
#%s      number of unread articles in newsgroup
#%>X     right justify the rest of the string and pad with character "X"
#%|X     pad to the end of the line with character "X"
#
#  nntp_host
#
#   Type: string
#
#   Default: ""
#
#   Availability: NNTP
#
#   This variable specifies the name (or address) of the NNTP server to be used.
#
#   It defaults to the value specified via the environment variable $NNTPSERVER
#   or contained in the file /etc/nntpserver.
#
#   You can also specify a username and an alternative port for each newsserver,
#   e.g.
#
#   [nntp[s]://][username[:password]@]newsserver[:port]
#
#   Note: Using a password as shown and stored in a configuration file presents
#   a security risk since the superuser of your machine may read it regardless
#   of the file's permissions.
#
#  nntp_inews
#
#   Type: path
#
#   Default: ""
#
#   Availability: NNTP
#
#   If set, specifies the program and arguments used to deliver news posted by
#   Mutt-ng. Otherwise, Mutt-ng posts article using current connection. The
#   following printf(3)-style sequence is understood:
#%s      newsserver name
#
#   Example: set inews="/usr/local/bin/inews -hS"
#
#  nntp_load_description
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: NNTP
#
#   This variable controls whether or not descriptions for newsgroups are to be
#   loaded when subscribing to a newsgroup.
#
#  nntp_mail_check
#
#   Type: number
#
#   Default: 60
#
#   Availability: NNTP
#
#   The time in seconds until any operations on a newsgroup except posting a new
#   article will cause a recheck for new news. If set to 0, Mutt-ng will recheck
#   on each operation in index (stepping, read article, etc.).
#
#  nntp_mime_subject
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: NNTP
#
#   If unset, an 8-bit ``Subject:'' header field in a news article will not be
#   encoded according to RFC2047.
#
#   Note: Only change this setting if you know what you are doing.
#
#  nntp_newsrc
#
#   Type: path
#
#   Default: "˜/.newsrc"
#
#   Availability: NNTP
#
#   This file contains information about subscribed newsgroup and articles read
#   so far.
#
#   To ease the use of multiple news servers, the following printf(3)-style
#   sequence is understood:
#%s      newsserver name
#
#  nntp_pass
#
#   Type: string
#
#   Default: ""
#
#   Availability: NNTP
#
#   Your password for NNTP account.
#
#   Note: Storing passwords in a configuration file presents a security risk
#   since the superuser of your machine may read it regardless of the file's
#   permissions.
#
#  nntp_post_moderated
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   Availability: NNTP
#
#   If  set  to yes, Mutt-ng will post articles to newsgroup that have not
#   permissions to post (e.g. moderated).
#
#   Note: if the newsserver does not support posting to that newsgroup or a
#   group is totally read-only, that posting will not have any effect.
#
#  nntp_reconnect
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   Availability: NNTP
#
#   Controls whether or not Mutt-ng will try to reconnect to a newsserver when
#   the was connection lost.
#
#  nntp_save_unsubscribed
#
#   Type: boolean
#
#   Default: no
#
#   Availability: NNTP
#
#   When  set,  info  about unsubscribed newsgroups will be saved into the
#   ``newsrc'' file and into the news cache.
#
#  nntp_show_new_news
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: NNTP
#
#   If set, the newsserver will be asked for new newsgroups on entering the
#   browser.  Otherwise,  it will be done only once for a newsserver. Also
#   controls whether or not the number of new articles of subscribed newsgroups
#   will be checked.
#
#  nntp_show_only_unread
#
#   Type: boolean
#
#   Default: no
#
#   Availability: NNTP
#
#   If set, only subscribed newsgroups that contain unread articles will be
#   displayed in the newsgroup browser.
#
#  nntp_user
#
#   Type: string
#
#   Default: ""
#
#   Availability: NNTP
#
#   Your  login  name on the NNTP server. If unset and the server requires
#   authentification, Mutt-ng will prompt you for your account name.
#
#  nntp_x_comment_to
#
#   Type: boolean
#
#   Default: no
#
#   Availability: NNTP
#
#   If set, Mutt-ng will add a ``X-Comment-To:'' header field (that contains
#   full name of the original article author) to articles that you followup to.
#
#  operating_system
#
#   Type: string
#
#   Default: ""
#
#   This specifies the operating system name for the User-Agent: header field.
#   If this is unset, it will be set to the operating system name that uname(2)
#   returns. If uname(2) fails, ``UNIX'' will be used.
#
#   It may, for example, look as: ``mutt-ng 1.5.9i (Linux)''.
#
#  pager
#
#   Type: path
#
#   Default: "builtin"
#
#   This variable specifies which pager you would like to use to view messages.
#   ``builtin'' means to use the builtin pager, otherwise this variable should
#   specify the pathname of the external pager you would like to use.
#
#   Using an external pager may have some disadvantages: Additional keystrokes
#   are necessary because you can't call Mutt-ng functions directly from the
#   pager, and screen resizes cause lines longer than the screen width to be
#   badly formatted in the help menu.
#
#  pager_context
#
#   Type: number
#
#   Default: 0
#
#   This variable controls the number of lines of context that are given when
#   displaying the next or previous page in the internal pager. By default,
#   Mutt-ng will display the line after the last one on the screen at the top of
#   the next page (0 lines of context).
#
#  pager_format
#
#   Type: string
#
#   Default: "-%Z- %C/%m: %-20.20n %s"
#
#   This  variable  controls the format of the one-line message ``status''
#   displayed before each message in either the internal or an external pager.
#   The valid sequences are listed in the ``$index_format'' section.
#
#  pager_index_lines
#
#   Type: number
#
#   Default: 0
#
#   Determines the number of lines of a mini-index which is shown when in the
#   pager. The current message, unless near the top or bottom of the folder,
#   will be roughly one third of the way down this mini-index, giving the reader
#   the context of a few messages before and after the message. This is useful,
#   for example, to determine how many messages remain to be read in the current
#   thread. One of the lines is reserved for the status bar from the index, so a
#   pager_index_lines of 6 will only show 5 lines of the actual index. A value
#   of 0 results in no index being shown. If the number of messages in the
#   current folder is less than pager_index_lines, then the index will only use
#   as many lines as it needs.
#
#  pager_stop
#
#   Type: boolean
#
#   Default: no
#
#   When set, the internal-pager will not move to the next message when you are
#   at the end of a message and invoke the next-page function.
#
#  pgp_auto_decode
#
#   Type: boolean
#
#   Default: no
#
#   If  set, Mutt-ng will automatically attempt to decrypt traditional PGP
#   messages whenever the user performs an operation which ordinarily would
#   result in the contents of the message being operated on. For example, if the
#   user displays a pgp-traditional message which has not been manually checked
#   with the check-traditional-pgp function, Mutt-ng will automatically check
#   the message for traditional pgp.
#
#  pgp_autoinline
#
#   Type: boolean
#
#   Default: no
#
#   This  option  controls  whether  Mutt-ng  generates  old-style  inline
#   (traditional) PGP encrypted or signed messages under certain circumstances.
#   This can be overridden by use of the pgp-menu, when inline is not required.
#
#   Note  that Mutt-ng might automatically use PGP/MIME for messages which
#   consist of more than a single MIME part. Mutt-ng can be configured to ask
#   before sending PGP/MIME messages when inline (traditional) would not work.
#   See also: ``$pgp_mime_auto''.
#
#   Also  note  that  using  the  old-style PGP message format is strongly
#   deprecated. (PGP only)
#
#  pgp_check_exit
#
#   Type: boolean
#
#   Default: yes
#
#   If set, Mutt-ng will check the exit code of the PGP subprocess when signing
#   or encrypting. A non-zero exit code means that the subprocess failed. (PGP
#   only)
#
#  pgp_clearsign_command
#
#   Type: string
#
#   Default: ""
#
#   This format is used to create a old-style ``clearsigned'' PGP message.
#
#   Note that the use of this format is strongly deprecated. (PGP only)
#
#  pgp_decode_command
#
#   Type: string
#
#   Default: ""
#
#   This  format  strings  specifies  a  command  which  is used to decode
#   application/pgp attachments.
#
#   The PGP command formats have their own set of printf(3)-like sequences:
#
#   %p
#          Expands to PGPPASSFD=0 when a pass phrase is needed, to an empty
#          string otherwise. Note: This may be used with a %? construct.
#
#   %f
#          Expands to the name of a file containing a message.
#
#   %s
#          Expands to the name of a file containing the signature part of a
#          multipart/signed attachment when verifying it.
#
#   %a
#          The value of $pgp_sign_as.
#
#   %r
#          One or more key IDs.
#
#   For examples on how to configure these formats for the various versions of
#   PGP which are floating around, see the pgp*.rc and gpg.rc files in the
#   samples/ subdirectory which has been installed on your system alongside the
#   documentation. (PGP only)
#
#  pgp_decrypt_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to decrypt a PGP encrypted message. (PGP only)
#
#  pgp_encrypt_only_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to encrypt a body part without signing it. (PGP only)
#
#  pgp_encrypt_sign_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to both sign and encrypt a body part. (PGP only)
#
#  pgp_entry_format
#
#   Type: string
#
#   Default: "%4n %t%f %4l/0x%k %-4a %2c %u"
#
#   This variable allows you to customize the PGP key selection menu to your
#   personal taste. This string is similar to ``$index_format'', but has its own
#   set of printf(3)-like sequences:
#
#   %n
#          number
#
#   %k
#          key id
#
#   %u
#          user id
#
#   %a
#          algorithm
#
#   %l
#          key length
#
#   %f
#          flags
#
#   %c
#          capabilities
#
#   %t
#          trust/validity of the key-uid association
#
#   %[<s>]
#          date of the key where <s> is an strftime(3) expression
#
#   (PGP only)
#
#  pgp_export_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to export a public key from the user's key ring. (PGP
#   only)
#
#  pgp_getkeys_command
#
#   Type: string
#
#   Default: ""
#
#   This command is invoked whenever Mutt-ng will need public key information.
#   %r is the only printf(3)-like sequence used with this format. (PGP only)
#
#  pgp_good_sign
#
#   Type: regular expression
#
#   Default: ""
#
#   If  you  assign  a text to this variable, then a PGP signature is only
#   considered verified if the output from $pgp_verify_command contains the
#   text. Use this variable if the exit code from the command is 0 even for bad
#   signatures. (PGP only)
#
#  pgp_ignore_subkeys
#
#   Type: boolean
#
#   Default: yes
#
#   Setting this variable will cause Mutt-ng to ignore OpenPGP subkeys. Instead,
#   the principal key will inherit the subkeys' capabilities. Unset this if you
#   want to play interesting key selection games. (PGP only)
#
#  pgp_import_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to import a key from a message into the user's public
#   key ring. (PGP only)
#
#  pgp_list_pubring_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to list the public key ring's contents. The output
#   format must be analogous to the one used by gpg --list-keys --with-colons.
#
#   This  format is also generated by the pgpring utility which comes with
#   Mutt-ng. (PGP only)
#
#  pgp_list_secring_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to list the secret key ring's contents. The output
#   format must be analogous to the one used by gpg --list-keys --with-colons.
#
#   This  format is also generated by the pgpring utility which comes with
#   Mutt-ng. (PGP only)
#
#  pgp_long_ids
#
#   Type: boolean
#
#   Default: no
#
#   If set, use 64 bit PGP key IDs. Unset uses the normal 32 bit Key IDs. (PGP
#   only)
#
#  pgp_mime_auto
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   This option controls whether Mutt-ng will prompt you for automatically
#   sending  a  (signed/encrypted)  message  using  PGP/MIME  when  inline
#   (traditional) fails (for any reason).
#
#   Also  note  that  using  the  old-style PGP message format is strongly
#   deprecated. (PGP only)
#
#  pgp_replyinline
#
#   Type: boolean
#
#   Default: no
#
#   Setting this variable will cause Mutt-ng to always attempt to create an
#   inline  (traditional)  message when replying to a message which is PGP
#   encrypted/signed inline. This can be overridden by use of the pgp-menu, when
#   inline is not required. This option does not automatically detect if the
#   (replied-to) message is inline; instead it relies on Mutt-ng internals for
#   previously checked/flagged messages.
#
#   Note  that Mutt-ng might automatically use PGP/MIME for messages which
#   consist of more than a single MIME part. Mutt-ng can be configured to ask
#   before sending PGP/MIME messages when inline (traditional) would not work.
#   See also: ``$pgp_mime_auto''.
#
#   Also  note  that  using  the  old-style PGP message format is strongly
#   deprecated. (PGP only)
#
#  pgp_retainable_sigs
#
#   Type: boolean
#
#   Default: no
#
#   If   set,  signed  and  encrypted  messages  will  consist  of  nested
#   multipart/signed and multipart/encrypted body parts.
#
#   This is useful for applications like encrypted and signed mailing lists,
#   where the outer layer (multipart/encrypted) can be easily removed, while the
#   inner multipart/signed part is retained. (PGP only)
#
#  pgp_show_unusable
#
#   Type: boolean
#
#   Default: yes
#
#   If set, Mutt-ng will display non-usable keys on the PGP key selection menu.
#   This includes keys which have been revoked, have expired, or have been
#   marked as ``disabled'' by the user. (PGP only)
#
#  pgp_sign_as
#
#   Type: string
#
#   Default: ""
#
#   If you have more than one key pair, this option allows you to specify which
#   of your private keys to use. It is recommended that you use the keyid form
#   to specify your key (e.g., ``0x00112233''). (PGP only)
#
#  pgp_sign_command
#
#   Type: string
#
#   Default: ""
#
#   This  command  is  used  to  create  the  detached PGP signature for a
#   multipart/signed PGP/MIME body part. (PGP only)
#
#  pgp_sort_keys
#
#   Type: sort order
#
#   Default: address
#
#   Specifies how the entries in the ``pgp keys'' menu are sorted. The following
#   are legal values:
#
#   address
#          sort alphabetically by user id
#
#   keyid
#          sort alphabetically by key id
#
#   date
#          sort by key creation date
#
#   trust
#          sort by the trust of the key
#
#   If  you  prefer  reverse  order  of  the  above values, prefix it with
#   ``reverse-''. (PGP only)
#
#  pgp_strict_enc
#
#   Type: boolean
#
#   Default: yes
#
#   If  set, Mutt-ng will automatically encode PGP/MIME signed messages as
#   quoted-printable. Please note that unsetting this variable may lead to
#   problems with non-verifyable PGP signatures, so only change this if you know
#   what you are doing. (PGP only)
#
#  pgp_timeout
#
#   Type: number
#
#   Default: 300
#
#   The number of seconds after which a cached passphrase will expire if not
#   used. Default: 300. (PGP only)
#
#  pgp_use_gpg_agent
#
#   Type: boolean
#
#   Default: no
#
#   If set, Mutt-ng will use a possibly-running gpg-agent process. (PGP only)
#
#  pgp_verify_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to verify PGP signatures. (PGP only)
#
#  pgp_verify_key_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to verify key information from the key selection menu.
#   (PGP only)
#
#  pipe_decode
#
#   Type: boolean
#
#   Default: no
#
#   Used in connection with the pipe-message command. When unset, Mutt-ng will
#   pipe the messages without any preprocessing. When set, Mutt-ng will weed
#   headers and will attempt to PGP/MIME decode the messages first.
#
#  pipe_sep
#
#   Type: string
#
#   Default: "\n"
#
#   The separator to add between messages when piping a list of tagged messages
#   to an external Unix command.
#
#  pipe_split
#
#   Type: boolean
#
#   Default: no
#
#   Used in connection with the pipe-message command and the ``tag- prefix'' or
#   ``tag-prefix-cond'' operators. If this variable is unset, when piping a list
#   of tagged messages Mutt-ng will concatenate the messages and will pipe them
#   as a single folder. When set, Mutt-ng will pipe the messages one by one. In
#   both cases the messages are piped in the current sorted order, and the
#   ``$pipe_sep'' separator is added after each message.
#
#  pop_auth_try_all
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: POP
#
#   If set, Mutt-ng will try all available methods. When unset, Mutt-ng will
#   only fall back to other authentication methods if the previous methods are
#   unavailable. If a method is available but authentication fails, Mutt-ng will
#   not connect to the POP server.
#
#  pop_authenticators
#
#   Type: string
#
#   Default: ""
#
#   Availability: POP
#
#   This is a colon-delimited list of authentication methods Mutt-ng may attempt
#   to use to log in to an POP server, in the order Mutt-ng should try them.
#   Authentication methods are either ``user'', ``apop'' or any SASL mechanism,
#   eg ``digest-md5'', ``gssapi'' or ``cram-md5''.
#
#   This parameter is case-insensitive. If this parameter is unset (the default)
#   Mutt-ng  will  try all available methods, in order from most-secure to
#   least-secure.
#
#   Example: set pop_authenticators="digest-md5:apop:user"
#
#  pop_delete
#
#   Type: quadoption
#
#   Default: ask-no
#
#   Availability: POP
#
#   If set, Mutt-ng will delete successfully downloaded messages from the POP
#   server when using the ``fetch-mail'' function. When unset, Mutt-ng will
#   download messages but also leave them on the POP server.
#
#  pop_host
#
#   Type: string
#
#   Default: ""
#
#   Availability: POP
#
#   The name of your POP server for the ``fetch-mail'' function. You can also
#   specify an alternative port, username and password, i.e.:
#
#   [pop[s]://][username[:password]@]popserver[:port]
#
#   Note: Storing passwords in a configuration file presents a security risk
#   since the superuser of your machine may read it regardless of the file's
#   permissions.
#
#  pop_last
#
#   Type: boolean
#
#   Default: no
#
#   Availability: POP
#
#   If this variable is set, Mutt-ng will try to use the ``LAST'' POP command
#   for retrieving only unread messages from the POP server when using the
#   ``fetch-mail'' function.
#
#  pop_mail_check
#
#   Type: number
#
#   Default: 60
#
#   Availability: POP
#
#   This variable configures how often (in seconds) POP should look for new
#   mail.
#
#  pop_pass
#
#   Type: string
#
#   Default: ""
#
#   Availability: POP
#
#   Specifies the password for your POP account. If unset, Mutt-ng will prompt
#   you for your password when you open POP mailbox.
#
#   Note: Storing passwords in a configuration file presents a security risk
#   since the superuser of your machine may read it regardless of the file's
#   permissions.
#
#  pop_reconnect
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   Availability: POP
#
#   Controls whether or not Mutt-ng will try to reconnect to a POP server when
#   the connection is lost.
#
#  pop_user
#
#   Type: string
#
#   Default: ""
#
#   Availability: POP
#
#   Your login name on the POP server.
#
#   This variable defaults to your user name on the local machine.
#
#  post_indent_string
#
#   Type: string
#
#   Default: ""
#
#   Similar to the ``$attribution'' variable, Mutt-ng will append this string
#   after the inclusion of a message which is being replied to.
#
#  postpone
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   Controls whether or not messages are saved in the ``$postponed'' mailbox
#   when you elect not to send immediately.
#
#  postponed
#
#   Type: path
#
#   Default: "˜/postponed"
#
#   Mutt-ng allows you to indefinitely ``postpone sending a message'' which you
#   are editing. When you choose to postpone a message, Mutt-ng saves it in the
#   mailbox specified by this variable. Also see the ``$postpone'' variable.
#
#  preconnect
#
#   Type: string
#
#   Default: ""
#
#   If set, a shell command to be executed if Mutt-ng fails to establish a
#   connection to the server. This is useful for setting up secure connections,
#   e.g. with ssh(1). If the command returns a nonzero status, Mutt-ng gives up
#   opening the server. Example:
#
#   preconnect="ssh -f -q -L 1234:mailhost.net:143 mailhost.net sleep 20 <
#   /dev/null > /dev/null"
#
#   Mailbox    ``foo''   on   mailhost.net   can   now   be   reached   as
#   ``{localhost:1234}foo''.
#
#   Note: For this example to work, you must be able to log in to the remote
#   machine without having to enter a password.
#
#  print
#
#   Type: quadoption
#
#   Default: ask-no
#
#   Controls whether or not Mutt-ng really prints messages. This is set to
#   ask-no by default, because some people accidentally hit ``p'' often.
#
#  print_command
#
#   Type: path
#
#   Default: "lpr"
#
#   This specifies the command pipe that should be used to print messages.
#
#  print_decode
#
#   Type: boolean
#
#   Default: yes
#
#   Used in connection with the print-message command. If this option is set,
#   the message is decoded before it is passed to the external command specified
#   by $print_command. If this option is unset, no processing will be applied to
#   the message when printing it. The latter setting may be useful if you are
#   using some advanced printer filter which is able to properly format e-mail
#   messages for printing.
#
#  print_split
#
#   Type: boolean
#
#   Default: no
#
#   Used in connection with the print-message command. If this option is set,
#   the command specified by $print_command is executed once for each message
#   which is to be printed. If this option is unset, the command specified by
#   $print_command is executed only once, and all the messages are concatenated,
#   with a form feed as the message separator.
#
#   Those who use the enscript(1) program's mail-printing mode will most likely
#   want to set this option.
#
#  prompt_after
#
#   Type: boolean
#
#   Default: yes
#
#   If you use an external ``$pager'', setting this variable will cause Mutt-ng
#   to prompt you for a command when the pager exits rather than returning to
#   the index menu. If unset, Mutt-ng will return to the index menu when the
#   external pager exits.
#
#  query_command
#
#   Type: path
#
#   Default: ""
#
#   This specifies the command that Mutt-ng will use to make external address
#   queries. The string should contain a %s, which will be substituted with the
#   query string the user types. See ``query'' for more information.
#
#  quit
#
#   Type: quadoption
#
#   Default: yes
#
#   This variable controls whether ``quit'' and ``exit'' actually quit from
#   Mutt-ng. If it set to yes, they do quit, if it is set to no, they have no
#   effect,  and  if  it is set to ask-yes or ask-no, you are prompted for
#   confirmation when you try to quit.
#
#  quote_empty
#
#   Type: boolean
#
#   Default: yes
#
#   Controls whether or not empty lines will be quoted using ``indent_string''.
#
#  quote_quoted
#
#   Type: boolean
#
#   Default: no
#
#   Controls how quoted lines will be quoted. If set, one quote character will
#   be added to the end of existing prefix. Otherwise, quoted lines will be
#   prepended by ``indent_string''.
#
#  quote_regexp
#
#   Type: regular expression
#
#   Default: "^([ \t]*[|>:}#])+"
#
#   A regular expression used in the internal-pager to determine quoted sections
#   of text in the body of a message.
#
#   Note: In order to use the quotedx patterns in the internal pager, you need
#   to  set  this  to  a regular expression that matches exactly the quote
#   characters at the beginning of quoted lines.
#
#  read_inc
#
#   Type: number
#
#   Default: 10
#
#   If set to a value greater than 0, Mutt-ng will display which message it is
#   currently on when reading a mailbox. The message is printed after read_inc
#   messages have been read (e.g., if set to 25, Mutt-ng will print a message
#   when it reads message 25, and then again when it gets to message 50). This
#   variable is meant to indicate progress when reading large mailboxes which
#   may take some time. When set to 0, only a single message will appear before
#   the reading the mailbox.
#
#   Also see the ``$write_inc'' variable.
#
#  read_only
#
#   Type: boolean
#
#   Default: no
#
#   If set, all folders are opened in read-only mode.
#
#  realname
#
#   Type: string
#
#   Default: ""
#
#   This variable specifies what ``real'' or ``personal'' name should be used
#   when sending messages.
#
#   By default, this is the GECOS field from /etc/passwd.
#
#   Note: This variable will not be used when the user has set a real name in
#   the $from variable.
#
#  recall
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   Controls whether or not Mutt-ng recalls postponed messages when composing a
#   new message. Also see ``$postponed''.
#
#   Setting  this  variable  to  yes is not generally useful, and thus not
#   recommended.
#
#  record
#
#   Type: path
#
#   Default: ""
#
#   This  specifies  the  file into which your outgoing messages should be
#   appended. (This is meant as the primary method for saving a copy of your
#   messages, but another way to do this is using the ``my_hdr'' command to
#   create a Bcc: header field with your email address in it.)
#
#   The value of $record is overridden by the ``$force_name'' and ``$save_name''
#   variables, and the ``fcc-hook'' command.
#
#  reply_regexp
#
#   Type: regular expression
#
#   Default: "^(re([\[0-9\]+])*|aw):[ \t]*"
#
#   A regular expression used to recognize reply messages when threading and
#   replying. The default value corresponds to the English ``Re:'' and the
#   German ``Aw:''.
#
#  reply_self
#
#   Type: boolean
#
#   Default: no
#
#   If unset and you are replying to a message sent by you, Mutt-ng will assume
#   that you want to reply to the recipients of that message rather than to
#   yourself.
#
#  reply_to
#
#   Type: quadoption
#
#   Default: ask-yes
#
#   If set, when replying to a message, Mutt-ng will use the address listed in
#   the ``Reply-To:'' header field as the recipient of the reply. If unset, it
#   will use the address in the ``From:'' header field instead.
#
#   This option is useful for reading a mailing list that sets the ``Reply-To:''
#   header field to the list address and you want to send a private message to
#   the author of a message.
#
#  resolve
#
#   Type: boolean
#
#   Default: yes
#
#   When set, the cursor will be automatically advanced to the next (possibly
#   undeleted) message whenever a command that modifies the current message is
#   executed.
#
#  reverse_alias
#
#   Type: boolean
#
#   Default: no
#
#   This variable controls whether or not Mutt-ng will display the ``personal''
#   name from your aliases in the index menu if it finds an alias that matches
#   the message's sender. For example, if you have the following alias:
#
#   alias juser abd30425@somewhere.net (Joe User)
#
#   and then you receive mail which contains the following header:
#
#   From: abd30425@somewhere.net
#
#   It  would  be  displayed  in the index menu as ``Joe User'' instead of
#   ``abd30425@somewhere.net.'' This is useful when the person's e-mail address
#   is not human friendly (like CompuServe addresses).
#
#  reverse_name
#
#   Type: boolean
#
#   Default: no
#
#   It may sometimes arrive that you receive mail to a certain machine, move the
#   messages to another machine, and reply to some the messages from there. If
#   this variable is set, the default From: line of the reply messages is built
#   using the address where you received the messages you are replying to if
#   that address matches your alternates. If the variable is unset, or the
#   address that would be used doesn't match your alternates, the From: line
#   will use your address on the current machine.
#
#  reverse_realname
#
#   Type: boolean
#
#   Default: yes
#
#   This variable fine-tunes the behaviour of the reverse_name feature. When it
#   is set, Mutt-ng will use the address from incoming messages as-is, possibly
#   including eventual real names. When it is unset, Mutt-ng will override any
#   such real names with the setting of the realname variable.
#
#  rfc2047_parameters
#
#   Type: boolean
#
#   Default: no
#
#   When  this  variable is set, Mutt-ng will decode RFC-2047-encoded MIME
#   parameters. You want to set this variable when Mutt-ng suggests you to save
#   attachments to files named like this:
#
#   =?iso-8859-1?Q?file=5F=E4=5F991116=2Ezip?=
#
#   When this variable is set interactively, the change doesn't have the desired
#   effect before you have changed folders.
#
#   Note that this use of RFC 2047's encoding is explicitly, prohibited by the
#   standard, but nevertheless encountered in the wild.
#
#   Also note that setting this parameter will not have the effect that Mutt-ng
#   generates this kind of encoding. Instead, Mutt-ng will unconditionally use
#   the encoding specified in RFC 2231.
#
#  save_address
#
#   Type: boolean
#
#   Default: no
#
#   If set, Mutt-ng will take the sender's full address when choosing a default
#   folder for saving a mail. If ``$save_name'' or ``$force_name'' is set too,
#   the selection of the fcc folder will be changed as well.
#
#  save_empty
#
#   Type: boolean
#
#   Default: yes
#
#   When unset, mailboxes which contain no saved messages will be removed when
#   closed (the exception is ``$spoolfile'' which is never removed). If set,
#   mailboxes are never removed.
#
#   Note: This only applies to mbox and MMDF folders, Mutt-ng does not delete MH
#   and Maildir directories.
#
#  save_name
#
#   Type: boolean
#
#   Default: no
#
#   This variable controls how copies of outgoing messages are saved. When set,
#   a check is made to see if a mailbox specified by the recipient address
#   exists (this is done by searching for a mailbox in the ``$folder'' directory
#   with the username part of the recipient address). If the mailbox exists, the
#   outgoing message will be saved to that mailbox, otherwise the message is
#   saved to the ``$record'' mailbox.
#
#   Also see the ``$force_name'' variable.
#
#  score
#
#   Type: boolean
#
#   Default: yes
#
#   When this variable is unset, scoring is turned off. This can be useful to
#   selectively   disable   scoring   for   certain   folders   when   the
#   ``$score_threshold_delete'' variable and friends are used.
#
#  score_threshold_delete
#
#   Type: number
#
#   Default: -1
#
#   Messages which have been assigned a score equal to or lower than the value
#   of this variable are automatically marked for deletion by Mutt-ng. Since
#   Mutt-ng scores are always greater than or equal to zero, the default setting
#   of this variable will never mark a message for deletion.
#
#  score_threshold_flag
#
#   Type: number
#
#   Default: 9999
#
#   Messages which have been assigned a score greater than or equal to this
#   variable's value are automatically marked ``flagged''.
#
#  score_threshold_read
#
#   Type: number
#
#   Default: -1
#
#   Messages which have been assigned a score equal to or lower than the value
#   of this variable are automatically marked as read by Mutt-ng. Since Mutt-ng
#   scores are always greater than or equal to zero, the default setting of this
#   variable will never mark a message read.
#
#  send_charset
#
#   Type: string
#
#   Default: "us-ascii:iso-8859-1:utf-8"
#
#   A list of character sets for outgoing messages. Mutt-ng will use the first
#   character  set  into  which the text can be converted exactly. If your
#   ``$charset'' is not iso-8859-1 and recipients may not understand UTF-8, it
#   is advisable to include in the list an appropriate widely used standard
#   character set (such as iso-8859-2, koi8-r or iso-2022-jp) either instead of
#   or after iso-8859-1.
#
#  sendmail
#
#   Type: path
#
#   Default: "/usr/sbin/sendmail -oem -oi"
#
#   Specifies the program and arguments used to deliver mail sent by Mutt-ng.
#   Mutt-ng expects that the specified program interprets additional arguments
#   as recipient addresses.
#
#  sendmail_wait
#
#   Type: number
#
#   Default: 0
#
#   Specifies the number of seconds to wait for the ``$sendmail'' process to
#   finish before giving up and putting delivery in the background.
#
#   Mutt-ng interprets the value of this variable as follows:
#
#   >0
#          number of seconds to wait for sendmail to finish before continuing
#
#   0
#          wait forever for sendmail to finish
#
#   <0
#          always put sendmail in the background without waiting
#
#   Note that if you specify a value other than 0, the output of the child
#   process will be put in a temporary file. If there is some error, you will be
#   informed as to where to find the output.
#
#  shell
#
#   Type: path
#
#   Default: ""
#
#   Command to use when spawning a subshell. By default, the user's login shell
#   from /etc/passwd is used.
#
#  sidebar_boundary
#
#   Type: string
#
#   Default: "."
#
#   When the sidebar is displayed and $sidebar_shorten_hierarchy is set, this
#   variable specifies the characters at which to split a folder name into
#   ``hierarchy items.''
#
#  sidebar_delim
#
#   Type: string
#
#   Default: "|"
#
#   This specifies the delimiter between the sidebar (if visible) and other
#   screens.
#
#  sidebar_newmail_only
#
#   Type: boolean
#
#   Default: no
#
#   If set, only folders with new mail will be shown in the sidebar.
#
#  sidebar_number_format
#
#   Type: string
#
#   Default: "%m%?n?(%n)?%?f?[%f]?"
#
#   This variable controls how message counts are printed when the sidebar is
#   enabled. If this variable is empty (and only if), no numbers will be printed
#   and mutt-ng won't frequently count mail (which may be a great speedup esp.
#   with mbox-style mailboxes.)
#
#   The following printf(3)-like sequences are supported all of which may be
#   printed non-zero:
#
#   %d
#          Number of deleted messages. 1)
#
#   %F
#          Number of flagged messages.
#
#   %m
#          Total number of messages.
#
#   %M
#          Total number of messages shown, i.e. not hidden by a limit. 1)
#
#   %n
#          Number of new messages.
#
#   %t
#          Number of tagged messages. 1)
#
#   1) These expandos only have a non-zero value for the current mailbox and
#   will always be zero otherwise.
#
#  sidebar_shorten_hierarchy
#
#   Type: boolean
#
#   Default: no
#
#   When set, the ``hierarchy'' of the sidebar entries will be shortened only if
#   they cannot be printed in full length (because ``$sidebar_width'' is set to
#   a   too   low   value).   For   example,   if   the   newsgroup   name
#   ``de.alt.sysadmin.recovery'' doesn't fit on the screen, it'll get shortened
#   ``d.a.s.recovery'' while ``de.alt.d0'' still would and thus will not get
#   shortened.
#
#   At  which  characters  this  compression  is done is controled via the
#   $sidebar_boundary variable.
#
#  sidebar_visible
#
#   Type: boolean
#
#   Default: no
#
#   This  specifies  whether or not to show the sidebar (a list of folders
#   specified with the ``mailboxes'' command).
#
#  sidebar_width
#
#   Type: number
#
#   Default: 0
#
#   The width of the sidebar.
#
#  sig_dashes
#
#   Type: boolean
#
#   Default: yes
#
#   If set, a line containing ``-- '' (dash, dash, space) will be inserted
#   before your ``$signature''. It is strongly recommended that you not unset
#   this variable unless your ``signature'' contains just your name. The reason
#   for this is because many software packages use ``-- \n'' to detect your
#   signature.
#
#   For  example,  Mutt-ng has the ability to highlight the signature in a
#   different color in the builtin pager.
#
#  sig_on_top
#
#   Type: boolean
#
#   Default: no
#
#   If set, the signature will be included before any quoted or forwarded text.
#   It is strongly recommended that you do not set this variable unless you
#   really know what you are doing, and are prepared to take some heat from
#   netiquette guardians.
#
#  signature
#
#   Type: path
#
#   Default: "˜/.signature"
#
#   Specifies the filename of your signature, which is appended to all outgoing
#   messages. If the filename ends with a pipe (``|''), it is assumed that
#   filename is a shell command and input should be read from its stdout.
#
#  signoff_string
#
#   Type: string
#
#   Default: ""
#
#   If set, this string will be inserted before the signature. This is useful
#   for people that want to sign off every message they send with their name.
#
#   If you want to insert your website's URL, additional contact information or
#   witty quotes into your mails, better use a signature file instead of the
#   signoff string.
#
#  simple_search
#
#   Type: string
#
#   Default: "˜f %s | ˜s %s"
#
#   Specifies how Mutt-ng should expand a simple search into a real search
#   pattern.  A  simple  search  is one that does not contain any of the ˜
#   operators. See ``patterns'' for more information on search patterns.
#
#   For example, if you simply type ``joe'' at a search or limit prompt, Mutt-ng
#   will automatically expand it to the value specified by this variable. For
#   the default value it would be:
#
#   ˜f joe | ˜s joe
#
#  sleep_time
#
#   Type: number
#
#   Default: 1
#
#   Specifies time, in seconds, to pause while displaying certain informational
#   messages, while moving from folder to folder and after expunging messages
#   from the current folder. The default is to pause one second, so a value of
#   zero for this option suppresses the pause.
#
#  smart_wrap
#
#   Type: boolean
#
#   Default: yes
#
#   Controls the display of lines longer than the screen width in the internal
#   pager. If set, long lines are wrapped at a word boundary. If unset, lines
#   are simply wrapped at the screen edge. Also see the ``$markers'' variable.
#
#  smileys
#
#   Type: regular expression
#
#   Default: "(>From )|(:[-^]?[][)(><}{|/DP])"
#
#   The  pager  uses this variable to catch some common false positives of
#   ``$quote_regexp'', most notably smileys in the beginning of a line
#
#  smime_ask_cert_label
#
#   Type: boolean
#
#   Default: yes
#
#   This flag controls whether you want to be asked to enter a label for a
#   certificate about to be added to the database or not. It is set by default.
#   (S/MIME only)
#
#  smime_ca_location
#
#   Type: path
#
#   Default: ""
#
#   This variable contains the name of either a directory, or a file which
#   contains trusted certificates for use with OpenSSL. (S/MIME only)
#
#  smime_certificates
#
#   Type: path
#
#   Default: ""
#
#   Since there is no pubring/secring as with PGP, Mutt-ng has to handle storage
#   and retrieval of keys by itself. This is very basic right now, and keys and
#   certificates are stored in two different directories, both named as the
#   hash-value retrieved from OpenSSL. There is an index file which contains
#   mailbox-address keyid pairs, and which can be manually edited. This one
#   points to the location of the certificates. (S/MIME only)
#
#  smime_decrypt_command
#
#   Type: string
#
#   Default: ""
#
#   This  format  string  specifies  a  command  which  is used to decrypt
#   application/x-pkcs7-mime attachments.
#
#   The OpenSSL command formats have their own set of printf(3)-like sequences
#   similar to PGP's:
#
#   %f
#          Expands to the name of a file containing a message.
#
#   %s
#          Expands to the name of a file containing the signature part of a
#          multipart/signed attachment when verifying it.
#
#   %k
#          The key-pair specified with $smime_default_key
#
#   %c
#          One or more certificate IDs.
#
#   %a
#          The algorithm used for encryption.
#
#   %C
#          CA location: Depending on whether $smime_ca_location points to a
#          directory or file, this expands to "-CApath $smime_ca_location" or
#          "-CAfile $smime_ca_location".
#
#   For examples on how to configure these formats, see the smime.rc in the
#   samples/ subdirectory which has been installed on your system alongside the
#   documentation. (S/MIME only)
#
#  smime_decrypt_use_default_key
#
#   Type: boolean
#
#   Default: yes
#
#   If set (default) this tells Mutt-ng to use the default key for decryption.
#   Otherwise, if manage multiple certificate-key-pairs, Mutt-ng will try to use
#   the mailbox-address to determine the key to use. It will ask you to supply a
#   key, if it can't find one. (S/MIME only)
#
#  smime_default_key
#
#   Type: string
#
#   Default: ""
#
#   This is the default key-pair to use for signing. This must be set to the
#   keyid (the hash-value that OpenSSL generates) to work properly (S/MIME only)
#
#  smime_encrypt_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to create encrypted S/MIME messages. (S/MIME only)
#
#  smime_encrypt_with
#
#   Type: string
#
#   Default: ""
#
#   This sets the algorithm that should be used for encryption. Valid choices
#   are ``des'', ``des3'', ``rc2-40'', ``rc2-64'', ``\frc2-128''.
#
#   If unset ``3des'' (TripleDES) is used. (S/MIME only)
#
#  smime_get_cert_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to extract X509 certificates from a PKCS7 structure.
#   (S/MIME only)
#
#  smime_get_cert_email_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to extract the mail address(es) used for storing X509
#   certificates,  and  for  verification  purposes  (to check whether the
#   certificate was issued for the sender's mailbox). (S/MIME only)
#
#  smime_get_signer_cert_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to extract only the signers X509 certificate from a
#   S/MIME signature, so that the certificate's owner may get compared to the
#   email's ``From:'' header field. (S/MIME only)
#
#  smime_import_cert_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to import a certificate via smime_keysng. (S/MIME only)
#
#  smime_is_default
#
#   Type: boolean
#
#   Default: no
#
#   The default behaviour of Mutt-ng is to use PGP on all auto-sign/encryption
#   operations. To override and to use OpenSSL instead this must be set.
#
#   However, this has no effect while replying, since Mutt-ng will automatically
#   select the same application that was used to sign/encrypt the original
#   message.
#
#   (Note that this variable can be overridden by unsetting $crypt_autosmime.)
#   (S/MIME only)
#
#  smime_keys
#
#   Type: path
#
#   Default: ""
#
#   Since there is no pubring/secring as with PGP, Mutt-ng has to handle storage
#   ad retrieval of keys/certs by itself. This is very basic right now, and
#   stores keys and certificates in two different directories, both named as the
#   hash-value retrieved from OpenSSL. There is an index file which contains
#   mailbox-address keyid pair, and which can be manually edited. This one
#   points to the location of the private keys. (S/MIME only)
#
#  smime_pk7out_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to extract PKCS7 structures of S/MIME signatures, in
#   order to extract the public X509 certificate(s). (S/MIME only)
#
#  smime_sign_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to created S/MIME signatures of type multipart/signed,
#   which can be read by all mail clients. (S/MIME only)
#
#  smime_sign_opaque_command
#
#   Type: string
#
#   Default: ""
#
#   This   command   is   used   to  created  S/MIME  signatures  of  type
#   application/x-pkcs7-signature, which can only be handled by mail clients
#   supporting the S/MIME extension. (S/MIME only)
#
#  smime_timeout
#
#   Type: number
#
#   Default: 300
#
#   The number of seconds after which a cached passphrase will expire if not
#   used. (S/MIME only)
#
#  smime_verify_command
#
#   Type: string
#
#   Default: ""
#
#   This command is used to verify S/MIME signatures of type multipart/signed.
#   (S/MIME only)
#
#  smime_verify_opaque_command
#
#   Type: string
#
#   Default: ""
#
#   This   command   is   used   to   verify  S/MIME  signatures  of  type
#   application/x-pkcs7-mime. (S/MIME only)
#
#  smtp_envelope
#
#   Type: string
#
#   Default: ""
#
#   Availability: SMTP
#
#   If this variable is non-empty, it'll be used as the envelope sender. If it's
#   empty (the default), the value of the regular From: header will be used.
#
#   This may be necessary as some providers don't allow for arbitrary values as
#   the envelope sender but only a particular one which may not be the same as
#   the user's desired From: header.
#
#  smtp_host
#
#   Type: string
#
#   Default: ""
#
#   Availability: SMTP
#
#   Defines the SMTP host which will be used to deliver mail, as opposed to
#   invoking the sendmail binary. Setting this variable overrides the value of
#   ``$sendmail'', and any associated variables.
#
#  smtp_pass
#
#   Type: string
#
#   Default: ""
#
#   Availability: SMTP
#
#   Defines the password to use with SMTP AUTH. If ``$smtp_user'' is set, but
#   this variable is not, you will be prompted for a password when sending.
#
#   Note: Storing passwords in a configuration file presents a security risk
#   since the superuser of your machine may read it regardless of the file's
#   permissions.
#
#  smtp_port
#
#   Type: number
#
#   Default: 25
#
#   Availability: SMTP
#
#   Defines the port that the SMTP host is listening on for mail delivery. Must
#   be specified as a number.
#
#   Defaults to 25, the standard SMTP port, but RFC 2476-compliant SMTP servers
#   will probably desire 587, the mail submission port.
#
#  smtp_use_tls
#
#   Type: string
#
#   Default: ""
#
#   Availability: SMTP (and SSL)
#
#   Defines wether to use STARTTLS. If this option is set to ``required'' and
#   the  server  does not support STARTTLS or there is an error in the TLS
#   Handshake, the connection will fail. Setting this to ``enabled'' will try to
#   start TLS and continue without TLS in case of an error. Muttng still needs
#   to have SSL support enabled in order to use it.
#
#  smtp_user
#
#   Type: string
#
#   Default: ""
#
#   Availability: SMTP
#
#   Defines the username to use with SMTP AUTH. Setting this variable will cause
#   Mutt-ng to attempt to use SMTP AUTH when sending.
#
#  sort
#
#   Type: sort order
#
#   Default: date
#
#   Specifies how to sort messages in the index menu. Valid values are:
#   date or date-sent
#   date-received
#   from
#   mailbox-order (unsorted)
#   score
#   size
#   spam
#   subject
#   threads
#   to
#
#   You may optionally use the ``reverse-'' prefix to specify reverse sorting
#   order (example: set sort=reverse-date-sent).
#
#  sort_alias
#
#   Type: sort order
#
#   Default: alias
#
#   Specifies how the entries in the ``alias'' menu are sorted. The following
#   are legal values:
#   address (sort alphabetically by email address)
#   alias (sort alphabetically by alias name)
#   unsorted (leave in order specified in .muttrc)
#
#  sort_aux
#
#   Type: sort order
#
#   Default: date
#
#   When sorting by threads, this variable controls how threads are sorted in
#   relation to other threads, and how the branches of the thread trees are
#   sorted. This can be set to any value that ``$sort'' can, except threads (in
#   that  case, Mutt-ng will just use date-sent). You can also specify the
#   ``last-'' prefix in addition to ``reverse-'' prefix, but last- must come
#   after reverse-. The last- prefix causes messages to be sorted against its
#   siblings by which has the last descendant, using the rest of sort_aux as an
#   ordering.
#
#   For instance, set sort_aux=last-date-received would mean that if a new
#   message is received in a thread, that thread becomes the last one displayed
#   (or the first, if you have set sort=reverse-threads.)
#
#   Note: For reversed ``$sort'' order $sort_aux is reversed again (which is not
#   the right thing to do, but kept to not break any existing configuration
#   setting).
#
#  sort_browser
#
#   Type: sort order
#
#   Default: alpha
#
#   Specifies how to sort entries in the file browser. By default, the entries
#   are sorted alphabetically. Valid values:
#   alpha (alphabetically)
#   date
#   size
#   unsorted
#
#   You may optionally use the ``reverse-'' prefix to specify reverse sorting
#   order (example: set sort_browser=reverse-date).
#
#  sort_re
#
#   Type: boolean
#
#   Default: yes
#
#   This   variable   is   only   useful  when  sorting  by  threads  with
#   ``$strict_threads'' unset. In that case, it changes the heuristic Mutt-ng
#   uses to thread messages by subject. With $sort_re set, Mutt-ng will only
#   attach a message as the child of another message by subject if the subject
#   of  the  child message starts with a substring matching the setting of
#   ``$reply_regexp''. With $sort_re unset, Mutt-ng will attach the message
#   whether or not this is the case, as long as the non-``$reply_regexp'' parts
#   of both messages are identical.
#
#  spam_separator
#
#   Type: string
#
#   Default: ","
#
#   ``spam_separator'' controls what happens when multiple spam headers are
#   matched:  if unset, each successive header will overwrite any previous
#   matches value for the spam label. If set, each successive match will append
#   to the previous, using ``spam_separator'' as a separator.
#
#  spoolfile
#
#   Type: path
#
#   Default: ""
#
#   If your spool mailbox is in a non-default place where Mutt-ng cannot find
#   it,  you  can  specify  its  location with this variable. Mutt-ng will
#   automatically set this variable to the value of the environment variable
#   $MAIL if it is not set.
#
#  ssl_ca_certificates_file
#
#   Type: path
#
#   Default: ""
#
#   This variable specifies a file containing trusted CA certificates. Any
#   server certificate that is signed with one of these CA certificates are also
#   automatically accepted.
#
#   Example: set ssl_ca_certificates_file=/etc/ssl/certs/ca-certificates.crt
#
#  ssl_client_cert
#
#   Type: path
#
#   Default: ""
#
#   Availability: SSL
#
#   The file containing a client certificate and its associated private key.
#
#  ssl_force_tls
#
#   Type: boolean
#
#   Default: no
#
#   If this variable is set, mutt-ng will require that all connections to remote
#   servers be encrypted. Furthermore it will attempt to negotiate TLS even if
#   the server does not advertise the capability, since it would otherwise have
#   to abort the connection anyway. This option supersedes ``$ssl_starttls''.
#
#  ssl_min_dh_prime_bits
#
#   Type: number
#
#   Default: 0
#
#   Availability: GNUTLS
#
#   This variable specifies the minimum acceptable prime size (in bits) for use
#   in any Diffie-Hellman key exchange. A value of 0 will use the default from
#   the GNUTLS library.
#
#  ssl_starttls
#
#   Type: quadoption
#
#   Default: yes
#
#   Availability: SSL or GNUTLS
#
#   If  set (the default), Mutt-ng will attempt to use STARTTLS on servers
#   advertising the capability. When unset, Mutt-ng will not attempt to use
#   STARTTLS regardless of the server's capabilities.
#
#  ssl_use_sslv2
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: SSL
#
#   This  variables  specifies  whether to attempt to use SSLv2 in the SSL
#   authentication process.
#
#  ssl_use_sslv3
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: SSL or GNUTLS
#
#   This  variables  specifies  whether to attempt to use SSLv3 in the SSL
#   authentication process.
#
#  ssl_use_tlsv1
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: SSL or GNUTLS
#
#   This  variables  specifies  whether to attempt to use TLSv1 in the SSL
#   authentication process.
#
#  ssl_usesystemcerts
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: SSL
#
#   If  set  to  yes,  Mutt-ng will use CA certificates in the system-wide
#   certificate store when checking if server certificate is signed by a trusted
#   CA.
#
#  status_chars
#
#   Type: string
#
#   Default: "-*%A"
#
#   Controls the characters used by the ``%r'' indicator in ``$status_format''.
#   The first character is used when the mailbox is unchanged. The second is
#   used when the mailbox has been changed, and it needs to be resynchronized.
#   The third is used if the mailbox is in read-only mode, or if the mailbox
#   will not be written when exiting that mailbox (You can toggle whether to
#   write changes to a mailbox with the toggle-write operation, bound by default
#   to ``%''). The fourth is used to indicate that the current folder has been
#   opened in attach-message mode (Certain operations like composing a new mail,
#   replying, forwarding, etc. are not permitted in this mode).
#
#  status_format
#
#   Type: string
#
#   Default: "-%r-Mutt-ng: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d?
#   Del:%d?%?F?    Flag:%F?%?t?   Tag:%t?%?p?   Post:%p?%?b?   Inc:%b?%?l?
#   %l?]---(%s/%S)-%>-(%P)---"
#
#   Controls the format of the status line displayed in the index menu. This
#   string  is  similar  to  ``$index_format'',  but  has  its  own set of
#   printf(3)-like sequences:
#
#   %b
#          number of mailboxes with new mail *
#
#   %B
#          the short pathname of the current mailbox
#
#   %d
#          number of deleted messages *
#
#   %f
#          the full pathname of the current mailbox
#
#   %F
#          number of flagged messages *
#
#   %h
#          local hostname
#
#   %l
#          size (in bytes) of the current mailbox *
#
#   %L
#          size (in bytes) of the messages shown (i.e., which match the current
#          limit) *
#
#   %m
#          the number of messages in the mailbox *
#
#   %M
#          the number of messages shown (i.e., which match the current limit) *
#
#   %n
#          number of new messages in the mailbox *
#
#   %o
#          number of old unread messages *
#
#   %p
#          number of postponed messages *
#
#   %P
#          percentage of the way through the index
#
#   %r
#          modified/read-only/won't-write/attach-messageindicator,accordingto
#          $status_chars
#
#   %s
#          current sorting mode ($sort)
#
#   %S
#          current aux sorting method ($sort_aux)
#
#   %t
#          number of tagged messages *
#
#   %u
#          number of unread messages *
#
#   %v
#          Mutt-ng version string
#
#   %V
#          currently active limit pattern, if any *
#
#   %>X
#          right justify the rest of the string and pad with "X"
#
#   %|X
#          pad to the end of the line with "X"
#
#   * = can be optionally printed if nonzero
#
#   Some of the above sequences can be used to optionally print a string if
#   their value is nonzero. For example, you may only want to see the number of
#   flagged messages if such messages exist, since zero is not particularly
#   meaningful.  To  optionally print a string based upon one of the above
#   sequences, the following construct is used
#
#   %?<sequence_char>?<optional_string>?
#
#   where sequence_char is a character from the table above, and optional_string
#   is  the  string  you  would  like printed if sequence_char is nonzero.
#   optional_string may contain other sequences as well as normal text, but you
#   may not nest optional strings.
#
#   Here is an example illustrating how to optionally print the number of new
#   messages in a mailbox:
#
#   %?n?%n new messages.?
#
#   Additionally you can switch between two strings, the first one, if a value
#   is zero, the second one, if the value is nonzero, by using the following
#   construct:
#
#   %?<sequence_char>?<if_string>&<else_string>?
#
#   You can additionally force the result of any printf(3)-like sequence to be
#   lowercase by prefixing the sequence character with an underscore (_) sign.
#   For example, if you want to display the local hostname in lowercase, you
#   would use:
#
#   %_h
#
#   If you prefix the sequence character with a colon (:) character, Mutt-ng
#   will replace any dots in the expansion by underscores. This might be helpful
#   with IMAP folders that don't like dots in folder names.
#
#  status_on_top
#
#   Type: boolean
#
#   Default: no
#
#   Setting this variable causes the ``status bar'' to be displayed on the first
#   line of the screen rather than near the bottom.
#
#  strict_mailto
#
#   Type: boolean
#
#   Default: yes
#
#   With mailto: style links, a body as well as arbitrary header information may
#   be embedded. This may lead to (user) headers being overwriten without note
#   if ``$edit_headers'' is unset.
#
#   If  this  variable is set, mutt-ng is strict and allows anything to be
#   changed.  If  it's  unset,  all  headers  given  will be prefixed with
#   ``X-Mailto-'' and the message including headers will be shown in the editor
#   regardless of what ``$edit_headers'' is set to.
#
#  strict_mime
#
#   Type: boolean
#
#   Default: yes
#
#   When  unset, non MIME-compliant messages that doesn't have any charset
#   indication in the ``Content-Type:'' header field can be displayed (non
#   MIME-compliant messages are often generated by old mailers or buggy mailers
#   like MS Outlook Express). See also $assumed_charset.
#
#   This option also replaces linear-white-space between encoded-word and *text
#   to a single space to prevent the display of MIME-encoded ``Subject:'' header
#   field from being devided into multiple lines.
#
#  strict_threads
#
#   Type: boolean
#
#   Default: no
#
#   If  set,  threading  will  only  make  use of the ``In-Reply-To:'' and
#   ``References:'' header fields when you ``$sort'' by message threads. By
#   default, messages with the same subject are grouped together in ``pseudo
#   threads.'' This may not always be desirable, such as in a personal mailbox
#   where you might have several unrelated messages with the subject ``hi''
#   which will get grouped together. See also ``$sort_re'' for a less drastic
#   way of controlling this behaviour.
#
#  strip_was
#
#   Type: boolean
#
#   Default: no
#
#   When set, mutt-ng will remove the trailing part of the ``Subject:'' line
#   which matches $strip_was_regex when replying. This is useful to properly
#   react on subject changes and reduce ``subject noise.'' (esp. in Usenet)
#
#  strip_was_regex
#
#   Type: regular expression
#
#   Default: "\([Ww][Aa][RrSs]: .*\)[ ]*$"
#
#   When non-empty and $strip_was is set, mutt-ng will remove this trailing part
#   of the ``Subject'' line when replying if it won't be empty afterwards.
#
#  stuff_quoted
#
#   Type: boolean
#
#   Default: no
#
#   If set, attachments with flowed format will have their quoting ``stuffed'',
#   i.e. a space will be inserted between the quote characters and the actual
#   text.
#
#  suspend
#
#   Type: boolean
#
#   Default: yes
#
#   When unset, Mutt-ng won't stop when the user presses the terminal's susp
#   key, usually CTRL+Z. This is useful if you run Mutt-ng inside an xterm using
#   a command like ``xterm -e muttng.''
#
#  text_flowed
#
#   Type: boolean
#
#   Default: no
#
#   When set, Mutt-ng will generate text/plain; format=flowed attachments. This
#   format is easier to handle for some mailing software, and generally just
#   looks like ordinary text. To actually make use of this format's features,
#   you'll need support in your editor.
#
#   Note that $indent_string is ignored when this option is set.
#
#  thorough_search
#
#   Type: boolean
#
#   Default: no
#
#   Affects the ˜b and ˜h search operations described in section ``patterns''
#   above. If set, the headers and attachments of messages to be searched are
#   decoded before searching. If unset, messages are searched as they appear in
#   the folder.
#
#  thread_received
#
#   Type: boolean
#
#   Default: no
#
#   When set, Mutt-ng uses the date received rather than the date sent to thread
#   messages by subject.
#
#  tilde
#
#   Type: boolean
#
#   Default: no
#
#   When set, the internal-pager will pad blank lines to the bottom of the
#   screen with a tilde (˜).
#
#  timeout
#
#   Type: number
#
#   Default: 600
#
#   This variable controls the number of seconds Mutt-ng will wait for a key to
#   be pressed in the main menu before timing out and checking for new mail. A
#   value of zero or less will cause Mutt-ng to never time out.
#
#  tmpdir
#
#   Type: path
#
#   Default: ""
#
#   This variable allows you to specify where Mutt-ng will place its temporary
#   files needed for displaying and composing messages. If this variable is not
#   set, the environment variable $TMPDIR is used. If $TMPDIR is not set then
#   "/tmp" is used.
#
#  to_chars
#
#   Type: string
#
#   Default: " +TCFL"
#
#   Controls the character used to indicate mail addressed to you. The first
#   character is the one used when the mail is NOT addressed to your address
#   (default: space). The second is used when you are the only recipient of the
#   message (default: +). The third is when your address appears in the ``To:''
#   header field, but you are not the only recipient of the message (default:
#   T). The fourth character is used when your address is specified in the
#   ``Cc:''  header  field,  but you are not the only recipient. The fifth
#   character is used to indicate mail that was sent by you. The sixth character
#   is used to indicate when a mail was sent to a mailing-list you're subscribe
#   to (default: L).
#
#  trash
#
#   Type: path
#
#   Default: ""
#
#   If set, this variable specifies the path of the trash folder where the mails
#   marked for deletion will be moved, instead of being irremediably purged.
#
#   Note: When you delete a message in the trash folder, it is really deleted,
#   so that there is no way to recover mail.
#
#  tunnel
#
#   Type: string
#
#   Default: ""
#
#   Setting this variable will cause Mutt-ng to open a pipe to a command instead
#   of a raw socket. You may be able to use this to set up preauthenticated
#   connections to your IMAP/POP3 server. Example:
#
#   tunnel="ssh -q mailhost.net /usr/local/libexec/imapd"
#
#   Note: For this example to work you must be able to log in to the remote
#   machine without having to enter a password.
#
#  umask
#
#   Type: number
#
#   Default: 0077
#
#   This sets the umask that will be used by Mutt-ng when creating all kinds of
#   files. If unset, the default value is 077.
#
#  uncollapse_jump
#
#   Type: boolean
#
#   Default: no
#
#   When set, Mutt-ng will jump to the next unread message, if any, when the
#   current thread is uncollapsed.
#
#  use_8bitmime
#
#   Type: boolean
#
#   Default: no
#
#   Warning: do not set this variable unless you are using a version of sendmail
#   which supports the -B8BITMIME flag (such as sendmail 8.8.x) or in connection
#   with the SMTP support via libESMTP. Otherwise you may not be able to send
#   mail.
#
#   When set, Mutt-ng will either invoke ``$sendmail'' with the -B8BITMIME flag
#   when sending 8-bit messages to enable ESMTP negotiation or tell libESMTP to
#   do so.
#
#  use_domain
#
#   Type: boolean
#
#   Default: yes
#
#   When set, Mutt-ng will qualify all local addresses (ones without the @host
#   portion) with the value of ``$hostname''. If unset, no addresses will be
#   qualified.
#
#  use_from
#
#   Type: boolean
#
#   Default: yes
#
#   When set, Mutt-ng will generate the ``From:'' header field when sending
#   messages. If unset, no ``From:'' header field will be generated unless the
#   user explicitly sets one using the ``my_hdr'' command.
#
#  use_idn
#
#   Type: boolean
#
#   Default: yes
#
#   Availability: IDN
#
#   When set, Mutt-ng will show you international domain names decoded.
#
#   Note: You can use IDNs for addresses even if this is unset. This variable
#   only affects decoding.
#
#  use_ipv6
#
#   Type: boolean
#
#   Default: yes
#
#   When set, Mutt-ng will look for IPv6 addresses of hosts it tries to contact.
#   If this option is unset, Mutt-ng will restrict itself to IPv4 addresses.
#   Normally, the default should work.
#
#  visual
#
#   Type: path
#
#   Default: ""
#
#   Specifies the visual editor to invoke when the ˜v command is given in the
#   builtin editor.
#
#  wait_key
#
#   Type: boolean
#
#   Default: yes
#
#   Controls whether Mutt-ng will ask you to press a key after shell- escape,
#   pipe-message, pipe-entry, print-message, and print-entry commands.
#
#   It is also used when viewing attachments with ``auto_view'', provided that
#   the corresponding mailcap entry has a needsterminal flag, and the external
#   program is interactive.
#
#   When set, Mutt-ng will always ask for a key. When unset, Mutt-ng will wait
#   for a key only if the external command returned a non-zero status.
#
#  weed
#
#   Type: boolean
#
#   Default: yes
#
#   When set, Mutt-ng will weed headers when displaying, forwarding, printing,
#   or replying to messages.
#
#  wrap_search
#
#   Type: boolean
#
#   Default: yes
#
#   Controls whether searches wrap around the end of the mailbox.
#
#   When set, searches will wrap around the first (or last) message. When unset,
#   searches will not wrap.
#
#  wrapmargin
#
#   Type: number
#
#   Default: 0
#
#   Controls the size of the margin remaining at the right side of the terminal
#   when Mutt-ng's pager does smart wrapping.
#
#  write_bcc
#
#   Type: boolean
#
#   Default: yes
#
#   Controls whether Mutt-ng writes out the Bcc header when preparing messages
#   to be sent. Exim users may wish to unset this.
#
#  write_inc
#
#   Type: number
#
#   Default: 10
#
#   When writing a mailbox, a message will be printed every write_inc messages
#   to indicate progress. If set to 0, only a single message will be displayed
#   before writing a mailbox.
#
#   Also see the ``$read_inc'' variable.
#
#  xterm_icon
#
#   Type: string
#
#   Default: "M%?n?AIL&ail?"
#
#   Controls the format of the X11 icon title, as long as $xterm_set_titles is
#   set.  This  string  is  identical  in  formatting  to  the one used by
#   ``$status_format''.
#
#  xterm_leave
#
#   Type: string
#
#   Default: ""
#
#   If $xterm_set_titles is set, this string will be used to set the title when
#   leaving mutt-ng. For terminal-based programs, there's no easy and portable
#   way to read the current title so mutt-ng cannot read it upon startup and
#   restore it when exiting.
#
#   Based on the xterm FAQ, the following might work:
#
#   set  xterm_leave = "`test x$DISPLAY != x && xprop -id $WINDOWID | grep
#   WM_NAME | cut -d '"' -f 2`"
#
#  xterm_set_titles
#
#   Type: boolean
#
#   Default: no
#
#   Controls whether Mutt-ng sets the xterm title bar and icon name (as long as
#   you're in an appropriate terminal). The default must be unset to force in
#   the validity checking.
#
#  xterm_title
#
#   Type: string
#
#   Default: "Mutt-ng with %?m?%m messages&no messages?%?n? [%n New]?"
#
#   Controls  the  format  of  the  title  bar  of the xterm provided that
#   $xterm_set_titles has been set. This string is identical in formatting to
#   the one used by ``$status_format''.
#
#  END
