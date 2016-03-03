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
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
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
                    <!-- Custom styles for this Bootstrap template -->  
                        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
                    <link href="assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet"/>
                
                        <script src="assets/js/ie-emulation-modes-warning.js"></script>
                        <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
                        <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
                         

                <link href="carousel.css" rel="stylesheet"/>
                
                <style>
                    table{
                    table-layout:fixed;
                    width:100%;
                    border-collapse:collapse;
                    }
                    td,
                    th{
                    font-size:1em;
                    padding:3px 7px 2px 7px;
                    width:100%;
                    }
                    th{
                    font-size:1.1em;
                    text-align:left;
                    padding-top:5px;
                    padding-bottom:4px;
                    }
                    tr:nth-child(even) {background: #CCC}
                    tr:nth-child(odd) {background: #FFF}
                    
                </style>
                
                
                
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
                                        data-toggle="collapse" data-target="#navbar"
                                        aria-expanded="false" aria-controls="navbar">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"/>
                                        <span class="icon-bar"/>
                                        <span class="icon-bar"/>
                                    </button>
                                    <a class="navbar-brand" href="index.html">Edizione Digitale di
                                        FGrHist 104 [Aristodemo]</a>
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
                                            <a
                                                href="https://www.zotero.org/pietroliuzzo/items/collectionKey/APXN4VU6"
                                                >Bibliografia</a>
                                        </li>
                                        <li>
                                            <a
                                                href="https://github.com/PietroLiuzzo/Aristodemo/tree/gh-pages"
                                                >GIT repo</a>
                                        </li>
                                        <li>
                                            <a href="contact.html">Contatti</a>
                                        </li>

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


                    <hr class="featurette-divider">
                        <h2 class="featurette-heading">Indice dei nomi</h2>
                    </hr>
                    <div class="row featurette" id="nomi">

                            <table id="ConceptList" class="tablesorter">
                                <thead>
                                    <tr><th>Nome</th>
                                    <th>Occorrenze</th>
                                    <th>Forme</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <xsl:for-each-group select="//t:name" group-by="@nymRef">
                                <xsl:sort order="descending" select="lower-case(@nymRef)"/>
                                    <tr>
                                <td><h3 id="{@nymRef}">
                                    <a href="{@ref}">
                                        <xsl:value-of select="@nymRef"/>
                                    </a>
                                </h3></td>
                                <td><xsl:value-of select="count(current-group())"
                                    /></td>
                                        <td>
                                <xsl:for-each-group select="current-group()" group-by="text()">
                                    <xsl:sort order="descending"/>
                                    <xsl:variable select="position()" name="rankhigh"/>
                                    <table>
                                        <thead>
                                            <tr>
                                                <th> </th>
                                                <th>Passi</th>
                                            </tr>
                                        </thead>
<tbody>                                        <tr>
    <xsl:if test="not($rankhigh = last())">
        <xsl:attribute name="style">border-bottom:1px solid #ccc;</xsl:attribute>
    </xsl:if>
                                        <td><h4>
                                            <xsl:value-of
                                                select="concat(.[generate-id() = generate-id(key('g', .)[1])], ' (', count(key('g', .)), ')')"
                                            />
                                        </h4></td>
                                        <td class="lead">
                                            <xsl:for-each select="current-group()">
                                                <xsl:sort select="." order="ascending"/>
                                                <xsl:variable select="position()" name="rank"/>
                                                <a target="_blank"
                                                  href="{concat('index.html#edition',ancestor::t:div[@type='textpart']/@n)}">
                                                  <xsl:value-of
                                                  select="concat(ancestor::t:div[@type = 'textpart']/@n, '.', ancestor::t:p/@n)"/>

                                                  <xsl:if test="not($rank = last())">
                                                  <xsl:text>, </xsl:text>
                                                  </xsl:if>
                                                </a>
                                            </xsl:for-each>
                                        </td>


                                    </tr></tbody></table>

                                </xsl:for-each-group>
                                        </td>
                                    </tr>
                            </xsl:for-each-group>
                                </tbody>
                            </table>
                        

                        <a href="#backtotop">
                            <button>Torna all'inizio</button>
                        </a>


                        <script src="awdl/lib/requirejs/require.min.js" type="text/javascript"/>
                        <script src="awdl/awld.js" type="text/javascript"/>
                        <script type="text/javascript">
                        awld.init();
                    </script>


                    </div>


                    <hr class="featurette-divider"/>
                    <!-- Three columns of text below the carousel -->
                    <div class="row" id="indexes">

                        <div class="col-lg-4">
                            <img class="img-circle" src="images/firstslide.png"
                                alt="Generic placeholder image" width="140" height="140"/>
                            <h2>Indice dei luoghi</h2>
                            <p>Lista dei luoghi nominati nel testo</p>
                            <p>
                                <a class="btn btn-default" href="luoghi.html" role="button">Vai
                                    all'indice</a>
                            </p>
                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="col-lg-4">
                            <img class="img-circle" src="images/secondslide.png"
                                alt="Generic placeholder image" width="140" height="140"/>
                            <h2>Cronologia</h2>
                            <p>Cronologia interna</p>
                            <p>
                                <a class="btn btn-default" href="eventi.html" role="button">Vai alla
                                    Cronologia</a>
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
                        <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img
                                alt="Licenza Creative Commons" style="border-width:0"
                                src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png"
                            /></a><br/><span xmlns:dct="http://purl.org/dc/terms/"
                            property="dct:title">Edizione Digitale di FGrHist 104
                            [Aristodemo]</span> di<span xmlns:cc="http://creativecommons.org/ns#"
                            property="cc:attributionName"> Pietro Maria Liuzzo</span> è distribuito
                        con Licenza <a rel="license"
                            href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons
                            Attribuzione - Condividi allo stesso modo 4.0 Internazionale</a>. </footer>

                </div>
                <!-- /.container -->


                <!-- Bootstrap core JavaScript
    ================================================== -->
                <!-- Placed at the end of the document so the pages load faster -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"/>
                <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"/>
                <script type="text/javascript" src="js/jquery.tablesorter.js"></script>
                <script type="text/javascript" src="js/jquery.tablesorter.staticrow.min.js"></script>
                
                <script type="text/javascript" src="js/tablesort.js"> 
                    </script>
                
            </body>
        </html>


        <xsl:result-document href="rdf/people.ttl" method="text">

@base &lt;http://purl.org/dc/terms/&gt; .
@prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt; .
@prefix cito: &lt;http://purl.org/spar/cito&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .
@prefix ctn: &lt;http://www.w3.org/2011/content#&gt; .
@prefix lawd: &lt;http://lawd.info/ontology/&gt; .
@prefix prov: &lt;http://www.w3.org/ns/prov#&gt; .
@prefix snap: &lt;http://onto.snapdrgn.net/snap#&gt; .

            <xsl:for-each-group select="//t:name" group-by="@nymRef">
                <xsl:sort order="descending" select="lower-case(@nymRef)"/>
                <xsl:variable name="rank" select="position()"/>
                    &lt;http://pietroliuzzo.github.io/Aristodemo/persone.html#<xsl:value-of
                        select="@nymRef"/>&gt; rdf:type <xsl:choose><xsl:when test="@type='divine'">lawd:Deity</xsl:when><xsl:otherwise>lawd:Person</xsl:otherwise></xsl:choose> 
                .
                
                  <xsl:choose>
                      <xsl:when test="@type='unattested'"/>
                      
                        
                      <xsl:otherwise>  &lt;http://pietroliuzzo.github.io/Aristodemo/persone.html#<xsl:value-of
                    select="@nymRef"/>&gt; rdf:type lawd:PersonalName ; lawd:primaryForm
                    "<xsl:value-of select="@nymRef"/>"@grc 
                . 
                      
                      </xsl:otherwise>
                  </xsl:choose>
                
                <xsl:for-each-group
                    select="current-group()" group-by="parent::t:div[@subtype = 'section']/@n">
                        &lt;http://pietroliuzzo.github.io/Aristodemo/persone.html#<xsl:value-of
                        select="@nymRef"/>&gt; cito:citesAsEvidence
                        &lt;http://pietroliuzzo.github.io/Aristodemo/#<xsl:value-of
                        select="parent::t:div[@subtype = 'section']/@n"/>&gt; 
                        
                        . 
                
                </xsl:for-each-group>
                
                <xsl:for-each-group select="current-group()" group-by="@ref">
                        &lt;http://pietroliuzzo.github.io/Aristodemo/persone.html#<xsl:value-of
                        select="@nymRef"/>&gt; dc:identifier &lt;<xsl:value-of select="@ref"/>&gt; 
                    
                    .
                </xsl:for-each-group>
            </xsl:for-each-group>
            
            

            <xsl:for-each select="//t:persName">
                    &lt;http://pietroliuzzo.github.io/Aristodemo/persone.html#<xsl:value-of
                    select="./t:name[position() = 1]/@nymRef"/>&gt; snap:has-bond
                    &lt;http://pietroliuzzo.github.io/Aristodemo/persone.html#<xsl:value-of
                    select="./t:name[position() = 1]/@nymRef"/>-rel-son-<xsl:value-of
                    select="./t:name[position() = 2]/@nymRef"/>&gt; .
                    &lt;http://pietroliuzzo.github.io/Aristodemo/persone.html#<xsl:value-of
                    select="./t:name[position() = 1]/@nymRef"/>-rel-son-<xsl:value-of
                    select="./t:name[position() = 2]/@nymRef"/>&gt; rdf:type snap:SonOf,
                cnt:ContentAsText ; snap:bond-with
                    &lt;http://pietroliuzzo.github.io/Aristodemo/persone.html#<xsl:value-of
                    select="./t:name[position() = 2]/@nymRef"/>&gt; ; cnt:chars “Father:
                    <xsl:value-of select="./t:name[position() = 2]/@nymRef"/>” 
                . 
            
            </xsl:for-each>

            <!--        required postprocess 
                hand fixes
            
           - amenias has also two brothers V
            
           - a relation between Xerxes and Artaxerxes can be added V
            
           - a person for the wife of Admetus can be added, with a relation, without a name for the person entered a persname, needs a different id
           
          -  a person for the daughter of koronides can be added, with a relation, without a name for the person (marked with empty name)
          
          - for argilios no persname. entered name link to lgpn
           
           - a person for the mother of Pausanias can be added, with a relation, without a name for the person
           
           type = unattested
           no ref forwife of admetus and mother of pausanias
            
          -  a relation between sicinnos and temistocles might be added
            
          -  a relation between argilios and pausanias
          
          - the transformation will give a wrong value for alexander first, which is ANCESTOR of Philip, CHANGE RELATION TYPE
          
          - relation paus-kleomb might turn out twice
          
          - add type=divine to artemis, poseidon, apollo etc. licofron artemis?<persName></persName>
          
          - epithet like lakkoploutos?
          
          - santippo figlio di ...  e padre di pericle
            -->

        </xsl:result-document>

        <xsl:result-document href="rdf/void.rdf" method="xml" indent="yes">
            <rdf:RDF xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
                xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:void="http://rdfs.org/ns/void#"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:dcterms="http://purl.org/dc/terms/">
                <void:DatasetDescription
                    rdf:about="http://www.paregorios.org/resources/roman-emperors/void">
                    <dcterms:title>A VoID Description of the people named in FGrHist 104
                        Dataset</dcterms:title>
                    <dcterms:creator>
                        <foaf:Person>
                            <foaf:name>Pietro Maria Liuzzo</foaf:name>
                        </foaf:Person>
                    </dcterms:creator>
                    <foaf:primaryTopic>
                        <void:Dataset rdf:about="#FGrHist104">
                            <dcterms:title>People named in FGrHist 104</dcterms:title>
                            <dcterms:description>RDF about people named in FGrHist
                                104</dcterms:description>
                            <dcterms:license
                                rdf:resource="http://opendatacommons.org/licenses/pddl/"/>
                            <dcterms:created rdf:datatype="http://www.w3.org/2001/XMLSchema#date">
                                <xsl:value-of select="current-dateTime()"/>
                            </dcterms:created>
                            <void:feature rdf:resource="http://www.w3.org/ns/formats/RDF_XML"/>
                            <void:uriSpace>http://pietroliuzzo.github.io/Aristodemo/</void:uriSpace>
                            <void:uriRegexPattern>^http://pietroliuzzo\.github\.io/Aristodemo/persone.html#(.+)$</void:uriRegexPattern>
                            <void:exampleResource
                                rdf:resource="http://pietroliuzzo.github.io/Aristodemo/persone.html#Ἀριστοδήμος"/>
                            <void:vocabulary rdf:resource="http://xmlns.com/foaf/0.1/"/>
                            <void:vocabulary rdf:resource="http://www.w3.org/2000/01/rdf-schema#"/>
                            <void:vocabulary rdf:resource="http://purl.org/ontology/bibo/"/>
                            <void:vocabulary rdf:resource="http://www.w3.org/2002/07/owl#"/>
                            <void:vocabulary rdf:resource="http://purl.org/dc/terms/"/>
                        </void:Dataset>
                    </foaf:primaryTopic>
                </void:DatasetDescription>
            </rdf:RDF>
        </xsl:result-document>


    </xsl:template>


</xsl:stylesheet>
