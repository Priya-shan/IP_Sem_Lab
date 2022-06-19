<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : newstylesheet.xsl
    Created on : 20 June, 2022, 1:50 AM
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
                <title>newstylesheet.xsl</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        
                        
                    </tr>
                    <xsl:for-each select="organization/customers/customer">
                        <xsl:variable name="id" select="cid"></xsl:variable>
                        <tr>
                            <td>
                                <xsl:value-of select="cname"/>
                            </td>
                            <td>
                                <xsl:value-of select="cid"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <table border="1">
                    <tr>
                        <th>AccountNumber</th>
                        <th>AccountType</th>
                        <th>Id</th>
                    </tr>
                    <xsl:for-each select="organization/accounts/account">
                        <tr>
                            <td>
                                <xsl:value-of select="ano"/>
                            </td>
                            <td>
                                <xsl:value-of select="atype"/>
                            </td>
                            <td>
                                <xsl:value-of select="abalance"/>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
