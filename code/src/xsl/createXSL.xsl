<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
    xmlns:saxon="http://saxon.sf.net/"
    xmlns:ole="http://www.ole.co.in/TUX"
    xmlns:xlink="http://www.w3.org/1999/xlink"

    xmlns:mml="http://www.w3.org/1998/Math/MathML"
    exclude-result-prefixes="ole xslt mml xlink mml saxon xsd"
    version="2.0">

  <xsl:namespace-alias stylesheet-prefix="xslt" result-prefix="xsl"/>

  <xsl:output method="xml" encoding="utf-8" indent="yes"/>

  <xsl:strip-space elements="*" />

  <!-- IdentityTransform -->
 
  <xsl:template match="*|@*|comment()|processing-instruction()|text()">
    <xsl:copy>
      <xsl:apply-templates select="*|@*|comment()|processing-instruction()|text()" />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*|@*|comment()|processing-instruction()|text()" mode="move">
    <xsl:copy>
      <xsl:apply-templates select="*|@*|comment()|processing-instruction()|text()" mode="move" />
    </xsl:copy>
  </xsl:template>


  <xsl:template match="ole:tux-mapping">   
    <xsl:apply-templates/>		
  </xsl:template>
  
  <xsl:template match="ole:group//ole:do">
    <xslt:for-each select="current-group()">	    
      <xslt:choose>
	<xslt:when test="self::text()">
	  <xslt:value-of select="."/>
	</xslt:when>
	<xslt:otherwise>
	  <xslt:apply-templates select="."/>
	</xslt:otherwise>
      </xslt:choose>
    </xslt:for-each>
  </xsl:template>

  <xsl:template match="ole:do">
    <xslt:apply-templates/>
  </xsl:template>

  <xsl:template match="ole:do[@mode]">
    <xslt:apply-templates mode="{@mode}"/>
  </xsl:template>

  <xsl:template match="ole:comment">
   <xslt:text disable-output-escaping="yes">&lt;!--</xslt:text><xsl:apply-templates/><xslt:text disable-output-escaping="yes">--&gt;</xslt:text>
  </xsl:template>

  <xsl:template match="ole:doentry">
    <xslt:if test="@colspan!='1'">
      <xslt:attribute name="namest">
	<xslt:text>col</xslt:text>
	<xslt:value-of select="sum(preceding-sibling::td/@colspan)+1"/>
      </xslt:attribute>
      <xslt:attribute name="nameend">
	<xslt:text>col</xslt:text>
	<xslt:value-of select="@colspan+sum(preceding-sibling::td/@colspan)"/>
      </xslt:attribute>
    </xslt:if>
  </xsl:template>
  
  <xsl:template match="ole:doemail">
    <xslt:if test="following::cor//xref">
      <xslt:for-each select="following::cor//xref">
	<e-address type="email">
	  <xslt:value-of select="."/>
	</e-address>
      </xslt:for-each>
    </xslt:if>
    <xslt:if test="following::cor//url">
      <xslt:for-each select="following::cor//url">
	<e-address type="url">
	  <xslt:value-of select="."/>
	</e-address>
      </xslt:for-each>
    </xslt:if>
  </xsl:template>

  <xsl:template match="root">
    <xsl:text disable-output-escaping="yes">&lt;xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
		xmlns:ole="http://www.ole.co.in/TUX"
		xmlns:saxon="http://saxon.sf.net/"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		xmlns:mml="http://www.w3.org/1998/Math/MathML"
		version="2.0"  
		exclude-result-prefixes="ole xsl xlink mml xslt saxon"
		>
    </xsl:text>
		<xslt:output method="xml" encoding="utf-8" indent="no"/>
		<xsl:apply-templates/>
		<xsl:text disable-output-escaping="yes">&lt;/xsl:stylesheet></xsl:text>
  </xsl:template>

  <xsl:template match="ole:wrap-tags[@math]">
    <xslt:template match="{@math}">
      <xsl:apply-templates/>
    </xslt:template>
    <xslt:template match="{@math}" mode="move">
      <xsl:apply-templates mode="move"/>
    </xslt:template>
  </xsl:template>

  <xsl:template match="ole:wrap-tags[@math and @priority]">
    <xslt:template match="{@math}" priority="{@priority}">
      <xsl:apply-templates/>
    </xslt:template>
  </xsl:template>

  <xsl:template match="ole:wrap-tags[@math and @mode]">
    <xslt:template match="{@math}" mode="{@mode}">
      <xsl:apply-templates mode="move"/>
    </xslt:template>
  </xsl:template>

   <xsl:template match="ole:wrap-tags[@name]">
    <xslt:template name="{@name}">
      <xsl:apply-templates />
    </xslt:template>
  </xsl:template>

   <xsl:template match="ole:attrib-tags">
     <xslt:template match="{@name}">
       <xslt:element name="{@tag}">
	 <xsl:apply-templates/>
       </xslt:element>
     </xslt:template>
   </xsl:template>

  <xsl:template match="ole:group-wrap[@math and not(@priority)]">
    <xslt:template match="{@math}">
      <xsl:apply-templates/>
    </xslt:template>
  </xsl:template>

  <xsl:template match="ole:group-wrap[@math and @priority]">
    <xslt:template match="{@math}" priority="{@priority}">
      <xsl:apply-templates/>
    </xslt:template>
  </xsl:template>

  <xsl:template match="ole:group-wrap[@name]">
    <xslt:template name="{@name}">
      <xslt:param name="group"/>
      <xsl:apply-templates/>
    </xslt:template>
  </xsl:template>

  <xsl:template match="ole:group[ancestor::ole:group-wrap/@math and ole:subgroup/@starting-with]">
    <xsl:variable name="group-start">
      <xsl:text>node()[</xsl:text>
      <xsl:for-each select="ole:subgroup/@starting-with">
	<xsl:variable name="x" select="."/>
	<xsl:text>(</xsl:text><xsl:value-of select="ole:make-xpath($x)"/><xsl:text>)</xsl:text>
	<xsl:if test="../following-sibling::ole:subgroup">
	  <xsl:text>&#x20;or&#x20;</xsl:text>
	</xsl:if>
      </xsl:for-each>
      <xsl:text>]</xsl:text>
    </xsl:variable>
    <xslt:for-each-group select="node()" group-starting-with="{$group-start}">
      <xslt:choose>
	<xsl:apply-templates/>
      </xslt:choose>
    </xslt:for-each-group>
  </xsl:template>

  <xsl:template match="ole:group[ancestor::ole:group-wrap/@math and ole:subgroup/@ending-with]">
    <xsl:variable name="group-end">
      <xsl:text>node()[</xsl:text>
      <xsl:for-each select="ole:subgroup/@ending-with">
	<xsl:variable name="x" select="."/>
		<xsl:text>(</xsl:text><xsl:value-of select="ole:make-xpath($x)"/><xsl:text>)</xsl:text>
	<xsl:if test="../following-sibling::ole:subgroup">
	  <xsl:text>&#x20;or&#x20;</xsl:text>
	</xsl:if>
      </xsl:for-each>
      <xsl:text>]</xsl:text>
    </xsl:variable>
    <xslt:for-each-group select="node()" group-ending-with="{$group-end}">
      <xslt:choose>
	<xsl:apply-templates/>
      </xslt:choose>
    </xslt:for-each-group>
  </xsl:template>

  <xsl:template match="ole:group[ancestor::ole:group-wrap[@name]]">
    <xsl:variable name="group-start">
      <xsl:text>node()[</xsl:text>
      <xsl:for-each select="ole:subgroup/@starting-with">
	<xsl:variable name="x" select="." as="xsd:string"/>
	<xsl:variable name="s" select="ole:make-xpath($x)"/>
	<xsl:text>(</xsl:text><xsl:value-of select="$s"/><xsl:text>)</xsl:text>
	<xsl:if test="../following-sibling::ole:subgroup">
	  <xsl:text>&#x20;or&#x20;</xsl:text>
	</xsl:if>
      </xsl:for-each>
      <xsl:text>]</xsl:text>
    </xsl:variable>
    <xslt:for-each-group select="$group" group-starting-with="{$group-start}">
      <xslt:choose>
	<xsl:apply-templates/>
      </xslt:choose>
    </xslt:for-each-group>
  </xsl:template>

  <xsl:template match="ole:group//ole:subgroup[ancestor::ole:group-wrap[@math] and @starting-with]">
    <xsl:variable name="x" select="@starting-with"/>
    <xsl:variable name="match">
      <xsl:text>current-group()[1][</xsl:text>
      <xsl:value-of select="ole:make-xpath($x)"/>
      <xsl:text>]</xsl:text>
    </xsl:variable>
    <xslt:when test="{$match}">
      <xsl:apply-templates/>
    </xslt:when>
  </xsl:template>
  
  <xsl:template match="ole:group//ole:subgroup[ancestor::ole:group-wrap[@math] and @ending-with]">
    <xsl:variable name="x" select="@ending-with"/>
    <xsl:variable name="match">
      <xsl:text>current-group()[1][</xsl:text>
     <xsl:value-of select="ole:make-xpath($x)"/>
      <xsl:text>]</xsl:text>
    </xsl:variable>
    <xslt:when test="{$match}">
      <xsl:apply-templates/>
    </xslt:when>
  </xsl:template>

 <xsl:template match="ole:group//ole:subgroup[ancestor::ole:group-wrap[@name]]">
    <xsl:variable name="x" select="@starting-with"/>
    <xsl:variable name="match">
      <xsl:text>current-group()[1][</xsl:text>
      <xsl:value-of select="ole:make-xpath($x)"/>
      <xsl:text>]</xsl:text>
    </xsl:variable>
    <xslt:when test="{$match}">
      <xsl:apply-templates/>
    </xslt:when>
  </xsl:template>

  <xsl:template match="ole:group//ole:otherwise">
    <xslt:otherwise>
      <xsl:apply-templates/>
    </xslt:otherwise>
  </xsl:template>

   <xsl:template match="ole:call-template">
    <xslt:call-template name="{@name}">
        <!--xslt:with-param name="group" select="node()"/-->
    </xslt:call-template>
  </xsl:template>

 <xsl:template match="ole:table-colspec">
    <xslt:call-template name="{@name}">
        <xslt:with-param name="group" select="1"/>
    </xslt:call-template>
  </xsl:template>

  <xsl:template match="ole:group//ole:call-template">
    <xslt:call-template name="{@name}">
      <xslt:with-param name="group" select="current-group()"/>
    </xslt:call-template>
  </xsl:template>

  <xsl:template match="ole:wrap-tags//ole:value[@of]">
    <xsl:variable name="xpath" select="ole:remove-parenthesis(@of)"/>
    <xslt:value-of select="{$xpath}"/>
  </xsl:template>

  <xsl:template match="ole:group-wrap//ole:value[@of]">
    <xsl:variable name="xpath" select="ole:remove-parenthesis(@of)"/>
    <xslt:value-of select="current-group()/{$xpath}"/>
  </xsl:template>

 <xsl:function name="ole:string-before-squarebracket">
    <xsl:param name="str"/>
    <xsl:value-of select="substring-before($str,'\[')"/>
  </xsl:function>

  <xsl:function name="ole:remove-parenthesis">
    <xsl:param name="str"/>
    <xsl:value-of select="translate(translate($str,'{',''),'}','')"/>
  </xsl:function>

 <xsl:function name="ole:make-xpath">
    <xsl:param name="str"/>
    <xsl:variable name="t" as="xsd:string">
    <xsl:choose>
      <xsl:when test="matches($str,'^math[:]matches-name-first-of','i')">
	<xsl:variable name="s" select="replace($str,'^ole:.*?\((.*)\)$','$1')"/>
	<text><xsl:text>matches(name(.),'^(</xsl:text><xsl:value-of select="$s"/><xsl:text>)$') and (count(preceding-sibling::node()[matches(name(.),'^(</xsl:text><xsl:value-of select="$s"/><xsl:text>)$')]) &lt; 1)</xsl:text></text>
      </xsl:when>
      <xsl:when test="matches($str,'^math[:]matches-name','i')">
	<xsl:variable name="s" select="replace($str,'^ole:.*?\((.*)\)$','$1')"/>
	<text><xsl:text disable-output-escaping="yes">matches(name(.),'^(</xsl:text><xsl:value-of select="$s" disable-output-escaping="yes"/><xsl:text disable-output-escaping="yes" >)$')</xsl:text></text>
      </xsl:when>
      <xsl:otherwise>
	<xsl:value-of select="$str"/>
      </xsl:otherwise>
    </xsl:choose>
    </xsl:variable>
    <xsl:value-of select="$t"/>
  </xsl:function>

  <!--new added module-->
  <xsl:template match="ole:docondition">
    <xslt:apply-templates select="{substring-before(substring-after(ancestor::ole:wrap-tags/@math,'['),']')}/descendant::node()"/>
  </xsl:template>
  
  <xsl:template match="ole:map[@math]">
    <xslt:template match="{@math}">
      <xslt:element name="{@output}">
	<xslt:apply-templates select="node()|*|@*|text()"/>
      </xslt:element>
    </xslt:template>

    <xslt:template match="{@math}" mode="move">
      <xslt:element name="{@output}">
	<xslt:apply-templates select="*|@*|node()|text()"/>
      </xslt:element>
    </xslt:template>
  </xsl:template>
  
  <xsl:template match="ole:map[@math and @mode]">
    <xslt:template match="{@math}" mode="other">
      <xslt:element name="{@output}">
	<xslt:apply-templates/>
      </xslt:element>
    </xslt:template>
  </xsl:template>
  
  <xsl:template match="ole:embed[@math]">
    <xslt:apply-templates select="{@math}" mode="move"/>
    <xslt:for-each select="{@math}">
      <math-moved><xslt:value-of select="@_id"/></math-moved>
    </xslt:for-each>
  </xsl:template>

  <xsl:template match="ole:elements">
      <xslt:apply-templates />
    <!--xslt:for-each select="{@math}">
      <xslt:variable name="tagname"><xslt:value-of select="name()"/></xslt:variable>
      <xslt:message><xslt:value-of select="$tagname"/></xslt:message>
      <xslt:if test="$tagname != 'line'">
	<xslt:text disable-output-escaping="yes">&lt;</xslt:text><xslt:value-of select="$tagname"/><xslt:text disable-output-escaping="yes">&gt;</xslt:text>
      </xslt:if-->
      <!--xslt:if test="$tagname != 'line'">
	<xslt:text disable-output-escaping="yes">&lt;/</xslt:text><xslt:value-of select="$tagname"/><xslt:text disable-output-escaping="yes">&gt;</xslt:text>
      </xslt:if-->
    <!--/xslt:for-each-->
  </xsl:template>


  <xsl:template match="ole:element[@math]">
      <xslt:apply-templates select="{@math}" />
  </xsl:template>


  <xsl:template match="ole:move[@math]">
    <xslt:if test="{@math}">
      <xslt:for-each select="{@math}">
	<xslt:variable name="tagname"><xslt:value-of select="name()"/></xslt:variable>
	<xslt:text disable-output-escaping="yes">&lt;</xslt:text><xslt:value-of select="$tagname"/><xslt:text disable-output-escaping="yes">&gt;</xslt:text>
	  <xslt:apply-templates mode="move"/>
	  <xslt:text disable-output-escaping="yes">&lt;/</xslt:text><xslt:value-of select="$tagname"/><xslt:text disable-output-escaping="yes">&gt;</xslt:text>
      </xslt:for-each>
    </xslt:if>
  </xsl:template>

  <xsl:template match="ole:change[@math]">
    <xslt:if test="{@math}">
      <xslt:for-each select="{@math}">
	<xslt:variable name="tagname"><xsl:value-of select="@tagname"/></xslt:variable>
	<xslt:text disable-output-escaping="yes">&lt;</xslt:text><xslt:value-of select="$tagname"/><xslt:text disable-output-escaping="yes">&gt;</xslt:text>
	  <xslt:apply-templates mode="move"/>
	  <xslt:text disable-output-escaping="yes">&lt;/</xslt:text><xslt:value-of select="$tagname"/><xslt:text disable-output-escaping="yes">&gt;</xslt:text>
      </xslt:for-each>
    </xslt:if>
  </xsl:template>


  <xsl:template match="ole:remove-tags[@math]">
    <xslt:template match="{@math}">
      <xslt:choose>
	<xslt:when test="{@math}">
	</xslt:when>
	<xslt:otherwise>
	  <xslt:apply-templates select="{@math}"/>
	</xslt:otherwise>
      </xslt:choose>
    </xslt:template>
  </xsl:template>

  <xsl:template match="ole:embed[(@math and @attribute) and following-sibling::*[1][self::ole:embed[(@math and @attribute)]]]">
    <xslt:attribute name="{@attribute}">
      <xslt:apply-templates select="{@math}/text()" mode="move"/>
    </xslt:attribute>
    <xslt:attribute name="{following-sibling::*[1][self::ole:embed[(@math and @attribute)]]/@attribute}">
      <xslt:apply-templates select="{following-sibling::*[1][self::ole:embed[(@math and @attribute)]]/@math}/text()" mode="move"/>
    </xslt:attribute>
    <xslt:for-each select="{following-sibling::*[1][self::ole:embed[(@math and @attribute)]]/@math}"> 
      <math-moved><xslt:value-of select="@_id"/></math-moved>
    </xslt:for-each>
    <xslt:for-each select="{@math}"> 
      <math-moved><xslt:value-of select="@_id"/></math-moved>
    </xslt:for-each>
  </xsl:template>
  
  <xsl:template match="ole:embed[(@math and @attribute) and not(following-sibling::*[1][self::ole:embed[(@math and @attribute)]])]">
    <xslt:attribute name="{@attribute}">
      <xslt:apply-templates select="{@math}/text()" mode="move"/>
    </xslt:attribute>
    <xslt:for-each select="{@math}"> 
      <math-moved><xslt:value-of select="@_id"/></math-moved>
    </xslt:for-each>
  </xsl:template>
  
  <xsl:template name="ole:message">
    <xslt:message select="."/>
  </xsl:template>
  
  <xsl:template match="ole:apply[@select]">
    <xslt:apply-templates select="{@select}"/>
  </xsl:template> 
  
  <xsl:function name="ole:matches">
    <xsl:param name="xpath"/>
    <xsl:text>matches(name(.),'^(</xsl:text><xsl:value-of select="$xpath"/><xsl:text>)$')&#x20;and (count(preceding-sibling::*[matches(name(.),'^(</xsl:text><xsl:value-of select="$xpath"/><xsl:text>)$')]) &lt; 1)</xsl:text>
  </xsl:function>
  
  <xsl:template match="ole:date-text[@math]">
    <xslt:template match="{@math}">
      <xsl:element name="{name(*[1])}">
	<xsl:value-of select="*[1]/@text"/>
	<xslt:for-each select="*">
	  <xslt:value-of select="."/>
	  <xslt:if test="position() != last()">
	    <xslt:text>/</xslt:text>
	  </xslt:if>      
	</xslt:for-each>
      </xsl:element>
    </xslt:template>
  </xsl:template>

  <xsl:template match="ole:wrap-previous[@math]">
    <xslt:template match="{@math}">
      <xsl:element name="{name(*[1])}">
	<xsl:for-each select="*/tag">
	  <xsl:choose>
	    <xsl:when test="@name != ''">
	      <xslt:element name="{@name}">
		<xslt:value-of select="{@text}"/>
		<xsl:value-of select="@ctext"/>
	      </xslt:element>
	    </xsl:when>
	  <xsl:otherwise>
	    <xslt:value-of select="{@text}"/>
	    <xsl:value-of select="@ctext"/>
	  </xsl:otherwise>
	  </xsl:choose>
	</xsl:for-each>
      </xsl:element>
    </xslt:template>
  </xsl:template>
  
</xsl:stylesheet>