<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
                <table id="menuTable" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Amazon Books</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Item</th>
                            <th>Price</th>
                            <th>Page</th>
                            <th>Author</th>
                            <th>Publisher</th>
                            <th>Review</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/library/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="book">
                            <tr id="{position()}">
                                <xsl:attribute name="audiobook">
                                    <xsl:value-of select="boolean(./@audiobook)" />
                                </xsl:attribute>
                                <td align="center">
                                    <input name="item0" type="checkbox" />
                                </td>
                                <td>
                                    <xsl:value-of select="item" />
                                    <td>
                                    <xsl:value-of select="page" />
                                        <td>
                                    <xsl:value-of select="author" />
                                            <td>
                                    <xsl:value-of select="publisher" />
                                                <td>
                                    <xsl:value-of select="review" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="price" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>
