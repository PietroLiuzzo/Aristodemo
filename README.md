# Aristodemo
This project will be a proof of concept on a very small author for a fully annotated edition of a manuscript.
Aristodemus, FGrHist 104 is a good test because: 
* the main text is part of a Manuscript, 
* there is also a papyrus

The manuscript, Cod. Par. Suppl. gr. 607, is preserved at the Cabinet de Manuscrits and is digitized and made available by the Bibliothéque National the France.

The papyrus, P.Oxy 27.2469 is preserved at the British Library.

This is a good case study because
* there is indirect tradition to be represented
* it speaks about a very well studied period of history, the pentecontaetia
* it is short
* it is simple
* it contains famous people
* it contains famous places
* it refers to famous events
* it is related to some historical inscriptions

##Technical things

### Text
The XML of the text is in TEI. Potentially with minor modifications transformations and structure can be reused for any TEI text, although ids, links to external resources and static data need to be changed.
The LaTeX version is the one I have started from, as [my thesis](http://amsdottorato.unibo.it/6257/) was written like that.

### Transformations
To produce all the output a series of transformation is run on the main texts (in xml folder). 
* loughi.xsl produces the page with the map, the map javascript and the pelagios rdf output
* persone.xsl produces the people index page, and the snap rdf output found in the RDF folder
There are other xslt which I initially copied here which where not yet useful.
the bibliography is handled pointing to [Zotero API](https://www.zotero.org/support/dev/web_api/v2/start), but this is also a modification to the epidoc example xslt on my local drive.

### Layout and Graphic
This is fully [Bootstrap](http://getbootstrap.com/) stuff, the carousel theme, sligthly adapted. The dist folder contains a copy of what I needed downloading the repo. I have created with this html a template within the [epidoc example XSLT](https://sourceforge.net/p/epidoc/wiki/Stylesheets/) and used the same to produce the static pages. The table sorting function used in persone.html is done using [Tablesorter 2.0](http://tablesorter.com/docs/)

#### Images
The images of the manuscript are kindly offered via [International Image Interoperability Framework (IIIF)](http://iiif.io/) from [Gallica](http://gallica.bnf.fr/). I use [Openseadragon](https://openseadragon.github.io/) as a viewer of the images.

#### Timeline
[Timeline JS](https://timeline.knightlab.com/) does what it says, an easy and nice looking timeline. 

### Places and People
Places are given an id from [Pleiades](http://pleiades.stoa.org/). This is used to create the map and the pelagios annotation, to show links, and activate the popups. Is wonderfully useful.
IDs for people are taken where possible from the [Lexicon of Greek Personal Names](http://clas-lgpn2.classics.ox.ac.uk/) or from Wikidata. 
Citations of texts are encoded as [CTS urns](http://www.homermultitext.org/hmt-doc/cite/cts-urn-overview.html) in the introduction to the digital edition.

#### Popups
In the places page, popups with the little map and links to pleiades and pelagios come from the [ADWL.js](http://isawnyu.github.com/awld-js/awld-test.html), which you will see copied in this folder. The same happens if you scroll on a citation in the introduction page (although not always!)

#### Map
The map in luoghi.html is done with [leaflet](http://leafletjs.com/examples/quick-start.html). During transformation a map.js file is generated which takes the JSON from pleiades and uses it to build the map.
The Ancient World layer and the Roads layers are from the [Ancient World Mapping Centre](http://awmc.unc.edu/wordpress/tiles/).

### Print output (forthcoming)
[LombardPress](https://bitbucket.org/lombardpress/lombardpress-print) customization for EpiDoc will be used to produce LaTeX PDF, while I hope to be able to produce an EPub directly from the xml using the standard TEI transformations for this. 

