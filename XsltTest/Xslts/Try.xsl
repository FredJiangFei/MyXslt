<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    
    <xsl:variable name="vBonus" select="0.8"/>
    <xsl:variable name="vPerson" select="count(/people/person)"/>

    <xsl:template match="/people">
        <xsl:apply-templates select="person" />
    </xsl:template>

    <xsl:template match="person">
        <xsl:number/>_<xsl:value-of select="$vPerson"/>
        <xsl:apply-templates select="salary"/>
    </xsl:template>

    <!-- <xsl:template match="person" use-when="'1' eq '2'">
        <name>
            <xsl:value-of select="name"/>_<xsl:value-of select="$vPerson"/>
        </name>
    </xsl:template> -->

     <xsl:template match="salary/text()">
        <Salary>$<xsl:value-of select=". * 12 * $vBonus"/></Salary>
    </xsl:template>
</xsl:stylesheet>