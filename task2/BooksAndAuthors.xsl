<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <HTML>
            <BODY>
                <TABLE border="1" cellspacing="0" cellpadding="2" width="100%">
                    <caption>whithout foreach</caption>
                    <xsl:apply-templates select="catalog/book">
                        <xsl:sort select="price" data-type="number" order="descending"/>
                        <xsl:sort select="author"/>
                    </xsl:apply-templates>
                </TABLE>


                <TABLE border="1" cellspacing="0" cellpadding="2" width="100%">
                    <caption>whith foreach</caption>
                    <xsl:for-each select="catalog/book">
                        <tr>
                            <td>
                                <xsl:value-of select="position()"/>
                            </td>
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <xsl:value-of select="author"/>
                            </td>
                            <td>
                                <xsl:value-of select="price"/>
                            </td>
                        </tr>
                        <xsl:sort select="price" data-type="number" order="descending"/>
                        <xsl:sort select="author"/>
                    </xsl:for-each>
                </TABLE>
            </BODY>
        </HTML>
    </xsl:template>

    <xsl:template match="author">
        <tr>
            <td>
                <xsl:apply-templates/>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="book">
        <TR>
            <td>
                <xsl:value-of select="position()"/>
            </td>
            <xsl:apply-templates select="title"/>
            <xsl:apply-templates select="author"/>
            <xsl:apply-templates select="price"/>
        </TR>
    </xsl:template>

    <xsl:template match="book/author">
        <TD>
            <xsl:apply-templates/>
        </TD>
    </xsl:template>

    <xsl:template match="title">
        <TD>
            <xsl:apply-templates/>
        </TD>
    </xsl:template>

    <xsl:template match="price">
        <TD>
            <xsl:apply-templates/>
        </TD>
    </xsl:template>

</xsl:stylesheet>

