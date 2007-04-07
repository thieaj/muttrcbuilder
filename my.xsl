<?xml version='1.0'?> 
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0"
                xmlns:str="http://exslt.org/strings"
                extension-element-prefixes="str">
<xsl:output method="text" />

<xsl:template match="/">
$VAR1 = {
	<xsl:apply-templates select="//sect1[@id='variables']" />
}
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
