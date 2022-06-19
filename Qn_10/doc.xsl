<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : doc.xsl
    Created on : 20 June, 2022, 4:00 AM
    Author     : welcom
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>doc.xsl</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>ISBN</th>
                        <th>Author</th>
                        <th>Publisher</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="books/book">
                        <tr>
                        <td>
                            <xsl:value-of select="title"/>
                        </td>
                        <td>
                            <xsl:value-of select="isbn"/>
                        </td>
                        <td>
                            <xsl:value-of select="author"/>
                        </td>
                        <td>
                            <xsl:value-of select="publisher"/>
                        </td>
                        <td>
                            <xsl:value-of select="price"/>
                        </td>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
