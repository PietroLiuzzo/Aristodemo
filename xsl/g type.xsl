<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <xsl:variable name="inscription">
        <xsl:for-each select="//tei:item">
            <xsl:if test="document(concat('../xml/', ./@xml:id, '.xml'))">
                <xsl:sequence select="document(concat('../xml/', ./@xml:id, '.xml'))"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:variable> 
    
    <xsl:key name="g" match="tei:g" use="node()"/>
    <xsl:key name="date" match="tei:origDate">
        <xsl:choose>
            <xsl:when test="tei:origDate/@when"><xsl:value-of select="tei:origDate/@when"/></xsl:when>
            <xsl:otherwise><xsl:choose><xsl:when test="tei:origDate/@notBefore"><xsl:value-of select="tei:origDate/@notBefore"/></xsl:when>
                <xsl:otherwise><xsl:choose><xsl:when test="tei:origDate/@notAfter"><xsl:value-of select="tei:origDate/@notAfter"/></xsl:when><xsl:otherwise><xsl:value-of select="normalize-space(text())"/>
                </xsl:otherwise></xsl:choose></xsl:otherwise></xsl:choose></xsl:otherwise>
        </xsl:choose>
    </xsl:key>
    
    <xsl:template match="/">
        <dates>
            
            
            <xsl:for-each select="$inscription//tei:TEI//tei:origDate[generate-id() = generate-id(key('date',.)[1])]">
                <xsl:sort order="descending"  select="
                    if (@when) then @when 
                    else if (@notBefore) then @notBefore 
                    else if (@notAfter) then @notAfter
                    else ."/>
                
   
                <xsl:value-of select="concat(., ' ', count(key('date', .)), ' ', ./ancestor::tei:TEI//tei:idno[@type='filename'], '&#xA;')"/>
       
                
            </xsl:for-each>
        </dates>
        
<gtypes>
    <stop><xsl:for-each select="$inscription//tei:TEI//tei:g[@type='stop'][generate-id() = generate-id(key('g',.)[1])]">
                                <xsl:sort order="ascending"  select="lower-case(.)"/>
            
        <xsl:value-of select="concat(., ' ', count(key('g', .)), '&#xA;')"/>
    </xsl:for-each></stop>
    
    <cross><xsl:for-each select="$inscription//tei:TEI//tei:g[@type='cross'][generate-id() = generate-id(key('g',.)[1])]">
        <xsl:sort order="ascending"  select="lower-case(.)"/>
        
        <xsl:value-of select="concat(., ' ', count(key('g', .)), '&#xA;')"/>
        
    </xsl:for-each></cross>
    <cyrnum><xsl:for-each select="$inscription//tei:TEI//tei:g[@type='cyrnum'][generate-id() = generate-id(key('g',.)[1])]">
        <xsl:sort order="ascending"  select="lower-case(.)"/>
        
        <xsl:value-of select="concat(., ' ', count(key('g', .)), '&#xA;')"/>
        
    </xsl:for-each></cyrnum>
    <punctuation><xsl:for-each select="$inscription//tei:TEI//tei:g[@type='punct' or @type='dipunct' or @type='tripunct'][generate-id() = generate-id(key('g',.)[1])]">
        <xsl:sort order="ascending"  select="lower-case(.)"/>
        
        <xsl:value-of select="concat(., ' ', count(key('g', .)), '&#xA;')"/>
        
    </xsl:for-each></punctuation>
    <measures><xsl:for-each select="$inscription//tei:TEI//tei:g[@type='unit' or @type='dracma' or @type='mna'][generate-id() = generate-id(key('g',.)[1])]">
        <xsl:sort order="ascending"  select="lower-case(.)"/>
        
        <xsl:value-of select="concat(., ' ', count(key('g', .)), '&#xA;')"/>
        
    </xsl:for-each></measures>
    <year><xsl:for-each select="$inscription//tei:TEI//tei:g[@type='year'][generate-id() = generate-id(key('g',.)[1])]">
        <xsl:sort order="ascending"  select="lower-case(.)"/>
        
        <xsl:value-of select="concat(., ' ', count(key('g', .)), '&#xA;')"/>
        
    </xsl:for-each></year>
</gtypes>
        <allg>
            <xsl:for-each select="$inscription//tei:TEI//tei:g[generate-id() = generate-id(key('g',.)[1])]">
                <xsl:sort order="ascending"  select="lower-case(.)"/>
                
                <xsl:value-of select="concat(., ' ', count(key('g', .)), '&#xA;')"/>
                
            </xsl:for-each>
        </allg>
        <!--<alphabetic><xsl:value-of select="concat(.[@type='alphabetic'], ' ', count(key('g', .)), '&#xA;')"/></alphabetic>
        <cyrnum><xsl:value-of select="concat(.[@type='cyrnum'], ' ', count(key('g', .)), '&#xA;')"/></cyrnum>
        <punct><xsl:value-of select="concat(.[@type='punct'], ' ', count(key('g', .)), '&#xA;')"/></punct>
        <dipunct><xsl:value-of select="concat(.[@type='dipunct'], ' ', count(key('g', .)), '&#xA;')"/></dipunct>
       <year><xsl:value-of select="concat(.[@type='year'], ' ', count(key('g', .)), '&#xA;')"/></year>
        <cyrnum><xsl:value-of select="concat(.[@type='tripunct'], ' ', count(key('g', .)), '&#xA;')"/></cyrnum>
        <mna><xsl:value-of select="concat(.[@type='mna'], ' ', count(key('g', .)), '&#xA;')"/></mna>
        <dracma><xsl:value-of select="concat(.[@type='dracma'], ' ', count(key('g', .)), '&#xA;')"/></dracma>
        <unit><xsl:value-of select="concat(.[@type='unit'], ' ', count(key('g', .)), '&#xA;')"/></unit>
       --> 
    </xsl:template>
</xsl:stylesheet>