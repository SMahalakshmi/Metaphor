<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:mml="http://www.w3.org/1998/Math/MathML"
		exclude-result-prefixes="mml"
                version='2.0'>

  <!-- IdentityTransform -->

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
    <!--xsl:copy-of select="$mtcode"/-->
    <xsl:copy-of select="$combine"/>
  </xsl:template>

  <xsl:variable name="mtcode">
    <xsl:apply-templates mode="mtcode"/>
  </xsl:variable>

  <xsl:template match="char" mode="mtcode">
    <xsl:variable name="char" select="codepoints-to-string(@MTCode)" />
    <xsl:choose>
      <xsl:when test="matches($char,'^\p{N}+$')">
	<mn><xsl:value-of select="$char" /></mn>
      </xsl:when>
      <xsl:when test="matches($char,'^\p{L}+$')">
	<mi><xsl:value-of select="$char" /></mi>
      </xsl:when>
      <xsl:otherwise>
	<mo><xsl:value-of select="$char" /></mo>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!--xsl:template match="tmpl[@templateType='10' and @variation=0]" mode="mtcode">
    <mrow>
      <msqrt>
	<xsl:apply-templates mode="mtcode"/>
      </msqrt>
    </mrow>
  </xsl:template-->

  <xsl:template match="fontDef|equPrefs|encodingDef|end|full" mode="mtcode"/>

  <xsl:template match="mtef" mode="mtcode">
    <xsl:apply-templates mode="mtcode"/>
  </xsl:template>
  
  <!--xsl:template match="line[count(*)=0]" mode="mtcode">
    <xsl:message>EMPTY mrow </xsl:message>
  </xsl:template-->

  <xsl:template match="*|@*|comment()|processing-instruction()|text()" mode="combine">
    <xsl:copy>
      <xsl:apply-templates select="*|@*|comment()|processing-instruction()|text()" mode="combine" />
    </xsl:copy>
  </xsl:template>

  <xsl:variable name="combine">
    <xsl:apply-templates mode="combine" select="$mtcode"/>
  </xsl:variable>

  <!--xsl:template match="mn|mi|mo" mode="combine">
    <xsl:copy>
      <xsl:variable name="tagname"><xsl:value-of select="name()"/></xsl:variable>
      <xsl:apply-templates mode="combine"/>
      <xsl:if test="name(following-sibling::*[1])=$tagname">
	<xsl:message><xsl:value-of select="following-sibling::*[1]"/></xsl:message>
	<xsl:call-template name="combine">
	  <xsl:with-param name="nnode" select="following-sibling::*[1]"/>
	  <xsl:with-param name="tname" select="$tagname"/>
	</xsl:call-template>
      </xsl:if>
    </xsl:copy>
  </xsl:template>  

  <xsl:template name="combine">
    <xsl:param name="nnode"/>
    <xsl:param name="tname"/>    
      <xsl:for-each select="$nnode">	
	<xsl:message><xsl:copy-of select="."/></xsl:message>    
	<xsl:if test="name(.)=$tname">	  
	  <xsl:value-of select="."/>
	  <xsl:call-template name="combine">
	    <xsl:with-param name="nnode" select="following-sibling::*[1]"/>	  
	  </xsl:call-template>
	</xsl:if>
      </xsl:for-each> 
  </xsl:template>
  
  <xsl:template match="*[name(preceding-sibling::*[1])='mn' and name()='mn']" mode="combine">

  </xsl:template>

  <xsl:template match="*[name(preceding-sibling::*[1])='mo' and name()='mo']" mode="combine">
    <xsl:message><xsl:value-of select="name()"/></xsl:message>
  </xsl:template>

  <xsl:template match="*[name(preceding-sibling::*[1])='mi' and name()='mi']" mode="combine">
    <xsl:message><xsl:value-of select="name()"/></xsl:message>
  </xsl:template-->

</xsl:stylesheet>