<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:t="http://www.tei-c.org/ns/1.0" 
    xmlns:pleiades="http://pleiades.stoa.org/places/vocab#"
    xmlns:osgeo="http://data.ordnancesurvey.co.uk/ontology/geometry/"
    exclude-result-prefixes="t" version="2.0">
    
    <xsl:key name="g" match="t:name" use="node()"/>

    <xsl:template match="/">
    
   <!-- 
 WORK IN PROGRESS file structure for EAGLE / Epidoc Workshop 
meant to be run in a folder with other data locally referred
  -->
        


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
                                         <a href="https://github.com/PietroLiuzzo/Aristodemo/tree/gh-pages">GIT repo</a>
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

<!--calls leaflet javascript and makes the map div on top-->
                <hr class="featurette-divider"/>
                <script src="http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.js"></script>
                <script src="https://api.mapbox.com/mapbox.js/v2.3.0/mapbox.js"></script>
                <link href="https://api.mapbox.com/mapbox.js/v2.3.0/mapbox.css" rel="stylesheet"/>
                    <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.css"/>
                        <script src="https://api.mapbox.com/mapbox.js/plugins/leaflet-fullscreen/v1.0.1/Leaflet.fullscreen.min.js"></script>
                        <link href="https://api.mapbox.com/mapbox.js/plugins/leaflet-fullscreen/v1.0.1/leaflet.fullscreen.css" rel="stylesheet"/>
                    <div class="row featurette" id="map"></div>
                    <script src="js/map.js"></script>
                        

               <!-- START THE FEATURETTES -->
               <!--               the first one needs the attribute id to be the same as in the link in the navigation bar-->
                 

               <hr class="featurette-divider"/>
                <div class="row featurette" id="occorrenze">
                    <div class="col-md-7">
                        
                        <h2 class="featurette-heading">Luoghi attestati e link alle occorrenze</h2>
                         
                      
                            <xsl:for-each-group select="//t:placeName[not(@type='ethnic')]" group-by="@ref">
                            	<xsl:sort order="ascending" select="."/>
                            	<h3><a href="{@ref}"><xsl:value-of select="@nymRef"/></a></h3>
                            	<xsl:for-each-group select="current-group()" group-by="text()">
                            			<ul data-role="listview"><xsl:for-each select="current-group()"><li><a target="_blank"
                            				href="{concat('index.html#edition',ancestor::t:div[@type='textpart']/@n)}">
                            				
                            				<xsl:value-of
                            					select="text()"/> 
                            				<xsl:text> (</xsl:text> <xsl:value-of
                            					select="concat(ancestor::t:div[@type='textpart']/@n,'.',ancestor::t:p/@n)"/><xsl:text>)</xsl:text>
                            			</a></li></xsl:for-each></ul>
                            		
                            	</xsl:for-each-group>
                            </xsl:for-each-group>
                    </div>
        
                    
                    
                    
                    
                </div>
                
                <hr class="featurette-divider"/>
            	<div class="row featurette" id="occorrenze">
            		<div class="col-md-7">
            			
            			<h2 class="featurette-heading">Popolazioni attestate e link alle occorrenze</h2>
            			<a href="#backtotop"><button>Torna all'inizio</button></a>
            			
            			
            			<xsl:for-each-group select="//t:placeName[@type='ethnic']" group-by="@ref">
            				<xsl:sort order="ascending" select="."/>
            			   <h3><a href="{@ref}"><xsl:value-of select="@nymRef"/></a></h3>
            				<xsl:for-each-group select="current-group()" group-by="text()">
            						<ul data-role="listview"><xsl:for-each select="current-group()"><li><a target="_blank"
            							href="{concat('index.html#edition',ancestor::t:div[@type='textpart']/@n)}">
            							
            							<xsl:value-of
            								select="text()"/> 
            							<xsl:text> (</xsl:text> <xsl:value-of
            								select="concat(ancestor::t:div[@type='textpart']/@n,'.',ancestor::t:p/@n)"/><xsl:text>)</xsl:text>
            						</a></li></xsl:for-each></ul>
            					
            				</xsl:for-each-group>
            			</xsl:for-each-group>
            		</div>
            		
            	    <script src="awdl/lib/requirejs/require.min.js" type="text/javascript"></script>
            	    <script src="awdl/awld.js" type="text/javascript"></script>
            	    <script type="text/javascript">
            	        awld.init();
            	    </script>
            		
            		<a href="#backtotop"><button>Torna all'inizio</button></a>
            		
            		
            	</div>
            	
            	<hr class="featurette-divider"/>
               <!-- /END THE FEATURETTES -->

               <!-- Three columns of text below the carousel -->
               <div class="row" id="indexes">
                   <!-- /.col-lg-4 -->
                   <div class="col-lg-4">
                       <img class="img-circle" src="images/firstslide.png"
                           alt="Generic placeholder image" width="140" height="140"/>
                       <h2>Edizione</h2>
                       <p>Testo e Traduzione</p>
                       <p>
                           <a class="btn btn-default" href="index.html" role="button">Vai all'edizione</a>
                       </p>
                   </div>
                  <div class="col-lg-4">
                     <img class="img-circle"
                        src="images/thirdslide.png"
                        alt="Generic placeholder image" width="140" height="140"/>
                     <h2>Lista di Nomi di persona</h2>
                     <p>Lista di nomi e occorrenze</p>
                     <p>
                        <a class="btn btn-default" href="persone.html" role="button">Vai all'indice</a>
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
                        <a class="btn btn-default" href="eventi.html" role="button">Vai alla cronologia</a>
                     </p>
                  </div>
                  <!-- /.col-lg-4 -->
               </div>
               <!-- /.row -->
               
               <!-- FOOTER -->
               <footer>
                  <p class="pull-right">
                     <a href="#">Torna all'inzio</a>
                  </p>
                   <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Licenza Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Edizione Digitale di FGrHist 104 [Aristodemo]</span> di<span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName"> Pietro Maria Liuzzo</span> è distribuito con Licenza <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribuzione - Condividi allo stesso modo 4.0 Internazionale</a>.
               </footer>

            </div>
            <!-- /.container -->


            <!-- Bootstrap core JavaScript
    ================================================== -->
            <!-- Placed at the end of the document so the pages load faster -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"/>
            <script>window.jQuery || document.write('&lt;script src="assets/js/vendor/jquery.min.js"&gt;&lt;/script&gt;')</script>
            <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
            <script src="assets/js/ie10-viewport-bug-workaround.js"/>
            <script src="js/ready.js"></script>
         </body>
      </html>




        <!--        pelagios rdf-->
        <xsl:result-document   href="rdf/void.ttl" method="text" >
            @prefix : &lt;http://pietroliuzzo.github.io/Aristodemo/&gt; .
            @prefix void: &lt;http://rdfs.org/ns/void#&gt; .
            @prefix dcterms: &lt;http://purl.org/dc/terms/&gt; .
            @prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .
            
            :Edizione digitale di FGrHist 104 [Aristodemo] a void:Dataset;
            dcterms:title "Edizione digitale di FGrHist 104 [Aristodemo]";
            dcterms:publisher "Edizione digitale di FGrHist 104 [Aristodemo]";
            foaf:homepage &lt;http://pietroliuzzo.github.io/Aristodemo/index&gt;;
            dcterms:description "An edition of an ancient text, witnessed by a manuscript and a papyrus, by an anonymous author";
            dcterms:license &lt;http://opendatacommons.org/licenses/odbl/1.0/&gt;;
            void:dataDump &lt;http://pietroliuzzo.github.io/Aristodemo/rdf/places.ttl&gt; ;
            .</xsl:result-document>
        
        <xsl:result-document  href="rdf/places.ttl" method="text">
            
            @prefix cnt: &lt;http://www.w3.org/2011/content#&gt; . 
            @prefix dcterms: &lt;http://purl.org/dc/terms/&gt; .
            @prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .
            @prefix oa: &lt;http://www.w3.org/ns/oa#&gt; .
            @prefix pelagios: &lt;http://pelagios.github.io/vocab/terms#&gt; .
            @prefix relations: &lt;http://pelagios.github.io/vocab/relations#&gt; .
            @prefix xsd: &lt;http://www.w3.org/2001/XMLSchema&gt; .
            
          <xsl:choose><xsl:when test="//t:objectType = 'Manuscript'">  
            &lt;http://pietroliuzzo.github.io/Aristodemo/rdf/places.ttl#manuscript&gt;
            a pelagios:AnnotatedThing' ;
            dcterms:title "Edizione di FGrHist 104 [Aristodemo]" ;
            foaf:homepage &lt;http://pietroliuzzo.github.io/Aristodemo/index.html&gt; ;
            dcterms:description "The edition of a fascicule of Cod. Par. Suppl. Gr. 607, containing an historical work by an anonymous author, collected by Felix Jacoby in Die Fragmente der Griechischer Historiker under number 104 with the name of Aristodemus." ;
            dcterms:temporal "1423" ;
            dcterms:language "grc" ;
            dcterms:subject "manuscript" ;
            .
            
             <xsl:for-each-group select="//t:placeName" group-by="@ref">
                 <xsl:sort select="@ref" />
                 <xsl:variable name="rank" select="position()" />
                 &lt;http://pietroliuzzo.github.io/Aristodemo/rdf/places.ttl#manuscript/annotations/<xsl:value-of select="$rank"/>&gt;
            a oa:Annotation ;
            oa:hasTarget &lt;http://pietroliuzzo.github.io/Aristodemo/rdf/places.ttl#manuscript&gt; ;
            oa:hasBody &lt;<xsl:value-of select="normalize-space(@ref)"/>&gt; ;
            oa:annotatedAt "<xsl:value-of select="current-dateTime()"/>"^^xsd:date ;
                 .
              </xsl:for-each-group>
           
            
            
            </xsl:when>
          <xsl:otherwise>
              &lt;http://pietroliuzzo.github.io/Aristodemo/rdf/places.ttl#papyrus&gt;
              a pelagios:AnnotatedThing' ;
              dcterms:title "Edizione di FGrHist 104 [Aristodemo]" ;
              foaf:homepage &lt;http://pietroliuzzo.github.io/Aristodemo/index.html&gt; ;
              dcterms:description "The edition of a papyrus P.Oxy 27.2469, containing a fragment of an historical work by an anonymous author, collected by Felix Jacoby in Die Fragmente der Griechischer Historiker under number 104 with the name of Aristodemus." ;
              dcterms:temporal "101/200" ;
              dcterms:language "grc" ;
              dcterms:subject "papyrus" ;
              .
              
              
              <xsl:for-each-group select="//t:placeName" group-by="@ref">
                  <xsl:sort select="@ref" />
                  <xsl:variable name="rank" select="position()" />
                  &lt;http://pietroliuzzo.github.io/Aristodemo/rdf/places.ttl#papyrus/annotations/<xsl:value-of select="$rank" />&gt;
                  a oa:Annotation ;
                  oa:hasTarget &lt;http://pietroliuzzo.github.io/Aristodemo/rdf/places.ttl#papyrus&gt; ;
                  oa:hasBody &lt;<xsl:value-of select="normalize-space(@ref)"/>&gt; ;
                  oa:annotatedAt "<xsl:value-of select="current-dateTime()"/>"^^xsd:date ;
                  .
              </xsl:for-each-group>
              
          </xsl:otherwise>
          </xsl:choose>
            
        </xsl:result-document>
        
        <!--this document is the leaflet script which creates the map and is called by the div[@id='map']-->
        <xsl:result-document href="js/map.js" method="text">
            L.mapbox.accessToken = 'pk.eyJ1IjoicGlldHJvbGl1enpvIiwiYSI6ImNpbDB6MjE0bDAwOGl4MW0wa2JvMDd0cHMifQ.wuV3-VuvmCzY69kWRf6CHA';
            
            var 
            ancientworld = L.mapbox.tileLayer('isawnyu.map-knmctlkh')
            grayscale   = L.mapbox.tileLayer('mapbox.light'),
            streets  = L.mapbox.tileLayer('mapbox.streets'),
            roads = L.mapbox.tileLayer('isawnyu.awmc-roads');
            
            
            var map = L.map('map', 
            {
            center: [35.92464, 36.60645],
            zoom: 5,
            layers: [roads, ancientworld, grayscale, streets],
            fullscreenControl: true,
            // OR
            fullscreenControl: {
            pseudoFullscreen: false // if true, fullscreen to page width and height
            }
            }
            );
            
            
            
            
            
            function onEachFeature(feature, layer) {
            
            var popupContent = "See more information about Pleaides place " + feature.properties.snippet +" " + feature.properties.link ;
            
            
            
            layer.bindPopup(popupContent);
            }
            
            
            <xsl:for-each-group select="//t:placeName" group-by="@ref">
                
                <xsl:variable name="pleiadesid"><xsl:value-of select="substring-after(@ref,'http://pleiades.stoa.org/places/')"/></xsl:variable>
                <xsl:variable name="pleaidesjson"><xsl:value-of select="unparsed-text(concat(normalize-space(@ref),'/json'))"/></xsl:variable>
                <xsl:variable name="varnNme"><xsl:text>geojsonFeature</xsl:text><xsl:value-of select="$pleiadesid"/></xsl:variable>
                
                <xsl:choose>
                    
                    <xsl:when test="contains($pleaidesjson, 'Polygon')">
                        var <xsl:value-of select="$varnNme"/> =
                        <xsl:value-of select="$pleaidesjson"/>
                        
                        ;
                        
                        var v<xsl:value-of select="$pleiadesid"/> = L.geoJson(<xsl:value-of select="$varnNme"/>).addTo(map);
                        
                    </xsl:when>
                    
                    <xsl:otherwise>
                        
                        var <xsl:value-of select="$varnNme"/> =
                        <xsl:value-of select="$pleaidesjson"/>
                        
                        ;
                        
                        var v<xsl:value-of select="$pleiadesid"/> =  L.geoJson(<xsl:value-of select="$varnNme"/>, {
                        
                        
                        onEachFeature: onEachFeature,
                        
                        pointToLayer: function (feature, latlng) {
                        return L.circleMarker(latlng, {
                        radius: 8,
                        fillColor: "green",
                        color: "#000",
                        weight: 1,
                        opacity: 0.3,
                        fillOpacity: 0.2
                        });
                        }
                        }).addTo(map);  
                    </xsl:otherwise></xsl:choose>
                
                
            </xsl:for-each-group>
            
            var points = L.layerGroup([
            <xsl:for-each-group select="//t:placeName" group-by="@ref"> 
                
                <xsl:variable name="pleiadesid"><xsl:value-of select="substring-after(@ref,'http://pleiades.stoa.org/places/')"/></xsl:variable>
                <xsl:variable name="pleaidesjson"><xsl:value-of select="unparsed-text(concat(normalize-space(@ref),'/json'))"/></xsl:variable>
                <xsl:variable name="varnNme"><xsl:text>geojsonFeature</xsl:text><xsl:value-of select="substring-after(@ref,'http://pleiades.stoa.org/places/')"/></xsl:variable>
                <xsl:choose>
                    
                    <xsl:when test="contains($pleaidesjson, 'Polygon')">
                        
                    </xsl:when>
                    
                    <xsl:otherwise>
                        <xsl:text>v</xsl:text><xsl:value-of select="$pleiadesid"/><xsl:if test="not(position()=last())"><xsl:text>, </xsl:text></xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each-group> 
            ]);
            
            var poligons = L.layerGroup([
            <xsl:for-each-group select="//t:placeName" group-by="@ref"> 
                
                <xsl:variable name="pleiadesid"><xsl:value-of select="substring-after(@ref,'http://pleiades.stoa.org/places/')"/></xsl:variable>
                <xsl:variable name="pleaidesjson"><xsl:value-of select="unparsed-text(concat(normalize-space(@ref),'/json'))"/></xsl:variable>
                <xsl:variable name="varnNme"><xsl:text>geojsonFeature</xsl:text><xsl:value-of select="substring-after(@ref,'http://pleiades.stoa.org/places/')"/></xsl:variable>
                <xsl:choose>
                    
                    <xsl:when test="contains($pleaidesjson, 'Polygon')">
                        
                        <xsl:text>v</xsl:text><xsl:value-of select="$pleiadesid"/><xsl:if test="not(position()=last())"><xsl:text>, </xsl:text></xsl:if>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each-group> 
            ]);
            
            var baseMaps ={
            "Grayscale": grayscale,
            "Streets": streets,
            "ancient world": ancientworld
            
            
            }
            var overlayMaps = {
            "places": points,
            "regions": poligons,
            "roads": roads
            };
            
            L.control.layers(baseMaps, overlayMaps).addTo(map);
            
            function onMapClick(e) {
            alert("You clicked the map at " + e.latlng);
            }
            
            map.on('click', onMapClick);
            
        </xsl:result-document>
   

</xsl:template>



  
</xsl:stylesheet>
