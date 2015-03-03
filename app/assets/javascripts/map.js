function initialize() {

handler = Gmaps.build('Google');
handler.buildMap({
    provider: {
      disableDefaultUI: true,
    },
    internal: {
      id: 'map'
    }
  },
  function(){
    markers = handler.addMarkers([
      {
        "lat": 47.6220217,
        "lng": -122.3358359,
        "picture": {
          "url": "/assets/mapmarker.png",
          "width":  36,
          "height": 36
        },
      }
    ]);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
    handler.getMap().setZoom(14);

  }
);
}
google.maps.event.addDomListener(window, "load", initialize);
