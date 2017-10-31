<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <HTML>
            <BODY>
                I hope that person, who looks at it is not colorblind. But if so, know that the colors are different:)
                <TABLE border="1" cellspacing="0" cellpadding="2" width="100%">
                    <caption>Authors From Catalog</caption>
                    <xsl:apply-templates select="catalog/author">
                        <xsl:sort/>
                    </xsl:apply-templates>

                </TABLE>

                <p>Count of elements =
                    <xsl:value-of select="count(catalog/author)"/>
                </p>

                <TABLE border="1" cellspacing="0" cellpadding="2" width="100%">
                    <caption>Authors From Books</caption>
                    <xsl:apply-templates select="catalog/book">
                        <xsl:sort select="author"/>
                    </xsl:apply-templates>
                </TABLE>
               <p> Count of elements =
                    <xsl:value-of select="count(catalog/book/author)"/>
                </p>


            </BODY>
        </HTML>
    </xsl:template>

    <xsl:template match="author">

        <tr bgcolor="color:{position() mod 2}F">
            <td><xsl:value-of select="position()"/></td>
           <td> <xsl:apply-templates/></td>
        </tr>
    </xsl:template>

    <xsl:template match="book">

        <xsl:if test="(position() mod 0)"></xsl:if>

        <TR bgcolor="color:{position() mod 2}F">
            <td><xsl:value-of select="position()"/></td>
            <xsl:apply-templates select="author"/>
            <xsl:apply-templates select="title"/>
            <xsl:apply-templates select="genre"/>
            <xsl:apply-templates select="price"/>
            <xsl:apply-templates select="publish_date"/>
            <xsl:apply-templates select="description"/>
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

    <xsl:template match="genre">
        <TD>
            <xsl:apply-templates/>
        </TD>
    </xsl:template>

    <xsl:template match="price">
        <TD>
            <xsl:apply-templates/>
        </TD>
    </xsl:template>

    <xsl:template match="publish_date">
        <TD>
            <xsl:apply-templates/>
        </TD>
    </xsl:template>

    <xsl:template match="description">
        <TD>
            <xsl:apply-templates/>
        </TD>
    </xsl:template>



</xsl:stylesheet>

