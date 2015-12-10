<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:gcse="nothing"
    exclude-result-prefixes="xs tei" version="2.0">
    
    <!-- TO BE USED ON driver.xml creates directly an HTML index of terms with drop down menus for each value which show each inscription related to the term.-->
    
    
    <xsl:output method="html"/>
    
    <xsl:variable name="inscription">
        <xsl:for-each select="//tei:item/@xml:id">
            <xsl:sequence select="document(concat('../xml/',.,'.xml'))"/>
            <!--            in this step with keep in mind the path to each inscription file so that calling the variable the xslt is going to look at each of the files-->
        </xsl:for-each>
    </xsl:variable>
    
    
    
    <xsl:template match="/">
        
        
        
        
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <title>Vernacular Inscriptions</title>
                <link rel="stylesheet" href="graficagenerale.css" type="text/css"/>
                <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
                <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
                <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
            </head>
            <body>
                <div data-role="header" id="header">
                    <h1>Indice dei termini divisi per lingua attestata</h1>
                </div>
                
                <div id="nav">
                    <a href="index.html">Home</a>
                    <br/>
                    <a href="browseinscriptions.html">Indice delle iscrizioni</a>
                    <br/>
                    <a href="browsebytype.html">Iscrizioni per tipologia e materiale</a>
                    <br/>
                    <a href="Bibliografia.html">Bibliografia</a>
                    <br/>
                    <a href="inscriptionsbyplace.html">Indice dei luoghi</a>
                    
                </div>
                
                <div id="section">
                    
                    <div id="palcelistfound">
                        <h1>Indice dei termini attestati per lingua</h1>
                        
<!--                        <xsl:variable name="list"><xsl:sequence select="$inscription//tei:w"/></xsl:variable>
                        <xsl:value-of select="$list"/>-->
                        <xsl:for-each-group select="$inscription//tei:div[@type='edition']" group-by="@xml:lang">
                            
                            <xsl:sort order="descending" select="@xml:lang"/>
                            <h2>
                                <xsl:value-of select="ancestor::tei:TEI//tei:language[@ident = current()/@xml:lang]"/></h2>
                                      <xsl:for-each-group select="current-group()//tei:w[@lemma]" group-by="@lemma">
       <xsl:sort order="ascending" select="lower-case(@lemma)"/>
                                          <h3><xsl:value-of select="@lemma"/></h3>
                                          <xsl:for-each-group select="current-group()" group-by="text()">
                                              <div data-role="collapsible"><h4><xsl:apply-templates select="."/></h4>
                                                  <ul data-role="listview"><xsl:for-each select="current-group()"><li><a target="_blank"
                                                      href="{concat('iscrizioni/',ancestor::tei:TEI//tei:idno[@type='filename'],'.html')}">
                                                     
                                                      <xsl:value-of
                                                          select="ancestor::tei:TEI//tei:titleStmt/tei:title"/> 
                                                      <xsl:text> (</xsl:text> <xsl:value-of
                                                              select="ancestor::tei:TEI//tei:idno[@type='filename']"/><xsl:text>)</xsl:text>
                                                  </a></li></xsl:for-each></ul>
                                              </div>
                                              
                                          </xsl:for-each-group>
                                      </xsl:for-each-group>
<!--                               <xsl:for-each-group select="current-group()" group-by="tei:w/@lemma">
                                
                                <xsl:sort order="ascending" select="lower-case(@lemma)"/>
                                <h3><xsl:value-of select="@lemma"/></h3>
                                
                                
                                <xsl:for-each-group select="current-group()" group-by="tei:w">
                                    <div data-role="collapsible"><h4><xsl:value-of select="tei:w"/></h4>
                                        <ul data-role="listview"><xsl:for-each select="current-group()"><li><a target="_blank"
                                            href="{concat('iscrizioni/',ancestor::tei:TEI//tei:idno[@type='filename'],'.html')}">
                                            <xsl:value-of
                                                select="ancestor::tei:TEI//tei:title"/>
                                        </a></li></xsl:for-each></ul>
                                    </div>
                                </xsl:for-each-group>
                            </xsl:for-each-group>
-->                            
                        </xsl:for-each-group>
                        
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:include href=" ../EDV-p5-xslt/global-varsandparams.xsl"/>
    
    <!-- html related stylesheets, these may import tei{element} stylesheets if relevant eg. htm-teigap and teigap -->
    <xsl:include href="../EDV-p5-xslt/htm-teiab.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teiaddanddel.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teiapp.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teidiv.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teidivedition.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teidivapparatus.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teiforeign.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teifigure.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teig.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teigap.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teihead.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teihi.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teilb.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teilgandl.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teilistanditem.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teilistbiblandbibl.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teimilestone.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teibibl.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teinote.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teinum.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teip.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teiseg.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teispace.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teisupplied.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teiterm.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-teiref.xsl"/>
    
    <!-- tei stylesheets that are also used by start-txt -->
    <xsl:include href="../EDV-p5-xslt/teiabbrandexpan.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teicertainty.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teichoice.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teihandshift.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teiheader.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teimilestone.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teiorig.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teiorigandreg.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teiq.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teisicandcorr.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teispace.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teisupplied.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teisurplus.xsl"/>
    <xsl:include href="../EDV-p5-xslt/teiunclear.xsl"/>
    
    <!-- html related stylesheets for named templates -->
    <xsl:include href="../EDV-p5-xslt/htm-tpl-cssandscripts.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-apparatus.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-lang.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-metadata.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-license.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-sqbrackets.xsl"/>
    
    <!-- named templates for localized layout/structure (aka "metadata") -->
    <xsl:include href="../EDV-p5-xslt/htm-tpl-structure.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-struct-hgv.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-struct-inslib.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-struct-rib.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-struct-iospe.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-struct-edh.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-struct-eagle.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-struct-igcyr.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-struct-ila.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-struct-TEST.xsl"/>
    <xsl:include href="../EDV-p5-xslt/htm-tpl-struct-EDV.xsl"/>
    
    <!-- global named templates with no html, also used by start-txt -->
    <xsl:include href="../EDV-p5-xslt/tpl-certlow.xsl"/>
    <xsl:include href="../EDV-p5-xslt/tpl-text.xsl"/>
    
    
</xsl:stylesheet>