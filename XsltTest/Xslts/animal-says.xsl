<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output omit-xml-declaration="yes" indent="yes"/>

 <xsl:template match="creatures">
   <xsl:apply-templates mode="say"/>
 </xsl:template>
 <xsl:template match="animal[@species='dog']" mode="say">
   Dog says: "Bow" ...
 </xsl:template>
 <xsl:template match="animal[@species='cat']" mode="say">
   Cat says: "Meauu" ...
 </xsl:template>
 <xsl:template match="animal[@species='cow']" mode="say">
   Cow says: "Moou" ...
 </xsl:template>
 <xsl:template match="animal[@species='frog']" mode="say">
   Frog says: "Ribbit" ...
 </xsl:template>
 <xsl:template match="animal[@species='lion']" mode="say">
   Lion says: "Rooaarr" ...
 </xsl:template>
 <xsl:template match="text()" mode="say"/>
</xsl:stylesheet>