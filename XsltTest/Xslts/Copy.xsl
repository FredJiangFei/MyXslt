<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output omit-xml-declaration="yes" indent="yes"/>

 <!-- <xsl:template match="/">
        <xsl:copy-of select="."/>
      </xsl:template>-->

 <!-- <xsl:template match="node()|@*">
   <xsl:copy>
     <xsl:apply-templates select="node()|@*"/>
   </xsl:copy>
 </xsl:template> -->

 <xsl:template match="/">
   <xsl:for-each select="(//node())[not(position() > 10)]">
     <xsl:value-of select="2 * position()  + 1"/>
     <xsl:text> </xsl:text>
   </xsl:for-each>
 </xsl:template>
</xsl:stylesheet>
