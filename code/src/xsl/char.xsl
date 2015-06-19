<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:mml="http://www.w3.org/1998/Math/MathML"
		exclude-result-prefixes="mml"
                version='2.0'>

  <!-- IdentityTransform -->

  <xsl:output method="xml" encoding="UTF-8" indent="no"/>


  <xsl:template match="char" mode="mtcode">
    <xsl:variable name="char">
      <xsl:choose>
	<xsl:when test="@MTCode = '60423'">
	  <xsl:value-of select="codepoints-to-string(124)" />
	</xsl:when>
	<xsl:when test="@MTCode = '60424'">
	  <xsl:value-of select="codepoints-to-string(124)" />
	</xsl:when>
	<xsl:when test="@MTCode = '60425'">
	  <xsl:value-of select="codepoints-to-string(8214)" />
	</xsl:when>
	<xsl:when test="@MTCode = '60426'">
	  <xsl:value-of select="codepoints-to-string(8214)" />
	</xsl:when>
	<xsl:when test="@MTCode = '63728'">
	  <xsl:value-of select="codepoints-to-string(8970)" />
	</xsl:when>
	<xsl:when test="@MTCode = '63737'">
	  <xsl:value-of select="codepoints-to-string(8969)" />
	</xsl:when>
	<xsl:when test="@MTCode = '60429'">
	  <xsl:value-of select="codepoints-to-string(9140)" />
	</xsl:when>
	<xsl:when test="@MTCode = '60428'">
	  <xsl:value-of select="codepoints-to-string(9141)" />
	</xsl:when>
	<xsl:when test="@MTCode = '60947'
			and following-sibling::char[1][@MTCode='8747']
			and following-sibling::char[2][@MTCode='8747']
			and following-sibling::char[3][@MTCode='8747']
			">	  
	  <xsl:value-of select="codepoints-to-string(8752)" />
	</xsl:when>
	<xsl:when test="@MTCode = '60946'
			and following-sibling::char[1][@MTCode='8747']
			and following-sibling::char[2][@MTCode='8747']
			">	  
	  <xsl:value-of select="codepoints-to-string(8751)" />
	</xsl:when>
	<xsl:when test="(@MTCode = '60945' or @MTCode = '60928' or  @MTCode = '60929')
			and following-sibling::char[1][@MTCode='8747']
			">	  
	  <xsl:value-of select="codepoints-to-string(8754)" />
	</xsl:when>
	<xsl:when test="@MTCode = '8747'
			and preceding-sibling::char[1][(@MTCode='60945' 
			or @MTCode = '60928' or  @MTCode = '60929')]
			">

	</xsl:when>
	<xsl:when test="@MTCode = '8747'
			and (preceding-sibling::char[1][@MTCode='60946']
			or  preceding-sibling::char[2][@MTCode='60946']
			)
			">	  
	</xsl:when>
	<xsl:when test="@MTCode = '8747'
			and (preceding-sibling::char[1][@MTCode='60947']
			or  preceding-sibling::char[2][@MTCode='60947']
			or  preceding-sibling::char[3][@MTCode='60947']
			)
			">	  
	</xsl:when>

	<xsl:otherwise>
	  <xsl:value-of select="codepoints-to-string(@MTCode)" />
	</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
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

</xsl:stylesheet>