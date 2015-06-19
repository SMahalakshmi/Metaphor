<?xml version="1.0" encoding="utf-8"?><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
		xmlns:ole="http://www.ole.co.in/TUX"
		xmlns:saxon="http://saxon.sf.net/"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		xmlns:mml="http://www.w3.org/1998/Math/MathML"
		version="2.0"  
		exclude-result-prefixes="ole xsl xlink mml xslt saxon"
		>
    <xsl:output xmlns:xsl="http://www.w3.org/1999/XSL/Transform" method="xml" encoding="utf-8"
            indent="no"/>
<xsl:template xmlns:ole="http://www.ole.co.in/TUX"
              xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
              xmlns:xlink="http://www.w3.org/1999/xlink"
              xmlns:mml="http://www.w3.org/1998/Math/MathML"
              match="*|@*|comment()|processing-instruction()|text()">
   <xsl:copy>
      <xsl:apply-templates select="*|@*|comment()|processing-instruction()|text()"/>
   </xsl:copy>
</xsl:template>
<!--superscript--><xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='28' and child::sub2 and @variation='0']">
   <msup xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="preceding-sibling::*[1]">
         <xsl:for-each select="preceding-sibling::*[1]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <xsl:apply-templates/>
   </msup>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='28' and child::sub2 and @variation='0']"
              mode="move">
   <msup xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(preceding-sibling::*[1])}" math="preceding-sibling::*[1]"
                mode="move"/>
      <ole:elements math="line[count(*)&gt;0]/*"/>
   </msup>
</xsl:template>
<!--superscript--><xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='28' and @variation='0' and child::sub                     and not(preceding-sibling::tmpl[@templateType='27' and @variation='1' and child::sub])                     ]">
   <msup xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="preceding-sibling::*[1]">
         <xsl:for-each select="preceding-sibling::*[1]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <xsl:apply-templates/>
   </msup>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='28' and @variation='0' and child::sub                     and not(preceding-sibling::tmpl[@templateType='27' and @variation='1' and child::sub])                     ]"
              mode="move">
   <msup xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(preceding-sibling::*[1])}" math="preceding-sibling::*[1]"
                mode="move"/>
      <ole:elements math="line[count(*)&gt;0]/*"/>
   </msup>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='21' and @variation='32' and child::sub                     and not(preceding-sibling::tmpl[@templateType='27' and @variation='1' and child::sub])                     ]">
   <msup xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mstyle mathsize="140%" displaystyle="true">
         <xsl:if test="line[4][name(preceding-sibling::*[1])='sym']/*">
            <xsl:for-each select="line[4][name(preceding-sibling::*[1])='sym']/*">
               <xsl:variable name="tagname">
                  <xsl:value-of select="name()"/>
               </xsl:variable>
               <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
               <xsl:value-of select="$tagname"/>
               <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
               <xsl:apply-templates mode="move"/>
               <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
               <xsl:value-of select="$tagname"/>
               <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            </xsl:for-each>
         </xsl:if>
      </mstyle>
      <xsl:apply-templates/>
   </msup>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='21' and @variation='32' and child::sub                     and not(preceding-sibling::tmpl[@templateType='27' and @variation='1' and child::sub])                     ]"
              mode="move">
   <msup xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mstyle mathsize="140%" displaystyle="true">
         <ole:move tagname="{name(line[4][name(preceding-sibling::*[1])='sym']/*)}"
                   math="line[4][name(preceding-sibling::*[1])='sym']/*"
                   mode="move"/>
      </mstyle>
      <ole:elements math="line[3][count(*)&gt;0]/*"/>
   </msup>
</xsl:template>
<!--subsup--><xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='29' and @variation='0' and child::sub]">
   <msubsup xmlns:ole="http://www.ole.co.in/TUX"
            xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
            xmlns:xlink="http://www.w3.org/1999/xlink"
            xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="preceding-sibling::*[1]">
         <xsl:for-each select="preceding-sibling::*[1]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <xsl:apply-templates/>
   </msubsup>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='29' and @variation='0' and child::sub]"
              mode="move">
   <msubsup xmlns:ole="http://www.ole.co.in/TUX"
            xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
            xmlns:xlink="http://www.w3.org/1999/xlink"
            xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(preceding-sibling::*[1])}" math="preceding-sibling::*[1]"
                mode="move"/>
      <ole:do/>
   </msubsup>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='21' and @variation='48' and child::sub]">
   <msubsup xmlns:ole="http://www.ole.co.in/TUX"
            xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
            xmlns:xlink="http://www.w3.org/1999/xlink"
            xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mstyle mathsize="140%" displaystyle="true">
         <xsl:if test="line[4]/*">
            <xsl:for-each select="line[4]/*">
               <xsl:variable name="tagname">
                  <xsl:value-of select="name()"/>
               </xsl:variable>
               <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
               <xsl:value-of select="$tagname"/>
               <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
               <xsl:apply-templates mode="move"/>
               <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
               <xsl:value-of select="$tagname"/>
               <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            </xsl:for-each>
         </xsl:if>
      </mstyle>
      <xsl:apply-templates/>
   </msubsup>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='21' and @variation='48' and child::sub]"
              mode="move">
   <msubsup xmlns:ole="http://www.ole.co.in/TUX"
            xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
            xmlns:xlink="http://www.w3.org/1999/xlink"
            xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mstyle mathsize="140%" displaystyle="true">
         <ole:move tagname="{name(line[4])}" math="line[4]/*" mode="move"/>
      </mstyle>
      <ole:do/>
   </msubsup>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='28' and @variation='1' and child::sub                     and (following-sibling::tmpl[@templateType='27' and @variation='0' and child::sub])                     ]">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="following-sibling::*[1]">
         <xsl:for-each select="following-sibling::*[1]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <mprescripts/>
      <xsl:apply-templates/>
   </mmultiscripts>
   <msub xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="following-sibling::tmpl[@templateType='27' and @variation='0' and child::sub]/child::*[3]">
         <xsl:for-each select="following-sibling::tmpl[@templateType='27' and @variation='0' and child::sub]/child::*[3]">
            <xsl:variable name="tagname">mrow</xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <xsl:apply-templates select="following-sibling::tmpl/line[count(*)&gt;0]/*"/>
   </msub>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='28' and @variation='1' and child::sub                     and (following-sibling::tmpl[@templateType='27' and @variation='0' and child::sub])                     ]"
              mode="move">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(following-sibling::*[1])}" math="following-sibling::*[1]"
                mode="move"/>
      <mprescripts/>
      <ole:elements math="line[count(*)&gt;0]/*"/>
   </mmultiscripts>
   <msub xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:change tagname="mrow"
                  math="following-sibling::tmpl[@templateType='27' and @variation='0' and child::sub]/child::*[3]"
                  mode="move"/>
      <ole:element math="following-sibling::tmpl/line[count(*)&gt;0]/*"/>
   </msub>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='27' and @variation='1' and child::sub                     and (following-sibling::tmpl[@templateType='28' and @variation='0' and child::sub])                     ]">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="following-sibling::*[1]">
         <xsl:for-each select="following-sibling::*[1]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <mprescripts/>
      <xsl:apply-templates/>
   </mmultiscripts>
   <msup xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="following-sibling::tmpl[@templateType='28' and @variation='0' and child::sub]/child::*[2]">
         <xsl:for-each select="following-sibling::tmpl[@templateType='28' and @variation='0' and child::sub]/child::*[2]">
            <xsl:variable name="tagname">mrow</xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <xsl:apply-templates select="following-sibling::tmpl/line[count(*)&gt;0]/*"/>
   </msup>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='27' and @variation='1' and child::sub                     and (following-sibling::tmpl[@templateType='28' and @variation='0' and child::sub])                     ]"
              mode="move">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(following-sibling::*[1])}" math="following-sibling::*[1]"
                mode="move"/>
      <mprescripts/>
      <ole:elements math="line[count(*)&gt;0]/*"/>
   </mmultiscripts>
   <msup xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:change tagname="mrow"
                  math="following-sibling::tmpl[@templateType='28' and @variation='0' and child::sub]/child::*[2]"
                  mode="move"/>
      <ole:element math="following-sibling::tmpl/line[count(*)&gt;0]/*"/>
   </msup>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='28' and @variation='1' and child::sub                     and not(following-sibling::tmpl[@templateType='27' and @variation='0'])                     ]">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="following-sibling::*[1]">
         <xsl:for-each select="following-sibling::*[1]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <mprescripts/>
      <xsl:apply-templates/>
   </mmultiscripts>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='28' and @variation='1' and child::sub                     and not(following-sibling::tmpl[@templateType='27' and @variation='0'])                     ]"
              mode="move">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(following-sibling::*[1])}" math="following-sibling::*[1]"
                mode="move"/>
      <mprescripts/>
      <ole:elements math="line[count(*)&gt;0]/*"/>
   </mmultiscripts>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0][parent::tmpl[@templateType='28' and @variation='1' and child::sub]                     and not(following-sibling::tmpl[@templateType='27' and @variation='0' and child::sub])                     ]">
   <none xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0][parent::tmpl[@templateType='28' and @variation='1' and child::sub]                     and not(following-sibling::tmpl[@templateType='27' and @variation='0' and child::sub])                     ]"
              mode="move">
   <none xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='28' and @variation='1' and child::sub2]">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="following-sibling::*[2]">
         <xsl:for-each select="following-sibling::*[2]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <mprescripts/>
      <xsl:apply-templates/>
   </mmultiscripts>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='28' and @variation='1' and child::sub2]"
              mode="move">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(following-sibling::*[2])}" math="following-sibling::*[2]"
                mode="move"/>
      <mprescripts/>
      <ole:elements math="line[count(*)&gt;0]/*"/>
   </mmultiscripts>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0][parent::tmpl[@templateType='28' and @variation='1' and child::sub2]]">
   <none xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0][parent::tmpl[@templateType='28' and @variation='1' and child::sub2]]"
              mode="move">
   <none xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='27' and @variation='1' and child::sub2]">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="following-sibling::*[2]">
         <xsl:for-each select="following-sibling::*[2]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <mprescripts/>
      <xsl:apply-templates/>
   </mmultiscripts>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='27' and @variation='1' and child::sub2]"
              mode="move">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(following-sibling::*[2])}" math="following-sibling::*[2]"
                mode="move"/>
      <mprescripts/>
      <ole:elements math="line[count(*)&gt;0]/*"/>
   </mmultiscripts>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0][parent::tmpl[@templateType='27' and @variation='1' and child::sub2]]">
   <none xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0][parent::tmpl[@templateType='27' and @variation='1' and child::sub2]]"
              mode="move">
   <none xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='27' and @variation='1' and child::sub                     and not(following-sibling::tmpl[@templateType='28' and @variation='0' and child::sub])   ]">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="following-sibling::*[1]">
         <xsl:for-each select="following-sibling::*[1]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <mprescripts/>
      <xsl:apply-templates/>
   </mmultiscripts>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='27' and @variation='1' and child::sub                     and not(following-sibling::tmpl[@templateType='28' and @variation='0' and child::sub])   ]"
              mode="move">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(following-sibling::*[1])}" math="following-sibling::*[1]"
                mode="move"/>
      <mprescripts/>
      <ole:elements math="line[count(*)&gt;0]/*"/>
   </mmultiscripts>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0][parent::tmpl[@templateType='27' and @variation='1' and child::sub]]">
   <none xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0][parent::tmpl[@templateType='27' and @variation='1' and child::sub]]"
              mode="move">
   <none xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='29' and @variation='1' and child::sub]">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="following-sibling::*[1]">
         <xsl:for-each select="following-sibling::*[1]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <mprescripts/>
      <xsl:apply-templates/>
   </mmultiscripts>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='29' and @variation='1' and child::sub]"
              mode="move">
   <mmultiscripts xmlns:ole="http://www.ole.co.in/TUX"
                  xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(following-sibling::*[1])}" math="following-sibling::*[1]"
                mode="move"/>
      <mprescripts/>
      <ole:elements math="line[count(*)&gt;0]/*"/>
   </mmultiscripts>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0][parent::tmpl[@templateType='29' and @variation='1' and child::sub]]">
   <none xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0][parent::tmpl[@templateType='29' and @variation='1' and child::sub]]"
              mode="move">
   <none xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template>
<!--subscript--><xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='27' and child::sub and @variation='0'                     and not(preceding-sibling::tmpl[@templateType='28' and @variation='1'])                 ]">
   <msub xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="preceding-sibling::*[1]">
         <xsl:for-each select="preceding-sibling::*[1]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <xsl:apply-templates/>
   </msub>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='27' and child::sub and @variation='0'                     and not(preceding-sibling::tmpl[@templateType='28' and @variation='1'])                 ]"
              mode="move">
   <msub xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(preceding-sibling::*[1])}" math="preceding-sibling::*[1]"
                mode="move"/>
      <ole:elements math="line[count(*)&gt;0]/*"/>
   </msub>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='27' and child::sub2 and @variation='0']">
   <msub xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="preceding-sibling::*[1]">
         <xsl:for-each select="preceding-sibling::*[1]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <xsl:apply-templates/>
   </msub>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='27' and child::sub2 and @variation='0']"
              mode="move">
   <msub xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(preceding-sibling::*[1])}" math="preceding-sibling::*[1]"
                mode="move"/>
      <ole:elements math="line[count(*)&gt;0]/*"/>
   </msub>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='21' and @variation='16' and child::sub                     and not(preceding-sibling::tmpl[@templateType='27' and @variation='1' and child::sub])                     ]">
   <msub xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mstyle mathsize="140%" displaystyle="true">
         <xsl:if test="line[4][name(preceding-sibling::*[1])='sym']/*">
            <xsl:for-each select="line[4][name(preceding-sibling::*[1])='sym']/*">
               <xsl:variable name="tagname">
                  <xsl:value-of select="name()"/>
               </xsl:variable>
               <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
               <xsl:value-of select="$tagname"/>
               <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
               <xsl:apply-templates mode="move"/>
               <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
               <xsl:value-of select="$tagname"/>
               <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            </xsl:for-each>
         </xsl:if>
      </mstyle>
      <xsl:apply-templates/>
   </msub>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='21' and @variation='16' and child::sub                     and not(preceding-sibling::tmpl[@templateType='27' and @variation='1' and child::sub])                     ]"
              mode="move">
   <msub xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mstyle mathsize="140%" displaystyle="true">
         <ole:move tagname="{name(line[4][name(preceding-sibling::*[1])='sym']/*)}"
                   math="line[4][name(preceding-sibling::*[1])='sym']/*"
                   mode="move"/>
      </mstyle>
      <ole:elements math="line[2][count(*)&gt;0]/*"/>
   </msub>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="*[following-sibling::*[1][@templateType='29' and @variation='0']/sub] |                        *[following-sibling::*[1][@templateType='27' and @variation='0']/sub] |                       *[following-sibling::*[1][@templateType='27' and @variation='0']/sub2] |                         *[following-sibling::*[1][@templateType='28' and @variation='0']/sub] |                       *[following-sibling::*[1][@templateType='28' and @variation='0']/sub2] |                                           *[preceding-sibling::*[1][@templateType='28' and @variation='1']/sub] |                        *[preceding-sibling::*[1][@templateType='27' and @variation='1']/sub] |                        *[preceding-sibling::*[1][@templateType='29' and @variation='1']/sub] |                        *[preceding-sibling::*[2][@templateType='28' and @variation='1']/sub2] |                        *[preceding-sibling::*[2][@templateType='27' and @variation='1']/sub2] |                                             *[following-sibling::*[3][parent::tmpl[@templateType = '19' and (@variation = '80')] and name(preceding-sibling::*[1])='sym']] |                        *[following-sibling::*[2][parent::tmpl[(@templateType = '19') and (@variation = '80')] and name(preceding-sibling::*[1])='sym']] |                        *[parent::tmpl[@templateType = '15' and @variation = '5'] and name(preceding-sibling::*[1])='sym'] |                       *[parent::tmpl[(@templateType = '17') and (@variation = '0')] and name(preceding-sibling::*[1])='sym'] |                       *[parent::tmpl[(@templateType = '19') and (@variation = '80')] and name(preceding-sibling::*[1])='sym'] |                                             *[preceding-sibling::tmpl[@templateType='28' and @variation='1']] |                                             *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '21' and @variation = '32' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '21' and @variation = '16' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '21' and @variation = '48' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '22' and @variation = '96' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '22' and @variation = '80' and child::sub]] |                                             *[preceding-sibling::tmpl[@templateType='27' and @variation='1']] |                       sub | sym |                       *[parent::tmpl[@templateType = '1' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '3' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '2' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '3' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                        *[parent::tmpl[@templateType = '4' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '5' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '6' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '7' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '9' and @variation = '18'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '9' and @variation = '48'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '30' and @variation = '2'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '30' and @variation = '1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                                             *[parent::tmpl[@templateType='30' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='9' and @variation='34'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='9' and @variation='51'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='9' and @variation='35'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='8' and @variation='3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='1' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='3' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='2' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='4' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='5' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='8' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='16' and @variation='64'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym']  |                       *[parent::tmpl[@templateType='15' and @variation='1'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym']  |                       *[parent::tmpl[@templateType='15' and @variation='2'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='6'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='7'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='9'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='13'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym']                       ">
   <xsl:choose>
      <xsl:when test="*[following-sibling::*[1][@templateType='29' and @variation='0']/sub] |                        *[following-sibling::*[1][@templateType='27' and @variation='0']/sub] |                       *[following-sibling::*[1][@templateType='27' and @variation='0']/sub2] |                         *[following-sibling::*[1][@templateType='28' and @variation='0']/sub] |                       *[following-sibling::*[1][@templateType='28' and @variation='0']/sub2] |                                           *[preceding-sibling::*[1][@templateType='28' and @variation='1']/sub] |                        *[preceding-sibling::*[1][@templateType='27' and @variation='1']/sub] |                        *[preceding-sibling::*[1][@templateType='29' and @variation='1']/sub] |                        *[preceding-sibling::*[2][@templateType='28' and @variation='1']/sub2] |                        *[preceding-sibling::*[2][@templateType='27' and @variation='1']/sub2] |                                             *[following-sibling::*[3][parent::tmpl[@templateType = '19' and (@variation = '80')] and name(preceding-sibling::*[1])='sym']] |                        *[following-sibling::*[2][parent::tmpl[(@templateType = '19') and (@variation = '80')] and name(preceding-sibling::*[1])='sym']] |                        *[parent::tmpl[@templateType = '15' and @variation = '5'] and name(preceding-sibling::*[1])='sym'] |                       *[parent::tmpl[(@templateType = '17') and (@variation = '0')] and name(preceding-sibling::*[1])='sym'] |                       *[parent::tmpl[(@templateType = '19') and (@variation = '80')] and name(preceding-sibling::*[1])='sym'] |                                             *[preceding-sibling::tmpl[@templateType='28' and @variation='1']] |                                             *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '21' and @variation = '32' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '21' and @variation = '16' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '21' and @variation = '48' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '22' and @variation = '96' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '22' and @variation = '80' and child::sub]] |                                             *[preceding-sibling::tmpl[@templateType='27' and @variation='1']] |                       sub | sym |                       *[parent::tmpl[@templateType = '1' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '3' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '2' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '3' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                        *[parent::tmpl[@templateType = '4' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '5' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '6' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '7' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '9' and @variation = '18'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '9' and @variation = '48'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '30' and @variation = '2'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '30' and @variation = '1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                                             *[parent::tmpl[@templateType='30' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='9' and @variation='34'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='9' and @variation='51'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='9' and @variation='35'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='8' and @variation='3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='1' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='3' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='2' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='4' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='5' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='8' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='16' and @variation='64'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym']  |                       *[parent::tmpl[@templateType='15' and @variation='1'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym']  |                       *[parent::tmpl[@templateType='15' and @variation='2'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='6'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='7'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='9'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='13'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym']                       "/>
      <xsl:otherwise>
         <xsl:apply-templates select="*[following-sibling::*[1][@templateType='29' and @variation='0']/sub] |                        *[following-sibling::*[1][@templateType='27' and @variation='0']/sub] |                       *[following-sibling::*[1][@templateType='27' and @variation='0']/sub2] |                         *[following-sibling::*[1][@templateType='28' and @variation='0']/sub] |                       *[following-sibling::*[1][@templateType='28' and @variation='0']/sub2] |                                           *[preceding-sibling::*[1][@templateType='28' and @variation='1']/sub] |                        *[preceding-sibling::*[1][@templateType='27' and @variation='1']/sub] |                        *[preceding-sibling::*[1][@templateType='29' and @variation='1']/sub] |                        *[preceding-sibling::*[2][@templateType='28' and @variation='1']/sub2] |                        *[preceding-sibling::*[2][@templateType='27' and @variation='1']/sub2] |                                             *[following-sibling::*[3][parent::tmpl[@templateType = '19' and (@variation = '80')] and name(preceding-sibling::*[1])='sym']] |                        *[following-sibling::*[2][parent::tmpl[(@templateType = '19') and (@variation = '80')] and name(preceding-sibling::*[1])='sym']] |                        *[parent::tmpl[@templateType = '15' and @variation = '5'] and name(preceding-sibling::*[1])='sym'] |                       *[parent::tmpl[(@templateType = '17') and (@variation = '0')] and name(preceding-sibling::*[1])='sym'] |                       *[parent::tmpl[(@templateType = '19') and (@variation = '80')] and name(preceding-sibling::*[1])='sym'] |                                             *[preceding-sibling::tmpl[@templateType='28' and @variation='1']] |                                             *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '21' and @variation = '32' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '21' and @variation = '16' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '21' and @variation = '48' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '22' and @variation = '96' and child::sub]] |                       *[name(preceding-sibling::*[1])='sym' and parent::tmpl[@templateType = '22' and @variation = '80' and child::sub]] |                                             *[preceding-sibling::tmpl[@templateType='27' and @variation='1']] |                       sub | sym |                       *[parent::tmpl[@templateType = '1' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '3' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '2' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '3' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                        *[parent::tmpl[@templateType = '4' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '5' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '6' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '7' and @variation = '3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '9' and @variation = '18'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '9' and @variation = '48'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '30' and @variation = '2'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType = '30' and @variation = '1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                                             *[parent::tmpl[@templateType='30' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='9' and @variation='34'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='9' and @variation='51'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='9' and @variation='35'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='8' and @variation='3'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='1' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='3' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='2' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='4' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='5' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='8' and @variation='1'] and name()='mo' and preceding-sibling::*[1][name()='line']] |                       *[parent::tmpl[@templateType='16' and @variation='64'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym']  |                       *[parent::tmpl[@templateType='15' and @variation='1'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym']  |                       *[parent::tmpl[@templateType='15' and @variation='2'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='6'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='7'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='9'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym'] |                       *[parent::tmpl[@templateType='15' and @variation='13'] and name()='mo' and name(preceding-sibling::*[1]) = 'sym']                       "/>
      </xsl:otherwise>
   </xsl:choose>
</xsl:template>
<!--brackets--><xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='0' and @variation='3'                           or (@templateType='1' and @variation='3')                                                     or (@templateType='2' and @variation='3')                           or (@templateType='3' and @variation='3')                           or (@templateType='4' and @variation='3')                           or (@templateType='5' and @variation='3')                           or (@templateType='6' and @variation='3')               or (@templateType='7' and @variation='3')               or (@templateType='9' and @variation='18')               or (@templateType='9' and @variation='48')                  or (@templateType='9' and @variation='34')                  or (@templateType='9' and @variation='51')                or (@templateType='9' and @variation='35')              or (@templateType='8' and @variation='3')                                         ]">
   <mrow xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="child::*[2][name()='mo'][preceding-sibling::*[1][name()='line']]">
         <xsl:for-each select="child::*[2][name()='mo'][preceding-sibling::*[1][name()='line']]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <xsl:apply-templates/>
   </mrow>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='0' and @variation='3'                           or (@templateType='1' and @variation='3')                                                     or (@templateType='2' and @variation='3')                           or (@templateType='3' and @variation='3')                           or (@templateType='4' and @variation='3')                           or (@templateType='5' and @variation='3')                           or (@templateType='6' and @variation='3')               or (@templateType='7' and @variation='3')               or (@templateType='9' and @variation='18')               or (@templateType='9' and @variation='48')                  or (@templateType='9' and @variation='34')                  or (@templateType='9' and @variation='51')                or (@templateType='9' and @variation='35')              or (@templateType='8' and @variation='3')                                         ]"
              mode="move">
   <mrow xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(child::*[2])}"
                math="child::*[2][name()='mo'][preceding-sibling::*[1][name()='line']]"
                mode="move"/>
      <ole:do/>
   </mrow>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='30' and @variation='2'               or (@templateType='30' and @variation='1')               ]">
   <mrow xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="child::*[3][name()='mo'][preceding-sibling::*[1][name()='line']]">
         <xsl:for-each select="child::*[3][name()='mo'][preceding-sibling::*[1][name()='line']]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <xsl:apply-templates/>
   </mrow>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='30' and @variation='2'               or (@templateType='30' and @variation='1')               ]"
              mode="move">
   <mrow xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(child::*[3])}"
                math="child::*[3][name()='mo'][preceding-sibling::*[1][name()='line']]"
                mode="move"/>
      <ole:do/>
   </mrow>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='1' and @variation='1'              or (@templateType='3' and @variation='1')              or (@templateType='2' and @variation='1')              or (@templateType='4' and @variation='1')              or (@templateType='5' and @variation='1')                           or (@templateType='8' and @variation='1')                         ]">
   <mrow xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:if test="child::*[2][name()='mo'][preceding-sibling::*[1][name()='line']]">
         <xsl:for-each select="child::*[2][name()='mo'][preceding-sibling::*[1][name()='line']]">
            <xsl:variable name="tagname">
               <xsl:value-of select="name()"/>
            </xsl:variable>
            <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            <xsl:apply-templates mode="move"/>
            <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
            <xsl:value-of select="$tagname"/>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
         </xsl:for-each>
      </xsl:if>
      <xsl:apply-templates/>
   </mrow>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='1' and @variation='1'              or (@templateType='3' and @variation='1')              or (@templateType='2' and @variation='1')              or (@templateType='4' and @variation='1')              or (@templateType='5' and @variation='1')                           or (@templateType='8' and @variation='1')                         ]"
              mode="move">
   <mrow xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:move tagname="{name(child::*[2])}"
                math="child::*[2][name()='mo'][preceding-sibling::*[1][name()='line']]"
                mode="move"/>
      <ole:do/>
   </mrow>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='1' and @variation='2'            or (@templateType='3' and @variation='2')            or (@templateType='4' and @variation='2')            or (@templateType='5' and @variation='2')            or (@templateType='2' and @variation='2')            or (@templateType='8' and @variation='2')                         ]">
   <xsl:apply-templates/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='1' and @variation='2'            or (@templateType='3' and @variation='2')            or (@templateType='4' and @variation='2')            or (@templateType='5' and @variation='2')            or (@templateType='2' and @variation='2')            or (@templateType='8' and @variation='2')                         ]"
              mode="move">
   <ole:do xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='30' and @variation='3']">
   <mrow xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:apply-templates select="child::*[3]"/>
      <xsl:apply-templates select="child::*[1]"/>
      <xsl:apply-templates select="child::*[4]"/>
      <xsl:apply-templates select="child::*[2]"/>
      <xsl:apply-templates select="child::*[5]"/>
   </mrow>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='30' and @variation='3']"
              mode="move">
   <mrow xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:element math="child::*[3]"/>
      <ole:element math="child::*[1]"/>
      <ole:element math="child::*[4]"/>
      <ole:element math="child::*[2]"/>
      <ole:element math="child::*[5]"/>
   </mrow>
</xsl:template>
<!--ole:wrap-tags math="line[1][parent::tmpl[@templateType='30' and @variation='3']]">
  <ole:do/>
  <ole:move tagname="{name(following-sibling::*[3])}" math="following-sibling::*[3][name()='mo'][preceding-sibling::*[2][name()='line']]" mode="move"/>               
</ole:wrap-tags--><!--mfrac--><xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='11' and @variation='0']">
   <mfrac xmlns:ole="http://www.ole.co.in/TUX"
          xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:apply-templates select="line[1]/*"/>
      <xsl:apply-templates select="line[2]/*"/>
   </mfrac>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='11' and @variation='0']"
              mode="move">
   <mfrac xmlns:ole="http://www.ole.co.in/TUX"
          xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:element math="line[1]/*"/>
      <ole:element math="line[2]/*"/>
   </mfrac>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='11' and @variation='1']">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML"
           scriptlevel="+1">
      <mfrac>
         <xsl:apply-templates select="line[1]/*"/>
         <xsl:apply-templates select="line[2]/*"/>
      </mfrac>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='11' and @variation='1']"
              mode="move">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML"
           scriptlevel="+1">
      <mfrac>
         <ole:element math="line[1]/*"/>
         <ole:element math="line[2]/*"/>
      </mfrac>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='11' and @variation='2']">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML"
           scriptlevel="+1">
      <mfrac bevelled="true">
         <xsl:apply-templates select="line[1]/*"/>
         <xsl:apply-templates select="line[2]/*"/>
      </mfrac>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='11' and @variation='2']"
              mode="move">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML"
           scriptlevel="+1">
      <mfrac bevelled="true">
         <ole:element math="line[1]/*"/>
         <ole:element math="line[2]/*"/>
      </mfrac>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='11' and @variation='3']">
   <mfrac xmlns:ole="http://www.ole.co.in/TUX"
          xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          xmlns:mml="http://www.w3.org/1998/Math/MathML"
          bevelled="true">
      <xsl:apply-templates select="line[1]/*"/>
      <xsl:apply-templates select="line[2]/*"/>
   </mfrac>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='11' and @variation='3']"
              mode="move">
   <mfrac xmlns:ole="http://www.ole.co.in/TUX"
          xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          xmlns:mml="http://www.w3.org/1998/Math/MathML"
          bevelled="true">
      <ole:element math="line[1]/*"/>
      <ole:element math="line[2]/*"/>
   </mfrac>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='11' and @variation='6']">
   <xsl:apply-templates select="line[1]/*"/>
   <mo xmlns:ole="http://www.ole.co.in/TUX"
       xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
       xmlns:xlink="http://www.w3.org/1999/xlink"
       xmlns:mml="http://www.w3.org/1998/Math/MathML">/</mo>
   <xsl:apply-templates select="line[2]/*"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='11' and @variation='6']"
              mode="move">
   <ole:element xmlns:ole="http://www.ole.co.in/TUX"
                xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                xmlns:xlink="http://www.w3.org/1999/xlink"
                xmlns:mml="http://www.w3.org/1998/Math/MathML"
                math="line[1]/*"/>
   <mo xmlns:ole="http://www.ole.co.in/TUX"
       xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
       xmlns:xlink="http://www.w3.org/1999/xlink"
       xmlns:mml="http://www.w3.org/1998/Math/MathML">/</mo>
   <ole:element xmlns:ole="http://www.ole.co.in/TUX"
                xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
                xmlns:xlink="http://www.w3.org/1999/xlink"
                xmlns:mml="http://www.w3.org/1998/Math/MathML"
                math="line[2]/*"/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '16' and @variation = '112')                             or (@templateType = '15' and @variation = '113')                              )                             and descendant::*[matches(., '(∑|∫|∲|∯|∰)')] and descendant::sym)                           ]">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <munderover>
         <xsl:apply-templates select="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']"/>
         <xsl:apply-templates select="line[2]"/>
         <xsl:apply-templates select="line[3]"/>
      </munderover>
      <xsl:apply-templates select="line[1]"/>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '16' and @variation = '112')                             or (@templateType = '15' and @variation = '113')                              )                             and descendant::*[matches(., '(∑|∫|∲|∯|∰)')] and descendant::sym)                           ]"
              mode="move">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <munderover>
         <ole:element math="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']"/>
         <ole:element math="line[2]"/>
         <ole:element math="line[3]"/>
      </munderover>
      <ole:element math="line[1]"/>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '16' and @variation = '80')                           or (@templateType = '15' and @variation = '81')                           or (@templateType = '15' and @variation = '82')                           or (@templateType = '15' and @variation = '83')                           or (@templateType = '15' and @variation = '85')                           or (@templateType = '15' and @variation = '86')                           or (@templateType = '15' and @variation = '87')                           or (@templateType = '15' and @variation = '89')                           or (@templateType = '15' and @variation = '93')                           )                           and descendant::*[matches(., '(∑|∫|∲|∯|∰)')]                            and descendant::sym)                                                     ]">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <munder>
         <xsl:apply-templates select="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']"/>
         <xsl:apply-templates select="line[2]"/>
         <xsl:apply-templates select="line[3]"/>
      </munder>
      <xsl:apply-templates select="line[1]"/>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '16' and @variation = '80')                           or (@templateType = '15' and @variation = '81')                           or (@templateType = '15' and @variation = '82')                           or (@templateType = '15' and @variation = '83')                           or (@templateType = '15' and @variation = '85')                           or (@templateType = '15' and @variation = '86')                           or (@templateType = '15' and @variation = '87')                           or (@templateType = '15' and @variation = '89')                           or (@templateType = '15' and @variation = '93')                           )                           and descendant::*[matches(., '(∑|∫|∲|∯|∰)')]                            and descendant::sym)                                                     ]"
              mode="move">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <munder>
         <ole:element math="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']"/>
         <ole:element math="line[2]"/>
         <ole:element math="line[3]"/>
      </munder>
      <ole:element math="line[1]"/>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '24' and @variation = '0')                              or (@templateType = '25' and @variation = '0')                             )                             and sub[following-sibling::*[2][name()='mo']]                             )                           ]">
   <munder xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <munder>
         <mrow>
            <xsl:apply-templates select="child::*[1]"/>
            <xsl:apply-templates select="child::*[4][preceding-sibling::sub]"/>
         </mrow>
      </munder>
      <xsl:apply-templates select="child::*[3]"/>
   </munder>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '24' and @variation = '0')                              or (@templateType = '25' and @variation = '0')                             )                             and sub[following-sibling::*[2][name()='mo']]                             )                           ]"
              mode="move">
   <munder xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <munder>
         <mrow>
            <ole:element math="child::*[1]"/>
            <ole:element math="child::*[4][preceding-sibling::sub]"/>
         </mrow>
      </munder>
      <ole:element math="child::*[3]"/>
   </munder>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '24' and @variation = '1')                              or (@templateType = '25' and @variation = '1')                             )                             and sub[following-sibling::*[2][name()='mo']]                             )]">
   <mover xmlns:ole="http://www.ole.co.in/TUX"
          xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mover>
         <mrow>
            <xsl:apply-templates select="child::*[1]"/>
            <xsl:apply-templates select="child::*[4][preceding-sibling::sub]"/>
         </mrow>
      </mover>
      <xsl:apply-templates select="child::*[3]"/>
   </mover>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '24' and @variation = '1')                              or (@templateType = '25' and @variation = '1')                             )                             and sub[following-sibling::*[2][name()='mo']]                             )]"
              mode="move">
   <mover xmlns:ole="http://www.ole.co.in/TUX"
          xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mover>
         <mrow>
            <ole:element math="child::*[1]"/>
            <ole:element math="child::*[4][preceding-sibling::sub]"/>
         </mrow>
      </mover>
      <ole:element math="child::*[3]"/>
   </mover>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '16' and @variation = '64')                              or (@templateType = '15' and @variation = '1')                              or (@templateType = '15' and @variation = '2')                              or (@templateType = '15' and @variation = '5')                              or (@templateType = '15' and @variation = '6')                              or (@templateType = '15' and @variation = '7')                              or (@templateType = '15' and @variation = '9')                               or (@templateType = '15' and @variation = '13')                               )                              and descendant::*[matches(., '(∑|∫|∲|∯|∰)')]                               and descendant::sym)                          ]">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mrow>
         <xsl:if test="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']">
            <xsl:for-each select="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']">
               <xsl:variable name="tagname">
                  <xsl:value-of select="name()"/>
               </xsl:variable>
               <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
               <xsl:value-of select="$tagname"/>
               <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
               <xsl:apply-templates mode="move"/>
               <xsl:text disable-output-escaping="yes">&lt;/</xsl:text>
               <xsl:value-of select="$tagname"/>
               <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
            </xsl:for-each>
         </xsl:if>
         <xsl:apply-templates/>
      </mrow>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '16' and @variation = '64')                              or (@templateType = '15' and @variation = '1')                              or (@templateType = '15' and @variation = '2')                              or (@templateType = '15' and @variation = '5')                              or (@templateType = '15' and @variation = '6')                              or (@templateType = '15' and @variation = '7')                              or (@templateType = '15' and @variation = '9')                               or (@templateType = '15' and @variation = '13')                               )                              and descendant::*[matches(., '(∑|∫|∲|∯|∰)')]                               and descendant::sym)                          ]"
              mode="move">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mrow>
         <ole:move tagname="{name(child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym'])}"
                   math="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']"
                   mode="move"/>
         <ole:do/>
      </mrow>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '16' and @variation = '16')                              or (@templateType = '15' and @variation = '17')                              or (@templateType = '15' and @variation = '18')                              or (@templateType = '15' and @variation = '19')                              or (@templateType = '15' and @variation = '21')                              or (@templateType = '15' and @variation = '22')                              or (@templateType = '15' and @variation = '23')                              or (@templateType = '15' and @variation = '25')                              or (@templateType = '15' and @variation = '29')                              )                              and descendant::*[matches(., '(∑|∫|∲|∯|∰)')]                               and descendant::sym)                           ]">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mrow>
         <msub>
            <xsl:apply-templates select="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']"/>
            <xsl:apply-templates select="line[2]"/>
            <xsl:apply-templates select="line[3]"/>
         </msub>
         <xsl:apply-templates select="line[1]"/>
      </mrow>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(((@templateType = '16' and @variation = '16')                              or (@templateType = '15' and @variation = '17')                              or (@templateType = '15' and @variation = '18')                              or (@templateType = '15' and @variation = '19')                              or (@templateType = '15' and @variation = '21')                              or (@templateType = '15' and @variation = '22')                              or (@templateType = '15' and @variation = '23')                              or (@templateType = '15' and @variation = '25')                              or (@templateType = '15' and @variation = '29')                              )                              and descendant::*[matches(., '(∑|∫|∲|∯|∰)')]                               and descendant::sym)                           ]"
              mode="move">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mrow>
         <msub>
            <ole:element math="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']"/>
            <ole:element math="line[2]"/>
            <ole:element math="line[3]"/>
         </msub>
         <ole:element math="line[1]"/>
      </mrow>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(@templateType = '16' and @variation = '48'                            and descendant::*[matches(., '(∑|∫|∲|∯|∰)')] and descendant::sym)                           or (@templateType = '15' and @variation = '49'                            and descendant::*[matches(., '(∑|∫|∲|∯|∰)')] and descendant::sym)                           ]">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mrow>
         <msubsup>
            <xsl:apply-templates select="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']"/>
            <xsl:apply-templates select="line[2]"/>
            <xsl:apply-templates select="line[3]"/>
         </msubsup>
         <xsl:apply-templates select="line[1]"/>
      </mrow>
   </mstyle>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[(@templateType = '16' and @variation = '48'                            and descendant::*[matches(., '(∑|∫|∲|∯|∰)')] and descendant::sym)                           or (@templateType = '15' and @variation = '49'                            and descendant::*[matches(., '(∑|∫|∲|∯|∰)')] and descendant::sym)                           ]"
              mode="move">
   <mstyle xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <mrow>
         <msubsup>
            <ole:element math="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']"/>
            <ole:element math="line[2]"/>
            <ole:element math="line[3]"/>
         </msubsup>
         <ole:element math="line[1]"/>
      </mrow>
   </mstyle>
</xsl:template>
<!--ole:wrap-tags math="tmpl[@templateType='22' and @variation='96' and child::sub]">  
  <mover>
    <mstyle mathsize="140%" displaystyle="true">      
      <ole:move tagname="{name(line[4])}" math="line[4]/*" mode="move"/>      
    </mstyle>
    <ole:do/>
  </mover>  
</ole:wrap-tags>

<ole:wrap-tags math="tmpl[@templateType='22' and @variation='80' and child::sub]">  
  <munder>
    <mstyle mathsize="140%" displaystyle="true">      
      <ole:move tagname="{name(line[4])}" math="line[4]/*" mode="move"/>      
    </mstyle>
    <ole:do/>
  </munder>  
</ole:wrap-tags>

<ole:wrap-tags math="tmpl[@templateType = '23' and @variation = '48']">  
  <munderover>
    <ole:do/>      
  </munderover>  
</ole:wrap-tags--><!--ole:wrap-tags math="tmpl[matches(@templateType, '(15)') and matches(@variation, '(113)')][descendant::*[matches(., '(∑|∫|∲|∯|∰)')] and descendant::sym]">  
    <mstyle displaystyle="true">
      <munderover>
        <ole:elements math="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']"/><ole:elements math="*[following-sibling::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym'] and count(following-sibling::*)=3]/*"/>          
        <ole:elements math="*[following-sibling::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym'] and count(following-sibling::*)=2]/*"/>          
      </munderover>
      <ole:do/>
   </mstyle>
</ole:wrap-tags>

<ole:wrap-tags math="tmpl[matches(@templateType, '(15)') and matches(@variation, '(5)')][descendant::*[matches(., '(∑|∫|∲|∯|∰)')] and descendant::sym]">
    <mstyle displaystyle="true">      
        <ole:elements math="child::*[matches(., '(∑|∫|∲|∯|∰)')][name(preceding-sibling::*[1])='sym']"/>
        <ole:do/>
   </mstyle>
</ole:wrap-tags>

<ole:wrap-tags math="tmpl[@templateType = '22' and @variation = '112' and descendant::sym]">  
    <munderover>
      <mstyle mathsize="140%" displaystyle="true">        
          <ole:element math="child::*[name(preceding-sibling::*[1])='sym']"/>        
      </mstyle>    
        <ole:element math="*[following-sibling::*[name(preceding-sibling::*[1])='sym'] and count(following-sibling::*)=3]/*"/>
        <ole:element math="*[following-sibling::*[name(preceding-sibling::*[1])='sym'] and count(following-sibling::*)=2]/*"/>    
    </munderover>
</ole:wrap-tags>

<ole:wrap-tags math="tmpl[matches(@templateType, '(15|17)') and matches(@variation, '^(1|0)$') and descendant::sym]">  
    <ole:elements math="child::*[name(preceding-sibling::*[1])='sym']"/>
    <ole:do/>  
</ole:wrap-tags>

<ole:wrap-tags math="tmpl[matches(@templateType, '32') and matches(@variation, '0')]">
  <mover accent="true">
      <ole:do/>
  </mover>
</ole:wrap-tags>

<ole:wrap-tags math="tmpl[@templateType='23' and @variation='16']">  
  <munder>
    <ole:do/>      
  </munder>  
</ole:wrap-tags>

<ole:wrap-tags math="tmpl[matches(@templateType, '19') and matches(@variation, '^(80)$') and descendant::sym]">
  <munder>
    <ole:elements math="child::*[name(preceding-sibling::*[1])='sym']"/>    
    <ole:elements math="*[following-sibling::*[name(preceding-sibling::*[1])='sym'] and count(following-sibling::*)=3]/*"/>
    <ole:elements math="*[following-sibling::*[name(preceding-sibling::*[1])='sym'] and count(following-sibling::*)=2]/*"/>    
  </munder>
  <ole:do/>
</ole:wrap-tags--><xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='10' and @variation='0']">
   <msqrt xmlns:ole="http://www.ole.co.in/TUX"
          xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:apply-templates/>
   </msqrt>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='10' and @variation='0']"
              mode="move">
   <msqrt xmlns:ole="http://www.ole.co.in/TUX"
          xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:do/>
   </msqrt>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='10' and @variation='1']">
   <msqrt xmlns:ole="http://www.ole.co.in/TUX"
          xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:apply-templates/>
   </msqrt>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="tmpl[@templateType='10' and @variation='1']"
              mode="move">
   <msqrt xmlns:ole="http://www.ole.co.in/TUX"
          xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:do/>
   </msqrt>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform" match="/">
   <math xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:apply-templates/>
   </math>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform" match="/" mode="move">
   <math xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:do/>
   </math>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform" match="line[count(*)&gt;0]">
   <mrow xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <xsl:apply-templates/>
   </mrow>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform" match="line[count(*)&gt;0]"
              mode="move">
   <mrow xmlns:ole="http://www.ole.co.in/TUX"
         xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
         xmlns:xlink="http://www.w3.org/1999/xlink"
         xmlns:mml="http://www.w3.org/1998/Math/MathML">
      <ole:do/>
   </mrow>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0                         and not(parent::tmpl[@templateType = '28' and @variation='1'])                       and not(parent::tmpl[@templateType='27' and @variation='1' and child::sub])                       and not(parent::tmpl[@templateType='27' and @variation='1' and child::sub2])   ]"/>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              match="line[count(*)=0                         and not(parent::tmpl[@templateType = '28' and @variation='1'])                       and not(parent::tmpl[@templateType='27' and @variation='1' and child::sub])                       and not(parent::tmpl[@templateType='27' and @variation='1' and child::sub2])   ]"
              mode="move"/>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform" match="sub2">
   <xsl:apply-templates/>
</xsl:template>
<xsl:template xmlns:xsl="http://www.w3.org/1999/XSL/Transform" match="sub2" mode="move">
   <ole:do xmlns:ole="http://www.ole.co.in/TUX"
           xmlns:xslt="http://www.w3.org/1999/XSL/Transform/"
           xmlns:xlink="http://www.w3.org/1999/xlink"
           xmlns:mml="http://www.w3.org/1998/Math/MathML"/>
</xsl:template></xsl:stylesheet>