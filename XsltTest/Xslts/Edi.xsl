<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>

    <xsl:template match="/">
        <xsl:apply-templates select="/PurchaseOrderChanges/PurchaseOrderChange/Header/Date"></xsl:apply-templates>
    </xsl:template>

    <xsl:template match="Date">
        <D>
            <xsl:value-of select="Date1"/>
        </D>
    </xsl:template>
</xsl:stylesheet>