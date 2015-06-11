<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0"
    xmlns:File="java:java.io.File"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
    xmlns:saxon="http://saxon.sf.net/"
    xmlns:ole="http://www.ole.co.in/TUX"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    exclude-result-prefixes="ole xslt xlink saxon xsd xs"
    extension-element-prefixes="File">
  <xsl:param name="app_path"/>

  <xsl:variable name="base_uri" select="base-uri($app_path)"/>

   <xsl:param name="path" select="'/home/maha/Projects/mathtype2mml/math-typeole-to-mathml/xsl/xml'" as="xs:string"/>
    

  <xsl:template match="*|@*|comment()|processing-instruction()|text()">
    <xsl:copy>
      <xsl:apply-templates select="*|@*|comment()|processing-instruction()|text()" />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/">    
    <xsl:call-template name="buildFileList">
      <xsl:with-param name="dir" select="$path"/>
    </xsl:call-template>
  </xsl:template>
  
  <xsl:template name="buildFileList">
    <xsl:param name="dir" as="xs:string"/>
    <xsl:variable name="fileObj" select="File:new($dir)"/>
    <xsl:variable name="files" select="File:list($fileObj)" as="xs:string*"/>
    <root xmlns:ole="http://www.ole.co.in/TUX" 
	  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/" 
	  xmlns:xlink="http://www.w3.org/1999/xlink" 
	  xmlns:mml="http://www.w3.org/1998/Math/MathML" 
	  exclude-result-prefixes="mml ole xlink" 
	  version="0.1">
      <xsl:for-each select="$files">
	<xsl:variable name="file" select="File:new(.)"/>
	<xsl:if test="not(File:isDirectory($file))">
	  <xsl:variable name="xml_path"><xsl:value-of select="ole:get_xml_path($file, $dir)"/></xsl:variable>
	  <xsl:variable name="xml_doc" select="document($xml_path)"/>
	  <xsl:copy-of  select="$xml_doc"/>
	</xsl:if>      
      </xsl:for-each>
    </root>    
  </xsl:template>

   <xsl:function name="ole:get_xml_path">
     <xsl:param name="file"/>
     <xsl:param name="dir"/>
     <xsl:variable name="filename" select="File:getName($file)"/>
     <xsl:if test="ends-with($filename,'.xml')">
       <xsl:message><xsl:value-of select="$filename"/></xsl:message>
       <xsl:variable name="xml_path"><xsl:value-of select="concat($dir, '/', $file)"/></xsl:variable>
       <xsl:value-of select="$xml_path"/>
     </xsl:if>
   </xsl:function>
</xsl:stylesheet>