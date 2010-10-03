package Mutt::Config::Version::v1_4_2;

$VARIABLES = {
          'save_empty' => {
category => 'folders',
                            'text' => '

<P>When unset, mailboxes which contain no saved messages will be removed
when closed (the exception is ``
<A HREF="#spoolfile">$spoolfile</A>\'\' which is never removed).
If set, mailboxes are never removed.</P>
<P><B>Note:</B> This only applies to mbox and MMDF folders, Mutt does not
delete MH and Maildir directories.</P>


',
                            'default' => 'yes',
                            'type' => 'boolean'
                          },
          'mbox_type' => {
category => 'folders',
                           'text' => '

<P>The default mailbox type used when creating new folders. May be any of
mbox, MMDF, MH and Maildir.</P>


',
                           'default' => 'mbox',
                           'type' => 'folder magic'
                         },
          'print' => {
                       'text' => '

<P>Controls whether or not Mutt asks for confirmation before printing.
This is useful for people (like me) who accidentally hit ``p\'\' often.</P>


',
                       'default' => 'ask-no',
                       'type' => 'quadoption'
                     },
          'ssl_use_sslv2' => {
category => 'ssl',
                               'text' => '

<P>This variables specifies whether to attempt to use SSLv2 in the
SSL authentication process.</P>


',
                               'default' => 'yes',
                               'type' => 'boolean'
                             },
          'use_domain' => {
category => 'addressing',
                            'text' => '

<P>When set, Mutt will qualify all local addresses (ones without the
@host portion) with the value of ``
<A HREF="#hostname">$hostname</A>\'\'.  If <EM>unset</EM>, no
addresses will be qualified.</P>


',
                            'default' => 'yes',
                            'type' => 'boolean'
                          },
          'thread_received' => {
category => 'reading',
                                 'text' => '

<P>When set, mutt uses the date received rather than the date sent
to thread messages by subject.</P>


',
                                 'default' => 'no',
                                 'type' => 'boolean'
                               },
          'abort_nosubject' => {
category => 'composing',
                                 'text' => '

<P>If set to <EM>yes</EM>, when composing messages and no subject is given
at the subject prompt, composition will be aborted.  If set to
<EM>no</EM>, composing messages with no subject given at the subject
prompt will never be aborted.</P>


',
                                 'default' => 'ask-yes',
                                 'type' => 'quadoption'
                               },
          'pgp_strict_enc' => {
category => 'pgp',
                                'text' => '

<P>If set, Mutt will automatically encode PGP/MIME signed messages as
<EM>quoted-printable</EM>.  Please note that unsetting this variable may
lead to problems with non-verifyable PGP signatures, so only change
this if you know what you are doing.</P>


',
                                'default' => 'yes',
                                'type' => 'boolean'
                              },
          'fcc_clear' => {
category => 'composing',
                           'text' => '

<P>When this variable is <EM>set</EM>, FCCs will be stored unencrypted and
unsigned, even when the actual message is encrypted and/or signed.</P>


',
                           'default' => 'no',
                           'type' => 'boolean'
                         },
          'forward_format' => {
category => 'composing',
                                'text' => '

<P>This variable controls the default subject when forwarding a message.
It uses the same format sequences as the ``
<A HREF="#index_format">$index_format</A>\'\' variable.</P>


',
                                'default' => '&quot;[%a: %s]&quot;',
                                'type' => 'string'
                              },
          'history' => {
                         'text' => '

<P>This variable controls the size (in number of strings remembered) of
the string history buffer. The buffer is cleared each time the
variable is set.</P>


',
                         'default' => '10',
                         'type' => 'number'
                       },
          'force_name' => {
category => 'composing',
                            'text' => '

<P>This variable is similar to ``
<A HREF="#save_name">$save_name</A>\'\', except that Mutt will
store a copy of your outgoing message by the username of the address
you are sending to even if that mailbox does not exist.</P>
<P>Also see the ``
<A HREF="#record">$record</A>\'\' variable.</P>


',
                            'default' => 'no',
                            'type' => 'boolean'
                          },
          'attribution' => {
category => 'composing',
                             'text' => '

<P>This is the string that will precede a message which has been included
in a reply.  For a full listing of defined printf()-like sequences see
the section on ``
<A HREF="#index_format">$index_format</A>\'\'.</P>


',
                             'default' => '&quot;On %d, %n wrote:&quot;',
                             'type' => 'string'
                           },
          'charset' => {
                         'text' => '

<P>Character set your terminal uses to display and enter textual data.</P>


',
                         'default' => '&quot;&quot;',
                         'type' => 'string'
                       },
          'sig_on_top' => {
category => 'composing',
                            'text' => '

<P>If set, the signature will be included before any quoted or forwarded
text.  It is <B>strongly</B> recommended that you do not set this variable
unless you really know what you are doing, and are prepared to take
some heat from netiquette guardians.</P>


',
                            'default' => 'no',
                            'type' => 'boolean'
                          },
          'pop_reconnect' => {
                               'category' => 'pop3',
                               'text' => '

<P>Controls whether or not Mutt will try to reconnect to POP server when
connection lost.</P>


',
                               'default' => 'ask-yes',
                               'type' => 'quadoption'
                             },
          'ssl_starttls' => {
category => 'ssl',
                              'text' => '

<P>If set (the default), mutt will attempt to use STARTTLS on servers
advertising the capability. When unset, mutt will not attempt to
use STARTTLS regardless of the server\'s capabilities.</P>


',
                              'default' => 'yes',
                              'type' => 'quadoption'
                            },
          'use_from' => {
category => 'sending',
                          'text' => '

<P>When <EM>set</EM>, Mutt will generate the `From:\' header field when
sending messages.  If <EM>unset</EM>, no `From:\' header field will be
generated unless the user explicitly sets one using the ``
<A HREF="manual-3.html#my_hdr">my_hdr</A>\'\'
command.</P>


',
                          'default' => 'yes',
                          'type' => 'boolean'
                        },
          'print_decode' => {
                              'text' => '

<P>Used in connection with the print-message command.  If this
option is set, the message is decoded before it is passed to the
external command specified by 
<A HREF="#print_command">$print_command</A>.  If this option
is unset, no processing will be applied to the message when
printing it.  The latter setting may be useful if you are using
some advanced printer filter which is able to properly format
e-mail messages for printing.</P>


',
                              'default' => 'yes',
                              'type' => 'boolean'
                            },
          'indent_string' => {
category => 'composing',
                               'text' => '

<P>Specifies the string to prepend to each line of text quoted in a
message to which you are replying.  You are strongly encouraged not to
change this value, as it tends to agitate the more fanatical netizens.</P>


',
                               'default' => '&quot;&gt; &quot;',
                               'type' => 'string'
                             },
          'envelope_from' => {
category => 'composing',
                               'text' => '

<P>When <EM>set</EM>, mutt will try to derive the message\'s <EM>envelope</EM>
sender from the &quot;From:&quot; header.  Note that this information is passed 
to sendmail command using the &quot;-f&quot; command line switch, so don\'t set this
option if you are using that switch in 
<A HREF="#sendmail">$sendmail</A> yourself,
or if the sendmail on your machine doesn\'t support that command
line switch.</P>


',
                               'default' => 'no',
                               'type' => 'boolean'
                             },
          'pgp_autoencrypt' => {
category => 'pgp',
                                 'text' => '

<P>Setting this variable will cause Mutt to always attempt to PGP/MIME
encrypt outgoing messages.  This is probably only useful in connection
to the <EM>send-hook</EM> command.  It can be overridden by use of the
<EM>pgp-menu</EM>, when encryption is not required or signing is
requested as well.</P>


',
                                 'default' => 'no',
                                 'type' => 'boolean'
                               },
          'pgp_sign_command' => {
category => 'pgp',
                                  'text' => '

<P>This command is used to create the detached PGP signature for a 
multipart/signed PGP/MIME body part.</P>


',
                                  'default' => '&quot;&quot;',
                                  'type' => 'string'
                                },
          'pgp_export_command' => {
category => 'pgp',
                                    'text' => '

<P>This command is used to export a public key from the user\'s
key ring.</P>


',
                                    'default' => '&quot;&quot;',
                                    'type' => 'string'
                                  },
          'keep_flagged' => {
category => 'reading',
                              'text' => '

<P>If set, read messages marked as flagged will not be moved
from your spool mailbox to your ``
<A HREF="#mbox">$mbox</A>\'\' mailbox, or as a result of
a ``
<A HREF="manual-3.html#mbox-hook">mbox-hook</A>\'\' command.</P>


',
                              'default' => 'no',
                              'type' => 'boolean'
                            },
          'delete' => {
category => 'reading',
                        'text' => '

<P>Controls whether or not messages are really deleted when closing or
synchronizing a mailbox.  If set to <EM>yes</EM>, messages marked for
deleting will automatically be purged without prompting.  If set to
<EM>no</EM>, messages marked for deletion will be kept in the mailbox.</P>


',
                        'default' => 'ask-yes',
                        'type' => 'quadoption'
                      },
          'mime_forward_decode' => {
category => 'sending',
                                     'text' => '

<P>Controls the decoding of complex MIME messages into text/plain when
forwarding a message while ``
<A HREF="#mime_forward">$mime_forward</A>\'\' is <EM>set</EM>. Otherwise
``
<A HREF="#forward_decode">$forward_decode</A>\'\' is used instead.</P>


',
                                     'default' => 'no',
                                     'type' => 'boolean'
                                   },
          'print_split' => {
                             'text' => '

<P>Used in connection with the print-message command.  If this option
is set, the command sepcified by 
<A HREF="#print_command">$print_command</A> is executed once for
each message which is to be printed.  If this option is unset, 
the command specified by 
<A HREF="#print_command">$print_command</A> is executed only once, and
all the messages are concatenated, with a form feed as the message
separator.</P>
<P>Those who use the <B>enscript</B>(1) program\'s mail-printing mode will
most likely want to set this option.</P>


',
                             'default' => 'no',
                             'type' => 'boolean'
                           },
          'score_threshold_read' => {
                                      'text' => '

<P>Messages which have been assigned a score equal to or lower than the value
of this variable are automatically marked as read by mutt.  Since
mutt scores are always greater than or equal to zero, the default setting
of this variable will never mark a message read.</P>


',
                                      'default' => '-1',
                                      'type' => 'number'
                                    },
          'tmpdir' => {
                        'text' => '

<P>This variable allows you to specify where Mutt will place its
temporary files needed for displaying and composing messages.</P>


',
                        'default' => '&quot;&quot;',
                        'type' => 'path'
                      },
          'forward_decrypt' => {
category => 'composing',
                                 'text' => '

<P>Controls the handling of encrypted messages when forwarding a message.
When set, the outer layer of encryption is stripped off.  This
variable is only used if ``
<A HREF="#mime_forward">$mime_forward</A>\'\' is <EM>set</EM> and
``
<A HREF="#mime_forward_decode">$mime_forward_decode</A>\'\' is <EM>unset</EM>.</P>


',
                                 'default' => 'yes',
                                 'type' => 'boolean'
                               },
          'mailcap_path' => {
                              'text' => '

<P>This variable specifies which files to consult when attempting to
display MIME bodies not directly supported by Mutt.</P>


',
                              'default' => '&quot;&quot;',
                              'type' => 'string'
                            },
          'status_format' => {
                               'text' => '

<P>Controls the format of the status line displayed in the <EM>index</EM>
menu.  This string is similar to ``
<A HREF="#index_format">$index_format</A>\'\', but has its own
set of printf()-like sequences:</P>

<P>
<DL>
<DT><B>%b  </B><DD><P>number of mailboxes with new mail *</P>
<DT><B>%d  </B><DD><P>number of deleted messages *</P>
<DT><B>%h  </B><DD><P>local hostname</P>
<DT><B>%f  </B><DD><P>the full pathname of the current mailbox</P>
<DT><B>%F  </B><DD><P>number of flagged messages *</P>
<DT><B>%l  </B><DD><P>size (in bytes) of the current mailbox *</P>
<DT><B>%L  </B><DD><P>size (in bytes) of the messages shown 
(i.e., which match the current limit) *</P>
<DT><B>%m  </B><DD><P>the number of messages in the mailbox *</P>
<DT><B>%M  </B><DD><P>the number of messages shown (i.e., which match the current limit) *</P>
<DT><B>%n  </B><DD><P>number of new messages in the mailbox *</P>
<DT><B>%o  </B><DD><P>number of old unread messages</P>
<DT><B>%p  </B><DD><P>number of postponed messages *</P>
<DT><B>%P  </B><DD><P>percentage of the way through the index</P>
<DT><B>%r  </B><DD><P>modified/read-only/won\'t-write/attach-message indicator,
according to 
<A HREF="#status_chars">$status_chars</A></P>
<DT><B>%s  </B><DD><P>current sorting mode (
<A HREF="#sort">$sort</A>)</P>
<DT><B>%S  </B><DD><P>current aux sorting method (
<A HREF="#sort_aux">$sort_aux</A>)</P>
<DT><B>%t  </B><DD><P>number of tagged messages *</P>
<DT><B>%u  </B><DD><P>number of unread messages *</P>
<DT><B>%v  </B><DD><P>Mutt version string</P>
<DT><B>%V  </B><DD><P>currently active limit pattern, if any *</P>
<DT><B>%&gt;X </B><DD><P>right justify the rest of the string and pad with &quot;X&quot;</P>
<DT><B>%|X </B><DD><P>pad to the end of the line with &quot;X&quot;</P>
</DL>
</P>

<P>* = can be optionally printed if nonzero</P>
<P>Some of the above sequences can be used to optionally print a string
if their value is nonzero.  For example, you may only want to see the
number of flagged messages if such messages exist, since zero is not
particularly meaningful.  To optionally print a string based upon one
of the above sequences, the following construct is used</P>
<P>%?&lt;sequence_char&gt;?&lt;optional_string&gt;?</P>
<P>where <EM>sequence_char</EM> is a character from the table above, and
<EM>optional_string</EM> is the string you would like printed if
<EM>status_char</EM> is nonzero.  <EM>optional_string</EM> <B>may</B> contain
other sequence as well as normal text, but you may <B>not</B> nest
optional strings.</P>
<P>Here is an example illustrating how to optionally print the number of
new messages in a mailbox:
%?n?%n new messages.?</P>
<P>Additionally you can switch between two strings, the first one, if a
value is zero, the second one, if the value is nonzero, by using the
following construct:
%?&lt;sequence_char&gt;?&lt;if_string&gt;&amp;&lt;else_string&gt;?</P>
<P>You can additionally force the result of any printf-like sequence to
be lowercase by prefixing the sequence character with an underscore
(_) sign.  For example, if you want to display the local hostname in
lowercase, you would use:
%_h</P>


',
                               'default' => '&quot;-%r-Mutt: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%&gt;-(%P)---&quot;',
                               'type' => 'string'
                             },
          'read_inc' => {
                          'text' => '

<P>If set to a value greater than 0, Mutt will display which message it
is currently on when reading a mailbox.  The message is printed after
<EM>read_inc</EM> messages have been read (e.g., if set to 25, Mutt will
print a message when it reads message 25, and then again when it gets
to message 50).  This variable is meant to indicate progress when
reading large mailboxes which may take some time.
When set to 0, only a single message will appear before the reading
the mailbox.</P>
<P>Also see the ``
<A HREF="#write_inc">$write_inc</A>\'\' variable.</P>


',
                          'default' => '10',
                          'type' => 'number'
                        },
          'pgp_decode_command' => {
category => "pgp",
                                    'text' => '

<P>This format strings specifies a command which is used to decode 
application/pgp attachments.</P>
<P>The PGP command formats have their own set of printf-like sequences:</P>

<P>
<DL>
<DT><B>%p </B><DD><P>Expands to PGPPASSFD=0 when a pass phrase is needed, to an empty
string otherwise. Note: This may be used with a %? construct.</P>
<DT><B>%f </B><DD><P>Expands to the name of a file containing a message.</P>
<DT><B>%s </B><DD><P>Expands to the name of a file containing the signature part
of a multipart/signed attachment when verifying it.</P>
<DT><B>%a </B><DD><P>The value of 
<A HREF="#pgp_sign_as">$pgp_sign_as</A>.</P>
<DT><B>%r </B><DD><P>One or more key IDs.</P>
</DL>
</P>

<P>For examples on how to configure these formats for the various versions
of PGP which are floating around, see the pgp*.rc and gpg.rc files in
the samples/ subdirectory which has been installed on your system
alongside the documentation.</P>


',
                                    'default' => '&quot;&quot;',
                                    'type' => 'string'
                                  },
          'edit_headers' => {
                              'text' => '

<P>This option allows you to edit the header of your outgoing messages
along with the body of your message.</P>


',
                              'default' => 'no',
                              'type' => 'boolean'
                            },
          'dsn_notify' => {
category => 'sending',
                            'text' => '

<P><B>Note:</B> you should not enable this unless you are using Sendmail
8.8.x or greater.</P>
<P>This variable sets the request for when notification is returned.  The
string consists of a comma separated list (no spaces!) of one or more
of the following: <EM>never</EM>, to never request notification,
<EM>failure</EM>, to request notification on transmission failure,
<EM>delay</EM>, to be notified of message delays, <EM>success</EM>, to be
notified of successful transmission.</P>
<P>Example: set dsn_notify=&quot;failure,delay&quot;</P>


',
                            'default' => '&quot;&quot;',
                            'type' => 'string'
                          },
          'wrap_search' => {
                             'text' => '

<P>Controls whether searches wrap around the end of the mailbox.</P>
<P>When set, searches will wrap around the first (or last) message. When
unset, searches will not wrap.</P>


',
                             'default' => 'yes',
                             'type' => 'boolean'
                           },
          'mime_forward' => {
                              'text' => '

<P>When set, the message you are forwarding will be attached as a
separate MIME part instead of included in the main body of the
message.  This is useful for forwarding MIME messages so the receiver
can properly view the message as it was delivered to you. If you like
to switch between MIME and not MIME from mail to mail, set this
variable to ask-no or ask-yes.</P>
<P>Also see ``
<A HREF="#forward_decode">$forward_decode</A>\'\' and ``
<A HREF="#mime_forward_decode">$mime_forward_decode</A>\'\'.</P>


',
                              'default' => 'no',
                              'type' => 'quadoption'
                            },
          'write_inc' => {
                           'text' => '

<P>When writing a mailbox, a message will be printed every
<EM>write_inc</EM> messages to indicate progress.  If set to 0, only a
single message will be displayed before writing a mailbox.</P>
<P>Also see the ``
<A HREF="#read_inc">$read_inc</A>\'\' variable.</P>


',
                           'default' => '10',
                           'type' => 'number'
                         },
          'honor_followup_to' => {
category => "composing",
                                   'text' => '

<P>This variable controls whether or not a Mail-Followup-To header is
honored when group-replying to a message.</P>


',
                                   'default' => 'yes',
                                   'type' => 'quadoption'
                                 },
          'thorough_search' => {
                                 'text' => '

<P>Affects the <EM>~b</EM> and <EM>~h</EM> search operations described in
section ``
<A HREF="manual-4.html#patterns">patterns</A>\'\' above.  If set, the headers and attachments of
messages to be searched are decoded before searching.  If unset,
messages are searched as they appear in the folder.</P>


',
                                 'default' => 'no',
                                 'type' => 'boolean'
                               },
          'pgp_replysign' => {
category => "pgp",
                               'text' => '

<P>If set, automatically PGP sign replies to messages which are signed.</P>
<P><B>Note:</B> this does not work on messages that are encrypted
<B>and</B> signed!</P>


',
                               'default' => 'no',
                               'type' => 'boolean'
                             },
          'query_command' => {
                               'text' => '

<P>This specifies the command that mutt will use to make external address
queries.  The string should contain a %s, which will be substituted
with the query string the user types.  See ``
<A HREF="manual-4.html#query">query</A>\'\' for more
information.</P>


',
                               'default' => '&quot;&quot;',
                               'type' => 'path'
                             },
          'mask' => {
                      'text' => '

<P>A regular expression used in the file browser, optionally preceded by
the <EM>not</EM> operator ``!\'\'.  Only files whose names match this mask
will be shown. The match is always case-sensitive.</P>


',
                      'default' => '&quot;!^\\.[^.]&quot;',
                      'type' => 'regular expression'
                    },
          'mail_check' => {
                            'text' => '

<P>This variable configures how often (in seconds) mutt should look for
new mail.</P>


',
                            'default' => '5',
                            'type' => 'number'
                          },
          'dotlock_program' => {
                                 'text' => '

<P>Contains the path of the mutt_dotlock (8) binary to be used by
mutt.</P>


',
                                 'default' => '&quot;/usr/local/bin/mutt_dotlock&quot;',
                                 'type' => 'path'
                               },
          'allow_8bit' => {
category => 'sending',
                            'text' => '

<P>Controls whether 8-bit data is converted to 7-bit using either Quoted-
Printable or Base64 encoding when sending mail.</P>


',
                            'default' => 'yes',
                            'type' => 'boolean'
                          },
          'pgp_list_secring_command' => {
category => "pgp",
                                          'text' => '

<P>This command is used to list the secret key ring\'s contents.  The
output format must be analogous to the one used by 
gpg --list-keys --with-colons.</P>
<P>This format is also generated by the pgpring utility which comes 
with mutt.</P>


',
                                          'default' => '&quot;&quot;',
                                          'type' => 'string'
                                        },
          'hdrs' => {
                      'text' => '

<P>When unset, the header fields normally added by the ``
<A HREF="manual-3.html#my_hdr">my_hdr</A>\'\'
command are not created.  This variable <EM>must</EM> be unset before
composing a new message or replying in order to take effect.  If set,
the user defined header fields are added to every new message.</P>


',
                      'default' => 'yes',
                      'type' => 'boolean'
                    },
          'to_chars' => {
                          'text' => '

<P>Controls the character used to indicate mail addressed to you.  The
first character is the one used when the mail is NOT addressed to your
address (default: space).  The second is used when you are the only
recipient of the message (default: +).  The third is when your address
appears in the TO header field, but you are not the only recipient of
the message (default: T).  The fourth character is used when your
address is specified in the CC header field, but you are not the only
recipient.  The fifth character is used to indicate mail that was sent
by <EM>you</EM>.  The sixth character is used to indicate when a mail
was sent to a mailing-list you subscribe to (default: L).</P>


',
                          'default' => '&quot; +TCFL&quot;',
                          'type' => 'string'
                        },
          'pgp_autosign' => {
category => "pgp",
                              'text' => '

<P>Setting this variable will cause Mutt to always attempt to PGP/MIME
sign outgoing messages.  This can be overridden by use of the <EM>pgp-
menu</EM>, when signing is not required or encryption is requested as
well.</P>


',
                              'default' => 'no',
                              'type' => 'boolean'
                            },
          'mbox' => {
                      'text' => '

<P>This specifies the folder into which read mail in your ``
<A HREF="#spoolfile">$spoolfile</A>\'\'
folder will be appended.</P>


',
                      'default' => '&quot;~/mbox&quot;',
                      'type' => 'path'
                    },
          'imap_authenticators' => {
                                     'category' => 'imap',
                                     'text' => '

<P>This is a colon-delimited list of authentication methods mutt may
attempt to use to log in to an IMAP server, in the order mutt should
try them.  Authentication methods are either \'login\' or the right
side of an IMAP \'AUTH=xxx\' capability string, eg \'digest-md5\',
\'gssapi\' or \'cram-md5\'. This parameter is case-insensitive. If this
parameter is unset (the default) mutt will try all available methods,
in order from most-secure to least-secure.</P>
<P>Example: set imap_authenticators=&quot;gssapi:cram-md5:login&quot;</P>
<P><B>Note:</B> Mutt will only fall back to other authentication methods if
the previous methods are unavailable. If a method is available but
authentication fails, mutt will not connect to the IMAP server.</P>


',
                                     'default' => '&quot;&quot;',
                                     'type' => 'string'
                                   },
          'fcc_attach' => {
                            'text' => '

<P>This variable controls whether or not attachments on outgoing messages
are saved along with the main body of your message.</P>


',
                            'default' => 'yes',
                            'type' => 'boolean'
                          },
          'rfc2047_parameters' => {
                                    'text' => '

<P>When this variable is set, Mutt will decode RFC-2047-encoded MIME 
parameters. You want to set this variable when mutt suggests you
to save attachments to files named like this: 
=?iso-8859-1?Q?file=5F=E4=5F991116=2Ezip?=</P>
<P>When this variable is set interactively, the change doesn\'t have
the desired effect before you have changed folders.</P>
<P>Note that this use of RFC 2047\'s encoding is explicitly,
prohibited by the standard, but nevertheless encountered in the
wild.
Also note that setting this parameter will <EM>not</EM> have the effect 
that mutt <EM>generates</EM> this kind of encoding.  Instead, mutt will
unconditionally use the encoding specified in RFC 2231.</P>


',
                                    'default' => 'no',
                                    'type' => 'boolean'
                                  },
          'sort' => {
                      'text' => '

<P>Specifies how to sort messages in the <EM>index</EM> menu.  Valid values
are:</P>

<P>
<BLOCKQUOTE><CODE>
<PRE>
   date or date-sent
   date-received
   from
   mailbox-order (unsorted)
   score
   size
   subject
   threads
   to
</PRE>
</CODE></BLOCKQUOTE>
</P>
<P>You may optionally use the reverse- prefix to specify reverse sorting
order (example: set sort=reverse-date-sent).</P>


',
                      'default' => 'date',
                      'type' => 'sort order'
                    },
          'auto_tag' => {
                          'text' => '

<P>When set, functions in the <EM>index</EM> menu which affect a message
will be applied to all tagged messages (if there are any).  When
unset, you must first use the tag-prefix function (default: &quot;;&quot;) to
make the next function apply to all tagged messages.</P>


',
                          'default' => 'no',
                          'type' => 'boolean'
                        },
          'pgp_show_unusable' => {
category => "pgp",
                                   'text' => '

<P>If set, mutt will display non-usable keys on the PGP key selection
menu.  This includes keys which have been revoked, have expired, or
have been marked as ``disabled\'\' by the user.</P>


',
                                   'default' => 'yes',
                                   'type' => 'boolean'
                                 },
          'allow_ansi' => {
category => 'reading',
                            'text' => '

<P>Controls whether ANSI color codes in messages (and color tags in 
rich text messages) are to be interpreted.
Messages containing these codes are rare, but if this option is set,
their text will be colored accordingly. Note that this may override
your color choices, and even present a security problem, since a
message could include a line like &quot;[-- PGP output follows ...&quot; and
give it the same color as your attachment color.</P>


',
                            'default' => 'no',
                            'type' => 'boolean'
                          },
          'wait_key' => {
                          'text' => '

<P>Controls whether Mutt will ask you to press a key after <EM>shell-
escape</EM>, <EM>pipe-message</EM>, <EM>pipe-entry</EM>, <EM>print-message</EM>,
and <EM>print-entry</EM> commands.</P>
<P>It is also used when viewing attachments with ``
<A HREF="manual-5.html#auto_view">auto_view</A>\'\', provided
that the corresponding mailcap entry has a <EM>needsterminal</EM> flag,
and the external program is interactive.</P>
<P>When set, Mutt will always ask for a key. When unset, Mutt will wait
for a key only if the external command returned a non-zero status.</P>


',
                          'default' => 'yes',
                          'type' => 'boolean'
                        },
          'reverse_name' => {
                              'text' => '

<P>It may sometimes arrive that you receive mail to a certain machine,
move the messages to another machine, and reply to some the messages
from there.  If this variable is set, the default <EM>From:</EM> line of
the reply messages is built using the address where you received the
messages you are replying to.  If the variable is unset, the
<EM>From:</EM> line will use your address on the current machine.</P>


',
                              'default' => 'no',
                              'type' => 'boolean'
                            },
          'attach_sep' => {
                            'text' => '

<P>The separator to add between attachments when operating (saving,
printing, piping, etc) on a list of tagged attachments.</P>


',
                            'default' => '&quot;\\n&quot;',
                            'type' => 'string'
                          },
          'check_new' => {
                           'text' => '

<P><B>Note:</B> this option only affects <EM>maildir</EM> and <EM>MH</EM> style
mailboxes.</P>
<P>When <EM>set</EM>, Mutt will check for new mail delivered while the
mailbox is open.  Especially with MH mailboxes, this operation can
take quite some time since it involves scanning the directory and
checking each file to see if it has already been looked at.  If
<EM>check_new</EM> is <EM>unset</EM>, no check for new mail is performed
while the mailbox is open.</P>


',
                           'default' => 'yes',
                           'type' => 'boolean'
                         },
          'pager' => {
                       'text' => '

<P>This variable specifies which pager you would like to use to view
messages.  builtin means to use the builtin pager, otherwise this
variable should specify the pathname of the external pager you would
like to use.</P>
<P>Using an external pager may have some disadvantages: Additional
keystrokes are necessary because you can\'t call mutt functions
directly from the pager, and screen resizes cause lines longer than
the screen width to be badly formatted in the help menu.</P>


',
                       'default' => '&quot;builtin&quot;',
                       'type' => 'path'
                     },
          'pop_auth_try_all' => {
                               'category' => 'pop3',
                                  'text' => '

<P>If set, Mutt will try all available methods. When unset, Mutt will
only fall back to other authentication methods if the previous
methods are unavailable. If a method is available but authentication
fails, Mutt will not connect to the POP server.</P>


',
                                  'default' => 'yes',
                                  'type' => 'boolean'
                                },
          'meta_key' => {
                          'text' => '

<P>If set, forces Mutt to interpret keystrokes with the high bit (bit 8)
set as if the user had pressed the ESC key and whatever key remains
after having the high bit removed.  For example, if the key pressed
has an ASCII value of 0xf4, then this is treated as if the user had
pressed ESC then ``x\'\'.  This is because the result of removing the
high bit from ``0xf4\'\' is ``0x74\'\', which is the ASCII character
``x\'\'.</P>


',
                          'default' => 'no',
                          'type' => 'boolean'
                        },
          'hide_limited' => {
                              'text' => '

<P>When set, mutt will not show the presence of missing messages in the
thread tree.</P>


',
                              'default' => 'no',
                              'type' => 'boolean'
                            },
          'pgp_encrypt_sign_command' => {
category => "pgp",
                                          'text' => '

<P>This command is used to combinedly sign/encrypt a body part.</P>


',
                                          'default' => '&quot;&quot;',
                                          'type' => 'string'
                                        },
          'pgp_replyencrypt' => {
category => "pgp",
                                  'text' => '

<P>If set, automatically PGP encrypt replies to messages which are
encrypted.</P>


',
                                  'default' => 'yes',
                                  'type' => 'boolean'
                                },
          'ignore_list_reply_to' => {
                                      'text' => '

<P>Affects the behaviour of the <EM>reply</EM> function when replying to
messages from mailing lists.  When set, if the ``Reply-To:\'\' field is
set to the same value as the ``To:\'\' field, Mutt assumes that the
``Reply-To:\'\' field was set by the mailing list to automate responses
to the list, and will ignore this field.  To direct a response to the
mailing list when this option is set, use the <EM>list-reply</EM>
function; <EM>group-reply</EM> will reply to both the sender and the
list.</P>


',
                                      'default' => 'no',
                                      'type' => 'boolean'
                                    },
          'pipe_decode' => {
                             'text' => '

<P>Used in connection with the <EM>pipe-message</EM> command.  When unset,
Mutt will pipe the messages without any preprocessing. When set, Mutt
will weed headers and will attempt to PGP/MIME decode the messages
first.</P>


',
                             'default' => 'no',
                             'type' => 'boolean'
                           },
          'reverse_realname' => {
                                  'text' => '

<P>This variable fine-tunes the behaviour of the 
<A HREF="#reverse_name">reverse_name</A> feature.
When it is set, mutt will use the address from incoming messages as-is,
possibly including eventual real names.  When it is unset, mutt will
override any such realnames with the setting of the 
<A HREF="#realname">realname</A> variable.</P>


',
                                  'default' => 'yes',
                                  'type' => 'boolean'
                                },
          'copy' => {
                      'text' => '

<P>This variable controls whether or not copies of your outgoing messages
will be saved for later references.  Also see ``
<A HREF="#record">$record</A>\'\',
``
<A HREF="#save_name">$save_name</A>\'\', ``
<A HREF="#force_name">$force_name</A>\'\' and ``
<A HREF="manual-3.html#fcc-hook">fcc-hook</A>\'\'.</P>


',
                      'default' => 'yes',
                      'type' => 'quadoption'
                    },
          'menu_scroll' => {
                             'text' => '

<P>When <EM>set</EM>, menus will be scrolled up or down one line when you
attempt to move across a screen boundary.  If <EM>unset</EM>, the screen
is cleared and the next or previous page of the menu is displayed
(useful for slow links to avoid many redraws).</P>


',
                             'default' => 'no',
                             'type' => 'boolean'
                           },
          'record' => {
                        'text' => '

<P>This specifies the file into which your outgoing messages should be
appended.  (This is meant as the primary method for saving a copy of
your messages, but another way to do this is using the ``
<A HREF="manual-3.html#my_hdr">my_hdr</A>\'\'
command to create a <EM>Bcc:</EM> field with your email address in it.)</P>
<P>The value of <EM>
<A HREF="#record">$record</A></EM> is overridden by the ``
<A HREF="#force_name">$force_name</A>\'\' and
``
<A HREF="#save_name">$save_name</A>\'\' variables, and the ``
<A HREF="manual-3.html#fcc-hook">fcc-hook</A>\'\' command.</P>


',
                        'default' => '&quot;&quot;',
                        'type' => 'path'
                      },
          'ascii_chars' => {
category => 'reading',
                             'text' => '

<P>If set, Mutt will use plain ASCII characters when displaying thread
and attachment trees, instead of the default <EM>ACS</EM> characters.</P>


',
                             'default' => 'no',
                             'type' => 'boolean'
                           },
          'alias_file' => {
category => "addressing",
                            'text' => '

<P>The default file in which to save aliases created by the 
``
<A HREF="manual-2.html#create-alias">create-alias</A>\'\' function.</P>
<P><B>Note:</B> Mutt will not automatically source this file; you must
explicitly use the ``
<A HREF="manual-3.html#source">source</A>\'\' command for it to be executed.</P>


',
                            'default' => '&quot;~/.muttrc&quot;',
                            'type' => 'path'
                          },
          'abort_unmodified' => {
category => "composing",
                                  'text' => '

<P>If set to <EM>yes</EM>, composition will automatically abort after
editing the message body if no changes are made to the file (this
check only happens after the <EM>first</EM> edit of the file).  When set
to <EM>no</EM>, composition will never be aborted.</P>


',
                                  'default' => 'yes',
                                  'type' => 'quadoption'
                                },
          'escape' => {
                        'text' => '

<P>Escape character to use for functions in the builtin editor.</P>


',
                        'default' => '&quot;~&quot;',
                        'type' => 'string'
                      },
          'visual' => {
category => "editor",
                        'text' => '

<P>Specifies the visual editor to invoke when the <EM>~v</EM> command is
given in the builtin editor.</P>


',
                        'default' => '&quot;&quot;',
                        'type' => 'path'
                      },
          'certificate_file' => {
category => "ssl",
                                  'text' => '

<P>This variable specifies the file where the certificates you trust
are saved. When an unknown certificate is encountered, you are asked
if you accept it or not. If you accept it, the certificate can also 
be saved in this file and further connections are automatically 
accepted.</P>
<P>You can also manually add CA certificates in this file. Any server
certificate that is signed with one of these CA certificates are 
also automatically accepted.</P>
<P>Example: set certificate_file=~/.mutt/certificates</P>


',
                                  'default' => '&quot;&quot;',
                                  'type' => 'path'
                                },
          'sort_browser' => {
                              'text' => '

<P>Specifies how to sort entries in the file browser.  By default, the
entries are sorted alphabetically.  Valid values:</P>

<P>
<BLOCKQUOTE><CODE>
<PRE>
   alpha (alphabetically)
   date
   size
   unsorted
</PRE>
</CODE></BLOCKQUOTE>
</P>
<P>You may optionally use the reverse- prefix to specify reverse sorting
order (example: set sort_browser=reverse-date).</P>


',
                              'default' => 'subject',
                              'type' => 'sort order'
                            },
          'pgp_long_ids' => {
category => "pgp",
                              'text' => '

<P>If set, use 64 bit PGP key IDs. Unset uses the normal 32 bit Key IDs.</P>


',
                              'default' => 'no',
                              'type' => 'boolean'
                            },
          'pop_delete' => {
                               'category' => 'pop3',
                            'text' => '

<P>If set, Mutt will delete successfully downloaded messages from the POP
server when using the fetch-mail function.  When unset, Mutt will
download messages but also leave them on the POP server.</P>


',
                            'default' => 'ask-no',
                            'type' => 'quadoption'
                          },
          'imap_user' => {
                                     'category' => 'imap',
                           'text' => '

<P>Your login name on the IMAP server.</P>
<P>This variable defaults to your user name on the local machine.</P>


',
                           'default' => '&quot;&quot;',
                           'type' => 'string'
                         },
          'delete_untag' => {
                              'text' => '

<P>If this option is <EM>set</EM>, mutt will untag messages when marking them
for deletion.  This applies when you either explicitly delete a message,
or when you save it to another folder.</P>


',
                              'default' => 'yes',
                              'type' => 'boolean'
                            },
          'score_threshold_flag' => {
                                      'text' => '

<P>Messages wich have been assigned a score greater than or equal to this 
variable\'s value are automatically marked &quot;flagged&quot;.</P>


',
                                      'default' => '9999',
                                      'type' => 'number'
                                    },
          'pgp_sort_keys' => {
category => "pgp",
                               'text' => '

<P>Specifies how the entries in the `pgp keys\' menu are sorted. The
following are legal values:</P>

<P>
<DL>
<DT><B>address </B><DD><P>sort alphabetically by user id</P>
<DT><B>keyid   </B><DD><P>sort alphabetically by key id</P>
<DT><B>date    </B><DD><P>sort by key creation date</P>
<DT><B>trust   </B><DD><P>sort by the trust of the key</P>
</DL>
</P>

<P>If you prefer reverse order of the above values, prefix it with
`reverse-\'.</P>


',
                               'default' => 'address',
                               'type' => 'sort order'
                             },
          'hide_top_limited' => {
                                  'text' => '

<P>When set, mutt will not show the presence of missing messages at the
top of threads in the thread tree.  Note that when 
<A HREF="#hide_limited">$hide_limited</A> is
set, this option will have no effect.</P>


',
                                  'default' => 'no',
                                  'type' => 'boolean'
                                },
          'sort_aux' => {
                          'text' => '

<P>When sorting by threads, this variable controls how threads are sorted
in relation to other threads, and how the branches of the thread trees
are sorted.  This can be set to any value that ``
<A HREF="#sort">$sort</A>\'\' can, except
threads (in that case, mutt will just use date-sent).  You can also
specify the last- prefix in addition to the reverse- prefix, but last-
must come after reverse-.  The last- prefix causes messages to be
sorted against its siblings by which has the last descendant, using
the rest of sort_aux as an ordering.  For instance, set sort_aux=last-
date-received would mean that if a new message is received in a
thread, that thread becomes the last one displayed (or the first, if
you have set sort=reverse-threads.) Note: For reversed ``
<A HREF="#sort">$sort</A>\'\'
order 
<A HREF="#sort_aux">$sort_aux</A> is reversed again (which is not the right thing to do,
but kept to not break any existing configuration setting).</P>


',
                          'default' => 'date',
                          'type' => 'sort order'
                        },
          'prompt_after' => {
                              'text' => '

<P>If you use an <EM>external</EM> ``
<A HREF="#pager">$pager</A>\'\', setting this variable will
cause Mutt to prompt you for a command when the pager exits rather
than returning to the index menu.  If unset, Mutt will return to the
index menu when the external pager exits.</P>


',
                              'default' => 'yes',
                              'type' => 'boolean'
                            },
          'pgp_retainable_sigs' => {
category => "pgp",
                                     'text' => '

<P>If set, signed and encrypted messages will consist of nested
multipart/signed and multipart/encrypted body parts.</P>
<P>This is useful for applications like encrypted and signed mailing
lists, where the outer layer (multipart/encrypted) can be easily
removed, while the inner multipart/signed part is retained.</P>


',
                                     'default' => 'no',
                                     'type' => 'boolean'
                                   },
          'imap_keepalive' => {
                                     'category' => 'imap',
                                'text' => '

<P>This variable specifies the maximum amount of time in seconds that mutt
will wait before polling open IMAP connections, to prevent the server
from closing them before mutt has finished with them. The default is
well within the RFC-specified minimum amount of time (30 minutes) before
a server is allowed to do this, but in practice the RFC does get
violated every now and then. Reduce this number if you find yourself
getting disconnected from your IMAP server due to inactivity.</P>


',
                                'default' => '900',
                                'type' => 'number'
                              },
          'hide_missing' => {
                              'text' => '

<P>When set, mutt will not show the presence of messages that are hidden
by limiting, in the thread tree.</P>


',
                              'default' => 'yes',
                              'type' => 'boolean'
                            },
          'attach_format' => {
                               'text' => '

<P>This variable describes the format of the `attachment\' menu.  The
following printf-style sequences are understood:</P>

<P>
<DL>
<DT><B>%D  </B><DD><P>deleted flag</P>
<DT><B>%d  </B><DD><P>description</P>
<DT><B>%e  </B><DD><P>MIME content-transfer-encoding</P>
<DT><B>%f  </B><DD><P>filename</P>
<DT><B>%I  </B><DD><P>disposition (I=inline, A=attachment)</P>
<DT><B>%m  </B><DD><P>major MIME type</P>
<DT><B>%M  </B><DD><P>MIME subtype</P>
<DT><B>%n  </B><DD><P>attachment number</P>
<DT><B>%s  </B><DD><P>size</P>
<DT><B>%t  </B><DD><P>tagged flag</P>
<DT><B>%u  </B><DD><P>unlink (=to delete) flag</P>
<DT><B>%&gt;X </B><DD><P>right justify the rest of the string and pad with character &quot;X&quot;</P>
<DT><B>%|X </B><DD><P>pad to the end of the line with character &quot;X&quot;</P>
</DL>
</P>


',
                               'default' => '&quot;%u%D%I %t%4n %T%.40d%&gt; [%.7m/%.10M, %.6e%?C?, %C?, %s] &quot;',
                               'type' => 'string'
                             },
          'sort_alias' => {
                            'text' => '

<P>Specifies how the entries in the `alias\' menu are sorted.  The
following are legal values:</P>

<P>
<BLOCKQUOTE><CODE>
<PRE>
   address (sort alphabetically by email address)
   alias (sort alphabetically by alias name)
   unsorted (leave in order specified in .muttrc)
</PRE>
</CODE></BLOCKQUOTE>
</P>

',
                            'default' => 'alias',
                            'type' => 'sort order'
                          },
          'reply_self' => {
                            'text' => '

<P>If unset and you are replying to a message sent by you, Mutt will
assume that you want to reply to the recipients of that message rather
than to yourself.</P>


',
                            'default' => 'no',
                            'type' => 'boolean'
                          },
          'maildir_trash' => {
                               'text' => '

<P>If set, messages marked as deleted will be saved with the maildir
(T)rashed flag instead of unlinked.  <B>NOTE:</B> this only applies
to maildir-style mailboxes.  Setting it will have no effect on other
mailbox types.</P>


',
                               'default' => 'no',
                               'type' => 'boolean'
                             },
          'ssl_usesystemcerts' => {
category => "ssl",
                                    'text' => '

<P>If set to <EM>yes</EM>, mutt will use CA certificates in the
system-wide certificate store when checking if server certificate 
is signed by a trusted CA.</P>


',
                                    'default' => 'yes',
                                    'type' => 'boolean'
                                  },
          'include' => {
category => "composing",
                         'text' => '

<P>Controls whether or not a copy of the message(s) you are replying to
is included in your reply.</P>


',
                         'default' => 'ask-yes',
                         'type' => 'quadoption'
                       },
          'smart_wrap' => {
                            'text' => '

<P>Controls the display of lines longer then the screen width in the
internal pager. If set, long lines are wrapped at a word boundary.  If
unset, lines are simply wrapped at the screen edge. Also see the
``
<A HREF="#markers">$markers</A>\'\' variable.</P>


',
                            'default' => 'yes',
                            'type' => 'boolean'
                          },
          'mh_seq_unseen' => {
                               'text' => '

<P>The name of the MH sequence used for unseen messages.</P>


',
                               'default' => '&quot;unseen&quot;',
                               'type' => 'string'
                             },
          'folder' => {
                        'text' => '

<P>Specifies the default location of your mailboxes.  A `+\' or `=\' at the
beginning of a pathname will be expanded to the value of this
variable.  Note that if you change this variable from the default
value you need to make sure that the assignment occurs <EM>before</EM>
you use `+\' or `=\' for any other variables since expansion takes place
during the `set\' command.</P>


',
                        'default' => '&quot;~/Mail&quot;',
                        'type' => 'path'
                      },
          'forward_decode' => {
                                'text' => '

<P>Controls the decoding of complex MIME messages into text/plain when
forwarding a message.  The message header is also RFC2047 decoded.
This variable is only used, if ``
<A HREF="#mime_forward">$mime_forward</A>\'\' is <EM>unset</EM>,
otherwise ``
<A HREF="#mime_forward_decode">$mime_forward_decode</A>\'\' is used instead.</P>


',
                                'default' => 'yes',
                                'type' => 'boolean'
                              },
          'pgp_import_command' => {
category => "pgp",
                                    'text' => '

<P>This command is used to import a key from a message into 
the user\'s public key ring.</P>


',
                                    'default' => '&quot;&quot;',
                                    'type' => 'string'
                                  },
          'imap_list_subscribed' => {
                                     'category' => 'imap',
                                      'text' => '

<P>This variable configures whether IMAP folder browsing will look for
only subscribed folders or all folders.  This can be toggled in the
IMAP browser with the <EM>toggle-subscribed</EM> function.</P>


',
                                      'default' => 'no',
                                      'type' => 'boolean'
                                    },
          'shell' => {
                       'text' => '

<P>Command to use when spawning a subshell.  By default, the user\'s login
shell from /etc/passwd is used.</P>


',
                       'default' => '&quot;&quot;',
                       'type' => 'path'
                     },
          'metoo' => {
                       'text' => '

<P>If unset, Mutt will remove your address (see the ``
<A HREF="#alternates">$alternates</A>\'\'
variable) from the list of recipients when replying to a message.</P>


',
                       'default' => 'no',
                       'type' => 'boolean'
                     },
          'save_name' => {
                           'text' => '

<P>This variable controls how copies of outgoing messages are saved.
When set, a check is made to see if a mailbox specified by the
recipient address exists (this is done by searching for a mailbox in
the ``
<A HREF="#folder">$folder</A>\'\' directory with the <EM>username</EM> part of the
recipient address).  If the mailbox exists, the outgoing message will
be saved to that mailbox, otherwise the message is saved to the
``
<A HREF="#record">$record</A>\'\' mailbox.</P>
<P>Also see the ``
<A HREF="#force_name">$force_name</A>\'\' variable.</P>


',
                           'default' => 'no',
                           'type' => 'boolean'
                         },
          'mh_seq_replied' => {
                                'text' => '

<P>The name of the MH sequence used to tag replied messages.</P>


',
                                'default' => '&quot;replied&quot;',
                                'type' => 'string'
                              },
          'dsn_return' => {
category => 'sending',
                            'text' => '

<P><B>Note:</B> you should not enable this unless you are using Sendmail
8.8.x or greater.</P>
<P>This variable controls how much of your message is returned in DSN
messages.  It may be set to either <EM>hdrs</EM> to return just the
message header, or <EM>full</EM> to return the full message.</P>
<P>Example: set dsn_return=hdrs</P>


',
                            'default' => '&quot;&quot;',
                            'type' => 'string'
                          },
          'digest_collapse' => {
                                 'text' => '

<P>If this option is <EM>set</EM>, mutt\'s revattach menu will not show the subparts of
individual messages in a digest.  To see these subparts, press \'v\' on that menu.</P>


',
                                 'default' => 'yes',
                                 'type' => 'boolean'
                               },
          'wrapmargin' => {
                            'text' => '

<P>Controls the margin left at the right side of the terminal when mutt\'s
pager does smart wrapping.</P>


',
                            'default' => '0',
                            'type' => 'number'
                          },
          'write_bcc' => {
category => "sending",
                           'text' => '

<P>Controls whether mutt writes out the Bcc header when preparing
messages to be sent.  Exim users may wish to use this.</P>


',
                           'default' => 'yes',
                           'type' => 'boolean'
                         },
          'sig_dashes' => {
                            'text' => '

<P>If set, a line containing ``-- \'\' will be inserted before your
``
<A HREF="#signature">$signature</A>\'\'.  It is <B>strongly</B> recommended that you not unset
this variable unless your ``signature\'\' contains just your name.  The
reason for this is because many software packages use ``-- \\n\'\' to
detect your signature.  For example, Mutt has the ability to highlight
the signature in a different color in the builtin pager.</P>


',
                            'default' => 'yes',
                            'type' => 'boolean'
                          },
          'alternates' => {
category => 'addressing',
                            'text' => '

<P>A regexp that allows you to specify <EM>alternate</EM> addresses where
you receive mail.  This affects Mutt\'s idea about messages from you
and addressed to you.</P>


',
                            'default' => '&quot;&quot;',
                            'type' => 'regular expression'
                          },
          'encode_from' => {
                             'text' => '

<P>When <EM>set</EM>, mutt will quoted-printable encode messages when
they contain the string &quot;From &quot; in the beginning of a line.
Useful to avoid the tampering certain mail delivery and transport
agents tend to do with messages.</P>


',
                             'default' => 'no',
                             'type' => 'boolean'
                           },
          'recall' => {
                        'text' => '

<P>Controls whether or not you are prompted to recall postponed messages
when composing a new message.  Also see ``
<A HREF="#postponed">$postponed</A>\'\'.</P>
<P>Setting this variable to ``yes\'\' is not generally useful, and thus not
recommended.</P>


',
                        'default' => 'ask-yes',
                        'type' => 'quadoption'
                      },
          'postpone' => {
                          'text' => '

<P>Controls whether or not messages are saved in the ``
<A HREF="#postponed">$postponed</A>\'\'
mailbox when you elect not to send immediately.</P>


',
                          'default' => 'ask-yes',
                          'type' => 'quadoption'
                        },
          'pgp_create_traditional' => {
category => "pgp",
                                        'text' => '

<P>This option controls whether Mutt generates old-style PGP encrypted
or signed messages under certain circumstances.</P>
<P>Note that PGP/MIME will be used automatically for messages which have
a character set different from us-ascii, or which consist of more than
a single MIME part.</P>
<P>Also note that using the old-style PGP message format is <B>strongly</B>
<B>deprecated</B>.</P>


',
                                        'default' => 'no',
                                        'type' => 'quadoption'
                                      },
          'pgp_entry_format' => {
category => "pgp",
                                  'text' => '

<P>This variable allows you to customize the PGP key selection menu to
your personal taste. This string is similar to ``
<A HREF="#index_format">$index_format</A>\'\', but
has its own set of printf()-like sequences:</P>

<P>
<DL>
<DT><B>%n     </B><DD><P>number</P>
<DT><B>%k     </B><DD><P>key id</P>
<DT><B>%u     </B><DD><P>user id</P>
<DT><B>%a     </B><DD><P>algorithm</P>
<DT><B>%l     </B><DD><P>key length</P>
<DT><B>%f     </B><DD><P>flags</P>
<DT><B>%c     </B><DD><P>capabilities</P>
<DT><B>%t     </B><DD><P>trust/validity of the key-uid association</P>
<DT><B>%[&lt;s&gt;] </B><DD><P>date of the key where &lt;s&gt; is an strftime(3) expression</P>
</DL>
</P>


',
                                  'default' => '&quot;%4n %t%f %4l/0x%k %-4a %2c %u&quot;',
                                  'type' => 'string'
                                },
          'quote_regexp' => {
                              'text' => '

<P>A regular expression used in the internal-pager to determine quoted
sections of text in the body of a message.</P>
<P><B>Note:</B> In order to use the <EM>quoted</EM><B>x</B> patterns in the
internal pager, you need to set this to a regular expression that
matches <EM>exactly</EM> the quote characters at the beginning of quoted
lines.</P>


',
                              'default' => '&quot;^([ \\t]*[|&gt;:}#])+&quot;',
                              'type' => 'regular expression'
                            },
          'spoolfile' => {
                           'text' => '

<P>If your spool mailbox is in a non-default place where Mutt cannot find
it, you can specify its location with this variable.  Mutt will
automatically set this variable to the value of the environment
variable $MAIL if it is not set.</P>


',
                           'default' => '&quot;&quot;',
                           'type' => 'path'
                         },
          'move' => {
                      'text' => '

<P>Controls whether you will be asked to confirm moving read messages
from your spool mailbox to your ``
<A HREF="#mbox">$mbox</A>\'\' mailbox, or as a result of
a ``
<A HREF="manual-3.html#mbox-hook">mbox-hook</A>\'\' command.</P>


',
                      'default' => 'ask-no',
                      'type' => 'quadoption'
                    },
          'mixmaster' => {
                           'text' => '

<P>This variable contains the path to the Mixmaster binary on your
system.  It is used with various sets of parameters to gather the
list of known remailers, and to finally send a message through the
mixmaster chain.</P>


',
                           'default' => '&quot;mixmaster&quot;',
                           'type' => 'path'
                         },
          'hostname' => {
                          'text' => '

<P>Specifies the hostname to use after the ``@\'\' in local e-mail
addresses.  This overrides the compile time definition obtained from
/etc/resolv.conf.</P>


',
                          'default' => '&quot;&quot;',
                          'type' => 'string'
                        },
          'bounce_delivered' => {
                                  'text' => '

<P>When this variable is set, mutt will include Delivered-To headers when
bouncing messages.  Postfix users may wish to unset this variable.</P>


',
                                  'default' => 'yes',
                                  'type' => 'boolean'
                                },
          'compose_format' => {
                                'text' => '

<P>Controls the format of the status line displayed in the \\fCompose
menu.  This string is similar to ``
<A HREF="#status_format">$status_format</A>\'\', but has its own
set of printf()-like sequences:</P>

<P>
<DL>
<DT><B>%a </B><DD><P>total number of attachments </P>
<DT><B>%h </B><DD><P>local hostname</P>
<DT><B>%l </B><DD><P>approximate size (in bytes) of the current message</P>
<DT><B>%v </B><DD><P>Mutt version string</P>
</DL>
</P>

<P>See the text describing the ``
<A HREF="#status_format">$status_format</A>\'\' option for more 
information on how to set ``
<A HREF="#compose_format">$compose_format</A>\'\'.</P>


',
                                'default' => '&quot;-- Mutt: Compose  [Approx. msg size: %l   Atts: %a]%&gt;-&quot;',
                                'type' => 'string'
                              },
          'fast_reply' => {
                            'text' => '

<P>When set, the initial prompt for recipients and subject are skipped
when replying to messages, and the initial prompt for subject is
skipped when forwarding messages.</P>
<P><B>Note:</B> this variable has no effect when the ``
<A HREF="#autoedit">$autoedit</A>\'\'
variable is set.</P>


',
                            'default' => 'no',
                            'type' => 'boolean'
                          },
          'timeout' => {
                         'text' => '

<P>This variable controls the <EM>number of seconds</EM> Mutt will wait for
a key to be pressed in the main menu before timing out and checking
for new mail.  A value of zero or less will cause Mutt not to ever
time out.</P>


',
                         'default' => '600',
                         'type' => 'number'
                       },
          'print_command' => {
                               'text' => '

<P>This specifies the command pipe that should be used to print messages.</P>


',
                               'default' => '&quot;lpr&quot;',
                               'type' => 'path'
                             },
          'hidden_host' => {
                             'text' => '

<P>When set, mutt will skip the host name part of ``
<A HREF="#hostname">$hostname</A>\'\' variable
when adding the domain part to addresses.  This variable does not
affect the generation of Message-IDs, and it will not lead to the 
cut-off of first-level domains.</P>


',
                             'default' => 'no',
                             'type' => 'boolean'
                           },
          'postponed' => {
                           'text' => '

<P>Mutt allows you to indefinitely ``
<A HREF="#postpone">postpone</A> sending a message\'\' which
you are editing.  When you choose to postpone a message, Mutt saves it
in the mailbox specified by this variable.  Also see the ``
<A HREF="#postpone">$postpone</A>\'\'
variable.</P>


',
                           'default' => '&quot;~/postponed&quot;',
                           'type' => 'path'
                         },
          'post_indent_string' => {
                                    'text' => '

<P>Similar to the ``
<A HREF="#attribution">$attribution</A>\'\' variable, Mutt will append this
string after the inclusion of a message which is being replied to.</P>


',
                                    'default' => '&quot;&quot;',
                                    'type' => 'string'
                                  },
          'pgp_sign_as' => {
category => "pgp",
                             'text' => '

<P>If you have more than one key pair, this option allows you to specify
which of your private keys to use.  It is recommended that you use the
keyid form to specify your key (e.g., ``0x00112233\'\').</P>


',
                             'default' => '&quot;&quot;',
                             'type' => 'string'
                           },
          'connect_timeout' => {
                                 'text' => '

<P>Causes Mutt to timeout a network connection (for IMAP or POP) after this
many seconds if the connection is not able to be established.  A negative
value causes Mutt to wait indefinitely for the connection to succeed.</P>


',
                                 'default' => '30',
                                 'type' => 'number'
                               },
          'user_agent' => {
category => "sending",
                            'text' => '

<P>When <EM>set</EM>, mutt will add a &quot;User-Agent&quot; header to outgoing
messages, indicating which version of mutt was used for composing
them.</P>


',
                            'default' => 'yes',
                            'type' => 'boolean'
                          },
          'save_address' => {
                              'text' => '

<P>If set, mutt will take the sender\'s full address when choosing a
default folder for saving a mail. If ``
<A HREF="#save_name">$save_name</A>\'\' or ``
<A HREF="#force_name">$force_name</A>\'\'
is set too, the selection of the fcc folder will be changed as well.</P>


',
                              'default' => 'no',
                              'type' => 'boolean'
                            },
          'hide_top_missing' => {
                                  'text' => '

<P>When set, mutt will not show the presence of messages that are hidden
by limiting, at the top of threads in the thread tree.Note that when
<A HREF="#hide_missing">$hide_missing</A> is set, this option will have no effect.</P>


',
                                  'default' => 'yes',
                                  'type' => 'boolean'
                                },
          'sort_re' => {
                         'text' => '

<P>This variable is only useful when sorting by threads with
``
<A HREF="#strict_threads">$strict_threads</A>\'\' unset.  In that case, it changes the heuristic
mutt uses to thread messages by subject.  With sort_re set, mutt will
only attach a message as the child of another message by subject if
the subject of the child message starts with a substring matching the
setting of ``
<A HREF="#reply_regexp">$reply_regexp</A>\'\'.  With sort_re unset, mutt will attach
the message whether or not this is the case, as long as the
non-``
<A HREF="#reply_regexp">$reply_regexp</A>\'\' parts of both messages are identical.</P>


',
                         'default' => 'yes',
                         'type' => 'boolean'
                       },
          'pop_checkinterval' => {
                               'category' => 'pop3',
                                   'text' => '

<P>This variable configures how often (in seconds) POP should look for
new mail.</P>


',
                                   'default' => '60',
                                   'type' => 'number'
                                 },
          'pop_authenticators' => {
                               'category' => 'pop3',
                                    'text' => '

<P>This is a colon-delimited list of authentication methods mutt may
attempt to use to log in to an POP server, in the order mutt should
try them.  Authentication methods are either \'user\', \'apop\' or any
SASL mechanism, eg \'digest-md5\', \'gssapi\' or \'cram-md5\'.
This parameter is case-insensitive. If this parameter is unset
(the default) mutt will try all available methods, in order from
most-secure to least-secure.</P>
<P>Example: set pop_authenticators=&quot;digest-md5:apop:user&quot;</P>


',
                                    'default' => '&quot;&quot;',
                                    'type' => 'string'
                                  },
          'pgp_list_pubring_command' => {
category => "pgp",
                                          'text' => '

<P>This command is used to list the public key ring\'s contents.  The
output format must be analogous to the one used by 
gpg --list-keys --with-colons.</P>
<P>This format is also generated by the pgpring utility which comes 
with mutt.</P>


',
                                          'default' => '&quot;&quot;',
                                          'type' => 'string'
                                        },
          'send_charset' => {
                              'text' => '

<P>A list of character sets for outgoing messages. Mutt will use the
first character set into which the text can be converted exactly.
If your ``
<A HREF="#charset">$charset</A>\'\' is not iso-8859-1 and recipients may not
understand UTF-8, it is advisable to include in the list an
appropriate widely used standard character set (such as
iso-8859-2, koi8-r or iso-2022-jp) either instead of or after
&quot;iso-8859-1&quot;.</P>


',
                              'default' => '&quot;us-ascii:iso-8859-1:utf-8&quot;',
                              'type' => 'string'
                            },
          'pgp_getkeys_command' => {
category => "pgp",
                                     'text' => '

<P>This command is invoked whenever mutt will need public key information.
%r is the only printf-like sequence used with this format.</P>


',
                                     'default' => '&quot;&quot;',
                                     'type' => 'string'
                                   },
          'askcc' => {
category => 'composing',
                       'text' => '

<P>If set, Mutt will prompt you for carbon-copy (Cc) recipients before
editing the body of an outgoing message.</P>


',
                       'default' => 'no',
                       'type' => 'boolean'
                     },
          'followup_to' => {
category => "composing",
                             'text' => '

<P>Controls whether or not the <EM>Mail-Followup-To</EM> header field is
generated when sending mail.  When <EM>set</EM>, Mutt will generate this
field when you are replying to a known mailing list, specified with
the ``subscribe\'\' or ``
<A HREF="manual-3.html#lists">lists</A>\'\' commands.</P>
<P>This field has two purposes.  First, preventing you from receiving
duplicate copies of replies to messages which you send to mailing
lists.  Second, ensuring that you do get a reply separately for any
messages sent to known lists to which you are not subscribed.  The
header will contain only the list\'s address for subscribed lists,
and both the list address and your own email address for unsubscribed
lists.  Without this header, a group reply to your message sent to a
subscribed list will be sent to both the list and your address,
resulting in two copies of the same email for you.</P>


',
                             'default' => 'yes',
                             'type' => 'boolean'
                           },
          'pgp_clearsign_command' => {
category => "pgp",
                                       'text' => '

<P>This format is used to create a &quot;clearsigned&quot; old-style PGP attachment.
Note that the use of this format is <B>strongly</B> <B>deprecated</B>.</P>


',
                                       'default' => '&quot;&quot;',
                                       'type' => 'string'
                                     },
          'pgp_timeout' => {
category => "pgp",
                             'text' => '

<P>The number of seconds after which a cached passphrase will expire if
not used.</P>


',
                             'default' => '300',
                             'type' => 'number'
                           },
          'pgp_verify_command' => {
category => "pgp",
                                    'text' => '

<P>This command is used to verify PGP/MIME signatures.</P>


',
                                    'default' => '&quot;&quot;',
                                    'type' => 'string'
                                  },
          'folder_format' => {
                               'text' => '

<P>This variable allows you to customize the file browser display to your
personal taste.  This string is similar to ``
<A HREF="#index_format">$index_format</A>\'\', but has
its own set of printf()-like sequences:</P>

<P>
<DL>
<DT><B>%C  </B><DD><P>current file number</P>
<DT><B>%d  </B><DD><P>date/time folder was last modified</P>
<DT><B>%f  </B><DD><P>filename</P>
<DT><B>%F  </B><DD><P>file permissions</P>
<DT><B>%g  </B><DD><P>group name (or numeric gid, if missing)</P>
<DT><B>%l  </B><DD><P>number of hard links</P>
<DT><B>%N  </B><DD><P>N if folder has new mail, blank otherwise</P>
<DT><B>%s  </B><DD><P>size in bytes</P>
<DT><B>%t  </B><DD><P>* if the file is tagged, blank otherwise</P>
<DT><B>%u  </B><DD><P>owner name (or numeric uid, if missing)</P>
<DT><B>%&gt;X </B><DD><P>right justify the rest of the string and pad with character &quot;X&quot;</P>
<DT><B>%|X </B><DD><P>pad to the end of the line with character &quot;X&quot;</P>
</DL>
</P>


',
                               'default' => '&quot;%2C %t %N %F %2l %-8.8u %-8.8g %8s %d %f&quot;',
                               'type' => 'string'
                             },
          'score_threshold_delete' => {
                                        'text' => '

<P>Messages which have been assigned a score equal to or lower than the value
of this variable are automatically marked for deletion by mutt.  Since
mutt scores are always greater than or equal to zero, the default setting
of this variable will never mark a message for deletion.</P>


',
                                        'default' => '-1',
                                        'type' => 'number'
                                      },
          'text_flowed' => {
                             'text' => '

<P>When set, mutt will generate text/plain; format=flowed attachments.
This format is easier to handle for some mailing software, and generally
just looks like ordinary text.  To actually make use of this format\'s 
features, you\'ll need support in your editor.</P>
<P>Note that 
<A HREF="#indent_string">$indent_string</A> is ignored when this option is set.</P>


',
                             'default' => 'no',
                             'type' => 'boolean'
                           },
          'status_on_top' => {
                               'text' => '

<P>Setting this variable causes the ``status bar\'\' to be displayed on
the first line of the screen rather than near the bottom.</P>


',
                               'default' => 'no',
                               'type' => 'boolean'
                             },
          'editor' => {
category => "composing",
                        'text' => '

<P>This variable specifies which editor is used by mutt.
It defaults to the value of the VISUAL, or EDITOR, environment
variable, or to the string &quot;vi&quot; if neither of those are set.</P>


',
                        'default' => '&quot;&quot;',
                        'type' => 'path'
                      },
          'pgp_replysignencrypted' => {
category => "pgp",
                                        'text' => '

<P>If set, automatically PGP sign replies to messages which are
encrypted. This makes sense in combination with
``
<A HREF="#pgp_replyencrypt">$pgp_replyencrypt</A>\'\', because it allows you to sign all messages
which are automatically encrypted.  This works around the problem
noted in ``
<A HREF="#pgp_replysign">$pgp_replysign</A>\'\', that mutt is not able to find out
whether an encrypted message is also signed.</P>


',
                                        'default' => 'no',
                                        'type' => 'boolean'
                                      },
          'from' => {
                      'text' => '

<P>When set, this variable contains a default from address.  It
can be overridden using my_hdr (including from send-hooks) and
``
<A HREF="#reverse_name">$reverse_name</A>\'\'.</P>
<P>Defaults to the EMAIL environment variable\'s content.</P>


',
                      'default' => '&quot;&quot;',
                      'type' => 'e-mail address'
                    },
          'pgp_good_sign' => {
category => "pgp",
                               'text' => '

<P>If you assign a text to this variable, then a PGP signature is only
considered verified if the output from 
<A HREF="#pgp_verify_command">$pgp_verify_command</A> contains
the text. Use this variable if the exit code from the command is 0
even for bad signatures.</P>


',
                               'default' => '&quot;&quot;',
                               'type' => 'regular expression'
                             },
          'weed' => {
                      'text' => '

<P>When set, mutt will weed headers when when displaying, forwarding,
printing, or replying to messages.</P>


',
                      'default' => 'yes',
                      'type' => 'boolean'
                    },
          'smileys' => {
category => 'reading',
                         'text' => '

<P>The <EM>pager</EM> uses this variable to catch some common false
positives of ``
<A HREF="#quote_regexp">$quote_regexp</A>\'\', most notably smileys in the beginning
of a line</P>


',
                         'default' => '&quot;(&gt;From )|(:[-^]?[][)(&gt;&lt;}{|/DP])&quot;',
                         'type' => 'regular expression'
                       },
          'use_8bitmime' => {
category => "sending",
                              'text' => '

<P><B>Warning:</B> do not set this variable unless you are using a version
of sendmail which supports the -B8BITMIME flag (such as sendmail
8.8.x) or you may not be able to send mail.</P>
<P>When <EM>set</EM>, Mutt will invoke ``
<A HREF="#sendmail">$sendmail</A>\'\' with the -B8BITMIME
flag when sending 8-bit messages to enable ESMTP negotiation.</P>


',
                              'default' => 'no',
                              'type' => 'boolean'
                            },
          'sendmail_wait' => {
category => "sending",
                               'text' => '

<P>Specifies the number of seconds to wait for the ``
<A HREF="#sendmail">$sendmail</A>\'\' process
to finish before giving up and putting delivery in the background.</P>
<P>Mutt interprets the value of this variable as follows:</P>
<P>
<DL>
<DT><B>&gt;0 </B><DD><P>number of seconds to wait for sendmail to finish before continuing</P>
<DT><B>0  </B><DD><P>wait forever for sendmail to finish</P>
<DT><B>&lt;0 </B><DD><P>always put sendmail in the background without waiting</P>
</DL>
</P>

<P>Note that if you specify a value other than 0, the output of the child
process will be put in a temporary file.  If there is some error, you
will be informed as to where to find the output.</P>


',
                               'default' => '0',
                               'type' => 'number'
                             },
          'mark_old' => {
                          'text' => '

<P>Controls whether or not Mutt makes the distinction between <EM>new</EM>
messages and <EM>old</EM> <B>unread</B> messages.  By default, Mutt will
mark new messages as old if you exit a mailbox without reading them.
The next time you start Mutt, the messages will show up with an &quot;O&quot;
next to them in the index menu, indicating that they are old.  In
order to make Mutt treat all unread messages as new only, you can
unset this variable.</P>


',
                          'default' => 'yes',
                          'type' => 'boolean'
                        },
          'simple_search' => {
                               'text' => '

<P>Specifies how Mutt should expand a simple search into a real search
pattern.  A simple search is one that does not contain any of the ~
operators.  See ``
<A HREF="manual-4.html#patterns">patterns</A>\'\' for more information on search patterns.</P>
<P>For example, if you simply type joe at a search or limit prompt, Mutt
will automatically expand it to the value specified by this variable.
For the default value it would be:</P>
<P>~f joe | ~s joe</P>


',
                               'default' => '&quot;~f %s | ~s %s&quot;',
                               'type' => 'string'
                             },
          'suspend' => {
                         'text' => '

<P>When <EM>unset</EM>, mutt won\'t stop when the user presses the terminal\'s
<EM>susp</EM> key, usually ``control-Z\'\'. This is useful if you run mutt
inside an xterm using a command like xterm -e mutt.</P>


',
                         'default' => 'yes',
                         'type' => 'boolean'
                       },
          'tunnel' => {
                        'text' => '

<P>Setting this variable will cause mutt to open a pipe to a command
instead of a raw socket. You may be able to use this to set up
preauthenticated connections to your IMAP/POP3 server. Example:</P>
<P>tunnel=&quot;ssh -q mailhost.net /usr/local/libexec/imapd&quot;</P>
<P>NOTE: For this example to work you must be able to log in to the remote
machine without having to enter a password.</P>


',
                        'default' => '&quot;&quot;',
                        'type' => 'string'
                      },
          'tilde' => {
category => "reading",
                       'text' => '

<P>When set, the internal-pager will pad blank lines to the bottom of the
screen with a tilde (~).</P>


',
                       'default' => 'no',
                       'type' => 'boolean'
                     },
          'reply_to' => {
                          'text' => '

<P>If set, Mutt will ask you if you want to use the address listed in the
Reply-To: header field when replying to a message.  If you answer no,
it will use the address in the From: header field instead.  This
option is useful for reading a mailing list that sets the Reply-To:
header field to the list address and you want to send a private
message to the author of a message.</P>


',
                          'default' => 'ask-yes',
                          'type' => 'quadoption'
                        },
          'pgp_verify_sig' => {
category => "pgp",
                                'text' => '

<P>If ``yes\'\', always attempt to verify PGP/MIME signatures.  If ``ask-yes\'\'
or ``ask-no\'\',
ask whether or not to verify the signature.  If ``no\'\', never attempt
to verify PGP/MIME signatures.</P>


',
                                'default' => 'yes',
                                'type' => 'quadoption'
                              },
          'markers' => {
                         'text' => '

<P>Controls the display of wrapped lines in the internal pager. If set, a
``+\'\' marker is displayed at the beginning of wrapped lines. Also see
the ``
<A HREF="#smart_wrap">$smart_wrap</A>\'\' variable.</P>


',
                         'default' => 'yes',
                         'type' => 'boolean'
                       },
          'autoedit' => {
                          'text' => '

<P>When set along with ``
<A HREF="#edit_headers">$edit_headers</A>\'\', Mutt will skip the initial
send-menu and allow you to immediately begin editing the body of your
message.  The send-menu may still be accessed once you have finished
editing the body of your message.</P>
<P>Also see ``
<A HREF="#fast_reply">$fast_reply</A>\'\'.</P>


',
                          'default' => 'no',
                          'type' => 'boolean'
                        },
          'imap_pass' => {
                                     'category' => 'imap',
                           'text' => '

<P>Specifies the password for your IMAP account.  If unset, Mutt will
prompt you for your password when you invoke the fetch-mail function.
<B>Warning</B>: you should only use this option when you are on a
fairly secure machine, because the superuser can read your muttrc even
if you are the only one who can read the file.</P>


',
                           'default' => '&quot;&quot;',
                           'type' => 'password'
                         },
          'mh_seq_flagged' => {
                                'text' => '

<P>The name of the MH sequence used for flagged messages.</P>


',
                                'default' => '&quot;flagged&quot;',
                                'type' => 'string'
                              },
          'pgp_verify_key_command' => {
category => "pgp",
                                        'text' => '

<P>This command is used to verify key information from the key selection
menu.</P>


',
                                        'default' => '&quot;&quot;',
                                        'type' => 'string'
                                      },
          'collapse_unread' => {
                                 'text' => '

<P>When <EM>unset</EM>, Mutt will not collapse a thread if it contains any
unread messages.</P>


',
                                 'default' => 'yes',
                                 'type' => 'boolean'
                               },
          'imap_force_ssl' => {
                                     'category' => 'imap',
                                'text' => '

<P>If this variable is set, Mutt will always use SSL when
connecting to IMAP servers.</P>


',
                                'default' => 'no',
                                'type' => 'boolean'
                              },
          'pgp_ignore_subkeys' => {
category => "pgp",
                                    'text' => '

<P>Setting this variable will cause Mutt to ignore OpenPGP subkeys. Instead,
the principal key will inherit the subkeys\' capabilities.  Unset this
if you want to play interesting key selection games.</P>


',
                                    'default' => 'yes',
                                    'type' => 'boolean'
                                  },
          'sleep_time' => {
                            'text' => '

<P>Specifies time, in seconds, to pause while displaying certain informational
messages, while moving from folder to folder and after expunging
messages from the current folder.  The default is to pause one second, so 
a value of zero for this option suppresses the pause.</P>


',
                            'default' => '1',
                            'type' => 'number'
                          },
          'pager_stop' => {
                            'text' => '

<P>When set, the internal-pager will <B>not</B> move to the next message
when you are at the end of a message and invoke the <EM>next-page</EM>
function.</P>


',
                            'default' => 'no',
                            'type' => 'boolean'
                          },
          'resolve' => {
                         'text' => '

<P>When set, the cursor will be automatically advanced to the next
(possibly undeleted) message whenever a command that modifies the
current message is executed.</P>


',
                         'default' => 'yes',
                         'type' => 'boolean'
                       },
          'locale' => {
                        'text' => '

<P>The locale used by <EM>strftime(3)</EM> to format dates. Legal values are
the strings your system accepts for the locale variable <EM>LC_TIME</EM>.</P>


',
                        'default' => '&quot;C&quot;',
                        'type' => 'string'
                      },
          'status_chars' => {
                              'text' => '

<P>Controls the characters used by the &quot;%r&quot; indicator in
``
<A HREF="#status_format">$status_format</A>\'\'. The first character is used when the mailbox is
unchanged. The second is used when the mailbox has been changed, and
it needs to be resynchronized. The third is used if the mailbox is in
read-only mode, or if the mailbox will not be written when exiting
that mailbox (You can toggle whether to write changes to a mailbox
with the toggle-write operation, bound by default to &quot;%&quot;). The fourth
is used to indicate that the current folder has been opened in attach-
message mode (Certain operations like composing a new mail, replying,
forwarding, etc. are not permitted in this mode).</P>


',
                              'default' => '&quot;-*%A&quot;',
                              'type' => 'string'
                            },
          'ispell' => {
                        'text' => '

<P>How to invoke ispell (GNU\'s spell-checking software).</P>


',
                        'default' => '&quot;/usr/bin/ispell&quot;',
                        'type' => 'path'
                      },
          'mh_purge' => {
                          'text' => '

<P>When unset, mutt will mimic mh\'s behaviour and rename deleted messages
to <EM>,&lt;old file name&gt;</EM> in mh folders instead of really deleting
them.  If the variable is set, the message files will simply be
deleted.</P>


',
                          'default' => 'no',
                          'type' => 'boolean'
                        },
          'realname' => {
                          'text' => '

<P>This variable specifies what &quot;real&quot; or &quot;personal&quot; name should be used
when sending messages.</P>
<P>By default, this is the GCOS field from /etc/passwd.  Note that this
variable will <EM>not</EM> be used when the user has set a real name
in the 
<A HREF="#from">$from</A> variable.</P>


',
                          'default' => '&quot;&quot;',
                          'type' => 'string'
                        },
          'ssl_use_sslv3' => {
category => "ssl",
                               'text' => '

<P>This variables specifies whether to attempt to use SSLv3 in the
SSL authentication process.</P>


',
                               'default' => 'yes',
                               'type' => 'boolean'
                             },
          'attach_split' => {
                              'text' => '

<P>If this variable is unset, when operating (saving, printing, piping,
etc) on a list of tagged attachments, Mutt will concatenate the
attachments and will operate on them as a single attachment. The
``
<A HREF="#attach_sep">$attach_sep</A>\'\' separator is added after each attachment. When set,
Mutt will operate on the attachments one by one.</P>


',
                              'default' => 'yes',
                              'type' => 'boolean'
                            },
          'read_only' => {
                           'text' => '

<P>If set, all folders are opened in read-only mode.</P>


',
                           'default' => 'no',
                           'type' => 'boolean'
                         },
          'pop_host' => {
                               'category' => 'pop3',
                          'text' => '

<P>The name of your POP server for the fetch-mail function.  You
can also specify an alternative port, username and password, ie:</P>
<P>[pop[s]://][username[:password]@]popserver[:port]</P>


',
                          'default' => '&quot;&quot;',
                          'type' => 'string'
                        },
          'mix_entry_format' => {
                                  'text' => '

<P>This variable describes the format of a remailer line on the mixmaster
chain selection screen.  The following printf-like sequences are 
supported:</P>

<P>
<DL>
<DT><B>%n </B><DD><P>The running number on the menu.</P>
<DT><B>%c </B><DD><P>Remailer capabilities.</P>
<DT><B>%s </B><DD><P>The remailer\'s short name.</P>
<DT><B>%a </B><DD><P>The remailer\'s e-mail address.</P>
</DL>
</P>


',
                                  'default' => '&quot;%4n %c %-16s %a&quot;',
                                  'type' => 'string'
                                },
          'pager_index_lines' => {
                                   'text' => '

<P>Determines the number of lines of a mini-index which is shown when in
the pager.  The current message, unless near the top or bottom of the
folder, will be roughly one third of the way down this mini-index,
giving the reader the context of a few messages before and after the
message.  This is useful, for example, to determine how many messages
remain to be read in the current thread.  One of the lines is reserved
for the status bar from the index, so a <EM>pager_index_lines</EM> of 6
will only show 5 lines of the actual index.  A value of 0 results in
no index being shown.  If the number of messages in the current folder
is less than <EM>pager_index_lines</EM>, then the index will only use as
many lines as it needs.</P>


',
                                   'default' => '0',
                                   'type' => 'number'
                                 },
          'pipe_sep' => {
                          'text' => '

<P>The separator to add between messages when piping a list of tagged
messages to an external Unix command.</P>


',
                          'default' => '&quot;\\n&quot;',
                          'type' => 'string'
                        },
          'display_filter' => {
                                'text' => '

<P>When set, specifies a command used to filter messages.  When a message
is viewed it is passed as standard input to 
<A HREF="#display_filter">$display_filter</A>, and the
filtered message is read from the standard output.</P>


',
                                'default' => '&quot;&quot;',
                                'type' => 'path'
                              },
          'imap_home_namespace' => {
                                     'category' => 'imap',
                                     'text' => '

<P>You normally want to see your personal folders alongside
your INBOX in the IMAP browser. If you see something else, you may set
this variable to the IMAP path to your folders.</P>


',
                                     'default' => '&quot;&quot;',
                                     'type' => 'string'
                                   },
          'pop_user' => {
                               'category' => 'pop3',
                          'text' => '

<P>Your login name on the POP server.</P>
<P>This variable defaults to your user name on the local machine.</P>


',
                          'default' => '&quot;&quot;',
                          'type' => 'string'
                        },
          'sendmail' => {
category => "sending",
                          'text' => '

<P>Specifies the program and arguments used to deliver mail sent by Mutt.
Mutt expects that the specified program interprets additional
arguments as recipient addresses.</P>


',
                          'default' => '&quot;/usr/sbin/sendmail -oem -oi&quot;',
                          'type' => 'path'
                        },
          'arrow_cursor' => {
category => 'reading',
                              'text' => '

<P>When set, an arrow (``-&gt;\'\') will be used to indicate the current entry
in menus instead of hiliting the whole line.  On slow network or modem
links this will make response faster because there is less that has to
be redrawn on the screen when moving to the next or previous entries
in the menu.</P>


',
                              'default' => 'no',
                              'type' => 'boolean'
                            },
          'beep_new' => {
                          'text' => '

<P>When this variable is set, mutt will beep whenever it prints a message
notifying you of new mail.  This is independent of the setting of the
``
<A HREF="#beep">$beep</A>\'\' variable.</P>


',
                          'default' => 'no',
                          'type' => 'boolean'
                        },
          'pager_format' => {
                              'text' => '

<P>This variable controls the format of the one-line message ``status\'\'
displayed before each message in either the internal or an external
pager.  The valid sequences are listed in the ``
<A HREF="#index_format">$index_format</A>\'\'
section.</P>


',
                              'default' => '&quot;-%Z- %C/%m: %-20.20n   %s&quot;',
                              'type' => 'string'
                            },
          'beep' => {
                      'text' => '

<P>When this variable is set, mutt will beep when an error occurs.</P>


',
                      'default' => 'yes',
                      'type' => 'boolean'
                    },
          'mailcap_sanitize' => {
                                  'text' => '

<P>If set, mutt will restrict possible characters in mailcap % expandos
to a well-defined set of safe characters.  This is the safe setting,
but we are not sure it doesn\'t break some more advanced MIME stuff.</P>
<P><B>DON\'T CHANGE THIS SETTING UNLESS YOU ARE REALLY SURE WHAT YOU ARE
DOING!</B></P>


',
                                  'default' => 'yes',
                                  'type' => 'boolean'
                                },
          'imap_servernoise' => {
                                     'category' => 'imap',
                                  'text' => '

<P>When set, mutt will display warning messages from the IMAP
server as error messages. Since these messages are often
harmless, or generated due to configuration problems on the
server which are out of the users\' hands, you may wish to suppress
them at some point.</P>


',
                                  'default' => 'yes',
                                  'type' => 'boolean'
                                },
          'forward_quote' => {
category => "composing",
                               'text' => '

<P>When <EM>set</EM> forwarded messages included in the main body of the
message (when ``
<A HREF="#mime_forward">$mime_forward</A>\'\' is <EM>unset</EM>) will be quoted using
``
<A HREF="#indent_string">$indent_string</A>\'\'.</P>


',
                               'default' => 'no',
                               'type' => 'boolean'
                             },
          'strict_threads' => {
                                'text' => '

<P>If set, threading will only make use of the ``In-Reply-To\'\' and
``References\'\' fields when you ``
<A HREF="#sort">$sort</A>\'\' by message threads.  By
default, messages with the same subject are grouped together in
``pseudo threads.\'\'  This may not always be desirable, such as in a
personal mailbox where you might have several unrelated messages with
the subject ``hi\'\' which will get grouped together.</P>


',
                                'default' => 'no',
                                'type' => 'boolean'
                              },
          'signature' => {
                           'text' => '

<P>Specifies the filename of your signature, which is appended to all
outgoing messages.   If the filename ends with a pipe (``|\'\'), it is
assumed that filename is a shell command and input should be read from
its stdout.</P>


',
                           'default' => '&quot;~/.signature&quot;',
                           'type' => 'path'
                         },
          'entropy_file' => {
category => "ssl",
                              'text' => '

<P>The file which includes random data that is used to initalize SSL
library functions.</P>


',
                              'default' => '&quot;&quot;',
                              'type' => 'path'
                            },
          'message_format' => {
                                'text' => '

<P>This is the string displayed in the ``attachment\'\' menu for
attachments of type message/rfc822.  For a full listing of defined
printf()-like sequences see the section on ``
<A HREF="#index_format">$index_format</A>\'\'.</P>


',
                                'default' => '&quot;%s&quot;',
                                'type' => 'string'
                              },
          'confirmappend' => {
                               'text' => '

<P>When set, Mutt will prompt for confirmation when appending messages to
an existing mailbox.</P>


',
                               'default' => 'yes',
                               'type' => 'boolean'
                             },
          'date_format' => {
                             'text' => '

<P>This variable controls the format of the date printed by the ``%d\'\'
sequence in ``
<A HREF="#index_format">$index_format</A>\'\'.  This is passed to the <EM>strftime</EM>
call to process the date. See the man page for <EM>strftime(3)</EM> for
the proper syntax.</P>
<P>Unless the first character in the string is a bang (``!\'\'), the month
and week day names are expanded according to the locale specified in
the variable ``
<A HREF="#locale">$locale</A>\'\'. If the first character in the string is a
bang, the bang is discarded, and the month and week day names in the
rest of the string are expanded in the <EM>C</EM> locale (that is in US
English).</P>


',
                             'default' => '&quot;!%a, %b %d, %Y at %I:%M:%S%p %Z&quot;',
                             'type' => 'string'
                           },
          'duplicate_threads' => {
                                   'text' => '

<P>This variable controls whether mutt, when sorting by threads, threads
messages with the same message-id together.  If it is set, it will indicate
that it thinks they are duplicates of each other with an equals sign
in the thread diagram.</P>


',
                                   'default' => 'yes',
                                   'type' => 'boolean'
                                 },
          'askbcc' => {
category => 'composing',
                        'text' => '

<P>If set, Mutt will prompt you for blind-carbon-copy (Bcc) recipients
before editing an outgoing message.</P>


',
                        'default' => 'no',
                        'type' => 'boolean'
                      },
          'gecos_mask' => {
                            'text' => '

<P>A regular expression used by mutt to parse the GECOS field of a password
entry when expanding the alias.  By default the regular expression is set
to &quot;^[^,]*&quot; which will return the string up to the first &quot;,&quot; encountered.
If the GECOS field contains a string like &quot;lastname, firstname&quot; then you
should set the gecos_mask=&quot;.*&quot;.</P>
<P>This can be useful if you see the following behavior: you address a e-mail
to user ID stevef whose full name is Steve Franklin.  If mutt expands 
stevef to &quot;Franklin&quot; stevef@foo.bar then you should set the gecos_mask to
a regular expression that will match the whole name so mutt will expand
&quot;Franklin&quot; to &quot;Franklin, Steve&quot;.</P>


',
                            'default' => '&quot;^[^,]*&quot;',
                            'type' => 'regular expression'
                          },
          'pgp_encrypt_only_command' => {
category => "pgp",
                                          'text' => '

<P>This command is used to encrypt a body part without signing it.</P>


',
                                          'default' => '&quot;&quot;',
                                          'type' => 'string'
                                        },
          'imap_delim_chars' => {
                                     'category' => 'imap',
                                  'text' => '

<P>This contains the list of characters which you would like to treat
as folder separators for displaying IMAP paths. In particular it
helps in using the \'=\' shortcut for your <EM>folder</EM> variable.</P>


',
                                  'default' => '&quot;/.&quot;',
                                  'type' => 'string'
                                },
          'ssl_use_tlsv1' => {
category => "ssl",
                               'text' => '

<P>This variables specifies whether to attempt to use TLSv1 in the
SSL authentication process.</P>


',
                               'default' => 'yes',
                               'type' => 'boolean'
                             },
          'pipe_split' => {
                            'text' => '

<P>Used in connection with the <EM>pipe-message</EM> command and the ``tag-
prefix\'\' operator.  If this variable is unset, when piping a list of
tagged messages Mutt will concatenate the messages and will pipe them
as a single folder.  When set, Mutt will pipe the messages one by one.
In both cases the messages are piped in the current sorted order,
and the ``
<A HREF="#pipe_sep">$pipe_sep</A>\'\' separator is added after each message.</P>


',
                            'default' => 'no',
                            'type' => 'boolean'
                          },
          'imap_peek' => {
                                     'category' => 'imap',
                           'text' => '

<P>If set, mutt will avoid implicitly marking your mail as read whenever
you fetch a message from the server. This is generally a good thing,
but can make closing an IMAP folder somewhat slower. This option
exists to appease speed freaks.</P>


',
                           'default' => 'yes',
                           'type' => 'boolean'
                         },
          'reply_regexp' => {
                              'text' => '

<P>A regular expression used to recognize reply messages when threading
and replying. The default value corresponds to the English &quot;Re:&quot; and
the German &quot;Aw:&quot;.</P>


',
                              'default' => '&quot;^(re([\\[0-9\\]+])*|aw):[ \\t]*&quot;',
                              'type' => 'regular expression'
                            },
          'default_hook' => {
                              'text' => '

<P>This variable controls how send-hooks, message-hooks, save-hooks,
and fcc-hooks will
be interpreted if they are specified with only a simple regexp,
instead of a matching pattern.  The hooks are expanded when they are
declared, so a hook will be interpreted according to the value of this
variable at the time the hook is declared.  The default value matches
if the message is either from a user matching the regular expression
given, or if it is from you (if the from address matches
``
<A HREF="#alternates">$alternates</A>\'\') and is to or cc\'ed to a user matching the given
regular expression.</P>


',
                              'default' => '&quot;~f %s !~P | (~P ~C %s)&quot;',
                              'type' => 'string'
                            },
          'implicit_autoview' => {
                                   'text' => '

<P>If set to ``yes\'\', mutt will look for a mailcap entry with the
copiousoutput flag set for <EM>every</EM> MIME attachment it doesn\'t have
an internal viewer defined for.  If such an entry is found, mutt will
use the viewer defined in that entry to convert the body part to text
form.</P>


',
                                   'default' => 'no',
                                   'type' => 'boolean'
                                 },
          'help' => {
                      'text' => '

<P>When set, help lines describing the bindings for the major functions
provided by each menu are displayed on the first line of the screen.</P>
<P><B>Note:</B> The binding will not be displayed correctly if the
function is bound to a sequence rather than a single keystroke.  Also,
the help line may not be updated if a binding is changed while Mutt is
running.  Since this variable is primarily aimed at new users, neither
of these should present a major problem.</P>


',
                      'default' => 'yes',
                      'type' => 'boolean'
                    },
          'mime_forward_rest' => {
                                   'text' => '

<P>When forwarding multiple attachments of a MIME message from the recvattach
menu, attachments which cannot be decoded in a reasonable manner will
be attached to the newly composed message if this option is set.</P>


',
                                   'default' => 'yes',
                                   'type' => 'quadoption'
                                 },
          'preconnect' => {
                            'text' => '

<P>If set, a shell command to be executed if mutt fails to establish
a connection to the server. This is useful for setting up secure
connections, e.g. with ssh(1). If the command returns a  nonzero
status, mutt gives up opening the server. Example:</P>
<P>preconnect=&quot;ssh -f -q -L 1234:mailhost.net:143 mailhost.net
sleep 20 &lt; /dev/null &gt; /dev/null&quot;</P>
<P>Mailbox \'foo\' on mailhost.net can now be reached
as \'{localhost:1234}foo\'.</P>
<P>NOTE: For this example to work, you must be able to log in to the
remote machine without having to enter a password.</P>


',
                            'default' => '&quot;&quot;',
                            'type' => 'string'
                          },
          'index_format' => {
                              'text' => '

<P>This variable allows you to customize the message index display to
your personal taste.</P>
<P>``Format strings\'\' are similar to the strings used in the ``C\'\'
function printf to format output (see the man page for more detail).
The following sequences are defined in Mutt:</P>

<P>
<DL>
<DT><B>%a </B><DD><P>address of the author</P>
<DT><B>%b </B><DD><P>filename of the original message folder (think mailBox)</P>
<DT><B>%B </B><DD><P>the list to which the letter was sent, or else the folder name (%b).</P>
<DT><B>%c </B><DD><P>number of characters (bytes) in the message</P>
<DT><B>%C </B><DD><P>current message number</P>
<DT><B>%d </B><DD><P>date and time of the message in the format specified by
``date_format\'\' converted to sender\'s time zone</P>
<DT><B>%D </B><DD><P>date and time of the message in the format specified by
``date_format\'\' converted to the local time zone</P>
<DT><B>%e </B><DD><P>current message number in thread</P>
<DT><B>%E </B><DD><P>number of messages in current thread</P>
<DT><B>%f </B><DD><P>entire From: line (address + real name)</P>
<DT><B>%F </B><DD><P>author name, or recipient name if the message is from you</P>
<DT><B>%i </B><DD><P>message-id of the current message</P>
<DT><B>%l </B><DD><P>number of lines in the message</P>
<DT><B>%L </B><DD><P>If an address in the To or CC header field matches an address
defined by the users ``lists\'\' command, this displays
&quot;To &lt;list-name&gt;&quot;, otherwise the same as %F.</P>
<DT><B>%m </B><DD><P>total number of message in the mailbox</P>
<DT><B>%M </B><DD><P>number of hidden messages if the thread is collapsed.</P>
<DT><B>%N </B><DD><P>message score</P>
<DT><B>%n </B><DD><P>author\'s real name (or address if missing)</P>
<DT><B>%O </B><DD><P>(_O_riginal save folder)  Where mutt would formerly have
stashed the message: list name or recipient name if no list</P>
<DT><B>%s </B><DD><P>subject of the message</P>
<DT><B>%S </B><DD><P>status of the message (N/D/d/!/r/*)</P>
<DT><B>%t </B><DD><P>`to:\' field (recipients)</P>
<DT><B>%T </B><DD><P>the appropriate character from the 
<A HREF="#to_chars">$to_chars</A> string</P>
<DT><B>%u </B><DD><P>user (login) name of the author</P>
<DT><B>%v </B><DD><P>first name of the author, or the recipient if the message is from you</P>
<DT><B>%y </B><DD><P>`x-label:\' field, if present</P>
<DT><B>%Y </B><DD><P>`x-label\' field, if present, and (1) not at part of a thread tree,
(2) at the top of a thread, or (3) `x-label\' is different from
preceding message\'s `x-label\'.</P>
<DT><B>%Z </B><DD><P>message status flags</P>
<DT><B>%{fmt} </B><DD><P>the date and time of the message is converted to sender\'s
time zone, and ``fmt\'\' is expanded by the library function
``strftime\'\'; a leading bang disables locales</P>
<DT><B>%[fmt] </B><DD><P>the date and time of the message is converted to the local
time zone, and ``fmt\'\' is expanded by the library function
``strftime\'\'; a leading bang disables locales</P>
<DT><B>%(fmt) </B><DD><P>the local date and time when the message was received.
``fmt\'\' is expanded by the library function ``strftime\'\';
a leading bang disables locales</P>
<DT><B>%&lt;fmt&gt; </B><DD><P>the current local time. ``fmt\'\' is expanded by the library
function ``strftime\'\'; a leading bang disables locales.</P>
<DT><B>%&gt;X    </B><DD><P>right justify the rest of the string and pad with character &quot;X&quot;</P>
<DT><B>%|X    </B><DD><P>pad to the end of the line with character &quot;X&quot;</P>
</DL>
</P>

<P>See also: ``
<A HREF="#to_chars">$to_chars</A>\'\'.</P>


',
                              'default' => '&quot;%4C %Z %{%b %d} %-15.15L (%4l) %s&quot;',
                              'type' => 'string'
                            },
          'pgp_decrypt_command' => {
category => "pgp",
                                     'text' => '

<P>This command is used to decrypt a PGP/MIME encrypted message.</P>


',
                                     'default' => '&quot;&quot;',
                                     'type' => 'string'
                                   },
          'quit' => {
                      'text' => '

<P>This variable controls whether ``quit\'\' and ``exit\'\' actually quit
from mutt.  If it set to yes, they do quit, if it is set to no, they
have no effect, and if it is set to ask-yes or ask-no, you are
prompted for confirmation when you try to quit.</P>


',
                      'default' => 'yes',
                      'type' => 'quadoption'
                    },
          'alias_format' => {
category => "addressing",
                              'text' => '

<P>Specifies the format of the data displayed for the `alias\' menu.  The
following printf(3)-style sequences are available:</P>

<P>
<DL>
<DT><B>%a </B><DD><P>alias name</P>
<DT><B>%f </B><DD><P>flags - currently, a &quot;d&quot; for an alias marked for deletion</P>
<DT><B>%n </B><DD><P>index number</P>
<DT><B>%r </B><DD><P>address which alias expands to</P>
<DT><B>%t </B><DD><P>character which indicates if the alias is tagged for inclusion</P>
</DL>
</P>


',
                              'default' => '&quot;%4n %2f %t %-10a   %r&quot;',
                              'type' => 'string'
                            },
          'reverse_alias' => {
                               'text' => '

<P>This variable controls whether or not Mutt will display the &quot;personal&quot;
name from your aliases in the index menu if it finds an alias that
matches the message\'s sender.  For example, if you have the following
alias:</P>

<P>
<BLOCKQUOTE><CODE>
<PRE>
alias juser abd30425@somewhere.net (Joe User)
</PRE>
</CODE></BLOCKQUOTE>
</P>
<P>and then you receive mail which contains the following header:</P>

<P>
<BLOCKQUOTE><CODE>
<PRE>
From: abd30425@somewhere.net
</PRE>
</CODE></BLOCKQUOTE>
</P>
<P>It would be displayed in the index menu as ``Joe User\'\' instead of
``abd30425@somewhere.net.\'\'  This is useful when the person\'s e-mail
address is not human friendly (like CompuServe addresses).</P>


',
                               'default' => 'no',
                               'type' => 'boolean'
                             },
          'score' => {
                       'text' => '

<P>When this variable is <EM>unset</EM>, scoring is turned off.  This can
be useful to selectively disable scoring for certain folders when the
``
<A HREF="#score_threshold_delete">$score_threshold_delete</A>\'\' variable and friends are used.</P>


',
                       'default' => 'yes',
                       'type' => 'boolean'
                     },
          'uncollapse_jump' => {
                                 'text' => '

<P>When <EM>set</EM>, Mutt will jump to the next unread message, if any,
when the current thread is <EM>un</EM>collapsed.</P>


',
                                 'default' => 'no',
                                 'type' => 'boolean'
                               },
          'pop_pass' => {
                               'category' => 'pop3',
                          'text' => '

<P>Specifies the password for your POP account.  If unset, Mutt will
prompt you for your password when you open POP mailbox.
<B>Warning</B>: you should only use this option when you are on a
fairly secure machine, because the superuser can read your muttrc
even if you are the only one who can read the file.</P>


',
                          'default' => '&quot;&quot;',
                          'type' => 'password'
                        },
          'pager_context' => {
                               'text' => '

<P>This variable controls the number of lines of context that are given
when displaying the next or previous page in the internal pager.  By
default, Mutt will display the line after the last one on the screen
at the top of the next page (0 lines of context).</P>


',
                               'default' => '0',
                               'type' => 'number'
                             },
          'pop_last' => {
                               'category' => 'pop3',
                          'text' => '

<P>If this variable is set, mutt will try to use the &quot;LAST&quot; POP command
for retrieving only unread messages from the POP server when using
the fetch-mail function.</P>


',
                          'default' => 'no',
                          'type' => 'boolean'
                        },
          'imap_passive' => {
                                     'category' => 'imap',
                              'text' => '

<P>When set, mutt will not open new IMAP connections to check for new
mail.  Mutt will only check for new mail over existing IMAP
connections.  This is useful if you don\'t want to be prompted to
user/password pairs on mutt invocation, or if opening the connection
is slow.</P>


',
                              'default' => 'yes',
                              'type' => 'boolean'
                            },
          'confirmcreate' => {
                               'text' => '

<P>When set, Mutt will prompt for confirmation when saving messages to a
mailbox which does not yet exist before creating it.</P>


',
                               'default' => 'yes',
                               'type' => 'boolean'
                             },
          'header' => {
                        'text' => '

<P>When set, this variable causes Mutt to include the header
of the message you are replying to into the edit buffer.
The ``
<A HREF="#weed">$weed</A>\'\' setting applies.</P>


',
                        'default' => 'no',
                        'type' => 'boolean'
                      }
        };

1;
__DATA__
#
#  abort_nosubject
#
#   Type: quadoption
#   Default: ask-yes
#
#   If  set to yes, when composing messages and no subject is given at the
#   subject  prompt,  composition will be aborted. If set to no, composing
#   messages with no subject given at the subject prompt will never be aborted.
#
#  abort_unmodified
#
#   Type: quadoption
#   Default: yes
#
#   If  set to yes, composition will automatically abort after editing the
#   message body if no changes are made to the file (this check only happens
#   after the first edit of the file). When set to no, composition will never be
#   aborted.
#
#  alias_file
#
#   Type: path
#   Default: "~/.muttrc"
#
#   The default file in which to save aliases created by the `` create-alias''
#   function.
#
#   Note: Mutt will not automatically source this file; you must explicitly use
#   the `` source'' command for it to be executed.
#
#  alias_format
#
#   Type: string
#   Default: "%4n %2f %t %-10a %r"
#
#   Specifies  the  format of the data displayed for the `alias' menu. The
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
#   Controls whether ANSI color codes in messages (and color tags in rich text
#   messages) are to be interpreted. Messages containing these codes are rare,
#   but if this option is set, their text will be colored accordingly. Note that
#   this may override your color choices, and even present a security problem,
#   since a message could include a line like "[-- PGP output follows ..." and
#   give it the same color as your attachment color.
#
#  alternates
#
#   Type: regular expression
#   Default: ""
#
#   A regexp that allows you to specify alternate addresses where you receive
#   mail. This affects Mutt's idea about messages from you and addressed to you.
#
#  arrow_cursor
#
#   Type: boolean
#   Default: no
#
#   When set, an arrow (``->'') will be used to indicate the current entry in
#   menus instead of hiliting the whole line. On slow network or modem links
#   this will make response faster because there is less that has to be redrawn
#   on the screen when moving to the next or previous entries in the menu.
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
#   If set, Mutt will prompt you for blind-carbon-copy (Bcc) recipients before
#   editing an outgoing message.
#
#  askcc
#
#   Type: boolean
#   Default: no
#
#   If set, Mutt will prompt you for carbon-copy (Cc) recipients before editing
#   the body of an outgoing message.
#
#  attach_format
#
#   Type: string
#   Default: "%u%D%I %t%4n %T%.40d%> [%.7m/%.10M, %.6e%?C?, %C?, %s] "
#
#   This variable describes the format of the `attachment' menu. The following
#   printf-style sequences are understood:
#
#   %D 
#          deleted flag
#
#   %d 
#          description
#
#   %e 
#          MIME content-transfer-encoding
#
#   %f 
#          filename
#
#   %I 
#          disposition (I=inline, A=attachment)
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
#   %u 
#          unlink (=to delete) flag
#
#   %>X 
#          right justify the rest of the string and pad with character "X"
#
#   %|X 
#          pad to the end of the line with character "X"
#
#  attach_sep
#
#   Type: string
#   Default: "\n"
#
#   The separator to add between attachments when operating (saving, printing,
#   piping, etc) on a list of tagged attachments.
#
#  attach_split
#
#   Type: boolean
#   Default: yes
#
#   If this variable is unset, when operating (saving, printing, piping, etc) on
#   a list of tagged attachments, Mutt will concatenate the attachments and will
#   operate on them as a single attachment. The `` $attach_sep'' separator is
#   added after each attachment. When set, Mutt will operate on the attachments
#   one by one.
#
#  attribution
#
#   Type: string
#   Default: "On %d, %n wrote:"
#
#   This is the string that will precede a message which has been included in a
#   reply. For a full listing of defined printf()-like sequences see the section
#   on `` $index_format''.
#
#  autoedit
#
#   Type: boolean
#   Default: no
#
#   When set along with `` $edit_headers'', Mutt will skip the initial send-menu
#   and allow you to immediately begin editing the body of your message. The
#   send-menu may still be accessed once you have finished editing the body of
#   your message.
#
#   Also see `` $fast_reply''.
#
#  auto_tag
#
#   Type: boolean
#   Default: no
#
#   When set, functions in the index menu which affect a message will be applied
#   to all tagged messages (if there are any). When unset, you must first use
#   the tag-prefix function (default: ";") to make the next function apply to
#   all tagged messages.
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
#   notifying you of new mail. This is independent of the setting of the ``
#   $beep'' variable.
#
#  bounce_delivered
#
#   Type: boolean
#   Default: yes
#
#   When this variable is set, mutt will include Delivered-To headers when
#   bouncing messages. Postfix users may wish to unset this variable.
#
#  charset
#
#   Type: string
#   Default: ""
#
#   Character set your terminal uses to display and enter textual data.
#
#  check_new
#
#   Type: boolean
#   Default: yes
#
#   Note: this option only affects maildir and MH style mailboxes.
#
#   When set, Mutt will check for new mail delivered while the mailbox is open.
#   Especially with MH mailboxes, this operation can take quite some time since
#   it involves scanning the directory and checking each file to see if it has
#   already been looked at. If check_new is unset, no check for new mail is
#   performed while the mailbox is open.
#
#  collapse_unread
#
#   Type: boolean
#   Default: yes
#
#   When  unset, Mutt will not collapse a thread if it contains any unread
#   messages.
#
#  uncollapse_jump
#
#   Type: boolean
#   Default: no
#
#   When  set, Mutt will jump to the next unread message, if any, when the
#   current thread is uncollapsed.
#
#  compose_format
#
#   Type: string
#   Default: "-- Mutt: Compose [Approx. msg size: %l Atts: %a]%>-"
#
#   Controls the format of the status line displayed in the \fCompose menu. This
#   string  is  similar  to  ``  $status_format'',  but has its own set of
#   printf()-like sequences:
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
#          Mutt version string
#
#   See the text describing the `` $status_format'' option for more information
#   on how to set `` $compose_format''.
#
#  confirmappend
#
#   Type: boolean
#   Default: yes
#
#   When set, Mutt will prompt for confirmation when appending messages to an
#   existing mailbox.
#
#  confirmcreate
#
#   Type: boolean
#   Default: yes
#
#   When  set, Mutt will prompt for confirmation when saving messages to a
#   mailbox which does not yet exist before creating it.
#
#  connect_timeout
#
#   Type: number
#   Default: 30
#
#   Causes Mutt to timeout a network connection (for IMAP or POP) after this
#   many seconds if the connection is not able to be established. A negative
#   value causes Mutt to wait indefinitely for the connection to succeed.
#
#  copy
#
#   Type: quadoption
#   Default: yes
#
#   This variable controls whether or not copies of your outgoing messages will
#   be saved for later references. Also see `` $record'', `` $save_name'', ``
#   $force_name'' and `` fcc-hook''.
#
#  date_format
#
#   Type: string
#   Default: "!%a, %b %d, %Y at %I:%M:%S%p %Z"
#
#   This variable controls the format of the date printed by the ``%d'' sequence
#   in `` $index_format''. This is passed to the strftime call to process the
#   date. See the man page for strftime(3) for the proper syntax.
#
#   Unless the first character in the string is a bang (``!''), the month and
#   week  day  names are expanded according to the locale specified in the
#   variable `` $locale''. If the first character in the string is a bang, the
#   bang is discarded, and the month and week day names in the rest of the
#   string are expanded in the C locale (that is in US English).
#
#  default_hook
#
#   Type: string
#   Default: "~f %s !~P | (~P ~C %s)"
#
#   This  variable controls how send-hooks, message-hooks, save-hooks, and
#   fcc-hooks will be interpreted if they are specified with only a simple
#   regexp, instead of a matching pattern. The hooks are expanded when they are
#   declared, so a hook will be interpreted according to the value of this
#   variable at the time the hook is declared. The default value matches if the
#   message is either from a user matching the regular expression given, or if
#   it is from you (if the from address matches `` $alternates'') and is to or
#   cc'ed to a user matching the given regular expression.
#
#  delete
#
#   Type: quadoption
#   Default: ask-yes
#
#   Controls  whether  or  not messages are really deleted when closing or
#   synchronizing a mailbox. If set to yes, messages marked for deleting will
#   automatically be purged without prompting. If set to no, messages marked for
#   deletion will be kept in the mailbox.
#
#  delete_untag
#
#   Type: boolean
#   Default: yes
#
#   If  this option is set, mutt will untag messages when marking them for
#   deletion. This applies when you either explicitly delete a message, or when
#   you save it to another folder.
#
#  digest_collapse
#
#   Type: boolean
#   Default: yes
#
#   If this option is set, mutt's revattach menu will not show the subparts of
#   individual messages in a digest. To see these subparts, press 'v' on that
#   menu.
#
#  display_filter
#
#   Type: path
#   Default: ""
#
#   When set, specifies a command used to filter messages. When a message is
#   viewed it is passed as standard input to $display_filter, and the filtered
#   message is read from the standard output.
#
#  dotlock_program
#
#   Type: path
#   Default: "/usr/local/bin/mutt_dotlock"
#
#   Contains the path of the mutt_dotlock (8) binary to be used by mutt.
#
#  dsn_notify
#
#   Type: string
#   Default: ""
#
#   Note: you should not enable this unless you are using Sendmail 8.8.x or
#   greater.
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
#   Default: ""
#
#   Note: you should not enable this unless you are using Sendmail 8.8.x or
#   greater.
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
#   Default: yes
#
#   This  variable controls whether mutt, when sorting by threads, threads
#   messages with the same message-id together. If it is set, it will indicate
#   that it thinks they are duplicates of each other with an equals sign in the
#   thread diagram.
#
#  edit_headers
#
#   Type: boolean
#   Default: no
#
#   This option allows you to edit the header of your outgoing messages along
#   with the body of your message.
#
#  editor
#
#   Type: path
#   Default: ""
#
#   This variable specifies which editor is used by mutt. It defaults to the
#   value of the VISUAL, or EDITOR, environment variable, or to the string "vi"
#   if neither of those are set.
#
#  encode_from
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will quoted-printable encode messages when they contain the
#   string "From " in the beginning of a line. Useful to avoid the tampering
#   certain mail delivery and transport agents tend to do with messages.
#
#  envelope_from
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will try to derive the message's envelope sender from the
#   "From:" header. Note that this information is passed to sendmail command
#   using the "-f" command line switch, so don't set this option if you are
#   using that switch in $sendmail yourself, or if the sendmail on your machine
#   doesn't support that command line switch.
#
#  escape
#
#   Type: string
#   Default: "~"
#
#   Escape character to use for functions in the builtin editor.
#
#  fast_reply
#
#   Type: boolean
#   Default: no
#
#   When set, the initial prompt for recipients and subject are skipped when
#   replying to messages, and the initial prompt for subject is skipped when
#   forwarding messages.
#
#   Note: this variable has no effect when the `` $autoedit'' variable is set.
#
#  fcc_attach
#
#   Type: boolean
#   Default: yes
#
#   This variable controls whether or not attachments on outgoing messages are
#   saved along with the main body of your message.
#
#  fcc_clear
#
#   Type: boolean
#   Default: no
#
#   When this variable is set, FCCs will be stored unencrypted and unsigned,
#   even when the actual message is encrypted and/or signed.
#
#  folder
#
#   Type: path
#   Default: "~/Mail"
#
#   Specifies  the default location of your mailboxes. A `+' or `=' at the
#   beginning of a pathname will be expanded to the value of this variable. Note
#   that if you change this variable from the default value you need to make
#   sure that the assignment occurs before you use `+' or `=' for any other
#   variables since expansion takes place during the `set' command.
#
#  folder_format
#
#   Type: string
#   Default: "%2C %t %N %F %2l %-8.8u %-8.8g %8s %d %f"
#
#   This variable allows you to customize the file browser display to your
#   personal taste. This string is similar to `` $index_format'', but has its
#   own set of printf()-like sequences:
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
#   Default: yes
#
#   Controls whether or not the Mail-Followup-To header field is generated when
#   sending mail. When set, Mutt will generate this field when you are replying
#   to a known mailing list, specified with the ``subscribe'' or `` lists''
#   commands.
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
#  force_name
#
#   Type: boolean
#   Default: no
#
#   This variable is similar to `` $save_name'', except that Mutt will store a
#   copy of your outgoing message by the username of the address you are sending
#   to even if that mailbox does not exist.
#
#   Also see the `` $record'' variable.
#
#  forward_decode
#
#   Type: boolean
#   Default: yes
#
#   Controls  the  decoding  of complex MIME messages into text/plain when
#   forwarding a message. The message header is also RFC2047 decoded. This
#   variable  is  only  used, if `` $mime_forward'' is unset, otherwise ``
#   $mime_forward_decode'' is used instead.
#
#  forward_format
#
#   Type: string
#   Default: "[%a: %s]"
#
#   This variable controls the default subject when forwarding a message. It
#   uses the same format sequences as the `` $index_format'' variable.
#
#  forward_quote
#
#   Type: boolean
#   Default: no
#
#   When set forwarded messages included in the main body of the message (when
#   `` $mime_forward'' is unset) will be quoted using `` $indent_string''.
#
#  from
#
#   Type: e-mail address
#   Default: ""
#
#   When  set,  this  variable  contains a default from address. It can be
#   overridden using my_hdr (including from send-hooks) and `` $reverse_name''.
#
#   Defaults to the EMAIL environment variable's content.
#
#  gecos_mask
#
#   Type: regular expression
#   Default: "^[^,]*"
#
#   A regular expression used by mutt to parse the GECOS field of a password
#   entry when expanding the alias. By default the regular expression is set to
#   "^[^,]*" which will return the string up to the first "," encountered. If
#   the GECOS field contains a string like "lastname, firstname" then you should
#   set the gecos_mask=".*".
#
#   This can be useful if you see the following behavior: you address a e-mail
#   to user ID stevef whose full name is Steve Franklin. If mutt expands stevef
#   to "Franklin" stevef@foo.bar then you should set the gecos_mask to a regular
#   expression that will match the whole name so mutt will expand "Franklin" to
#   "Franklin, Steve".
#
#  hdrs
#
#   Type: boolean
#   Default: yes
#
#   When unset, the header fields normally added by the `` my_hdr'' command are
#   not created. This variable must be unset before composing a new message or
#   replying in order to take effect. If set, the user defined header fields are
#   added to every new message.
#
#  header
#
#   Type: boolean
#   Default: no
#
#   When set, this variable causes Mutt to include the header of the message you
#   are replying to into the edit buffer. The `` $weed'' setting applies.
#
#  help
#
#   Type: boolean
#   Default: yes
#
#   When  set,  help lines describing the bindings for the major functions
#   provided by each menu are displayed on the first line of the screen.
#
#   Note: The binding will not be displayed correctly if the function is bound
#   to a sequence rather than a single keystroke. Also, the help line may not be
#   updated if a binding is changed while Mutt is running. Since this variable
#   is primarily aimed at new users, neither of these should present a major
#   problem.
#
#  hidden_host
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will skip the host name part of `` $hostname'' variable when
#   adding the domain part to addresses. This variable does not affect the
#   generation  of  Message-IDs,  and  it  will not lead to the cut-off of
#   first-level domains.
#
#  hide_limited
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will not show the presence of missing messages in the thread
#   tree.
#
#  hide_missing
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will not show the presence of messages that are hidden by
#   limiting, in the thread tree.
#
#  hide_top_limited
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will not show the presence of missing messages at the top of
#   threads in the thread tree. Note that when $hide_limited is set, this option
#   will have no effect.
#
#  hide_top_missing
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will not show the presence of messages that are hidden by
#   limiting,  at  the  top  of  threads in the thread tree.Note that when
#   $hide_missing is set, this option will have no effect.
#
#  history
#
#   Type: number
#   Default: 10
#
#   This variable controls the size (in number of strings remembered) of the
#   string history buffer. The buffer is cleared each time the variable is set.
#
#  honor_followup_to
#
#   Type: quadoption
#   Default: yes
#
#   This variable controls whether or not a Mail-Followup-To header is honored
#   when group-replying to a message.
#
#  hostname
#
#   Type: string
#   Default: ""
#
#   Specifies the hostname to use after the ``@'' in local e-mail addresses.
#   This overrides the compile time definition obtained from /etc/resolv.conf.
#
#  ignore_list_reply_to
#
#   Type: boolean
#   Default: no
#
#   Affects the behaviour of the reply function when replying to messages from
#   mailing lists. When set, if the ``Reply-To:'' field is set to the same value
#   as the ``To:'' field, Mutt assumes that the ``Reply-To:'' field was set by
#   the mailing list to automate responses to the list, and will ignore this
#   field. To direct a response to the mailing list when this option is set, use
#   the list-reply function; group-reply will reply to both the sender and the
#   list.
#
#  imap_authenticators
#
#   Type: string
#   Default: ""
#
#   This is a colon-delimited list of authentication methods mutt may attempt to
#   use  to  log  in to an IMAP server, in the order mutt should try them.
#   Authentication methods are either 'login' or the right side of an IMAP
#   'AUTH=xxx' capability string, eg 'digest-md5', 'gssapi' or 'cram-md5'. This
#   parameter is case-insensitive. If this parameter is unset (the default) mutt
#   will try all available methods, in order from most-secure to least-secure.
#
#   Example: set imap_authenticators="gssapi:cram-md5:login"
#
#   Note:  Mutt will only fall back to other authentication methods if the
#   previous  methods  are  unavailable.  If  a  method  is  available but
#   authentication fails, mutt will not connect to the IMAP server.
#
#  imap_delim_chars
#
#   Type: string
#   Default: "/."
#
#   This contains the list of characters which you would like to treat as folder
#   separators for displaying IMAP paths. In particular it helps in using the
#   '=' shortcut for your folder variable.
#
#  imap_force_ssl
#
#   Type: boolean
#   Default: no
#
#   If this variable is set, Mutt will always use SSL when connecting to IMAP
#   servers.
#
#  imap_home_namespace
#
#   Type: string
#   Default: ""
#
#   You normally want to see your personal folders alongside your INBOX in the
#   IMAP browser. If you see something else, you may set this variable to the
#   IMAP path to your folders.
#
#  imap_keepalive
#
#   Type: number
#   Default: 900
#
#   This variable specifies the maximum amount of time in seconds that mutt will
#   wait  before polling open IMAP connections, to prevent the server from
#   closing them before mutt has finished with them. The default is well within
#   the RFC-specified minimum amount of time (30 minutes) before a server is
#   allowed to do this, but in practice the RFC does get violated every now and
#   then. Reduce this number if you find yourself getting disconnected from your
#   IMAP server due to inactivity.
#
#  imap_list_subscribed
#
#   Type: boolean
#   Default: no
#
#   This variable configures whether IMAP folder browsing will look for only
#   subscribed folders or all folders. This can be toggled in the IMAP browser
#   with the toggle-subscribed function.
#
#  imap_pass
#
#   Type: string
#   Default: ""
#
#   Specifies the password for your IMAP account. If unset, Mutt will prompt you
#   for your password when you invoke the fetch-mail function. Warning: you
#   should only use this option when you are on a fairly secure machine, because
#   the superuser can read your muttrc even if you are the only one who can read
#   the file.
#
#  imap_passive
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will not open new IMAP connections to check for new mail.
#   Mutt will only check for new mail over existing IMAP connections. This is
#   useful if you don't want to be prompted to user/password pairs on mutt
#   invocation, or if opening the connection is slow.
#
#  imap_peek
#
#   Type: boolean
#   Default: yes
#
#   If set, mutt will avoid implicitly marking your mail as read whenever you
#   fetch a message from the server. This is generally a good thing, but can
#   make closing an IMAP folder somewhat slower. This option exists to appease
#   speed freaks.
#
#  imap_servernoise
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will display warning messages from the IMAP server as error
#   messages. Since these messages are often harmless, or generated due to
#   configuration problems on the server which are out of the users' hands, you
#   may wish to suppress them at some point.
#
#  imap_user
#
#   Type: string
#   Default: ""
#
#   Your login name on the IMAP server.
#
#   This variable defaults to your user name on the local machine.
#
#  implicit_autoview
#
#   Type: boolean
#   Default: no
#
#   If set to ``yes'', mutt will look for a mailcap entry with the copiousoutput
#   flag  set for every MIME attachment it doesn't have an internal viewer
#   defined for. If such an entry is found, mutt will use the viewer defined in
#   that entry to convert the body part to text form.
#
#  include
#
#   Type: quadoption
#   Default: ask-yes
#
#   Controls whether or not a copy of the message(s) you are replying to is
#   included in your reply.
#
#  indent_string
#
#   Type: string
#   Default: "> "
#
#   Specifies the string to prepend to each line of text quoted in a message to
#   which you are replying. You are strongly encouraged not to change this
#   value, as it tends to agitate the more fanatical netizens.
#
#  index_format
#
#   Type: string
#   Default: "%4C %Z %{%b %d} %-15.15L (%4l) %s"
#
#   This variable allows you to customize the message index display to your
#   personal taste.
#
#   ``Format strings'' are similar to the strings used in the ``C'' function
#   printf to format output (see the man page for more detail). The following
#   sequences are defined in Mutt:
#
#   %a 
#          address of the author
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
#   %i 
#          message-id of the current message
#
#   %l 
#          number of lines in the message
#
#   %L 
#          If an address in the To or CC header field matches an address defined
#          by the users ``lists'' command, this displays "To <list-name>",
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
#          (_O_riginal save folder) Where mutt would formerly have stashed the
#          message: list name or recipient name if no list
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
#   See also: `` $to_chars''.
#
#  ispell
#
#   Type: path
#   Default: "/usr/bin/ispell"
#
#   How to invoke ispell (GNU's spell-checking software).
#
#  keep_flagged
#
#   Type: boolean
#   Default: no
#
#   If set, read messages marked as flagged will not be moved from your spool
#   mailbox to your `` $mbox'' mailbox, or as a result of a `` mbox-hook''
#   command.
#
#  locale
#
#   Type: string
#   Default: "C"
#
#   The locale used by strftime(3) to format dates. Legal values are the strings
#   your system accepts for the locale variable LC_TIME.
#
#  mail_check
#
#   Type: number
#   Default: 5
#
#   This variable configures how often (in seconds) mutt should look for new
#   mail.
#
#  mailcap_path
#
#   Type: string
#   Default: ""
#
#   This variable specifies which files to consult when attempting to display
#   MIME bodies not directly supported by Mutt.
#
#  mailcap_sanitize
#
#   Type: boolean
#   Default: yes
#
#   If set, mutt will restrict possible characters in mailcap % expandos to a
#   well-defined set of safe characters. This is the safe setting, but we are
#   not sure it doesn't break some more advanced MIME stuff.
#
#   DON'T CHANGE THIS SETTING UNLESS YOU ARE REALLY SURE WHAT YOU ARE DOING!
#
#  maildir_trash
#
#   Type: boolean
#   Default: no
#
#   If set, messages marked as deleted will be saved with the maildir (T)rashed
#   flag  instead  of  unlinked.  NOTE: this only applies to maildir-style
#   mailboxes. Setting it will have no effect on other mailbox types.
#
#  mark_old
#
#   Type: boolean
#   Default: yes
#
#   Controls whether or not Mutt makes the distinction between new messages and
#   old unread messages. By default, Mutt will mark new messages as old if you
#   exit a mailbox without reading them. The next time you start Mutt, the
#   messages will show up with an "O" next to them in the index menu, indicating
#   that they are old. In order to make Mutt treat all unread messages as new
#   only, you can unset this variable.
#
#  markers
#
#   Type: boolean
#   Default: yes
#
#   Controls the display of wrapped lines in the internal pager. If set, a ``+''
#   marker is displayed at the beginning of wrapped lines. Also see the ``
#   $smart_wrap'' variable.
#
#  mask
#
#   Type: regular expression
#   Default: "!^\.[^.]"
#
#   A regular expression used in the file browser, optionally preceded by the
#   not operator ``!''. Only files whose names match this mask will be shown.
#   The match is always case-sensitive.
#
#  mbox
#
#   Type: path
#   Default: "~/mbox"
#
#   This specifies the folder into which read mail in your `` $spoolfile''
#   folder will be appended.
#
#  mbox_type
#
#   Type: folder magic
#   Default: mbox
#
#   The default mailbox type used when creating new folders. May be any of mbox,
#   MMDF, MH and Maildir.
#
#  metoo
#
#   Type: boolean
#   Default: no
#
#   If unset, Mutt will remove your address (see the `` $alternates'' variable)
#   from the list of recipients when replying to a message.
#
#  menu_scroll
#
#   Type: boolean
#   Default: no
#
#   When set, menus will be scrolled up or down one line when you attempt to
#   move across a screen boundary. If unset, the screen is cleared and the next
#   or previous page of the menu is displayed (useful for slow links to avoid
#   many redraws).
#
#  meta_key
#
#   Type: boolean
#   Default: no
#
#   If set, forces Mutt to interpret keystrokes with the high bit (bit 8) set as
#   if the user had pressed the ESC key and whatever key remains after having
#   the high bit removed. For example, if the key pressed has an ASCII value of
#   0xf4, then this is treated as if the user had pressed ESC then ``x''. This
#   is because the result of removing the high bit from ``0xf4'' is ``0x74'',
#   which is the ASCII character ``x''.
#
#  mh_purge
#
#   Type: boolean
#   Default: no
#
#   When unset, mutt will mimic mh's behaviour and rename deleted messages to
#   ,<old file name> in mh folders instead of really deleting them. If the
#   variable is set, the message files will simply be deleted.
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
#   When set, the message you are forwarding will be attached as a separate MIME
#   part instead of included in the main body of the message. This is useful for
#   forwarding MIME messages so the receiver can properly view the message as it
#   was delivered to you. If you like to switch between MIME and not MIME from
#   mail to mail, set this variable to ask-no or ask-yes.
#
#   Also see `` $forward_decode'' and `` $mime_forward_decode''.
#
#  mime_forward_decode
#
#   Type: boolean
#   Default: no
#
#   Controls  the  decoding  of complex MIME messages into text/plain when
#   forwarding  a  message  while  `` $mime_forward'' is set. Otherwise ``
#   $forward_decode'' is used instead.
#
#  mime_forward_rest
#
#   Type: quadoption
#   Default: yes
#
#   When forwarding multiple attachments of a MIME message from the recvattach
#   menu, attachments which cannot be decoded in a reasonable manner will be
#   attached to the newly composed message if this option is set.
#
#  mix_entry_format
#
#   Type: string
#   Default: "%4n %c %-16s %a"
#
#   This variable describes the format of a remailer line on the mixmaster chain
#   selection screen. The following printf-like sequences are supported:
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
#   Default: "mixmaster"
#
#   This variable contains the path to the Mixmaster binary on your system. It
#   is  used  with  various sets of parameters to gather the list of known
#   remailers, and to finally send a message through the mixmaster chain.
#
#  move
#
#   Type: quadoption
#   Default: ask-no
#
#   Controls whether you will be asked to confirm moving read messages from your
#   spool mailbox to your `` $mbox'' mailbox, or as a result of a `` mbox-hook''
#   command.
#
#  message_format
#
#   Type: string
#   Default: "%s"
#
#   This is the string displayed in the ``attachment'' menu for attachments of
#   type message/rfc822. For a full listing of defined printf()-like sequences
#   see the section on `` $index_format''.
#
#  pager
#
#   Type: path
#   Default: "builtin"
#
#   This variable specifies which pager you would like to use to view messages.
#   builtin means to use the builtin pager, otherwise this variable should
#   specify the pathname of the external pager you would like to use.
#
#   Using an external pager may have some disadvantages: Additional keystrokes
#   are necessary because you can't call mutt functions directly from the pager,
#   and screen resizes cause lines longer than the screen width to be badly
#   formatted in the help menu.
#
#  pager_context
#
#   Type: number
#   Default: 0
#
#   This variable controls the number of lines of context that are given when
#   displaying the next or previous page in the internal pager. By default, Mutt
#   will display the line after the last one on the screen at the top of the
#   next page (0 lines of context).
#
#  pager_format
#
#   Type: string
#   Default: "-%Z- %C/%m: %-20.20n %s"
#
#   This  variable  controls the format of the one-line message ``status''
#   displayed before each message in either the internal or an external pager.
#   The valid sequences are listed in the `` $index_format'' section.
#
#  pager_index_lines
#
#   Type: number
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
#   Default: no
#
#   When set, the internal-pager will not move to the next message when you are
#   at the end of a message and invoke the next-page function.
#
#  pgp_autosign
#
#   Type: boolean
#   Default: no
#
#   Setting this variable will cause Mutt to always attempt to PGP/MIME sign
#   outgoing messages. This can be overridden by use of the pgp- menu, when
#   signing is not required or encryption is requested as well.
#
#  pgp_autoencrypt
#
#   Type: boolean
#   Default: no
#
#   Setting this variable will cause Mutt to always attempt to PGP/MIME encrypt
#   outgoing  messages.  This is probably only useful in connection to the
#   send-hook  command.  It can be overridden by use of the pgp-menu, when
#   encryption is not required or signing is requested as well.
#
#  pgp_ignore_subkeys
#
#   Type: boolean
#   Default: yes
#
#   Setting this variable will cause Mutt to ignore OpenPGP subkeys. Instead,
#   the principal key will inherit the subkeys' capabilities. Unset this if you
#   want to play interesting key selection games.
#
#  pgp_entry_format
#
#   Type: string
#   Default: "%4n %t%f %4l/0x%k %-4a %2c %u"
#
#   This variable allows you to customize the PGP key selection menu to your
#   personal taste. This string is similar to `` $index_format'', but has its
#   own set of printf()-like sequences:
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
#  pgp_good_sign
#
#   Type: regular expression
#   Default: ""
#
#   If  you  assign  a text to this variable, then a PGP signature is only
#   considered verified if the output from $pgp_verify_command contains the
#   text. Use this variable if the exit code from the command is 0 even for bad
#   signatures.
#
#  pgp_long_ids
#
#   Type: boolean
#   Default: no
#
#   If set, use 64 bit PGP key IDs. Unset uses the normal 32 bit Key IDs.
#
#  pgp_replyencrypt
#
#   Type: boolean
#   Default: yes
#
#   If set, automatically PGP encrypt replies to messages which are encrypted.
#
#  pgp_replysign
#
#   Type: boolean
#   Default: no
#
#   If set, automatically PGP sign replies to messages which are signed.
#
#   Note: this does not work on messages that are encrypted and signed!
#
#  pgp_replysignencrypted
#
#   Type: boolean
#   Default: no
#
#   If set, automatically PGP sign replies to messages which are encrypted. This
#   makes sense in combination with `` $pgp_replyencrypt'', because it allows
#   you to sign all messages which are automatically encrypted. This works
#   around the problem noted in `` $pgp_replysign'', that mutt is not able to
#   find out whether an encrypted message is also signed.
#
#  pgp_retainable_sigs
#
#   Type: boolean
#   Default: no
#
#   If   set,  signed  and  encrypted  messages  will  consist  of  nested
#   multipart/signed and multipart/encrypted body parts.
#
#   This is useful for applications like encrypted and signed mailing lists,
#   where the outer layer (multipart/encrypted) can be easily removed, while the
#   inner multipart/signed part is retained.
#
#  pgp_show_unusable
#
#   Type: boolean
#   Default: yes
#
#   If set, mutt will display non-usable keys on the PGP key selection menu.
#   This includes keys which have been revoked, have expired, or have been
#   marked as ``disabled'' by the user.
#
#  pgp_sign_as
#
#   Type: string
#   Default: ""
#
#   If you have more than one key pair, this option allows you to specify which
#   of your private keys to use. It is recommended that you use the keyid form
#   to specify your key (e.g., ``0x00112233'').
#
#  pgp_strict_enc
#
#   Type: boolean
#   Default: yes
#
#   If  set,  Mutt  will  automatically encode PGP/MIME signed messages as
#   quoted-printable. Please note that unsetting this variable may lead to
#   problems with non-verifyable PGP signatures, so only change this if you know
#   what you are doing.
#
#  pgp_timeout
#
#   Type: number
#   Default: 300
#
#   The number of seconds after which a cached passphrase will expire if not
#   used.
#
#  pgp_verify_sig
#
#   Type: quadoption
#   Default: yes
#
#   If ``yes'', always attempt to verify PGP/MIME signatures. If ``ask-yes'' or
#   ``ask-no'', ask whether or not to verify the signature. If ``no'', never
#   attempt to verify PGP/MIME signatures.
#
#  pgp_sort_keys
#
#   Type: sort order
#   Default: address
#
#   Specifies how the entries in the `pgp keys' menu are sorted. The following
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
#   If you prefer reverse order of the above values, prefix it with `reverse-'.
#
#  pgp_create_traditional
#
#   Type: quadoption
#   Default: no
#
#   This option controls whether Mutt generates old-style PGP encrypted or
#   signed messages under certain circumstances.
#
#   Note that PGP/MIME will be used automatically for messages which have a
#   character set different from us-ascii, or which consist of more than a
#   single MIME part.
#
#   Also  note  that  using  the  old-style PGP message format is strongly
#   deprecated.
#
#  pgp_decode_command
#
#   Type: string
#   Default: ""
#
#   This  format  strings  specifies  a  command  which  is used to decode
#   application/pgp attachments.
#
#   The PGP command formats have their own set of printf-like sequences:
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
#   documentation.
#
#  pgp_getkeys_command
#
#   Type: string
#   Default: ""
#
#   This command is invoked whenever mutt will need public key information. %r
#   is the only printf-like sequence used with this format.
#
#  pgp_verify_command
#
#   Type: string
#   Default: ""
#
#   This command is used to verify PGP/MIME signatures.
#
#  pgp_decrypt_command
#
#   Type: string
#   Default: ""
#
#   This command is used to decrypt a PGP/MIME encrypted message.
#
#  pgp_clearsign_command
#
#   Type: string
#   Default: ""
#
#   This format is used to create a "clearsigned" old-style PGP attachment. Note
#   that the use of this format is strongly deprecated.
#
#  pgp_sign_command
#
#   Type: string
#   Default: ""
#
#   This  command  is  used  to  create  the  detached PGP signature for a
#   multipart/signed PGP/MIME body part.
#
#  pgp_encrypt_sign_command
#
#   Type: string
#   Default: ""
#
#   This command is used to combinedly sign/encrypt a body part.
#
#  pgp_encrypt_only_command
#
#   Type: string
#   Default: ""
#
#   This command is used to encrypt a body part without signing it.
#
#  pgp_import_command
#
#   Type: string
#   Default: ""
#
#   This command is used to import a key from a message into the user's public
#   key ring.
#
#  pgp_export_command
#
#   Type: string
#   Default: ""
#
#   This command is used to export a public key from the user's key ring.
#
#  pgp_verify_key_command
#
#   Type: string
#   Default: ""
#
#   This command is used to verify key information from the key selection menu.
#
#  pgp_list_secring_command
#
#   Type: string
#   Default: ""
#
#   This command is used to list the secret key ring's contents. The output
#   format must be analogous to the one used by gpg --list-keys --with-colons.
#
#   This format is also generated by the pgpring utility which comes with mutt.
#
#  pgp_list_pubring_command
#
#   Type: string
#   Default: ""
#
#   This command is used to list the public key ring's contents. The output
#   format must be analogous to the one used by gpg --list-keys --with-colons.
#
#   This format is also generated by the pgpring utility which comes with mutt.
#
#  forward_decrypt
#
#   Type: boolean
#   Default: yes
#
#   Controls the handling of encrypted messages when forwarding a message. When
#   set, the outer layer of encryption is stripped off. This variable is only
#   used if `` $mime_forward'' is set and `` $mime_forward_decode'' is unset.
#
#  ssl_starttls
#
#   Type: quadoption
#   Default: yes
#
#   If  set  (the  default),  mutt will attempt to use STARTTLS on servers
#   advertising  the  capability. When unset, mutt will not attempt to use
#   STARTTLS regardless of the server's capabilities.
#
#  certificate_file
#
#   Type: path
#   Default: ""
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
#   Example: set certificate_file=~/.mutt/certificates
#
#  ssl_usesystemcerts
#
#   Type: boolean
#   Default: yes
#
#   If set to yes, mutt will use CA certificates in the system-wide certificate
#   store when checking if server certificate is signed by a trusted CA.
#
#  entropy_file
#
#   Type: path
#   Default: ""
#
#   The file which includes random data that is used to initalize SSL library
#   functions.
#
#  ssl_use_sslv2
#
#   Type: boolean
#   Default: yes
#
#   This  variables  specifies  whether to attempt to use SSLv2 in the SSL
#   authentication process.
#
#  ssl_use_sslv3
#
#   Type: boolean
#   Default: yes
#
#   This  variables  specifies  whether to attempt to use SSLv3 in the SSL
#   authentication process.
#
#  ssl_use_tlsv1
#
#   Type: boolean
#   Default: yes
#
#   This  variables  specifies  whether to attempt to use TLSv1 in the SSL
#   authentication process.
#
#  pipe_split
#
#   Type: boolean
#   Default: no
#
#   Used in connection with the pipe-message command and the ``tag- prefix''
#   operator. If this variable is unset, when piping a list of tagged messages
#   Mutt will concatenate the messages and will pipe them as a single folder.
#   When set, Mutt will pipe the messages one by one. In both cases the messages
#   are piped in the current sorted order, and the `` $pipe_sep'' separator is
#   added after each message.
#
#  pipe_decode
#
#   Type: boolean
#   Default: no
#
#   Used in connection with the pipe-message command. When unset, Mutt will pipe
#   the messages without any preprocessing. When set, Mutt will weed headers and
#   will attempt to PGP/MIME decode the messages first.
#
#  pipe_sep
#
#   Type: string
#   Default: "\n"
#
#   The separator to add between messages when piping a list of tagged messages
#   to an external Unix command.
#
#  pop_authenticators
#
#   Type: string
#   Default: ""
#
#   This is a colon-delimited list of authentication methods mutt may attempt to
#   use  to  log  in  to an POP server, in the order mutt should try them.
#   Authentication methods are either 'user', 'apop' or any SASL mechanism, eg
#   'digest-md5', 'gssapi' or 'cram-md5'. This parameter is case-insensitive. If
#   this parameter is unset (the default) mutt will try all available methods,
#   in order from most-secure to least-secure.
#
#   Example: set pop_authenticators="digest-md5:apop:user"
#
#  pop_auth_try_all
#
#   Type: boolean
#   Default: yes
#
#   If set, Mutt will try all available methods. When unset, Mutt will only fall
#   back  to  other  authentication  methods  if  the previous methods are
#   unavailable. If a method is available but authentication fails, Mutt will
#   not connect to the POP server.
#
#  pop_checkinterval
#
#   Type: number
#   Default: 60
#
#   This variable configures how often (in seconds) POP should look for new
#   mail.
#
#  pop_delete
#
#   Type: quadoption
#   Default: ask-no
#
#   If set, Mutt will delete successfully downloaded messages from the POP
#   server when using the fetch-mail function. When unset, Mutt will download
#   messages but also leave them on the POP server.
#
#  pop_host
#
#   Type: string
#   Default: ""
#
#   The  name of your POP server for the fetch-mail function. You can also
#   specify an alternative port, username and password, ie:
#
#   [pop[s]://][username[:password]@]popserver[:port]
#
#  pop_last
#
#   Type: boolean
#   Default: no
#
#   If this variable is set, mutt will try to use the "LAST" POP command for
#   retrieving  only  unread  messages  from the POP server when using the
#   fetch-mail function.
#
#  pop_reconnect
#
#   Type: quadoption
#   Default: ask-yes
#
#   Controls  whether or not Mutt will try to reconnect to POP server when
#   connection lost.
#
#  pop_user
#
#   Type: string
#   Default: ""
#
#   Your login name on the POP server.
#
#   This variable defaults to your user name on the local machine.
#
#  pop_pass
#
#   Type: string
#   Default: ""
#
#   Specifies the password for your POP account. If unset, Mutt will prompt you
#   for your password when you open POP mailbox. Warning: you should only use
#   this option when you are on a fairly secure machine, because the superuser
#   can read your muttrc even if you are the only one who can read the file.
#
#  post_indent_string
#
#   Type: string
#   Default: ""
#
#   Similar to the `` $attribution'' variable, Mutt will append this string
#   after the inclusion of a message which is being replied to.
#
#  postpone
#
#   Type: quadoption
#   Default: ask-yes
#
#   Controls whether or not messages are saved in the `` $postponed'' mailbox
#   when you elect not to send immediately.
#
#  postponed
#
#   Type: path
#   Default: "~/postponed"
#
#   Mutt allows you to indefinitely `` postpone sending a message'' which you
#   are editing. When you choose to postpone a message, Mutt saves it in the
#   mailbox specified by this variable. Also see the `` $postpone'' variable.
#
#  preconnect
#
#   Type: string
#   Default: ""
#
#   If  set,  a  shell command to be executed if mutt fails to establish a
#   connection to the server. This is useful for setting up secure connections,
#   e.g. with ssh(1). If the command returns a nonzero status, mutt gives up
#   opening the server. Example:
#
#   preconnect="ssh -f -q -L 1234:mailhost.net:143 mailhost.net sleep 20 <
#   /dev/null > /dev/null"
#
#   Mailbox 'foo' on mailhost.net can now be reached as '{localhost:1234}foo'.
#
#   NOTE: For this example to work, you must be able to log in to the remote
#   machine without having to enter a password.
#
#  print
#
#   Type: quadoption
#   Default: ask-no
#
#   Controls whether or not Mutt asks for confirmation before printing. This is
#   useful for people (like me) who accidentally hit ``p'' often.
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
#   Default: no
#
#   Used in connection with the print-message command. If this option is set,
#   the command sepcified by $print_command is executed once for each message
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
#   Default: yes
#
#   If you use an external `` $pager'', setting this variable will cause Mutt to
#   prompt you for a command when the pager exits rather than returning to the
#   index menu. If unset, Mutt will return to the index menu when the external
#   pager exits.
#
#  query_command
#
#   Type: path
#   Default: ""
#
#   This specifies the command that mutt will use to make external address
#   queries. The string should contain a %s, which will be substituted with the
#   query string the user types. See `` query'' for more information.
#
#  quit
#
#   Type: quadoption
#   Default: yes
#
#   This variable controls whether ``quit'' and ``exit'' actually quit from
#   mutt. If it set to yes, they do quit, if it is set to no, they have no
#   effect,  and  if  it is set to ask-yes or ask-no, you are prompted for
#   confirmation when you try to quit.
#
#  quote_regexp
#
#   Type: regular expression
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
#   Default: 10
#
#   If set to a value greater than 0, Mutt will display which message it is
#   currently on when reading a mailbox. The message is printed after read_inc
#   messages have been read (e.g., if set to 25, Mutt will print a message when
#   it  reads message 25, and then again when it gets to message 50). This
#   variable is meant to indicate progress when reading large mailboxes which
#   may take some time. When set to 0, only a single message will appear before
#   the reading the mailbox.
#
#   Also see the `` $write_inc'' variable.
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
#   Default: ""
#
#   This variable specifies what "real" or "personal" name should be used when
#   sending messages.
#
#   By default, this is the GCOS field from /etc/passwd. Note that this variable
#   will not be used when the user has set a real name in the $from variable.
#
#  recall
#
#   Type: quadoption
#   Default: ask-yes
#
#   Controls whether or not you are prompted to recall postponed messages when
#   composing a new message. Also see `` $postponed''.
#
#   Setting this variable to ``yes'' is not generally useful, and thus not
#   recommended.
#
#  record
#
#   Type: path
#   Default: ""
#
#   This  specifies  the  file into which your outgoing messages should be
#   appended. (This is meant as the primary method for saving a copy of your
#   messages, but another way to do this is using the `` my_hdr'' command to
#   create a Bcc: field with your email address in it.)
#
#   The  value  of  $record  is  overridden by the `` $force_name'' and ``
#   $save_name'' variables, and the `` fcc-hook'' command.
#
#  reply_regexp
#
#   Type: regular expression
#   Default: "^(re([\[0-9\]+])*|aw):[ \t]*"
#
#   A regular expression used to recognize reply messages when threading and
#   replying. The default value corresponds to the English "Re:" and the German
#   "Aw:".
#
#  reply_self
#
#   Type: boolean
#   Default: no
#
#   If unset and you are replying to a message sent by you, Mutt will assume
#   that you want to reply to the recipients of that message rather than to
#   yourself.
#
#  reply_to
#
#   Type: quadoption
#   Default: ask-yes
#
#   If set, Mutt will ask you if you want to use the address listed in the
#   Reply-To: header field when replying to a message. If you answer no, it will
#   use the address in the From: header field instead. This option is useful for
#   reading a mailing list that sets the Reply-To: header field to the list
#   address and you want to send a private message to the author of a message.
#
#  resolve
#
#   Type: boolean
#   Default: yes
#
#   When set, the cursor will be automatically advanced to the next (possibly
#   undeleted) message whenever a command that modifies the current message is
#   executed.
#
#  reverse_alias
#
#   Type: boolean
#   Default: no
#
#   This variable controls whether or not Mutt will display the "personal" name
#   from your aliases in the index menu if it finds an alias that matches the
#   message's sender. For example, if you have the following alias:
#
#alias juser abd30425@somewhere.net (Joe User)
#
#   and then you receive mail which contains the following header:
#
#From: abd30425@somewhere.net
#
#   It  would  be  displayed  in the index menu as ``Joe User'' instead of
#   ``abd30425@somewhere.net.'' This is useful when the person's e-mail address
#   is not human friendly (like CompuServe addresses).
#
#  reverse_name
#
#   Type: boolean
#   Default: no
#
#   It may sometimes arrive that you receive mail to a certain machine, move the
#   messages to another machine, and reply to some the messages from there. If
#   this variable is set, the default From: line of the reply messages is built
#   using the address where you received the messages you are replying to. If
#   the variable is unset, the From: line will use your address on the current
#   machine.
#
#  reverse_realname
#
#   Type: boolean
#   Default: yes
#
#   This variable fine-tunes the behaviour of the reverse_name feature. When it
#   is set, mutt will use the address from incoming messages as-is, possibly
#   including eventual real names. When it is unset, mutt will override any such
#   realnames with the setting of the realname variable.
#
#  rfc2047_parameters
#
#   Type: boolean
#   Default: no
#
#   When  this  variable  is  set,  Mutt will decode RFC-2047-encoded MIME
#   parameters. You want to set this variable when mutt suggests you to save
#   attachments to files named like this:
#   =?iso-8859-1?Q?file=5F=E4=5F991116=2Ezip?=
#
#   When this variable is set interactively, the change doesn't have the desired
#   effect before you have changed folders.
#
#   Note that this use of RFC 2047's encoding is explicitly, prohibited by the
#   standard, but nevertheless encountered in the wild. Also note that setting
#   this parameter will not have the effect that mutt generates this kind of
#   encoding. Instead, mutt will unconditionally use the encoding specified in
#   RFC 2231.
#
#  save_address
#
#   Type: boolean
#   Default: no
#
#   If set, mutt will take the sender's full address when choosing a default
#   folder for saving a mail. If `` $save_name'' or `` $force_name'' is set too,
#   the selection of the fcc folder will be changed as well.
#
#  save_empty
#
#   Type: boolean
#   Default: yes
#
#   When unset, mailboxes which contain no saved messages will be removed when
#   closed (the exception is `` $spoolfile'' which is never removed). If set,
#   mailboxes are never removed.
#
#   Note: This only applies to mbox and MMDF folders, Mutt does not delete MH
#   and Maildir directories.
#
#  save_name
#
#   Type: boolean
#   Default: no
#
#   This variable controls how copies of outgoing messages are saved. When set,
#   a check is made to see if a mailbox specified by the recipient address
#   exists  (this  is  done by searching for a mailbox in the `` $folder''
#   directory with the username part of the recipient address). If the mailbox
#   exists, the outgoing message will be saved to that mailbox, otherwise the
#   message is saved to the `` $record'' mailbox.
#
#   Also see the `` $force_name'' variable.
#
#  score
#
#   Type: boolean
#   Default: yes
#
#   When this variable is unset, scoring is turned off. This can be useful to
#   selectively   disable   scoring   for  certain  folders  when  the  ``
#   $score_threshold_delete'' variable and friends are used.
#
#  score_threshold_delete
#
#   Type: number
#   Default: -1
#
#   Messages which have been assigned a score equal to or lower than the value
#   of this variable are automatically marked for deletion by mutt. Since mutt
#   scores are always greater than or equal to zero, the default setting of this
#   variable will never mark a message for deletion.
#
#  score_threshold_flag
#
#   Type: number
#   Default: 9999
#
#   Messages wich have been assigned a score greater than or equal to this
#   variable's value are automatically marked "flagged".
#
#  score_threshold_read
#
#   Type: number
#   Default: -1
#
#   Messages which have been assigned a score equal to or lower than the value
#   of this variable are automatically marked as read by mutt. Since mutt scores
#   are  always greater than or equal to zero, the default setting of this
#   variable will never mark a message read.
#
#  send_charset
#
#   Type: string
#   Default: "us-ascii:iso-8859-1:utf-8"
#
#   A list of character sets for outgoing messages. Mutt will use the first
#   character set into which the text can be converted exactly. If your ``
#   $charset'' is not iso-8859-1 and recipients may not understand UTF-8, it is
#   advisable  to  include in the list an appropriate widely used standard
#   character set (such as iso-8859-2, koi8-r or iso-2022-jp) either instead of
#   or after "iso-8859-1".
#
#  sendmail
#
#   Type: path
#   Default: "/usr/sbin/sendmail -oem -oi"
#
#   Specifies the program and arguments used to deliver mail sent by Mutt. Mutt
#   expects  that the specified program interprets additional arguments as
#   recipient addresses.
#
#  sendmail_wait
#
#   Type: number
#   Default: 0
#
#   Specifies the number of seconds to wait for the `` $sendmail'' process to
#   finish before giving up and putting delivery in the background.
#
#   Mutt interprets the value of this variable as follows:
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
#   Default: ""
#
#   Command to use when spawning a subshell. By default, the user's login shell
#   from /etc/passwd is used.
#
#  sig_dashes
#
#   Type: boolean
#   Default: yes
#
#   If  set,  a  line  containing  ``-- '' will be inserted before your ``
#   $signature''. It is strongly recommended that you not unset this variable
#   unless your ``signature'' contains just your name. The reason for this is
#   because many software packages use ``-- \n'' to detect your signature. For
#   example, Mutt has the ability to highlight the signature in a different
#   color in the builtin pager.
#
#  sig_on_top
#
#   Type: boolean
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
#   Default: "~/.signature"
#
#   Specifies the filename of your signature, which is appended to all outgoing
#   messages. If the filename ends with a pipe (``|''), it is assumed that
#   filename is a shell command and input should be read from its stdout.
#
#  simple_search
#
#   Type: string
#   Default: "~f %s | ~s %s"
#
#   Specifies how Mutt should expand a simple search into a real search pattern.
#   A simple search is one that does not contain any of the ~ operators. See ``
#   patterns'' for more information on search patterns.
#
#   For example, if you simply type joe at a search or limit prompt, Mutt will
#   automatically expand it to the value specified by this variable. For the
#   default value it would be:
#
#   ~f joe | ~s joe
#
#  smart_wrap
#
#   Type: boolean
#   Default: yes
#
#   Controls the display of lines longer then the screen width in the internal
#   pager. If set, long lines are wrapped at a word boundary. If unset, lines
#   are simply wrapped at the screen edge. Also see the `` $markers'' variable.
#
#  smileys
#
#   Type: regular expression
#   Default: "(>From )|(:[-^]?[][)(><}{|/DP])"
#
#   The pager uses this variable to catch some common false positives of ``
#   $quote_regexp'', most notably smileys in the beginning of a line
#
#  sleep_time
#
#   Type: number
#   Default: 1
#
#   Specifies time, in seconds, to pause while displaying certain informational
#   messages, while moving from folder to folder and after expunging messages
#   from the current folder. The default is to pause one second, so a value of
#   zero for this option suppresses the pause.
#
#  sort
#
#   Type: sort order
#   Default: date
#
#   Specifies how to sort messages in the index menu. Valid values are:
#
#   date or date-sent
#   date-received
#   from
#   mailbox-order (unsorted)
#   score
#   size
#   subject
#   threads
#   to
#
#   You may optionally use the reverse- prefix to specify reverse sorting order
#   (example: set sort=reverse-date-sent).
#
#  sort_alias
#
#   Type: sort order
#   Default: alias
#
#   Specifies how the entries in the `alias' menu are sorted. The following are
#   legal values:
#
#   address (sort alphabetically by email address)
#   alias (sort alphabetically by alias name)
#   unsorted (leave in order specified in .muttrc)
#
#  sort_aux
#
#   Type: sort order
#   Default: date
#
#   When sorting by threads, this variable controls how threads are sorted in
#   relation to other threads, and how the branches of the thread trees are
#   sorted. This can be set to any value that `` $sort'' can, except threads (in
#   that case, mutt will just use date-sent). You can also specify the last-
#   prefix  in  addition to the reverse- prefix, but last- must come after
#   reverse-. The last- prefix causes messages to be sorted against its siblings
#   by which has the last descendant, using the rest of sort_aux as an ordering.
#   For instance, set sort_aux=last- date-received would mean that if a new
#   message is received in a thread, that thread becomes the last one displayed
#   (or the first, if you have set sort=reverse-threads.) Note: For reversed ``
#   $sort'' order $sort_aux is reversed again (which is not the right thing to
#   do, but kept to not break any existing configuration setting).
#
#  sort_browser
#
#   Type: sort order
#   Default: subject
#
#   Specifies how to sort entries in the file browser. By default, the entries
#   are sorted alphabetically. Valid values:
#
#   alpha (alphabetically)
#   date
#   size
#   unsorted
#
#   You may optionally use the reverse- prefix to specify reverse sorting order
#   (example: set sort_browser=reverse-date).
#
#  sort_re
#
#   Type: boolean
#   Default: yes
#
#   This  variable  is  only  useful  when  sorting  by  threads  with  ``
#   $strict_threads'' unset. In that case, it changes the heuristic mutt uses to
#   thread  messages by subject. With sort_re set, mutt will only attach a
#   message as the child of another message by subject if the subject of the
#   child  message  starts  with  a  substring  matching the setting of ``
#   $reply_regexp''. With sort_re unset, mutt will attach the message whether or
#   not this is the case, as long as the non-`` $reply_regexp'' parts of both
#   messages are identical.
#
#  spoolfile
#
#   Type: path
#   Default: ""
#
#   If your spool mailbox is in a non-default place where Mutt cannot find it,
#   you can specify its location with this variable. Mutt will automatically set
#   this variable to the value of the environment variable $MAIL if it is not
#   set.
#
#  status_chars
#
#   Type: string
#   Default: "-*%A"
#
#   Controls the characters used by the "%r" indicator in `` $status_format''.
#   The first character is used when the mailbox is unchanged. The second is
#   used when the mailbox has been changed, and it needs to be resynchronized.
#   The third is used if the mailbox is in read-only mode, or if the mailbox
#   will not be written when exiting that mailbox (You can toggle whether to
#   write changes to a mailbox with the toggle-write operation, bound by default
#   to "%"). The fourth is used to indicate that the current folder has been
#   opened in attach- message mode (Certain operations like composing a new
#   mail, replying, forwarding, etc. are not permitted in this mode).
#
#  status_format
#
#   Type: string
#   Default:  "-%r-Mutt:  %f  [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d?
#   Del:%d?%?F?    Flag:%F?%?t?   Tag:%t?%?p?   Post:%p?%?b?   Inc:%b?%?l?
#   %l?]---(%s/%S)-%>-(%P)---"
#
#   Controls the format of the status line displayed in the index menu. This
#   string  is  similar  to  ``  $index_format'',  but  has its own set of
#   printf()-like sequences:
#
#   %b 
#          number of mailboxes with new mail *
#
#   %d 
#          number of deleted messages *
#
#   %h 
#          local hostname
#
#   %f 
#          the full pathname of the current mailbox
#
#   %F 
#          number of flagged messages *
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
#          number of old unread messages
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
#          current sorting mode ( $sort)
#
#   %S 
#          current aux sorting method ( $sort_aux)
#
#   %t 
#          number of tagged messages *
#
#   %u 
#          number of unread messages *
#
#   %v 
#          Mutt version string
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
#   is  the  string  you  would  like  printed  if status_char is nonzero.
#   optional_string may contain other sequence as well as normal text, but you
#   may not nest optional strings.
#
#   Here is an example illustrating how to optionally print the number of new
#   messages in a mailbox: %?n?%n new messages.?
#
#   Additionally you can switch between two strings, the first one, if a value
#   is zero, the second one, if the value is nonzero, by using the following
#   construct: %?<sequence_char>?<if_string>&<else_string>?
#
#   You can additionally force the result of any printf-like sequence to be
#   lowercase by prefixing the sequence character with an underscore (_) sign.
#   For example, if you want to display the local hostname in lowercase, you
#   would use: %_h
#
#  status_on_top
#
#   Type: boolean
#   Default: no
#
#   Setting this variable causes the ``status bar'' to be displayed on the first
#   line of the screen rather than near the bottom.
#
#  strict_threads
#
#   Type: boolean
#   Default: no
#
#   If  set,  threading  will  only  make  use  of the ``In-Reply-To'' and
#   ``References'' fields when you `` $sort'' by message threads. By default,
#   messages with the same subject are grouped together in ``pseudo threads.''
#   This may not always be desirable, such as in a personal mailbox where you
#   might have several unrelated messages with the subject ``hi'' which will get
#   grouped together.
#
#  suspend
#
#   Type: boolean
#   Default: yes
#
#   When unset, mutt won't stop when the user presses the terminal's susp key,
#   usually ``control-Z''. This is useful if you run mutt inside an xterm using
#   a command like xterm -e mutt.
#
#  text_flowed
#
#   Type: boolean
#   Default: no
#
#   When set, mutt will generate text/plain; format=flowed attachments. This
#   format is easier to handle for some mailing software, and generally just
#   looks like ordinary text. To actually make use of this format's features,
#   you'll need support in your editor.
#
#   Note that $indent_string is ignored when this option is set.
#
#  thread_received
#
#   Type: boolean
#   Default: no
#
#   When set, mutt uses the date received rather than the date sent to thread
#   messages by subject.
#
#  thorough_search
#
#   Type: boolean
#   Default: no
#
#   Affects the ~b and ~h search operations described in section `` patterns''
#   above. If set, the headers and attachments of messages to be searched are
#   decoded before searching. If unset, messages are searched as they appear in
#   the folder.
#
#  tilde
#
#   Type: boolean
#   Default: no
#
#   When set, the internal-pager will pad blank lines to the bottom of the
#   screen with a tilde (~).
#
#  timeout
#
#   Type: number
#   Default: 600
#
#   This variable controls the number of seconds Mutt will wait for a key to be
#   pressed in the main menu before timing out and checking for new mail. A
#   value of zero or less will cause Mutt not to ever time out.
#
#  tmpdir
#
#   Type: path
#   Default: ""
#
#   This variable allows you to specify where Mutt will place its temporary
#   files needed for displaying and composing messages.
#
#  to_chars
#
#   Type: string
#   Default: " +TCFL"
#
#   Controls the character used to indicate mail addressed to you. The first
#   character is the one used when the mail is NOT addressed to your address
#   (default: space). The second is used when you are the only recipient of the
#   message (default: +). The third is when your address appears in the TO
#   header field, but you are not the only recipient of the message (default:
#   T). The fourth character is used when your address is specified in the CC
#   header field, but you are not the only recipient. The fifth character is
#   used to indicate mail that was sent by you. The sixth character is used to
#   indicate when a mail was sent to a mailing-list you subscribe to (default:
#   L).
#
#  tunnel
#
#   Type: string
#   Default: ""
#
#   Setting this variable will cause mutt to open a pipe to a command instead of
#   a  raw  socket. You may be able to use this to set up preauthenticated
#   connections to your IMAP/POP3 server. Example:
#
#   tunnel="ssh -q mailhost.net /usr/local/libexec/imapd"
#
#   NOTE: For this example to work you must be able to log in to the remote
#   machine without having to enter a password.
#
#  use_8bitmime
#
#   Type: boolean
#   Default: no
#
#   Warning: do not set this variable unless you are using a version of sendmail
#   which supports the -B8BITMIME flag (such as sendmail 8.8.x) or you may not
#   be able to send mail.
#
#   When set, Mutt will invoke `` $sendmail'' with the -B8BITMIME flag when
#   sending 8-bit messages to enable ESMTP negotiation.
#
#  use_domain
#
#   Type: boolean
#   Default: yes
#
#   When set, Mutt will qualify all local addresses (ones without the @host
#   portion) with the value of `` $hostname''. If unset, no addresses will be
#   qualified.
#
#  use_from
#
#   Type: boolean
#   Default: yes
#
#   When set, Mutt will generate the `From:' header field when sending messages.
#   If  unset,  no  `From:' header field will be generated unless the user
#   explicitly sets one using the `` my_hdr'' command.
#
#  user_agent
#
#   Type: boolean
#   Default: yes
#
#   When  set,  mutt  will add a "User-Agent" header to outgoing messages,
#   indicating which version of mutt was used for composing them.
#
#  visual
#
#   Type: path
#   Default: ""
#
#   Specifies the visual editor to invoke when the ~v command is given in the
#   builtin editor.
#
#  wait_key
#
#   Type: boolean
#   Default: yes
#
#   Controls whether Mutt will ask you to press a key after shell- escape,
#   pipe-message, pipe-entry, print-message, and print-entry commands.
#
#   It is also used when viewing attachments with `` auto_view'', provided that
#   the corresponding mailcap entry has a needsterminal flag, and the external
#   program is interactive.
#
#   When set, Mutt will always ask for a key. When unset, Mutt will wait for a
#   key only if the external command returned a non-zero status.
#
#  weed
#
#   Type: boolean
#   Default: yes
#
#   When set, mutt will weed headers when when displaying, forwarding, printing,
#   or replying to messages.
#
#  wrap_search
#
#   Type: boolean
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
#   Default: 0
#
#   Controls the margin left at the right side of the terminal when mutt's pager
#   does smart wrapping.
#
#  write_inc
#
#   Type: number
#   Default: 10
#
#   When writing a mailbox, a message will be printed every write_inc messages
#   to indicate progress. If set to 0, only a single message will be displayed
#   before writing a mailbox.
#
#   Also see the `` $read_inc'' variable.
#
#  write_bcc
#
#   Type: boolean
#   Default: yes
#
#   Controls whether mutt writes out the Bcc header when preparing messages to
#   be sent. Exim users may wish to use this.
#
#  END
