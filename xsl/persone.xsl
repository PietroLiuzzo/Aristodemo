<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei" version="2.0">

    <xsl:output method="xml"/>

    <xsl:variable name="inscription">
        <xsl:for-each select="//tei:item/@xml:id">
            <xsl:sequence select="document(concat('../xml/',.,'.xml'))"/>
            <!--            in this step with keep in mind the path to each inscription file so that calling the variable the xslt is going to look at each of the files-->
        </xsl:for-each>
    </xsl:variable>



    <xsl:template match="/">

        <!-- TO BE USED ON driver: creates directly an HTML list of bibliographical references from an UNSTRUCTURED BIBLIOGRAPHY-->


        <xsl:result-document indent="yes" href="/liste/listanomi.xml">

            <listNym>
                <xsl:for-each select="$inscription//tei:name">
                    <xsl:sort select="." order="ascending"/>
                    <nym>
                        <xsl:attribute name="xml:id">
                            <xsl:value-of select="substring-after(@nymRef, '#')"/>
                        </xsl:attribute>
                        <form type="lemma">
                            <xsl:value-of select="."/>
                        </form>
                    </nym>
                </xsl:for-each>
            </listNym>
        </xsl:result-document>

        <xsl:result-document indent="yes" href="listapersone.xml">

            <listPerson>
                <xsl:for-each select="$inscription//tei:persName">
                    <xsl:sort select="tei:name[1]" order="ascending"/>
                    <person>
                        <persName>
                            <xsl:attribute name="xml:id">
                                <xsl:value-of select="@ref"/>
                            </xsl:attribute>
                            <xsl:value-of select="."/>
                        </persName>
                        <type>
                            <xsl:value-of select="@type"/>
                        </type>
                        <floruit>
                            <xsl:attribute name="notBefore">
                                <xsl:value-of
                                    select="./ancestor::tei:TEI//tei:origDate/@notBefore-custom"/>
                            </xsl:attribute>
                            <xsl:attribute name="notAfter">
                                <xsl:value-of
                                    select="./ancestor::tei:TEI//tei:origDate/@notAfter-custom"/>
                            </xsl:attribute>
                        </floruit>
                        <xsl:if test=".[tei:persName]">
                            <relationship>
                                <xsl:attribute name="ref">
                                    <xsl:value-of
                                        select="./ancestor::tei:TEI//tei:idno[@type='URI']"/>
                                </xsl:attribute>
                            </relationship>
                        </xsl:if>
                        <idno/>
                    </person>
                </xsl:for-each>
            </listPerson>
        </xsl:result-document>

    </xsl:template>
</xsl:stylesheet>
