<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-public="XSLT-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Knockout MMA Fighters</title>
                <style>
                    table {
                        width: 50%;
                        margin: 20px auto;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid #000;
                        padding: 10px;
                        text-align: center;
                    }
                    th {
                        background-color: #333;
                        color: white;
                    }
                </style>
            </head>
            <body>
                <h1 style="text-align: center;">Knockout MMA Fighters</h1>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Weight Class</th>
                        <th>Wins</th>
                    </tr>
                    <xsl:for-each select="knockout_mma/fighter">
                        <xsl:sort select="wins" data-type="number" order="descending"/>
                        <xsl:choose>
                            <xsl:when test="wins > 20">
                                <tr style="background-color: lightgreen;">
                                    <td><xsl:value-of select="name"/></td>
                                    <td><xsl:value-of select="weight_class"/></td>
                                    <td><xsl:value-of select="wins"/></td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td><xsl:value-of select="name"/></td>
                                    <td><xsl:value-of select="weight_class"/></td>
                                    <td><xsl:value-of select="wins"/></td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
