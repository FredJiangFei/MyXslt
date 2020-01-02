<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>

    <xsl:template match="/*">
        <html>
            <body>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Vocation</th>
                        </tr>
                    </thead>
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="person">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>

    <xsl:template match="name|age|profession">
        <td>
            <xsl:value-of select="."/>
        </td>
    </xsl:template>

    <xsl:template match="country"/>
    <xsl:template match="text()[not(normalize-space())]"/>

    <!-- Built-in templates: Explicit  -->
    <xsl:template match="*" mode="#all" priority="-999">
        <xsl:apply-templates mode="#current"/>
    </xsl:template>

    <xsl:template match="text()" mode="#all">
        <xsl:value-of select="string(.)"/>
    </xsl:template>

    <xsl:template match="@*" mode="#all">
        <xsl:value-of select="string(.)"/>
    </xsl:template>
</xsl:stylesheet>