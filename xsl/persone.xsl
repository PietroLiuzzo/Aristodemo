<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:t="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="t" version="2.0">
    
    
    <xsl:key name="g" match="t:name" use="node()"/>

    <xsl:template match="/">
    
   <!-- 
 WORK IN PROGRESS file structure for EAGLE / Epidoc Workshop 
meant to be run in a folder with other data locally referred
  -->

   <!-- Called from htm-tpl-structure.xsl -->





      <html lang="en">
         <head>
            <meta charset="utf-8"/>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
              
            <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
            <meta name="description" content="Critical Edition of FGrHist 104 [Aristodemus]"/>
            <meta name="author" content="Pietro Liuzzo"/>
            <link rel="icon" href="../../favicon.ico"/>

            <title>FGrHist 104 [Aristodemus]</title>

            <!-- Bootstrap core CSS -->
            <link href="dist/css/bootstrap.min.css" rel="stylesheet"/>

            <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
            <link href="assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet"/>
            <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
            <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
            <script src="assets/js/ie-emulation-modes-warning.js"/>
             <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
             <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
            <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
            <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

            <!-- Custom styles for this template -->
            <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
             
            <link href="carousel.css" rel="stylesheet"/>
         </head>
         <!-- NAVBAR
================================================== -->
         <body>
             <div class="navbar-wrapper" id="backtotop">
                 <div class="container">
                     
                     <nav class="navbar navbar-inverse navbar-static-top">
                         <div class="container">
                             <div class="navbar-header">
                                 <button type="button" class="navbar-toggle collapsed"
                                     data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                                     aria-controls="navbar">
                                     <span class="sr-only">Toggle navigation</span>
                                     <span class="icon-bar"/>
                                     <span class="icon-bar"/>
                                     <span class="icon-bar"/>
                                 </button>
                                 <a class="navbar-brand" href="index.html">Edizione Digitale di FGrHist 104
                                     [Aristodemo]</a>
                             </div>
                             <div id="navbar" class="navbar-collapse collapse">
                                 <ul class="nav navbar-nav">
                                     <li class="active">
                                         <a href="Introduction.html">Introduzione</a>
                                     </li>
                                     <!--pagina da creare con template simile-->
                                     <li>
                                         <a href="index.html#indexes">Indici</a>
                                     </li>
                                     <li>
                                         <a href="https://www.zotero.org/pietroliuzzo/items/collectionKey/APXN4VU6">Bibliografia</a>
                                     </li>
                                     <li>
                                         <a href="https://github.com/PietroLiuzzo/Aristodemo">GIT repo</a>
                                     </li>
                                     <li><a href="contact.html">Contatti</a></li>
                                     
                                 </ul>
                             </div>
                         </div>
                     </nav>
                     
                 </div>
             </div>

        

            <!-- Marketing messaging and featurettes
    ================================================== -->
            <!-- Wrap the rest of the page in another container to center all the content. -->

            <div class="container marketing">


               <!-- START THE FEATURETTES -->
               <!--               The first is just a list of occurrences and number of them, the second is instead more hierarcical-->
                  <hr class="featurette-divider" id="persone"/>
                  <div class="row featurette" id="occorrenze">
                     <div class="col-md-7">

                        <h2 class="featurette-heading">Nomi di persona nel testo
                        </h2><a href="#backtotop"><button>Torna all'inizio</button></a>
                      
                        <ul> 
                            
                            <xsl:for-each select="//t:name[generate-id() = generate-id(key('g',.)[1])]">
                             <xsl:sort select="." order="ascending"/>

                                 <li class="lead">
                                     <xsl:attribute name="xml:id">
                                         <xsl:value-of select="@ref"/>
                                     </xsl:attribute>
                                     <xsl:value-of select="concat(., ' ', count(key('g', .)), '&#xA;')"/>
                                     <xsl:if test="@type"><xsl:text> (</xsl:text>
                                     <xsl:value-of select="@type"/>
                                     <xsl:text>) </xsl:text> </xsl:if>
                                     <xsl:variable name="sectionparagraphid" select="ancestor::t:div[@type='textpart']/@n"/>
                                     <a href="index.html#{concat('edition', $sectionparagraphid)}"></a>
                                 </li>
                            
                         </xsl:for-each> 
                        </ul>
                     </div>
                      
                      
                        <a href="#backtotop"><button>Torna all'inizio</button></a>

                    
                  </div>

               <hr class="featurette-divider"/>
                <div class="row featurette" id="occorrenze">
                    <div class="col-md-7">
                        
                        <h2 class="featurette-heading">Persone attestate e link alle occorrenze</h2>
                        <a href="#backtotop"><button>Torna all'inizio</button></a>
                        
                      
                            <xsl:for-each-group select="//t:name" group-by="@nymRef">
                                <xsl:sort order="descending" select="lower-case(@nymRef)"/>
                                <h3><a href="{@ref}"><xsl:value-of select="@nymRef"/></a></h3>
                                <xsl:for-each-group select="current-group()" group-by="text()">
                                    <div data-role="collapsible"><h4><xsl:apply-templates select="."/></h4>
                                        <ul data-role="listview"><xsl:for-each select="current-group()"><li><a target="_blank"
                                            href="{concat('index.html#edition',ancestor::t:div[@type='textpart']/@n)}">
                                            
                                            <xsl:value-of
                                                select="text()"/> 
                                            <xsl:text> (</xsl:text> <xsl:value-of
                                                select="concat(ancestor::t:div[@type='textpart']/@n,'.',ancestor::t:p/@n)"/><xsl:text>)</xsl:text>
                                        </a></li></xsl:for-each></ul>
                                    </div>
                                    
                                </xsl:for-each-group>
                            </xsl:for-each-group>
                    </div>
                    
                    
                    
                    <script src="awdl/lib/requirejs/require.min.js" type="text/javascript"></script>
                    <script src="awdl/awld.js" type="text/javascript"></script>
                    <script type="text/javascript">
                        awld.init();
                    </script>
                    
                    
                </div>
                
                
                <hr class="featurette-divider"/>
                <!-- Three columns of text below the carousel -->
                <div class="row" id="indexes">
                    
                    <div class="col-lg-4">
                        <img class="img-circle"
                            src="images/firstslide.png"
                            alt="Generic placeholder image" width="140" height="140"/>
                        <h2>Indice dei luoghi</h2>
                        <p>Lista dei luoghi nominati nel testo</p>
                        <p>
                            <a class="btn btn-default" href="luoghi.html" role="button">Vai all'indice</a>
                        </p>
                    </div>
                    <!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img class="img-circle"
                            src="images/secondslide.png"
                            alt="Generic placeholder image" width="140" height="140"/>
                        <h2>Cronologia</h2>
                        <p>Cronologia interna</p>
                        <p>
                            <a class="btn btn-default" href="eventi.html" role="button">Vai alla Cronologia</a>
                        </p>
                    </div>
                    <!-- /.col-lg-4 -->
                </div>
                <!-- /.row -->

               <!-- /END THE FEATURETTES -->


               <!-- FOOTER -->
               <footer>
                  <p class="pull-right">
                     <a href="#">Torna all'inizio</a>
                  </p>
                   <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Licenza Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Edizione Digitale di FGrHist 104 [Aristodemo]</span> di<span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName"> Pietro Maria Liuzzo</span> è distribuito con Licenza <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribuzione - Condividi allo stesso modo 4.0 Internazionale</a>.
               </footer>

            </div>
            <!-- /.container -->


            <!-- Bootstrap core JavaScript
    ================================================== -->
            <!-- Placed at the end of the document so the pages load faster -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"/>
            <script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js"&gt;&lt;/script&gt;')</script>
            
            <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
            <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
            <script src="../../assets/js/vendor/holder.min.js"/>
            <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
            <script src="../../assets/js/ie10-viewport-bug-workaround.js"/>
            <script src="js/ready.js"></script>
         </body>
      </html>


   

</xsl:template>

    <!--<xsl:output method="xml"/>

    <xsl:variable name="inscription">
        <xsl:for-each select="//tei:item/@xml:id">
            <xsl:sequence select="document(concat('../xml/',.,'.xml'))"/>
            <!-\-            in this step with keep in mind the path to each inscription file so that calling the variable the xslt is going to look at each of the files-\->
        </xsl:for-each>
    </xsl:variable>



    <xsl:template match="/">

        <!-\- TO BE USED ON driver: creates directly an HTML list of bibliographical references from an UNSTRUCTURED BIBLIOGRAPHY-\->


        <xsl:result-document indent="yes" href="/liste/listanomi.html">

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

    </xsl:template>-->
</xsl:stylesheet>
