<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : pedidosEnFormaDeTabla.xsl
    Created on : 22 de marzo de 2017, 15:22
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
                <title>pedidosEnFormaDeTabla.xsl</title>
                <link rel="stylesheet" href="css/styles.css"/>
            </head>
            <body>
                <table id="pedidos">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Pizzas</th>
                            <th>Ingredientes</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="pedidos/pedido">
                            <xsl:variable name="numIngredientes" select="count(pizza/ingredientes/ingrediente)"/>
                            <tr>
                                <td rowspan="{$numIngredientes}">
                                    <xsl:value-of select="nombre"/>
                                </td>
                                <td rowspan="{$numIngredientes}">
                                    <xsl:value-of select="pizza/nombre"/>
                                </td>
                                <td>
                                    <xsl:value-of select="pizza/ingredientes/ingrediente"/> <!--sólo la primera línea-->
                                </td>
                            </tr>
                            <xsl:for-each select="pizza/ingredientes/ingrediente[position()>1]">
                                <tr>
                                    <td>
                                        <xsl:value-of select="."/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
