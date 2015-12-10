<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0" 
    xmlns:eg="http://www.tei-c.org/ns/Examples"
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:exsl="http://exslt.org/common"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    extension-element-prefixes="exsl msxsl"
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:html="http://www.w3.org/1999/xhtml" 
    exclude-result-prefixes="xsl tei xd eg fn #default">
    
    <!-- import teibp.xsl, which allows templates, 
         variables, and parameters from teibp.xsl 
         to be overridden here. -->
    <xsl:import href="teibp.xsl"/>
    
<!--    
        this should handle subtypes of divs, but I am not sure whether it looks at the p instead of at the paragraphs.
        lb are nor meaningful i think but the apparatus notes need to be connected one way or the other (@ref and @xmlid?) then I need to transform also the @ref in xml:id in the apparatus in backlinks if boilerplate does not do it.
           
           print div dot p numbers before each section and paragraph
    handle LABEL
    dispaly references to parts of text
    display apparatus notes
    alter font to handle greek in css
    handle image mapping
    
    allinea la traduzione su una seconda colonna a destra del testo con l'opzione per visualizzarla in una delle lingue disponibili (per ora solo italiano, poi anche inglese e magari tedesco, un bel dì)
   
    includi microcronologia marcata nel testo e ripresa da TimeLine JS come in Marmor Parium
   
    Javascript to omit all diacritics and leave only the text
    
    each div type section or at each pb there should be a row in the html (if html is needed)
    
    distinguish render or @source and @resp in Apparatus
    order readings in alphabetical order, but give priority to #P
    -->

<xsl:template match="tei:supplied[@reason='omitted']">
    <xsl:text>&lt;</xsl:text>
      <xsl:value-of select="."/>
    <xsl:text>&gt;</xsl:text>
</xsl:template>
    
</xsl:stylesheet>