<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" omit-xml-declaration="yes"/>
    <xsl:template match="ArrayList">
        <html>
            <body>
                <h1>Timetable</h1>
                <table>
                    <tr>
                        <th>Id</th>
                        <th>Film</th>
                        <th>Hall</th>
                        <th>Date</th>
                    </tr>
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="timetable">
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="@film.name"/></td>
            <td><xsl:value-of select="@hall"/></td>
            <td><xsl:value-of select="@date"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>