
    L.mapbox.accessToken = 'pk.eyJ1IjoicGlldHJvbGl1enpvIiwiYSI6ImNpbDB6MjE0bDAwOGl4MW0wa2JvMDd0cHMifQ.wuV3-VuvmCzY69kWRf6CHA';
    
    var 
    ancientworld = L.mapbox.tileLayer('isawnyu.map-knmctlkh')
    grayscale   = L.mapbox.tileLayer('mapbox.light'),
    streets  = L.mapbox.tileLayer('mapbox.streets'),
    roads = L.mapbox.tileLayer('isawnyu.awmc-roads');
    
    
    var map = L.map('map', 
    {
    center: [40, 11],
    zoom: 4,
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
    
    
    
                        var geojsonFeature1001896 =
                        {"connectsWith": [], "recent_changes": [{"modified": "2015-09-04T19:15:42Z", "principal": "jbecker"}, {"modified": "2012-02-15T02:07:35Z", "principal": "admin"}], "description": "An ancient place, cited: BAtlas 102 D4 no. 10 (Hellas)", "title": "Hellas", "reprPoint": [22.5, 37.5], "features": [{"geometry": {"type": "Polygon", "coordinates": [[[20.0, 35.0], [20.0, 40.0], [25.0, 40.0], [25.0, 35.0], [20.0, 35.0]]]}, "type": "Feature", "properties": {"snippet": "Unknown", "link": "http://pleiades.stoa.org/places/1001896/batlas-location", "description": "", "location_precision": "rough", "title": "Barrington Atlas location"}, "id": "batlas-location"}], "names": ["\u0395\u03bb\u03bb\u03ac\u03c2", "\u0395\u03bb\u03bb\u03ac\u03b4\u03b1", "Hellas"], "type": "FeatureCollection", "id": "1001896", "bbox": [20.0, 35.0, 25.0, 40.0]}
                        
                        ;
                        
                        var v1001896 = L.geoJson(geojsonFeature1001896).addTo(map);
                        
                    
                        
                        var geojsonFeature580101 =
                        {"connectsWith": ["570654", "579896"], "recent_changes": [{"modified": "2015-08-03T18:34:31Z", "principal": "jbecker"}, {"modified": "2013-03-07T15:12:25Z", "principal": "thomase"}], "description": "Salamis is the largest island of the Saronic Gulf. ", "title": "Salamis (island)", "reprPoint": [23.510000000000002, 37.93], "features": [{"geometry": {"type": "Point", "coordinates": [23.510000000000002, 37.93]}, "type": "Feature", "properties": {"snippet": "Island, ; AD 1700 - AD 2100", "link": "http://pleiades.stoa.org/places/580101/location-of-salamis-ins", "description": "Coordinates after BAtlas; verified in Google Earth 2013 with reference to Wikipedia.", "location_precision": "precise", "title": "location of Salamis Ins."}, "id": "location-of-salamis-ins"}], "names": ["Salamis"], "type": "FeatureCollection", "id": "580101", "bbox": [23.510000000000002, 37.93, 23.510000000000002, 37.93]}
                        
                        ;
                        
                        var v580101 =  L.geoJson(geojsonFeature580101, {
                        
                        
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
                    
                        
                        var geojsonFeature501434 =
                        {"connectsWith": ["560221", "511381"], "recent_changes": [{"modified": "2013-05-16T23:59:29Z", "principal": "jbecker"}, {"modified": "2012-02-15T05:41:40Z", "principal": "admin"}], "description": "A narrow strait of northwestern Turkey that connect the Aegean Sea to Propontis (Sea of Marmara).", "title": "Hellespontus", "reprPoint": [26.399999999999999, 40.200000000000003], "features": [{"geometry": {"type": "Point", "coordinates": [26.399999999999999, 40.200000000000003]}, "type": "Feature", "properties": {"snippet": "Water-open, ; AD 1700 - AD 2100", "link": "http://pleiades.stoa.org/places/501434/representative-point-for-hellespontus", "description": "verified in Google Earth 2013.", "location_precision": "precise", "title": "representative point for Hellespontus"}, "id": "representative-point-for-hellespontus"}], "names": ["Hellespontus", "Heptastadion"], "type": "FeatureCollection", "id": "501434", "bbox": [26.399999999999999, 40.200000000000003, 26.399999999999999, 40.200000000000003]}
                        
                        ;
                        
                        var v501434 =  L.geoJson(geojsonFeature501434, {
                        
                        
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
                    
                        var geojsonFeature580059 =
                        {"connectsWith": [], "recent_changes": [{"modified": "2012-02-15T06:44:54Z", "principal": "admin"}], "description": "An ancient place, cited: BAtlas 59 B2 Parnes M.", "title": "Parnes M.", "reprPoint": [23.625, 38.125], "features": [{"geometry": {"type": "Polygon", "coordinates": [[[23.5, 38.0], [23.5, 38.25], [23.75, 38.25], [23.75, 38.0], [23.5, 38.0]]]}, "type": "Feature", "properties": {"snippet": "Unknown", "link": "http://pleiades.stoa.org/places/580059/batlas-location", "description": "", "location_precision": "rough", "title": "Barrington Atlas location"}, "id": "batlas-location"}], "names": ["Parnes M."], "type": "FeatureCollection", "id": "580059", "bbox": [23.5, 38.0, 23.75, 38.25]}
                        
                        ;
                        
                        var v580059 = L.geoJson(geojsonFeature580059).addTo(map);
                        
                    
                        
                        var geojsonFeature579885 =
                        {"connectsWith": ["579888", "619860902", "813654446", "580123", "211653327", "235795850", "310115518", "copy_of_310115518", "728329644", "206543406", "421260481", "146086514", "149047472", "759679649", "580051"], "recent_changes": [{"modified": "2015-09-04T21:07:48Z", "principal": "jbecker"}, {"modified": "2013-08-14T13:24:29Z", "principal": "arabinowitz"}], "description": "A major Greek city-state and the principal city of Attika.", "title": "Athenae", "reprPoint": [23.723985181818183, 37.972746545454555], "features": [{"geometry": {"type": "Point", "coordinates": [23.722014000000001, 37.975855000000003]}, "type": "Feature", "properties": {"snippet": "Stoa, ; 550 BC - AD 300", "link": "http://pleiades.stoa.org/places/579885/stoa-of-zeus-eleutherios", "description": "The Stoa of Zeus Eleutherios was built on the west side of the Agora of Athens between 430-425 BC, in honor of Zeus \"of Freedom\"; the stoa, Doric in its external order, housed the shields of Athenians who had died fighting for the city ", "location_precision": "precise", "title": "Stoa of Zeus (Eleutherios)"}, "id": "stoa-of-zeus-eleutherios"}, {"geometry": {"type": "Point", "coordinates": [23.726443, 37.972000000000001]}, "type": "Feature", "properties": {"snippet": "Temple, ; 550 BC - AD 300", "link": "http://pleiades.stoa.org/places/579885/the-erechtheion", "description": "The Erechtheion is a temple on the Athenian Acropolis dedicated to Athena Polias and other deities and heroes; the temple is of the Ionic order with several distinctive features, including its famous caryatid porch ", "location_precision": "precise", "title": "The Erechtheion"}, "id": "the-erechtheion"}, {"geometry": {"type": "Point", "coordinates": [23.726464, 37.971687000000003]}, "type": "Feature", "properties": {"snippet": "Settlement; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/579885/dare-location", "description": "Representative point location, site precision", "location_precision": "precise", "title": "DARE Location"}, "id": "dare-location"}, {"geometry": {"type": "Point", "coordinates": [23.719536999999999, 37.970793]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/579885/darmc-location-21246", "description": "Point location", "location_precision": "precise", "title": "DARMC location 21246"}, "id": "darmc-location-21246"}, {"geometry": {"type": "Point", "coordinates": [23.72775, 37.970278]}, "type": "Feature", "properties": {"snippet": "Theatre, ; 550 BC - AD 300", "link": "http://pleiades.stoa.org/places/579885/theatre-of-dionysus-eleuthereus", "description": "Theatre on the south slope of the Acropolis. ", "location_precision": "precise", "title": "Theatre of Dionysus Eleuthereus"}, "id": "theatre-of-dionysus-eleuthereus"}, {"geometry": {"type": "Point", "coordinates": [23.721392999999999, 37.975574000000002]}, "type": "Feature", "properties": {"snippet": "Temple, ; 550 BC - AD 1450", "link": "http://pleiades.stoa.org/places/579885/hephaisteion", "description": "Temple of Hephaistos located on the northwest side of the Agora of Athens", "location_precision": "precise", "title": "Hephaisteion"}, "id": "hephaisteion"}, {"geometry": {"type": "Point", "coordinates": [23.718610999999999, 37.978332999999999]}, "type": "Feature", "properties": {"snippet": "Cemetery, ; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/579885/kerameikos", "description": "A district of ancient Athens located northwest of the Acropolis, the Kerameikos takes its name from the potters' workshops in the area; the portion of the district lying outside the Dipylon Gate served as a necropolis.", "location_precision": "precise", "title": "Kerameikos"}, "id": "kerameikos"}, {"geometry": {"type": "Point", "coordinates": [23.726165999999999, 37.971420999999999]}, "type": "Feature", "properties": {"snippet": "Temple, ; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/579885/acropolis-of-athens", "description": "The acropolis of the ancient city", "location_precision": "precise", "title": "Acropolis of Athens"}, "id": "acropolis-of-athens"}, {"geometry": {"type": "Point", "coordinates": [23.7225, 37.975000000000001]}, "type": "Feature", "properties": {"snippet": "Plaza, ; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/579885/agora-of-athens", "description": "The marketplace of the ancient city", "location_precision": "precise", "title": "Agora of Athens"}, "id": "agora-of-athens"}], "names": ["Athen", "\u1f08\u03b8\u1fc6\u03bd\u03b1\u03b9", "Athenae", "Athens", "\u0391\u03b8\u1f75\u03bd\u03b1"], "type": "FeatureCollection", "id": "579885", "bbox": [23.719536999999999, 37.970793, 23.726464, 37.975855000000003]}
                        
                        ;
                        
                        var v579885 =  L.geoJson(geojsonFeature579885, {
                        
                        
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
                    
                        var geojsonFeature580094 =
                        {"connectsWith": ["570654"], "recent_changes": [{"modified": "2015-08-03T18:29:26Z", "principal": "jbecker"}, {"modified": "2012-02-15T06:45:25Z", "principal": "admin"}], "description": "An island located in the Saronic Gulf.", "title": "Psyttaleia (island)", "reprPoint": [23.625, 37.875], "features": [{"geometry": {"type": "Polygon", "coordinates": [[[23.5, 37.75], [23.5, 38.0], [23.75, 38.0], [23.75, 37.75], [23.5, 37.75]]]}, "type": "Feature", "properties": {"snippet": "Unknown", "link": "http://pleiades.stoa.org/places/580094/batlas-location", "description": "", "location_precision": "rough", "title": "Barrington Atlas location"}, "id": "batlas-location"}], "names": ["\u03a8\u03c5\u03c4\u03c4\u03ac\u03bb\u03b5\u03b9\u03b1"], "type": "FeatureCollection", "id": "580094", "bbox": [23.5, 37.75, 23.75, 38.0]}
                        
                        ;
                        
                        var v580094 = L.geoJson(geojsonFeature580094).addTo(map);
                        
                    
                        
                        var geojsonFeature579853 =
                        {"connectsWith": [], "recent_changes": [{"modified": "2012-10-23T19:39:17Z", "principal": "sgillies"}, {"modified": "2012-02-15T06:40:01Z", "principal": "admin"}], "description": "An ancient place, cited: BAtlas 59 A3 Aigina", "title": "Aigina", "reprPoint": [23.423668000000003, 37.750149], "features": [{"geometry": {"type": "Point", "coordinates": [23.423667999999999, 37.750149]}, "type": "Feature", "properties": {"snippet": "Settlement; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/579853/dare-location", "description": "Representative point location, site precision", "location_precision": "precise", "title": "DARE Location"}, "id": "dare-location"}, {"geometry": {"type": "Point", "coordinates": [23.433333000000001, 37.75]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/579853/darmc-location-31224", "description": "  scale point location", "location_precision": "precise", "title": "DARMC location 31224"}, "id": "darmc-location-31224"}], "names": ["Aigina"], "type": "FeatureCollection", "id": "579853", "bbox": [23.423667999999999, 37.750149, 23.423667999999999, 37.750149]}
                        
                        ;
                        
                        var v579853 =  L.geoJson(geojsonFeature579853, {
                        
                        
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
                    
                        
                        var geojsonFeature599636 =
                        {"connectsWith": ["599564", "991381"], "recent_changes": [{"modified": "2013-02-25T18:23:00Z", "principal": "jbecker"}, {"modified": "2012-10-23T19:34:29Z", "principal": "sgillies"}], "description": "An ancient city in Caria, now known as Bodrum in Turkey (BAtlas 61 E3 Halicarnassus)", "title": "Halicarnassus/Halikarnassos", "reprPoint": [27.423765, 37.038220500000001], "features": [{"geometry": {"type": "Point", "coordinates": [27.429126, 37.032062000000003]}, "type": "Feature", "properties": {"snippet": "Temple, ; 550 BC - 330 BC", "link": "http://pleiades.stoa.org/places/599636/approximate-location-of-the-palace-of-mausolos-at-bodrum", "description": "", "location_precision": "precise", "title": "Approximate location of the palace of Mausolos at Bodrum"}, "id": "approximate-location-of-the-palace-of-mausolos-at-bodrum"}, {"geometry": {"type": "Point", "coordinates": [27.420200999999999, 37.042901000000001]}, "type": "Feature", "properties": {"snippet": "Unknown; 550 BC - AD 1453", "link": "http://pleiades.stoa.org/places/599636/approximate-centerpoint-of-the-acropolis-of-halicarnassus-bodrum", "description": "", "location_precision": "precise", "title": "Approximate centerpoint of the acropolis of Halicarnassus (Bodrum)"}, "id": "approximate-centerpoint-of-the-acropolis-of-halicarnassus-bodrum"}, {"geometry": {"type": "Point", "coordinates": [27.421589999999998, 37.040053999999998]}, "type": "Feature", "properties": {"snippet": "Unknown; 330 BC - AD 1453", "link": "http://pleiades.stoa.org/places/599636/centerpoint-of-the-orchestra-of-the-theater-at-bodrum", "description": "", "location_precision": "precise", "title": "Centerpoint of the orchestra of the theater at Bodrum"}, "id": "centerpoint-of-the-orchestra-of-the-theater-at-bodrum"}, {"geometry": {"type": "Point", "coordinates": [27.424143000000001, 37.037864999999996]}, "type": "Feature", "properties": {"snippet": "Temple, ; 550 BC - AD 1453", "link": "http://pleiades.stoa.org/places/599636/centerpoint-of-visible-remains-of-the-mausoleum-at-bodrum", "description": "", "location_precision": "precise", "title": "Centerpoint of visible remains of the Mausoleum at Bodrum"}, "id": "centerpoint-of-visible-remains-of-the-mausoleum-at-bodrum"}], "names": ["Halicarnassus", "Bodrum", "\u1f09\u03bb\u03b9\u03ba\u03b1\u03c1\u03bd\u03b1\u03c3\u03c3\u03cc\u03c2"], "type": "FeatureCollection", "id": "599636", "bbox": [27.420200999999999, 37.032062000000003, 27.429126, 37.042901000000001]}
                        
                        ;
                        
                        var v599636 =  L.geoJson(geojsonFeature599636, {
                        
                        
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
                    
                        var geojsonFeature580122 =
                        {"connectsWith": [], "recent_changes": [{"modified": "2013-02-04T16:43:35Z", "principal": "jbecker"}, {"modified": "2012-02-15T06:45:45Z", "principal": "admin"}], "description": "An ancient place, cited: BAtlas 59 B2 Thriasion Pedion", "title": "Thriasion Pedion", "reprPoint": [23.625, 38.125], "features": [{"geometry": {"type": "Polygon", "coordinates": [[[23.5, 38.0], [23.5, 38.25], [23.75, 38.25], [23.75, 38.0], [23.5, 38.0]]]}, "type": "Feature", "properties": {"snippet": "Unknown; 550 BC - AD 300", "link": "http://pleiades.stoa.org/places/580122/batlas-location", "description": "", "location_precision": "rough", "title": "Barrington Atlas location"}, "id": "batlas-location"}], "names": ["Thriasion Pedion"], "type": "FeatureCollection", "id": "580122", "bbox": [23.5, 38.0, 23.75, 38.25]}
                        
                        ;
                        
                        var v580122 = L.geoJson(geojsonFeature580122).addTo(map);
                        
                    
                        
                        var geojsonFeature579920 =
                        {"connectsWith": ["935032928", "408217405"], "recent_changes": [{"modified": "2015-08-01T14:33:59Z", "principal": "jbecker"}, {"modified": "2012-10-20T21:54:06Z", "principal": "sgillies"}], "description": "An ancient place, cited: BAtlas 59 B2 Eleusis", "title": "Eleusis", "reprPoint": [23.537400999999999, 38.041100999999998], "features": [{"geometry": {"type": "Point", "coordinates": [23.537400999999999, 38.041100999999998]}, "type": "Feature", "properties": {"snippet": "Settlement; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/579920/dare-location", "description": "Representative point location, site precision", "location_precision": "precise", "title": "DARE Location"}, "id": "dare-location"}, {"geometry": {"type": "Point", "coordinates": [23.541893999999999, 38.050001999999999]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/579920/darmc-location-21263", "description": "Point location", "location_precision": "precise", "title": "DARMC location 21263"}, "id": "darmc-location-21263"}, {"geometry": {"type": "Point", "coordinates": [23.545197999999999, 38.041302999999999]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/579920/darmc-location-41", "description": "TIB point location", "location_precision": "precise", "title": "DARMC location 41"}, "id": "darmc-location-41"}], "names": ["Eleusis"], "type": "FeatureCollection", "id": "579920", "bbox": [23.537400999999999, 38.041100999999998, 23.537400999999999, 38.041100999999998]}
                        
                        ;
                        
                        var v579920 =  L.geoJson(geojsonFeature579920, {
                        
                        
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
                    
                        var geojsonFeature981531 =
                        {"connectsWith": [], "recent_changes": [{"modified": "2012-02-15T23:44:13Z", "principal": "admin"}], "description": "An ancient place, cited: BAtlas 100 L3 Macedonia", "title": "Macedonia", "reprPoint": [22.5, 42.5], "features": [{"geometry": {"type": "Polygon", "coordinates": [[[20.0, 40.0], [20.0, 45.0], [25.0, 45.0], [25.0, 40.0], [20.0, 40.0]]]}, "type": "Feature", "properties": {"snippet": "Unknown", "link": "http://pleiades.stoa.org/places/981531/batlas-location", "description": "", "location_precision": "rough", "title": "Barrington Atlas location"}, "id": "batlas-location"}], "names": ["Macedonia"], "type": "FeatureCollection", "id": "981531", "bbox": [20.0, 40.0, 25.0, 45.0]}
                        
                        ;
                        
                        var v981531 = L.geoJson(geojsonFeature981531).addTo(map);
                        
                    
                        
                        var geojsonFeature541138 =
                        {"connectsWith": ["540689"], "recent_changes": [{"modified": "2015-10-27T14:49:49Z", "principal": "jbecker"}, {"modified": "2012-10-20T20:58:06Z", "principal": "sgillies"}], "description": "The ancient city of Thebes in Boeotia (modern Greece).", "title": "Thebai/Thebae", "reprPoint": [23.317798999999997, 38.319076000000003], "features": [{"geometry": {"type": "Point", "coordinates": [23.317799000000001, 38.319076000000003]}, "type": "Feature", "properties": {"snippet": "Settlement; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/541138/dare-location", "description": "Representative point location, site precision", "location_precision": "precise", "title": "DARE Location"}, "id": "dare-location"}, {"geometry": {"type": "Point", "coordinates": [23.317354999999999, 38.319235999999997]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/541138/darmc-location-24220", "description": "5M scale point location", "location_precision": "precise", "title": "DARMC location 24220"}, "id": "darmc-location-24220"}], "names": ["Thebae", "\u0398\u03ae\u03b2\u03b1", "Thebes", "\u0398\u1fc6\u03b2\u03b1\u03b9"], "type": "FeatureCollection", "id": "541138", "bbox": [23.317799000000001, 38.319076000000003, 23.317799000000001, 38.319076000000003]}
                        
                        ;
                        
                        var v541138 =  L.geoJson(geojsonFeature541138, {
                        
                        
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
                    
                        
                        var geojsonFeature541063 =
                        {"connectsWith": [], "recent_changes": [{"modified": "2015-10-28T14:33:16Z", "principal": "thomase"}, {"modified": "2015-10-27T15:07:54Z", "principal": "jbecker"}], "description": "Plataea is an ancient city of Boeotia, located south of Thebes. In 479 BC Plataea was the site of the Battle of Plataea, in which an allied Greek army defeated the Persians. Plataea was destroyed in the Peloponnesian War by Thebes and Sparta in 427 BC and rebuilt in 386 BC.", "title": "Plataea", "reprPoint": [23.273344999999996, 38.221257000000001], "features": [{"geometry": {"type": "Point", "coordinates": [23.273344999999999, 38.221257000000001]}, "type": "Feature", "properties": {"snippet": "Settlement; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/541063/dare-location", "description": "Representative point location, site precision", "location_precision": "precise", "title": "DARE Location"}, "id": "dare-location"}, {"geometry": {"type": "Point", "coordinates": [23.27486, 38.213999000000001]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/541063/darmc-location-5554", "description": "500K scale point location", "location_precision": "precise", "title": "DARMC location 5554"}, "id": "darmc-location-5554"}, {"geometry": {"type": "Point", "coordinates": [23.267337000000001, 38.211934999999997]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/541063/darmc-location-11744", "description": "TIB point location", "location_precision": "precise", "title": "DARMC location 11744"}, "id": "darmc-location-11744"}], "names": ["Plataea", "\u03a0\u03bb\u03ac\u03c4\u03b1\u03b9\u03b1\u03b9"], "type": "FeatureCollection", "id": "541063", "bbox": [23.273344999999999, 38.221257000000001, 23.273344999999999, 38.221257000000001]}
                        
                        ;
                        
                        var v541063 =  L.geoJson(geojsonFeature541063, {
                        
                        
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
                    
                        
                        var geojsonFeature540689 =
                        {"connectsWith": ["540987", "540787", "541146", "540791", "541179", "543884", "809327743", "540801", "580114", "541138", "540913"], "recent_changes": [{"modified": "2015-10-28T16:18:15Z", "principal": "jbecker"}, {"modified": "2015-09-07T11:52:41Z", "principal": "pmotylewicz"}], "description": "A region of central Greece inhabited since prehistoric times. ", "title": "Boeotia", "reprPoint": [23.1835855, 38.345856133333328], "features": [], "names": ["Boeotia", "\u0392\u03bf\u03b9\u03c9\u03c4\u03af\u03b1"], "type": "FeatureCollection", "id": "540689", "bbox": [22.746666999999999, 38.256503000000002, 23.586234000000001, 38.493319]}
                        
                        ;
                        
                        var v540689 =  L.geoJson(geojsonFeature540689, {
                        
                        
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
                    
                        var geojsonFeature922698 =
                        {"connectsWith": [], "recent_changes": [{"modified": "2012-02-15T09:38:23Z", "principal": "admin"}], "description": "An ancient place, cited: BAtlas 94 B3 Persis/Pars", "title": "Persis/Pars", "reprPoint": [51.5, 30.5], "features": [{"geometry": {"type": "Polygon", "coordinates": [[[51.0, 30.0], [51.0, 31.0], [52.0, 31.0], [52.0, 30.0], [51.0, 30.0]]]}, "type": "Feature", "properties": {"snippet": "Unknown; 550 BC - AD 640", "link": "http://pleiades.stoa.org/places/922698/batlas-location", "description": "", "location_precision": "rough", "title": "Barrington Atlas location"}, "id": "batlas-location"}], "names": ["Persis", "Pars"], "type": "FeatureCollection", "id": "922698", "bbox": [51.0, 30.0, 52.0, 31.0]}
                        
                        ;
                        
                        var v922698 = L.geoJson(geojsonFeature922698).addTo(map);
                        
                    
                        var geojsonFeature570406 =
                        {"connectsWith": ["570561", "570706", "570248", "570685"], "recent_changes": [{"modified": "2015-10-30T22:04:26Z", "principal": "jbecker"}, {"modified": "2012-02-15T06:30:45Z", "principal": "admin"}], "description": "Lacedaemon/Laconia is a region comprising the south-eastern part of the Peloponnese.", "title": "Lacedaemon/Laconia", "reprPoint": [22.371002200000003, 37.065926733333335], "features": [{"geometry": {"type": "Polygon", "coordinates": [[[22.0, 37.0], [22.0, 37.5], [22.5, 37.5], [22.5, 37.0], [22.0, 37.0]]]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 300", "link": "http://pleiades.stoa.org/places/570406/batlas-location", "description": "", "location_precision": "rough", "title": "Barrington Atlas location"}, "id": "batlas-location"}], "names": ["Lacedaemon", "Laconia"], "type": "FeatureCollection", "id": "570406", "bbox": [22.333493099999998, 36.953544000000001, 22.435455000000001, 37.161519699999999]}
                        
                        ;
                        
                        var v570406 = L.geoJson(geojsonFeature570406).addTo(map);
                        
                    
                        
                        var geojsonFeature541140 =
                        {"connectsWith": ["540929"], "recent_changes": [{"modified": "2015-06-22T21:42:47Z", "principal": "jbecker"}, {"modified": "2012-10-20T20:58:11Z", "principal": "sgillies"}], "description": "Thermopylae is the name of a narrow pass leading from Thessaly into Locris. It was the site of a pivotal battle during the Graeco-Persian wars in 480 BC.", "title": "Thermopylae", "reprPoint": [22.538293999999997, 38.796511000000002], "features": [{"geometry": {"type": "Point", "coordinates": [22.538294, 38.796511000000002]}, "type": "Feature", "properties": {"snippet": "Fort", "link": "http://pleiades.stoa.org/places/541140/dare-location", "description": "Representative point location, site precision", "location_precision": "precise", "title": "DARE Location"}, "id": "dare-location"}, {"geometry": {"type": "Point", "coordinates": [22.548994, 38.795489000000003]}, "type": "Feature", "properties": {"snippet": "Unknown", "link": "http://pleiades.stoa.org/places/541140/darmc-location-8365", "description": "500K scale point location", "location_precision": "precise", "title": "DARMC location 8365"}, "id": "darmc-location-8365"}], "names": ["\u0398\u03b5\u03c1\u03bc\u03bf\u03c0\u03cd\u03bb\u03b1\u03b9", "Thermopylae"], "type": "FeatureCollection", "id": "541140", "bbox": [22.538294, 38.796511000000002, 22.538294, 38.796511000000002]}
                        
                        ;
                        
                        var v541140 =  L.geoJson(geojsonFeature541140, {
                        
                        
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
                    
                        
                        var geojsonFeature599799 =
                        {"connectsWith": ["599777", "599668", "599671"], "recent_changes": [{"modified": "2013-08-22T16:35:49Z", "principal": "admin"}, {"modified": "2013-05-17T00:16:02Z", "principal": "jbecker"}], "description": "A major city in Caria", "title": "Miletus", "reprPoint": [27.2774885, 37.5292362], "features": [{"geometry": {"type": "Point", "coordinates": [27.2774885, 37.5292362]}, "type": "Feature", "properties": {"snippet": "Settlement; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/599799/dare-location", "description": "Representative point location, site precision", "location_precision": "precise", "title": "DARE Location"}, "id": "dare-location"}, {"geometry": {"type": "Point", "coordinates": [27.275676399999998, 37.531213100000002]}, "type": "Feature", "properties": {"snippet": "Theatre, ; 550 BC - AD 640", "link": "http://pleiades.stoa.org/places/599799/location-of-theater-of-miletus", "description": "Location based on OpenStreetMap", "location_precision": "precise", "title": "location of theater of Miletus"}, "id": "location-of-theater-of-miletus"}, {"geometry": {"type": "Point", "coordinates": [27.279561000000001, 37.531525999999999]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/599799/darmc-location-4819", "description": "500K scale point location", "location_precision": "precise", "title": "DARMC location 4819"}, "id": "darmc-location-4819"}, {"geometry": {"type": "Point", "coordinates": [27.277901, 37.507952000000003]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/599799/darmc-location-24087", "description": "5M scale point location", "location_precision": "precise", "title": "DARMC location 24087"}, "id": "darmc-location-24087"}, {"geometry": {"type": "Point", "coordinates": [27.277901, 37.507952000000003]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/599799/darmc-location-24020", "description": "1M scale point location", "location_precision": "precise", "title": "DARMC location 24020"}, "id": "darmc-location-24020"}], "names": ["Milet", "Palatia", "Amtal\u0131n", "Balat", "Balat", "Miletos", "Mil\u0113tos, Miletos", "Am\u1e6dalin, Amtalin", "Miletus"], "type": "FeatureCollection", "id": "599799", "bbox": [27.2774885, 37.5292362, 27.2774885, 37.5292362]}
                        
                        ;
                        
                        var v599799 =  L.geoJson(geojsonFeature599799, {
                        
                        
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
                    
                        
                        var geojsonFeature599805 =
                        {"connectsWith": ["599905"], "recent_changes": [{"modified": "2013-02-25T20:08:56Z", "principal": "jbecker"}, {"modified": "2012-02-15T07:01:56Z", "principal": "admin"}], "description": "An ancient place, cited: BAtlas 61 E2 Mycale M.", "title": "Mycale M.", "reprPoint": [27.083333, 37.666666999999997], "features": [{"geometry": {"type": "Point", "coordinates": [27.083333, 37.666666999999997]}, "type": "Feature", "properties": {"snippet": "Mountain, ; AD 1700 - AD 2100", "link": "http://pleiades.stoa.org/places/599805/location-of-mycale-m", "description": "verified in Google Earth 2013.", "location_precision": "precise", "title": "location of Mycale M."}, "id": "location-of-mycale-m"}], "names": ["Mycale M."], "type": "FeatureCollection", "id": "599805", "bbox": [27.083333, 37.666666999999997, 27.083333, 37.666666999999997]}
                        
                        ;
                        
                        var v599805 =  L.geoJson(geojsonFeature599805, {
                        
                        
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
                    
                        var geojsonFeature1001887 =
                        {"connectsWith": [], "recent_changes": [{"modified": "2012-02-15T02:07:31Z", "principal": "admin"}], "description": "An ancient place, cited: BAtlas 102 E3 no. 1 (Europe)", "title": "Europe", "reprPoint": [27.5, 42.5], "features": [{"geometry": {"type": "Polygon", "coordinates": [[[25.0, 40.0], [25.0, 45.0], [30.0, 45.0], [30.0, 40.0], [25.0, 40.0]]]}, "type": "Feature", "properties": {"snippet": "Unknown", "link": "http://pleiades.stoa.org/places/1001887/batlas-location", "description": "", "location_precision": "rough", "title": "Barrington Atlas location"}, "id": "batlas-location"}], "names": ["Europe"], "type": "FeatureCollection", "id": "1001887", "bbox": [25.0, 40.0, 30.0, 45.0]}
                        
                        ;
                        
                        var v1001887 = L.geoJson(geojsonFeature1001887).addTo(map);
                        
                    
                        
                        var geojsonFeature501609 =
                        {"connectsWith": [], "recent_changes": [{"modified": "2013-11-17T03:28:36Z", "principal": "jbecker"}, {"modified": "2012-02-15T05:43:57Z", "principal": "admin"}], "description": "An ancient place, cited: BAtlas 51 G4 Sestos", "title": "Sestos", "reprPoint": [26.417224999999998, 40.228355999999998], "features": [{"geometry": {"type": "Point", "coordinates": [26.417224999999998, 40.228355999999998]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 300", "link": "http://pleiades.stoa.org/places/501609/darmc-location-9525", "description": "500K scale point location", "location_precision": "precise", "title": "DARMC location 9525"}, "id": "darmc-location-9525"}], "names": ["Sestos"], "type": "FeatureCollection", "id": "501609", "bbox": [26.417224999999998, 40.228355999999998, 26.417224999999998, 40.228355999999998]}
                        
                        ;
                        
                        var v501609 =  L.geoJson(geojsonFeature501609, {
                        
                        
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
                    
                        
                        var geojsonFeature540726 =
                        {"connectsWith": ["203037083", "707804475", "513711610", "333036424", "333036425", "333036426", "464482219"], "recent_changes": [{"modified": "2015-03-20T17:47:25Z", "principal": "jbecker"}, {"modified": "2015-03-13T21:05:26Z", "principal": "thomase"}], "description": "The ancient pan-Hellenic sanctuary of Delphi in Greece, seat of the oracle of Apollo.", "title": "Delphi", "reprPoint": [22.501169000000001, 38.482289000000002], "features": [{"geometry": {"type": "Point", "coordinates": [22.501169000000001, 38.482289000000002]}, "type": "Feature", "properties": {"snippet": "Settlement; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/540726/dare-location", "description": "Representative point location, site precision", "location_precision": "precise", "title": "DARE Location"}, "id": "dare-location"}], "names": ["Delphi", "\u0394\u03b5\u03bb\u03c6\u03bf\u03af", "\u062f\u0644\u0641\u064a", "Delfos", "Delfi"], "type": "FeatureCollection", "id": "540726", "bbox": [22.501169000000001, 38.482289000000002, 22.501169000000001, 38.482289000000002]}
                        
                        ;
                        
                        var v540726 =  L.geoJson(geojsonFeature540726, {
                        
                        
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
                    
                        var geojsonFeature903080 =
                        {"connectsWith": [], "recent_changes": [{"modified": "2013-05-20T18:45:07Z", "principal": "jbecker"}, {"modified": "2012-02-15T09:29:56Z", "principal": "admin"}], "description": "Media/Mad(aya) was a region of northwestern Iran.", "title": "Media/Mad(aya)", "reprPoint": [46.5, 34.5], "features": [{"geometry": {"type": "Polygon", "coordinates": [[[46.0, 34.0], [46.0, 35.0], [47.0, 35.0], [47.0, 34.0], [46.0, 34.0]]]}, "type": "Feature", "properties": {"snippet": "Unknown; 750 BC - AD 640", "link": "http://pleiades.stoa.org/places/903080/batlas-location", "description": "", "location_precision": "rough", "title": "Barrington Atlas location"}, "id": "batlas-location"}], "names": ["Media", "Madaya", "Mad"], "type": "FeatureCollection", "id": "903080", "bbox": [46.0, 34.0, 47.0, 35.0]}
                        
                        ;
                        
                        var v903080 = L.geoJson(geojsonFeature903080).addTo(map);
                        
                    
            
            var points = L.layerGroup([
    v580101, v501434, v579885, v579853, v599636, v579920, v541138, v541063, v540689, v541140, v599799, v599805, v501609, v540726,  
        ]);
    
    var poligons = L.layerGroup([
    v1001896, v580059, v580094, v580122, v981531, v922698, v570406, v1001887, v903080 
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
   
