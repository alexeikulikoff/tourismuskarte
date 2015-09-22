// --- Parks, woods, other green things ---

@forest: #8dc56c;//verändert ab stufe 15
@grass: #cfeca8; // also meadow, common, garden, village_green, conservation verändert ab stufe 15
@golf_course: #b5e3b5;//verändert ab stufe 15
@natural: #c6e4b4; // also grassland verändert ab stufe 15
@park: #b6fdb6; // also recreation_ground verändert ab stufe 15
@wood: #aed1a0; //verändert ab stufe 15
@vineyard: #abdf96; //verändert ab stufe 15

// --- sports --- alle verändert ab stufe 15

@stadium: #3c9; // also sports_centre
@track: #74dcba;
@pitch: #8ad3af;

// --- Other ----

@aerodrome: #ccc;
@allotments: #e5c7ab;
@apron: #e9d1ff;
@attraction: #f2caea;
@barracks: #3baa05; //verändert ab stufe 15
@campsite: #ccff99; // also caravan_site, picnic_site
@cemetery: #aacbaf; // also grave_yard //verändert ab stufe 15
@construction: #9d9d6c; //verändert ab stufe 15
@commercial: #efc8c8; //verändert ab stufe 15
@danger_area: pink;
@desert: #ffdf88;
@field: #660;
@garages: #996; //verändert ab stufe 15
@heath: #d6d99f; //verändert ab stufe 15
@industrial: #dfd1d6; // also railway
@farmyard: #ddbf92;
@farm: #ead8bd; // also farmland
@parking: #f7efb7;
@playground: #ccfff1; //verändert ab stufe 15
@power: #bbb; //verändert ab stufe 15
@rest_area: #efc8c8; // also services
@retail: #f1dada; //verändert ab stufe 15
@residential: #ddd; //verändert ab stufe 15
@sand: #ffdf88;
@school: #f0f0d8; // also university, college, hospital, kindergarten //verändert ab stufe 15

#landcover {
 [feature = 'leisure_swimming_pool'][zoom >= 14] {
    polygon-fill: @water-color;
    line-color: blue;
    line-width: 0.5;
  }

  [feature = 'leisure_playground'][zoom >= 13] {
    polygon-fill: @playground;
    line-color: #666;
    line-width: 0.3;
    [zoom >= 15] {
    polygon-fill: #1ee922;
    }  
  }

  [feature = 'tourism_camp_site'],
  [feature = 'tourism_caravan_site'],
  [feature = 'tourism_picnic_site'] {
    [zoom >= 13] {
      polygon-fill: @campsite;
      polygon-opacity: 0.5;
      line-color: #666;
      line-width: 0.3;
    [zoom >= 15] {
        polygon-fill: #1ee922;
    	line-width: 0.5;
   	line-color: #888;
    } 
    }
  }

  [feature = 'tourism_attraction'][zoom >= 10] {
    polygon-fill: @attraction;

  }

  [feature = 'landuse_quarry'][zoom >= 11] {
    polygon-pattern-file: url('symbols/quarry2.png');
    line-width: 0.5;
    line-color: grey;
        [zoom >= 15] {
	  polygon-fill: @cemetery;
        }
  }

  [feature = 'landuse_vineyard'] {
    [zoom >= 10][zoom < 13] {
      polygon-fill: @vineyard;
    }
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/vineyard.png');
      [zoom >= 15] {
	polygon-fill: #ccff99;
      }
    }
  }

  [feature = 'landuse_orchard'][zoom >= 10] {
    polygon-pattern-file: url('symbols/orchard.png');
      [zoom >= 15] {
	polygon-fill: #ccff99;
      }
  }
  

  [feature = 'landuse_cemetery'],
  [feature = 'landuse_grave_yard'],
  [feature = 'amenity_grave_yard'] {
    [zoom >= 10][zoom <= 14] {
      polygon-fill: @cemetery;
    }
   /* [zoom >= 14] {
      [religion = 'jewish'] { polygon-pattern-file: url('symbols/cemetery_jewish.18.png'); }
      [religion = 'christian'] { polygon-pattern-file: url('symbols/grave_yard.png'); }
      [religion = 'INT-generic'] { polygon-pattern-file: url('symbols/grave_yard_generic.png'); }

    }*/
	[zoom >= 15] {
	  polygon-fill: @cemetery;
        }
  }

  [feature = 'landuse_residential'][zoom >= 10] {
    polygon-fill: @residential;
        [zoom >=15] {
	  polygon-fill: #E4D6E6;
	}
  }

  [feature = 'landuse_garages'][zoom >= 12] {
    polygon-fill: @garages;
    polygon-opacity: 0.2;
        [zoom >=15] {
	  polygon-fill: #E4D6E6;
	}
  }

  [feature = 'military_barracks'][zoom >= 10] {
    polygon-fill: @barracks;
        [zoom >=15] {
	  polygon-fill: #E4D6E6;
	}
  }

  [feature = 'landuse_field'],
  [feature = 'natural_field'] {
    [zoom >= 10] {
      polygon-fill: @field;
      polygon-opacity: 0.2;
      [zoom >= 14] {
        line-width: 0.3;
        line-opacity: 0.4;
        line-color: #660;
        [zoom >=15] {
	  polygon-fill: #FEE7A7;
	}

      }
    }
  }

  [feature = 'military_danger_area'] {
    [zoom >= 9][zoom < 11] {
      polygon-fill: @danger_area;
      polygon-opacity: 0.3;
    }
    [zoom >= 11] {
      polygon-pattern-file: url('symbols/danger.png');
    }
  }

  [feature = 'landuse_meadow'],
  [feature = 'landuse_grass'] {
    [zoom >= 10] {
      polygon-fill: @grass;
      [zoom >= 15] {
        polygon-fill: #ccff99;
      }
    }
  }

  [feature = 'leisure_park'],
  [feature = 'leisure_recreation_ground'] {
    [zoom >= 10] {
      polygon-fill: @park;
      polygon-opacity: 0.6;
        [zoom >= 15] {
	  polygon-fill: #ccff99;
      }
    }
  }

  [feature = 'tourism_zoo'][zoom >= 10] {
    polygon-pattern-file: url('symbols/zoo.png');
    [zoom >= 15] {
        polygon-fill: #1ee922;
    	line-width: 0.5;
   	line-color: #888;
    } 
  }

  [feature = 'leisure_common'][zoom >= 10] {
    polygon-fill: @grass;
      [zoom >= 15] {
	polygon-fill: #ccff99;
      }
  }

  [feature = 'leisure_garden'][zoom >= 10] {
    polygon-fill: @grass;
      [zoom >= 15] {
	polygon-fill: #ccff99;
      }
  }

  [feature = 'leisure_golf_course'][zoom >= 10] {
    polygon-fill: @golf_course;
      [zoom >= 15] {
	polygon-fill: #1ee922;
      }
  }

  [feature = 'landuse_allotments'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: @allotments;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/allotments.png');
      [zoom >= 15] {
	polygon-fill: #ccff99;
      }
    }
  }

  [feature = 'landuse_forest'] {
    [zoom >= 8][zoom < 14] {
      polygon-fill: @forest;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/forest.png');
    }
    [zoom >= 15] {
      polygon-fill: #45D15C;
    }
  }

  [feature = 'landuse_farmyard'][zoom >= 9] {
    polygon-fill: @farmyard;
    [zoom >= 15] {
      polygon-fill: #FAF0BF;
    }
  }

  [feature = 'landuse_farm'],
  [feature = 'landuse_farmland'] {
    [zoom >= 9] {
      polygon-fill: @farm;
    [zoom >= 15] {
      polygon-fill: #FAF0BF;
    }
    }
  }

  [feature = 'landuse_recreation_ground'],
  [feature = 'landuse_conservation'] {
    [zoom >= 10] {
      polygon-fill: @grass;
      [zoom >= 15] {
	polygon-fill: #ccff99;
      }
    }
  }

  [feature = 'landuse_village_green'][zoom >= 11] {
    polygon-fill: @grass;
      [zoom >= 15] {
	polygon-fill: #ccff99;
      }
  }

  [feature = 'landuse_retail'][zoom >= 10] {
    polygon-fill: @retail;
   /* [zoom >=15 ] {
      line-width: 0.3;
      line-color: red;*/
        [zoom >=15] {
	  polygon-fill: #E4D6E6;
	}
    //}
  }

  [feature = 'landuse_industrial'],
  [feature = 'landuse_railway'] {
    [zoom >= 10] {
      polygon-fill: @industrial;
        [zoom >=15] {
	  polygon-fill: #E4D6E6;
	}
    }
  }

  [feature = 'power_station'],
  [feature = 'power_generator'] {
    [zoom >= 10] {
      polygon-fill: @power;
     /* [zoom >= 12] {
        line-width: 0.4;
        line-color: #555;*/
        [zoom >=15] {
	  polygon-fill: #E4D6E6;
	}
      //}
    }
  }

  [feature = 'power_sub_station'][zoom >= 13] {
    polygon-fill: @power;
   // line-width: 0.4;
    //line-color: #555;
        [zoom >=15] {
	  polygon-fill: #E4D6E6;
	}
  }

  [feature = 'landuse_commercial'][zoom >= 10] {
    polygon-fill: @commercial;
        [zoom >=15] {
	  polygon-fill: #E4D6E6;
	}
  }

  [feature = 'landuse_brownfield'],
  [feature = 'landuse_landfill'],
  [feature = 'landuse_greenfield'],
  [feature = 'landuse_construction'] {
    [zoom >= 10] {
      polygon-fill: @commercial;
      polygon-opacity: 0.7;
        [zoom >=15] {
	  polygon-fill: #E4D6E6;
	}
    }
  }

  [feature = 'natural_wood'],
  [feature = 'landuse_wood'] {
    [zoom >= 8] {
      polygon-fill: @wood;
      [zoom >= 15] {
        polygon-fill: #45D15C;
      }
    }
  }

  [feature = 'natural_desert'][zoom >= 8] {
    polygon-fill: @desert;
  }

  [feature = 'natural_sand'][zoom >= 10] {
    polygon-fill: @sand;
  }

  [feature = 'natural_heath'][zoom >= 10] {
    polygon-fill: @heath;
      [zoom >= 15] {
	polygon-fill: #ccff99;
      }
  }

  [feature = 'natural_grassland'][zoom >= 10] {
    polygon-fill: #c6e4b4;
      [zoom >= 15] {
	polygon-fill: #ccff99;
      }
  }

  [feature = 'natural_scrub'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: #b5e3b5;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/scrub.png');
    [zoom >= 15] {
	polygon-fill: #45D15C;
    }
    }
  }

  [feature = 'amenity_university'],
  [feature = 'amenity_college'],
  [feature = 'amenity_school'],
  [feature = 'amenity_hospital'],
  [feature = 'amenity_kindergarten'] {
    [zoom >= 10] {
      polygon-fill: @school;
     /* [zoom >= 12] {
        line-width: 0.3;
        line-color: brown;*/
        [zoom >=15] {
	  polygon-fill: #E4D6E6;
	}
      //}
    }
  }

  [feature = 'amenity_parking'][zoom >= 10] {
    polygon-fill: @parking;
    [zoom >= 15] {
      line-width: 0.3;
      line-color: @parking;
    }
  }

  [feature = 'aeroway_apron'][zoom >= 12] {
    polygon-fill: @apron;
    [zoom >= 15] {
      polygon-fill: #DCEDF2;
    }
  }

  [feature = 'aeroway_aerodrome'][zoom >= 12] {
    polygon-fill: @aerodrome;
    polygon-opacity: 0.2;
    line-width: 0.2;
    line-color: #555;
    [zoom >= 15] {
      polygon-fill: #DCEDF2;
    }
  }

  [feature = 'natural_beach'][zoom >= 13] {
    polygon-pattern-file: url('symbols/beach.png');
  }

  [feature = 'highway_services'],
  [feature = 'highway_rest_area'] {
    [zoom >= 14] {
      polygon-fill: @parking;
    }
  }
}

/* man_made=cutline*/ 
#landcover-line {
  [zoom >= 14] {
    line-width: 3;
    line-join: round;
    line-cap: square;
    line-color: @land-color;
    [zoom >= 16] {
      line-width: 6;
    }
  }
}

#sports-grounds {
  [leisure = 'sports_centre'],
  [leisure = 'stadium'] {
    [zoom >= 10] {
      polygon-fill: @stadium;
      [zoom >= 15] {
        polygon-fill: #ccff99;
        line-width: 0.5;
        line-color: #888;
      }  
    }
  }

  [leisure = 'track'][zoom >= 10] {
    polygon-fill: @track;
    line-width: 0.5;
    line-color: #888;
    [zoom >= 15] {
        polygon-fill: #1ee922;
    } 
  }

  [leisure = 'pitch'][zoom >= 10] {
    polygon-fill: @pitch;
    line-width: 0.5;
    line-color: #888;
    [zoom >= 15] {
        polygon-fill: #1ee922;
    	line-width: 0.5;
   		line-color: #888;
    }  
  }
}


#landuse-overlay {
  [landuse = 'military'][zoom >= 10]::landuse {
    polygon-pattern-file: url('symbols/military_red_hz2.png');
    line-color: #f55;
    line-width: 3;
    line-opacity: 0.329;
  }
  [leisure = 'nature_reserve'][zoom >= 10] {
    polygon-pattern-file: url('symbols/nature_reserve5.png');
    line-color: #6c3;
    line-width: 0.5;
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/nature_reserve6.png');
      line-width: 1;
    }
  }
}

#area-text {
  [way_area >= 150000][zoom >= 14],
  [way_area >= 150000][zoom >= 15],
  [way_area >= 150000][zoom >= 16],
  [way_area >= 150000][zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #000033;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }
}

/*#cliffs {
  [natural = 'cliff'][zoom >= 13] {
    line-pattern-file: url('symbols/cliff.png');
    [zoom >= 15] {
      line-pattern-file: url('symbols/cliff2.png');
    }
  }
  [man_made = 'embankment'][zoom >= 15]::man_made {
    line-pattern-file: url('symbols/cliff.png');
  }
}

#area-barriers {
  [zoom >= 16] {
    line-color: #444;
    line-width: 0.4;
    [barrier = 'hedge'] {
      polygon-fill: #aed1a0;
    }
  }
}

.barriers {
  [zoom >= 16] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'embankment'][zoom >= 14] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'hedge'][zoom >= 16] {
    line-width: 3;
    line-color: #aed1a0;
  }
}
*/

#theme-park {
  [tourism = 'theme_park'][zoom >= 13] {
    line-color: #734a08;
    line-width: 1.5;
    line-dasharray: 9,3;
    line-opacity: 0.6;
    [zoom >= 15] {
      line-width: 2.5;
    }
  }
}
