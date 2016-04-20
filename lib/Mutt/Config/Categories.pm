package Mutt::Config::Categories;

use strict;
use warnings;

our %CATEGORIES = (
	'abort_nosubject'               => 'composing',
	'abort_unmodified'              => 'composing',
	'alias_file'                    => 'essential',
	'alias_format'                  => 'addressing',
	'allow_8bit'                    => 'sending',
	'allow_ansi'                    => 'display',
	'alternates'                    => 'addressing',
	'arrow_cursor'                  => 'display',
	'ascii_chars'                   => 'display',
	'askbcc'                        => 'composing',
	'askcc'                         => 'composing',
	'ask_follow_up'                 => 'composing',
	'ask_x_comment_to'              => 'composing',
	'assumed_charset'               => 'reading',
	'attach_format'                 => 'attachments',
	'attach_ignore_fundamental'     => 'attachments',
	'attach_recurse'                => 'attachments',
	'attach_sep'                    => 'reading',
	'attach_split'                  => 'reading',
	'attribution'                   => 'composing',
	'autoedit'                      => 'composing',
	'auto_tag'                      => 'reading',
	'backlog'                       => 'patches',
	'beep_new'                      => 'reading',
	'beep'                          => 'system',
	'bounce_delivered'              => 'sending',
	'bounce'                        => 'sending',
	'braille_friendly'              => 'display',
	'catchup_newsgroup'             => 'nntp',
	'certificate_file'              => 'ssl',
	'charset'                       => 'display',
	'check_new'                     => 'reading',
	'collapse_unread'               => 'reading',
	'compose_format'                => 'composing',
	'config_charset'                => 'system',
	'confirmappend'                 => 'folders',
	'confirmcreate'                 => 'folders',
	'connect_timeout'               => 'network',
	'content_type'                  => 'composing',
	'copy'                          => 'sending',
	'crypt_autoencrypt'             => 'crypto',
	'crypt_autopgp'                 => 'crypto',
	'crypt_autosign'                => 'crypto',
	'crypt_autosmime'               => 'crypto',
	'crypt_replyencrypt'            => 'crypto',
	'crypt_replysign'               => 'crypto',
	'crypt_replysignencrypted'      => 'crypto',
	'crypt_timestamp'               => 'crypto',
	'crypt_use_gpgme'               => 'crypto',
	'crypt_verify_sig'              => 'crypto',
	'date_format'                   => 'reading',
	'default_hook'                  => 'system',
	'delete'                        => 'reading',
	'delete_untag'                  => 'folders',
	'digest_collapse'               => 'reading',
	'display_filter'                => 'reading',
	'dotlock_program'               => 'system',
	'dsn_notify'                    => 'sending',
	'dsn_return'                    => 'sending',
	'duplicate_threads'             => 'reading',
	'edit_headers'                  => 'composing',
	'editor'                        => 'composing',
	'encode_from'                   => 'sending',
	'entropy_file'                  => 'ssl',
	'envelope_from_address'         => 'sending',
	'envelope_from'                 => 'composing',
	'escape'                        => 'editor',
	'fast_reply'                    => 'composing',
	'fcc_attach'                    => 'sending',
	'fcc_clear'                     => 'composing',
	'file_charset'                  => 'reading',
	'folder'                        => 'essential',
	'folder_format'                 => 'folders',
	'followup_to'                   => 'composing',
	'followup_to_poster'            => 'nntp',
	'force_name'                    => 'composing',
	'forward_decode'                => 'composing',
	'forward_decrypt'               => 'composing',
	'forward_edit'                  => 'composing',
	'forward_format'                => 'composing',
	'forward_quote'                 => 'composing',
	'from'                          => 'essential',
	'gecos_mask'                    => 'system',
	'group_index_format'            => 'nntp',
	'hdrs'                          => 'composing',
	'header_cache_compress'         => 'system',
	'header_cache_pagesize'         => 'system',
	'header_cache'                  => 'system',
	'header'                        => 'composing',
	'help'                          => 'display',
	'hidden_host'                   => 'addressing',
	'hide_limited'                  => 'reading',
	'hide_missing'                  => 'reading',
	'hide_thread_subject'           => 'reading',
	'hide_top_limited'              => 'reading',
	'hide_top_missing'              => 'reading',
	'history_file'                  => 'patches',
	'history'                       => 'system',
	'honor_followup_to'             => 'composing',
	'hostname'                      => 'addressing',
	'ignore_list_reply_to'          => 'composing',
	'imap_authenticators'           => 'imap',
	'imap_check_subscribed'         => 'imap',
	'imap_delim_chars'              => 'imap',
	'imap_force_ssl'                => 'imap',
	'imap_headers'                  => 'imap',
	'imap_home_namespace'           => 'imap',
	'imap_idle'                     => 'imap',
	'imap_keepalive'                => 'imap',
	'imap_list_subscribed'          => 'imap',
	'imap_login'                    => 'imap',
	'imap_pass'                     => 'imap',
	'imap_passive'                  => 'imap',
	'imap_peek'                     => 'imap',
	'imap_servernoise'              => 'imap',
	'imap_user'                     => 'imap',
	'implicit_autoview'             => 'reading',
	'include'                       => 'composing',
	'include_onlyfirst'             => 'composing',
	'indent_string'                 => 'composing',
	'index_format'                  => 'display',
	'inews'                         => 'nntp',
	'ispell'                        => 'composing',
	'keep_flagged'                  => 'folders',
	'locale'                        => 'system',
	'mailcap_path'                  => 'reading',
	'mailcap_sanitize'              => 'system',
	'mail_check'                    => 'folders',
	'maildir_header_cache_verify'   => 'folders',
	'maildir_mtime'                 => 'folders',
	'maildir_trash'                 => 'folders',
	'markers'                       => 'display',
	'mark_old'                      => 'folders',
	'mask'                          => 'system',
	'mbox'                          => 'folders',
	'mbox_type'                     => 'folders',
	'mdn_confirm'                   => 'patches',
	'mdn_enable'                    => 'patches',
	'menu_context'                  => 'display',
	'menu_move_off'                 => 'display',
	'menu_scroll'                   => 'display',
	'message_cachedir'              => 'system',
	'message_format'                => 'composing',
	'meta_key'                      => 'system',
	'metoo'                         => 'composing',
	'mh_purge'                      => 'mh',
	'mh_seq_flagged'                => 'mh',
	'mh_seq_mdnsent'                => 'mh',
	'mh_seq_replied'                => 'mh',
	'mh_seq_unseen'                 => 'mh',
	'mime_forward_decode'           => 'sending',
	'mime_forward_rest'             => 'sending',
	'mime_forward'                  => 'sending',
	'mime_subject'                  => 'nntp',
	'mix_entry_format'              => 'sending',
	'mixmaster'                     => 'sending',
	'move'                          => 'reading',
	'narrow_tree'                   => 'display',
	'net_inc'                       => 'network',
	'news_cache_dir'                => 'nntp',
	'newsrc'                        => 'nntp',
	'news_server'                   => 'nntp',
	'nntp_context'                  => 'nntp',
	'nntp_load_description'         => 'nntp',
	'nntp_pass'                     => 'nntp',
	'nntp_poll'                     => 'nntp',
	'nntp_reconnect'                => 'nntp',
	'nntp_user'                     => 'nntp',
	'pager_context'                 => 'display',
	'pager_format'                  => 'display',
	'pager_index_lines'             => 'display',
	'pager'                         => 'reading',
	'pager_stop'                    => 'display',
	'pgp_auto_decode'               => 'pgp',
	'pgp_autoencrypt'               => 'pgp',
	'pgp_autoinline'                => 'pgp',
	'pgp_autosign'                  => 'pgp',
	'pgp_check_exit'                => 'pgp',
	'pgp_clearsign_command'         => 'pgp',
	'pgp_create_traditional'        => 'pgp',
	'pgp_decode_command'            => 'pgp',
	'pgp_decrypt_command'           => 'pgp',
	'pgp_encrypt_only_command'      => 'pgp',
	'pgp_encrypt_sign_command'      => 'pgp',
	'pgp_entry_format'              => 'pgp',
	'pgp_export_command'            => 'pgp',
	'pgp_getkeys_command'           => 'pgp',
	'pgp_good_sign'                 => 'pgp',
	'pgp_ignore_subkeys'            => 'pgp',
	'pgp_import_command'            => 'pgp',
	'pgp_list_pubring_command'      => 'pgp',
	'pgp_list_secring_command'      => 'pgp',
	'pgp_long_ids'                  => 'pgp',
	'pgp_mime_auto'                 => 'pgp',
	'pgp_mime_signature_description'        => 'pgp',
	'pgp_mime_signature_filename'   => 'pgp',
	'pgp_replyencrypt'              => 'pgp',
	'pgp_replyinline'               => 'pgp',
	'pgp_replysignencrypted'        => 'pgp',
	'pgp_replysign'                 => 'pgp',
	'pgp_retainable_sigs'           => 'pgp',
	'pgp_show_unusable'             => 'pgp',
	'pgp_sign_as'                   => 'pgp',
	'pgp_sign_command'              => 'pgp',
	'pgp_sort_keys'                 => 'pgp',
	'pgp_strict_enc'                => 'pgp',
	'pgp_timeout'                   => 'pgp',
	'pgp_use_gpg_agent'             => 'pgp',
	'pgp_verify_command'            => 'pgp',
	'pgp_verify_key_command'        => 'pgp',
	'pgp_verify_sig'                => 'pgp',
	'pipe_decode'                   => 'system',
	'pipe_sep'                      => 'system',
	'pipe_split'                    => 'system',
	'pop_authenticators'            => 'pop3',
	'pop_auth_try_all'              => 'pop3',
	'pop_checkinterval'             => 'pop3',
	'pop_delete'                    => 'pop3',
	'pop_host'                      => 'pop3',
	'pop_last'                      => 'pop3',
	'pop_pass'                      => 'pop3',
	'pop_reconnect'                 => 'pop3',
	'pop_user'                      => 'pop3',
	'post_indent_string'            => 'composing',
	'post_moderated'                => 'nntp',
	'postpone'                      => 'composing',
	'postponed'                     => 'composing',
	'preconnect'                    => 'network',
	'print_command'                 => 'system',
	'print_decode'                  => 'system',
	'print_split'                   => 'system',
	'print'                         => 'system',
	'prompt_after'                  => undef,
	'query_command'                 => undef,
	'quit'                          => 'system',
	'quote_empty'                   => undef,
	'quote_quoted'                  => undef,
	'quote_regexp'                  => undef,
	'read_inc'                      => undef,
	'read_only'                     => undef,
	'realname'                      => 'addressing',
	'recall'                        => 'composing',
	'record'                        => 'sending',
	'reply_regexp'                  => 'composing',
	'reply_self'                    => 'addressing',
	'reply_to'                      => 'addressing',
	'resolve'                       => undef,
	'reverse_alias'                 => undef,
	'reverse_name'                  => 'addressing',
	'reverse_realname'              => 'addressing',
	'rfc2047_parameters'            => undef,
	'save_address'                  => undef,
	'save_empty'                    => 'folders',
	'save_history'                  => 'patches',
	'save_name'                     => undef,
	'save_unsubscribed'             => undef,
	'score_threshold_delete'        => undef,
	'score_threshold_flag'          => undef,
	'score_threshold_read'          => undef,
	'score'                         => undef,
	'send_charset'                  => 'sending',
	'sendmail'                      => 'sending',
	'sendmail_wait'                 => 'sending',
	'shell'                         => 'system',
	'show_new_news'                 => 'nntp',
	'show_only_unread'              => undef,
	'sidebar_visible'               => 'patches',
	'sidebar_width'                 => 'patches',
	'sig_dashes'                    => 'composing',
	'signature'                     => 'composing',
	'signatures_directory'          => 'patches',
	'sig_on_top'                    => 'composing',
	'simple_search'                 => 'reading',
	'sleep_time'                    => 'display',
	'smart_wrap'                    => 'reading',
	'smileys'                       => 'reading',
	'smime_ask_cert_label'          => 'smime',
	'smime_ca_location'             => 'smime',
	'smime_certificates'            => 'smime',
	'smime_decrypt_command'         => 'smime',
	'smime_decrypt_use_default_key' => 'smime',
	'smime_default_key'             => 'smime',
	'smime_encrypt_command'         => 'smime',
	'smime_encrypt_with'            => 'smime',
	'smime_get_cert_command'        => 'smime',
	'smime_get_cert_email_command'  => 'smime',
	'smime_get_signer_cert_command' => 'smime',
	'smime_import_cert_command'     => 'smime',
	'smime_is_default'              => 'smime',
	'smime_keys'                    => 'smime',
	'smime_pk7out_command'          => 'smime',
	'smime_sign_command'            => 'smime',
	'smime_sign_opaque_command'     => 'smime',
	'smime_timeout'                 => 'smime',
	'smime_verify_command'          => 'smime',
	'smime_verify_opaque_command'   => 'smime',
	'smtp_authenticators'           => 'patches',
	'smtp_auth_password'            => 'patches',
	'smtp_auth_username'            => 'patches',
	'smtp_host'                     => 'patches',
	'smtp_port'                     => 'patches',
	'smtp_url'                      => 'patches',
	'sort_alias'                    => 'sorting',
	'sort_aux'                      => 'sorting',
	'sort_browser'                  => 'sorting',
	'sort_re'                       => 'sorting',
	'sort'                          => 'sorting',
	'spam_separator'                => undef,
	'spoolfile'                     => 'folders',
	'ssl_ca_certificates_file'      => 'ssl',
	'ssl_client_cert'               => 'ssl',
	'ssl_force_tls'                 => 'ssl',
	'ssl_min_dh_prime_bits'         => 'ssl',
	'ssl_starttls'                  => 'ssl',
	'ssl_use_sslv2'                 => 'ssl',
	'ssl_use_sslv3'                 => 'ssl',
	'ssl_usesystemcerts'            => 'ssl',
	'ssl_use_tlsv1'                 => 'ssl',
	'status_chars'                  => undef,
	'status_format'                 => undef,
	'status_on_top'                 => undef,
	'strict_mime'                   => undef,
	'strict_threads'                => undef,
	'stuff_all_quoted'              => undef,
	'suspend'                       => 'system',
	'text_flowed'                   => undef,
	'thorough_search'               => undef,
	'thread_received'               => 'reading',
	'tilde'                         => 'display',
	'timeout'                       => undef,
	'tmpdir'                        => 'system',
	'to_chars'                      => undef,
	'tunnel'                        => 'network',
	'uncollapse_jump'               => 'reading',
	'use_8bitmime'                  => 'sending',
	'use_domain'                    => 'addressing',
	'use_envelope_from'             => 'sending',
	'use_from'                      => 'sending',
	'use_idn'                       => 'display',
	'use_ipv6'                      => 'network',
	'user_agent'                    => 'sending',
	'visual'                        => 'editor',
	'wait_key'                      => 'display',
	'weed'                          => 'reading',
	'wrapmargin'                    => 'reading',
	'wrap_search'                   => 'reading',
	'write_bcc'                     => 'sending',
	'write_inc'                     => 'display',
	'x_comment_to'                  => 'nntp',
	'xface_icontopbm'               => 'patches',
	'xface'                         => 'patches',
	'xface_uncompface'              => 'patches',
	'xface_w3mimgdisplay_options'   => 'patches',
	'xface_w3mimgdisplay'           => 'patches',
	'xterm_icon'                    => 'patches',
	'xterm_set_titles'              => 'patches',
	'xterm_title'                   => 'patches',
);

sub import {
	# Set those options with no category set to have a category of
	# 'default'
	while(my($key, $value) = each %CATEGORIES) {
		$CATEGORIES{$key} = "default" if not defined($value);
	}
}

1;
__END__

=head1 NAME

Mutt::Config::Categories - Defines the category that each option belongs to

=head1 SYNOPSIS

  @possibles = Mutt::Config::OptionTypes->possible_values(
    "quadoption", # Type of option
    "askcc"       # Name of option
  );

=head1 DESCRIPTION

=head2 %CATEGORIES

A hash mapping option name to recommended category.

=head1 SEE ALSO

=over

=item *

L<Mutt::Config>

=item *

L<http://www.muttrcbuilder.org/>

=back

=head1 AUTHOR

Luke Ross, E<lt>lr@lukeross.nameE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005-2016 by Luke Ross

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111, USA.

=cut
