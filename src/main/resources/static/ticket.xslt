<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <body>
                <h1>Tickets</h1>
                <table border="1">
                    <tr>
                        <th>Id</th>
                        <th>Row</th>
                        <th>Seat</th>
                        <th>Cost</th>
                        <th>Timetable</th>
                    </tr>
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ticket">
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="@seatDto.row"/></td>
            <td><xsl:value-of select="@seatDto.seat"/></td>
            <td><xsl:value-of select="@cost"/></td>
            <td><xsl:value-of select="@timetable.date"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>