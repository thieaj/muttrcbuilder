#!/usr/bin/perl
use lib "/home/lukeross/subversion/muttrcbuilder/lib";

use strict;
use warnings;

our %CONFIG = (
	maintainer =>
		[ "Site mantainer" => 'mailto:webmaster@' . $ENV{HTTP_HOST} ],
	url_self => "builder-cgi.pl",
);

use CGI;
use Mutt::Config;

our $c = new CGI;
our $colour_data = join("",<DATA>);

our %default_colours = (
	attachment => ["brightmagenta","default"],
	error      => ["brightred",    "default"],
	hdrdefault => ["red",          "default"],
	indicator  => ["brightyellow", "red"    ],
	markers    => ["brightcyan",   "default"],
	message    => ["brightcyan",   "default"],
	normal     => ["default",      "default"],
	quoted     => ["brightblue",   "default"],
	search     => ["default",      "green"  ],
	signature  => ["red",          "default"],
	status     => ["yellow",       "blue"   ],
	tilde      => ["magenta",      "default"],
	tree       => ["magenta",      "default"],
);

my $page = $c->param("page") || "";
if ($page eq "3") { output_muttrc($c); goto PAGE_END; }
if ($page eq "4") { colours_page($c);  goto PAGE_END; }

print $c->header, $c->start_html(-title => "muttrc builder",
	-style => { -code => "h1,h2 { font-family: sans-serif }" });

print $c->h1("muttrc builder");

if    ($page eq "2")         { choose_format($c);  }
elsif ($c->param("version")) { variables_page($c); }
else                         { welcome($c); }

print $c->hr();
print $c->p("Service provided by ", $c->a({ -href => $CONFIG{maintainer}[1] },
	$CONFIG{maintainer}[0]), " - muttrcbuilder written by ",
	$c->a({ -href => "http://lukeross.name/" }, "Luke Ross"));

print $c->end_html;

PAGE_END:
# done
while(0) { }

sub welcome {
	my $c = shift;

	print $c->p("This site lets you create a ",
		$c->tt("muttrc"), " file for the ",
		$c->a({ -href => "http://www.mutt.org/" },
			"Mutt email program"),
		". You specify your preferences in the boxes on the next few",
		" pages, and you get a muttrc you can use.");


	print $c->p("None of the data you enter is stored. All the data is ",
		"sent across the Internet each time you request a page on ",
		"the builder, so the muttrc can be generated. As the Internet",
		" is not secure, ", $c->strong("you should not enter any ",
		"sensitive information, such as passwords"), ". Enter a ",
		"placeholder instead (such as &quot;password goes here&quot; ",
		"and replace it in the file you download.");

	print $c->p("This service is provided in the hope that you'll find it ",
		"useful, but no warranty is offered. If you have any feedback ",
		"please contact ",
		$c->a({ -href => $CONFIG{maintainer}[1] },
			$CONFIG{maintainer}[0]), ".");

	print $c->h2("Ready? Let's Begin");

	print $c->p("To start, please select which version of mutt you plan to",
		" use this with. If your version isn't listed, just select the",
		"  one with the closest version number.");

	print $c->start_form(-action => $CONFIG{url_self}, -method => "post");

	print $c->start_p();

	print $c->hidden(-name => "page", -value => "essential");

	print $c->start_Select({ -name => "version" });

	print $c->option("mutt-".$_) foreach Mutt::Config->get_versions();

	print $c->end_Select();

	print $c->submit(-value => "Next");
	print $c->end_p;

	print $c->end_form;
}

sub variables_page {
	my $c = shift;
	my $muttconfig = get_version($c);

	my $page = $c->param("page") || "default";
	die "Bad page string" unless $page =~ m/^[a-z0-9]{1,20}$/;

	copy_over_hidden_fields($c, $page, $muttconfig);
	page_changer($muttconfig, $page);

	my $commands = $muttconfig->get_variables($page);
	foreach(sort keys %$commands) {
		my $command = $commands->{$_};
		print $c->h3($_);
		print $c->p($c->strong("Type: "), $command->type,
			$c->strong("   Default: "), $command->default);
		print $c->p({ -style => "background-color: #F0F0F0" },
			$command->html_description);

		my $value = $c->param("opt_$_") || $command->default;

		if (my @possibles = $command->possible_values) {
			print $c->start_Select({ -name => "opt_$_" });
			foreach my $poss (@possibles) {
	    			print $c->option({
					(($value eq $poss) ?
					(-selected => "selected") : ()) },
				$poss);
			}
			print $c->end_Select();
		} else {
			$value =~ s/&quot;/"/g;
			$value =~ s/^"(.*)"$/$1/g;
    			print $c->input({ -name => "opt_$_",
				-value => $value });
		}
	}

	print $c->end_form();
}

sub get_version {
	my $c = shift;
	my $version = $c->param("version");
	die "Bad version string" unless defined($version) and
		$version =~ m/^mutt-([0-9.a-z]{3,20})$/;

	my $muttconfig = new Mutt::Config($1);

	die $@ unless $muttconfig;

	return $muttconfig;
}

sub copy_over_hidden_fields {
	my($c, $page, $mutt) = @_;

	print $c->start_form(-action => $CONFIG{url_self}, -method => "post");

	print $c->hidden("version", $c->param("version"));
	foreach($c->param()) {
		if (m/^opt_([a-z0-9_]{1,50})$/ and
			my $var = $mutt->get_variable($1)) {

			if ($var->category ne $page) {
				print $c->hidden({
					-name => $_,
					-value => $c->param($_)
				});
    			}
		}
  		if (m/^col_([a-z0-9_]{1,50})$/ and $page ne "4") {
			print $c->hidden({
				-name => $_, -value => $c->param($_)
			});
  		}
	}
}


sub page_changer {
	my ($muttconfig, $page) = @_;

	print $c->start_p();
	print $c->strong("Change page:");
	print $c->start_Select({ -name => "page" });

	foreach(sort $muttconfig->get_categories()) {
		print $c->option({
			(($page eq $_) ? (-selected => "selected"):()) },
		$_);
	}
	print $c->option({ -value => "4",
		(($page eq "4") ? (-selected => "selected") : ()) }, "colour");
	print $c->option({ -value => "2" }, "finish");
	print $c->end_Select();
	print $c->submit({ -value => "Change" });
	print $c->end_p();
}

sub choose_format {
	my $c = shift;
	my $muttconfig = get_version($c);

	copy_over_hidden_fields($c, 2, $muttconfig);

	print $c->p("How would you like your ",	
		$c->tt("muttrc"), "formatted?");

	print "<input type='hidden' name='page' value='3' />";

	print $c->radio_group(-name=>"format",
		-values=>[qw(minimal all categories full)],
		-default=>"all",
		-linebreak=>"true",
		-labels=> {
minimal => "Only print out the values that are different from the default.",
all => "Print out all values, with values that are their default commented out.",
categories => "As above, but organised by category.",
full => "Print out the variable reference section of the mutt manual, with the variables filled in."
		}
	);

	print $c->submit({ -value => "Build" });
	print $c->end_form();
}

sub colours_page {
	my $c = shift;

	my $muttconfig = get_version($c);
	my %colours = (
		white         => "grey",
		black         => "black",
		green         => "green",
		magenta       => "#800080",
		blue          => "#000080",
		cyan          => "#008080",
		yellow        => "brown",
		red           => "#800000",
		default       => "",
		brightwhite   => "white",
		brightblack   => "#404040",
		brightgreen   => "#00ff00",
		brightmagenta => "#ff00ff",
		brightblue    => "blue",
		brightcyan    => "cyan",
		brightyellow  => "yellow",
		brightred     => "red"
	);

	my $style = <<"END";
h1,h2 { font-family: sans-serif               }
pre   { color: white; background-color: black }
END

	while(my($thing) = each %default_colours) {
		my ($fg, $bg) = get_colour($c, $thing);
		$style .= sprintf ".%s { color: %s }\n", $thing,
			$colours{$fg} unless ($fg eq "default");
		$style .= sprintf ".%s { background-color: %s }\n", $thing,
			$colours{$bg} unless ($bg eq "default");
	}
	print $c->header, $c->start_html(-title => "muttrc builder",
		-style => { -code => $style });

	print $c->h1("muttrc builder");

	copy_over_hidden_fields($c, 4, $muttconfig);
	page_changer($muttconfig, "4");

	print $colour_data;

	print $c->start_table();

	print $c->Tr(
		$c->th([qw(Object Foreground Background)])
	);
	foreach my $o (sort keys %default_colours) {
		my($fg,$bg) = get_colour($c,$o);
		print $c->start_Tr();
		print $c->td($o);
		colour_select($c, "col_fg_$o", $fg, \%colours);
		colour_select($c, "col_bg_$o", $bg, \%colours);
		print $c->end_Tr();
	}
	print $c->end_html;
}

sub colour_select {
	my ($c, $name, $current_colour, $colours) = @_;
	print $c->start_td();
	print $c->start_Select({ -name => $name });
	foreach(sort keys %$colours) {
		print $c->option({
			($_ eq $current_colour) ? ("-selected" => "selected") : ()
		}, $_);
	}
	print $c->end_Select();
	print $c->end_td();
}

sub get_colour {
  my ($c, $o) = @_;
  my ($fg, $bg)=@{$default_colours{$o}};
  if ($c->param("col_fg_$o")) { $fg = $c->param("col_fg_$o"); }
  if ($c->param("col_bg_$o")) { $bg = $c->param("col_bg_$o"); }
  return ($fg,$bg);
}

sub output_muttrc {
	my $c = shift;
	my $mutt = get_version($c);

	print "Content-Type: text/plain\r\n\r\n";
	print "# Generated by the muttrc builder at http://muttrcbuilder.org/\n";
	printf "# for %s\n\n", $c->param("version");

	my $format = $c->param("format");

	if ($format eq "full") {

		my %seen = ();
		my $current_command = undef;
		foreach(split /\n/, $mutt->get_manual) {
			if (m/^#  ([A-Za-z].*)/) {
				my $new_command = $1;
				if ($current_command) {
					local($_) = $current_command;
					my $obj = $mutt->get_variable($_);
					my $default_value = $obj->default;
					$default_value =~ s/&quot;/"/g;
					$default_value =~ s/^"(.*)"$/$1/g;
					my $current_value = $c->param("opt_$_");
					$seen{$current_command}++;

					my $quote = "'";
					if ($obj->type eq "boolean"
						or $obj->type eq "quadoption") {
						$quote = "";
					}
  

					if (not defined($current_value) or
						$current_value eq $default_value) {
						print "# set $_ = $quote$default_value$quote\n#\n"
					} else {
						print "set $_ = $quote$current_value$quote # default: $quote$default_value$quote\n#\n"
					}
    
					print "##########\n";

				}
				$current_command = $new_command;
			}
			print "$_\n";
		}

		print "\n# Other variables\n\n";

		foreach(sort grep { not $seen{$_} } keys %{ $mutt->get_variables }) {
			my $obj = $mutt->get_variable($_);
			my $default_value = $obj->default;
			$default_value =~ s/&quot;/"/g;
			$default_value =~ s/^"(.*)"$/$1/g;
			my $current_value = $c->param("opt_$_");
			$seen{$current_command} ++;

			my $quote = "'";
			if ($obj->type eq "boolean" or
				$obj->type eq "quadoption") { $quote = ""; }
  

			if (not defined($current_value) or $current_value eq $default_value) {
				print "# set $_ = $quote$default_value$quote\n#\n"
			} else {
				print "set $_ = $quote$current_value$quote # default: $quote$default_value$quote\n#\n"
			}
    
		}

		print "\n# Colours\n\n";

	} elsif($format eq "categories") {

		my %dm;

		foreach my $cat (sort $mutt->get_categories()) {

		print "\n##########\n# Category $cat \n##########\n\n";

		foreach(sort keys %{ $mutt->get_variables($cat) }) {
			my $obj = $mutt->get_variable($_);
			my $default_value = $obj->default;
			$default_value =~ s/&quot;/"/g;
			$default_value =~ s/^"(.*)"$/$1/g;

			my $current_value = $c->param("opt_$_");

			my $quote = "'";
			if ($obj->type eq "boolean" or
				$obj->type eq "quadoption") { $quote = ""; }
  

			if (not defined($current_value) or $current_value
				eq $default_value) {
				print "# set $_ = $quote$default_value$quote\n";
			} else {
				print "set $_ = $quote$current_value$quote # default: $quote$default_value$quote\n"
			}
		}
		}
	} else {

		foreach(sort keys %{ $mutt->get_variables() }) {
			my $obj = $mutt->get_variable($_);

			my $default_value = $obj->default;
			$default_value =~ s/&quot;/"/g;
			$default_value =~ s/^"(.*)"$/$1/g;

			my $current_value = $c->param("opt_$_");

			my $quote = "'";
			if ($obj->type eq "boolean" or
				$obj->type eq "quadoption") { $quote = ""; }
  

			if (not defined($current_value) or $current_value
				eq $default_value) {
				if ($format eq "all") {
					print "# set $_ = $quote$default_value$quote\n"
				}
			} else {
				if ($format eq "all") {
					print "set $_ = $quote$current_value$quote # default: $quote$default_value$quote\n"
				} else {
					print "set $_ = $quote$current_value$quote\n"
				}
			}
		}
	}

	foreach(sort keys %default_colours) {
    		my ($fg,$bg) = get_colour($c, $_);
		if ($c->param("col_fg_$_") or $c->param("col_bg_$_")) {
			print "color $_" . ((length($_) < 10) ? "\t" : "") .
				"\t$fg" .  ((length($fg) < 9) ? "\t" : "") .
				"\t$bg\n";
		}
	}
}

__DATA__
<pre class="normal">
<span class="status">i:Exit  -:PrevPg  <Space>:NextPg v:View Attachm.  d:Del  r:Reply  j:Next ?:Help        </span>

  26     Jul 28 Foo Bar        (3.9K) Your telephone call...                    
  27     Jul 28 Someone Else   (1.6K) <span class="tree">+-></span>                                       
  28   + Jul 28 John Smith     (  62)  <span class="tree">+-></span>                                      
<span class="indicator">  29 O F Jul 28 To Foo Bar     (   5) Test                                      </span>

<span class="status">-*-Mutt: imap://euphrates/INBOX [Msgs:29]---(threads/date)--------------(end)---</span>
<span class="hdrdefault">
Date: Thu, 28 Jul 2005 16:26:37 +0100                                           
From: A friend <friend@example.com>                                                                 
To: Me <me@example.org>                                                                         
Subject: New email                                                              
User-Agent: Mutt/1.5.9i                                                         
X-SA-Exim-Scanned: No (on mail.example.com); Mail filter running algorithm was  
<span class="markers">+</span>false                                                                          
X-Delivered-To: me@example.org                                                  
</span>
                                                                                
<span class="quoted">> Test message                                                                  </span>

Yes <span class="search">that</span> works.                                                                 
<span class="signature">--                                                                              
Foo Bar                                  Acme Widgets Ltd                       </span>

<span class="tilde">~</span>                                                                               
<span class="tilde">~</span>                                                                               
<span class="tilde">~</span>                                                                               
<span class="status">-O F- 29/29: Foo Bar                 Test                              -- (87%) </span>

<span class="message">30 kept, 1 deleted.</span>                                                             
</pre>
