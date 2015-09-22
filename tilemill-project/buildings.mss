#buildings-lz {
  [zoom >= 10] {
    polygon-clip: false;
    [railway = 'station']::railway,
    [building = 'station'] {
      polygon-fill: #bca9a9;
      polygon-opacity: 0.8;
    [zoom >= 15] {
      line-color: #330066;
      line-width: 0.2;
}
    }

    [building = 'supermarket'] {
      polygon-fill: #bca9a9;
      polygon-opacity: 0.8;
      polygon-clip: false;
    [zoom >= 15] {
      line-color: #330066;
      line-width: 0.2;
}
    }

    [amenity = 'place_of_worship']::amenity {
      polygon-opacity: 0.5;
      polygon-fill: #777;
      [zoom >= 15] {
        polygon-opacity: 0.9;
        polygon-fill: #aaa;
        line-width: 0.3;
        line-color: #111;
      }
    }
  }
}

#buildings {

 
    [building != 'INT-light'][building != ''][zoom >= 12] {
    ::fred {
      [zoom >= 15] {
      line-color: #330066;
      line-width: 0.5;
      line-join: round; 
      }
      [zoom >= 16] {
      line-color: #330066;
      line-width: 1;
      line-join: round; 
	}
     }
    ::fred2 {
   [zoom >= 15] {
      line-color: #bca9a0;
      line-width: 0.3;
      line-join: round; 
    }
    [zoom >= 16] {
      line-color: #bca9a0;
      line-width: 0.6;
      line-join: round; 
    }  
    polygon-fill: #000000;
    polygon-opacity: 1;
    polygon-clip: false;
 
}
  
}
  [aeroway = 'terminal'][zoom >= 12]::aeroway {
    polygon-fill: #8379A5;
    polygon-clip: false;
    [zoom >= 14] {
      line-color: #330066;
      line-width: 0.2;
    }
  }
}
