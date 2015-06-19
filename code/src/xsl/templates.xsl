<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:mml="http://www.w3.org/1998/Math/MathML"
		exclude-result-prefixes="mml"
                version='2.0'>

  <!-- IdentityTransform -->

  <xsl:output method="xml" encoding="UTF-8" indent="no"/>
  <xsl:include href="char.xsl"/>

  <xsl:template match="*|@*|comment()|processing-instruction()|text()">
    <xsl:copy>
      <xsl:apply-templates select="*|@*|comment()|processing-instruction()|text()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*|@*|comment()|processing-instruction()|text()" mode="mtcode">
    <xsl:copy>
      <xsl:apply-templates select="*|@*|comment()|processing-instruction()|text()" mode="mtcode" />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/">
    <xsl:copy-of select="$combine"/>
  </xsl:template>

  <xsl:variable name="mtcode">
    <xsl:apply-templates mode="mtcode"/>
  </xsl:variable>

  <xsl:template match="fontDef|equPrefs|encodingDef|end|full" mode="mtcode"/>

  <xsl:template match="mtef" mode="mtcode">
    <xsl:apply-templates mode="mtcode"/>
  </xsl:template>
  
  <xsl:template match="*|@*|comment()|processing-instruction()|text()" mode="combine">
    <xsl:copy>
      <xsl:apply-templates select="*|@*|comment()|processing-instruction()|text()" mode="combine" />
    </xsl:copy>
  </xsl:template>

  <xsl:variable name="combine">
    <xsl:apply-templates mode="combine" select="$mtcode"/>
  </xsl:variable>

  <xsl:template match="mo[string-length(.) &lt; 1]" mode="combine"/>
    
  <!--xsl:template match="mo" mode="combine">
    <xsl:copy>
      <xsl:variable name="tagname"><xsl:value-of select="name()"/></xsl:variable>
      <xsl:apply-templates mode="combine"/>
      <xsl:if test="name(following-sibling::*[1])=$tagname">
	<xsl:message><xsl:value-of select="following-sibling::*[1]"/></xsl:message>
	<xsl:call-template name="combine">
	  <xsl:with-param name="node" select="following-sibling::*[1]"/>
	  <xsl:with-param name="tname" select="$tagname"/>
	</xsl:call-template>
      </xsl:if>
    </xsl:copy>
  </xsl:template>  

  <xsl:template name="combine">
    <xsl:param name="node"/>
    <xsl:param name="tname"/>    
    <xsl:value-of select="$node"/>
    <xsl:if test="$node/following-sibling::*[1][name()=$tname]">
      <xsl:call-template name="combine">
	<xsl:with-param name="node" select="$node/following-sibling::*[1]" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="*[name(preceding-sibling::*[1])='mo' and name()='mo']" mode="combine">
    <xsl:message><xsl:value-of select="name(.)"/></xsl:message>
  </xsl:template-->

  <!--xsl:template match="*[name(preceding-sibling::*[1])='mn' and name()='mn']" mode="combine">
  </xsl:template-->

  <!--xsl:template match="*[name(preceding-sibling::*[1])='mi' and name()='mi']" mode="combine">
    <xsl:message><xsl:value-of select="name(.)"/></xsl:message>
  </xsl:template-->

</xsl:stylesheet>