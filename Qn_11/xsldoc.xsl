<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : xsldoc.xsl
    Created on : 20 June, 2022, 2:53 AM
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
                <title>xsldoc.xsl</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>Department</th>
                        <th>Marks</th>
                    </tr>
                    <xsl:for-each select="college/student">
                        <xsl:choose>
                            <xsl:when test="(mark &lt;= 40)">
                                <tr bgcolor="red">
                                    <td>
                                        <xsl:value-of select="name"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="dept"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="mark"/>
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr bgcolor="green">
                                    <td>
                                        <xsl:value-of select="name"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="dept"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="mark"/>
                                    </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                        
                    </xsl:for-each>
                    
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
