.stations {
  [railway = 'subway_entrance'][zoom >= 18] {
    point-file: url('symbols/walking.n.12.png');
    point-placement: interior;
  }

  [railway = 'station'][zoom >= 12] {
    point-file: url('symbols/halt.png');
    point-placement: interior;
    [zoom >= 13] {
      point-file: url('symbols/station_small.png');
    }
    [zoom >= 14] {
      text-name: "[name]";
      text-face-name: @bold-fonts;
      text-size: 9;
      text-fill: #040888;
      text-dy: -8;
      text-halo-radius: 1;
      text-wrap-width: 0;
      text-placement: interior;
    }
    [zoom >= 15] {
      point-file: url('symbols/logos/svg/Bahn_halt.svg');
      text-size: 10;
      text-dy: -10;
    }
    /*
    [disused = 'yes'] {
      point-file: url('symbols/station_disused.png'); // 14 and above
      text-fill: grey; // 15 and above, small version only
    }
    */
  }

  [railway = 'halt'],
  [railway = 'tram_stop'],
  [aerialway = 'station']::aerialway {
    [zoom >= 13] {
      point-file: url('symbols/halt.png');
    }
    [zoom >= 15] {
      point-file: url('symbols/logos/svg/SBahn_Halt.svg');
    }
    [zoom >= 17] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-size: 8;
      text-fill: #040888;
      text-dy: -10;
      text-halo-radius: 1;
      text-wrap-width: 0;
      text-placement: interior;
   /*   [zoom >= 17] {
        text-size: 10;
        text-dy: -12;
      }*/
    }
  }
}