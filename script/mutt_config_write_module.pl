#!/usr/bin/perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/../lib";

use Data::Dumper;
use Mutt::Config;
use XML::LibXML;
use XML::LibXSLT;

unless(@ARGV >= 1) {
	print STDERR <<"END";
usage: $0 manual.xml manual.txt [ output ]
END
	exit(0);
}

my ($xmlf, $txtf, $opf) = @ARGV;

my $parser = XML::LibXML->new();
my $xslt = XML::LibXSLT->new();
my $xml = $parser->parse_file($xmlf) or die("Error reading manual.xml");

my $version_node = ($xml->findnodes("//releaseinfo"))[0];
my $version = $version_node->toString;
die("Cannot work out version in $version")
	unless $version =~ m/version\s+(.*?)\s+/;
$version = $1;

my $module = $version;
$module =~ s/[.-]/_/g;

$opf ||= generate_output_name($module);

open(my $op, "> $opf") or die("Error opening output $opf: $!");

print $op "package Mutt::Config::Version::v$module;\n\n";

my $style_doc = $parser->parse_string(join("",<DATA>));
my $stylesheet = $xslt->parse_stylesheet($style_doc);

my $results = $stylesheet->transform($xml);

print $op $stylesheet->output_string($results);

print $op "\n\n__DATA__\n";

open(my $lh, "-|", "lynx", "-dump", $txtf) or die("Error opening lynx: $!");

my $in_vars = 0;

my $prev = "";

while(<$lh>) {
	if (m/^\d+\. /) { $in_vars = 0; }
	if (m/^\d+\. Configuration [Vv]ariables/ and $prev !~ m/\S/) { $in_vars = 1; }
	elsif ($in_vars and m/^\d+\.\d+\. (.*)/) { print $op "#  $1\n"; }
	elsif ($in_vars) { print $op "#$_"; }
	$prev = $_;
}

close($lh) or die("Error closing lynx: $!");

print $op "#  END\n";

sub generate_output_name {
	my $module = shift;
	my $fn = $INC{"Mutt/Config.pm"};
	$fn =~ s(\.pm$)(/Version/);
	die("Cannot find module directory $fn") unless(-e $fn and -d $fn);
	$fn .= "v$module.pm";
	return $fn;
}

__DATA__
<?xml version='1.0'?> 
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0"
                xmlns:str="http://exslt.org/strings"
                extension-element-prefixes="str">
<xsl:output method="text" />

<xsl:template match="/">
$VARIABLES = {
	<xsl:apply-templates select="//sect1[@id='variables']" />
};
</xsl:template>

<xsl:template match="sect1">
	<xsl:apply-templates select="./sect2" />
</xsl:template>

<xsl:template match="sect2">
<xsl:variable name="defaultNoQuotes"><xsl:call-template name="replace-string">
          <xsl:with-param name="text" select="./literallayout" />
          <xsl:with-param name="replace" select="'&quot;'"/>
          <xsl:with-param name="with" select="''"/>
</xsl:call-template></xsl:variable>
<xsl:variable name="defaultNoNasties"><xsl:call-template name="replace-string">
          <xsl:with-param name="text" select="$defaultNoQuotes" />
          <xsl:with-param name="replace" select="'˜'" />
          <xsl:with-param name="with" select="'~'"/>
</xsl:call-template></xsl:variable>
'<xsl:value-of select="./title" />' => {
'default' => '<xsl:value-of select="substring-after($defaultNoNasties, 'Default: ')" />',
'type' => '<xsl:value-of select="normalize-space(substring-after(substring-before(./literallayout, 'Default: '),'Type: '))" />',
'text' => '<xsl:apply-templates />'
},
</xsl:template>

<xsl:template match="para">&lt;p&gt;<xsl:apply-templates />&lt;/p&gt;</xsl:template>
<xsl:template match="literal"><xsl:apply-templates /></xsl:template>
<xsl:template match="quote">&lt;tt&gt;<xsl:apply-templates />&lt;/tt&gt;</xsl:template>
<xsl:template match="emphasis">&lt;em&gt;<xsl:apply-templates />&lt;/em&gt;</xsl:template>
<xsl:template match="link">&lt;a href="http://www.mutt.org/doc/manual/manual-6.html#<xsl:value-of select="@linkend" />"&gt;<xsl:apply-templates />&lt;/a&gt;</xsl:template>
<xsl:template match="variablelist">
&lt;dl&gt;
<xsl:apply-templates />
&lt;/dl&gt;
</xsl:template>
<xsl:template match="varlistentry"><xsl:apply-templates /></xsl:template>
<xsl:template match="term">&lt;dt&gt;&lt;strong&gt;<xsl:apply-templates />&lt;/strong&gt;&lt;/dt&gt;</xsl:template>
<xsl:template match="listitem">&lt;dd&gt;<xsl:apply-templates />&lt;/dd&gt;</xsl:template>
<xsl:template match="informaltable">&lt;table&gt;<xsl:apply-templates />&lt;/table&gt;</xsl:template>
<xsl:template match="row">&lt;tr&gt;<xsl:apply-templates />&lt;/tr&gt;</xsl:template>
<xsl:template match="entry">&lt;td&gt;<xsl:apply-templates />&lt;/td&gt;</xsl:template>
<xsl:template match="tbody"><xsl:apply-templates /></xsl:template>
<xsl:template match="tgroup"><xsl:apply-templates /></xsl:template>
<xsl:template match="itemizedlist">&lt;ul&gt;
<xsl:for-each select="listitem">
&lt;li&gt;<xsl:apply-templates />&lt;/li&gt;
</xsl:for-each>
&lt;/ul&gt;
</xsl:template>
<xsl:template match="screen">&lt;pre&gt;
<xsl:apply-templates />
&lt;/pre&gt;
</xsl:template>

<xsl:template match="literallayout"></xsl:template>
<xsl:template match="title"></xsl:template>

<xsl:template match="*">
<xsl:message terminate="yes">No handler for tag <xsl:value-of select="local-name(.)" /></xsl:message>
</xsl:template>

<xsl:template match="text()">
<xsl:variable name="escaped1">
<xsl:call-template name="replace-string">
<xsl:with-param name="text" select="." />
<xsl:with-param name="replace" select="&quot;&amp;&quot;" />
<xsl:with-param name="with" select="&quot;&amp;amp;&quot;" />
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="replace-string">
<xsl:with-param name="text" select="$escaped1" />
<xsl:with-param name="replace" select="&quot;'&quot;" />
<xsl:with-param name="with" select="&quot;\'&quot;" />
</xsl:call-template>
</xsl:template>

  <xsl:template name="replace-string">
    <xsl:param name="text"/>
    <xsl:param name="replace"/>
    <xsl:param name="with"/>
    <xsl:choose>
      <xsl:when test="contains($text,$replace)">
        <xsl:value-of select="substring-before($text,$replace)"/>
        <xsl:value-of select="$with"/>
        <xsl:call-template name="replace-string">
          <xsl:with-param name="text"
select="substring-after($text,$replace)"/>
          <xsl:with-param name="replace" select="$replace"/>
          <xsl:with-param name="with" select="$with"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>  
