<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : newstylesheet.xsl
    Created on : 20 de marzo de 2017, 16:45
    Author     : Tiburcio
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
                <xsl:for-each select="pedidos/pedido">
                    <p>
                        <xsl:value-of select="nombre"></xsl:value-of>
                    </p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
