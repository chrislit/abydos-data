<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/abydos-data">
        <HTML>
            <HEAD>
                <TITLE>Abydos Data</TITLE>
            </HEAD>
            <BODY bgcolor="white" text="navy">
                <H1>Abydos Corpora</H1>
                <P>Abydos has built-in support for some corpora, as listed below.
                To use these within Abydos we recommend that you use the Abydos downloader,
                <TT>&gt;&gt;&gt; abydos.download()</TT></P>
                <OL>
                <xsl:for-each select="//packages/package">
                    <LI><I><xsl:value-of select="@name"/></I>
                        [<xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:value-of select="@url"/>                                
                            </xsl:attribute>
                            download
                        </xsl:element>
                        |<xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:value-of select="@webpage"/>                                
                            </xsl:attribute>
                            source
                        </xsl:element>]
                        <BR/>
                        id: <tt><xsl:value-of select="@id"/></tt>;
                        size: <xsl:value-of select="@size"/>;
                        author: <xsl:value-of select="@author"/>;
                        copyright: <xsl:value-of select="@copyright"/>;
                        license: <xsl:value-of select="@license"/>;
                        <P/>
                    </LI>
                </xsl:for-each>
                </OL>
            </BODY>
        </HTML>
    </xsl:template>
</xsl:stylesheet>
