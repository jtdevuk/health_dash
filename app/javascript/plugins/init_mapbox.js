
import mapboxgl from 'mapbox-gl'; // or "const mapboxgl = require('mapbox-gl');"
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map', // container ID
      style: 'mapbox://styles/mapbox/streets-v11', // style URL
      center: [-74.5, 40], // starting position [lng, lat]
      zoom: 9, // starting zoom
    });
  }
// if (mapElement) {
//   const markers = JSON.parse(mapElement.dataset.marker);  
//     new mapboxgl.Marker()
//       .setLngLat([ marker.lng, marker.lat ])
//       .addTo(map);
//     }
  };

export { initMapbox };