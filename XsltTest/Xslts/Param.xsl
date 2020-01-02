<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>

    <xsl:template match="/people">
        <xsl:param name="width" select="150"/>
        <xsl:param name="height" select="2"/>
        <mul>
            <xsl:value-of select="$width * $height"/>
        </mul>
        
        <xsl:apply-templates select="person">
            <xsl:with-param name="p1"  tunnel="yes">p</xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="person">
        <xsl:param name="p1"/>
        <xsl:element name="{$p1}">
            <xsl:value-of select="name"/>
        </xsl:element>

        <xsl:apply-templates select="salary"/>
    </xsl:template>

     <xsl:template match="salary/text()">
        <xsl:param name="p1" tunnel="yes">x</xsl:param>
        <xsl:element name="{$p1}">
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>