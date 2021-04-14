
import mapboxgl from 'mapbox-gl'; // or "const mapboxgl = require('mapbox-gl');"
import 'mapbox-gl/dist/mapbox-gl.css';

const fitMapToMarkers = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ marker.lng, marker.lat ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
}

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v11',
      zoom: 9,
    });

    const marker = JSON.parse(mapElement.dataset.marker);
      new mapboxgl.Marker({ color: 'red' })
        .setLngLat([marker.lng, marker.lat])
        .addTo(map);
    fitMapToMarkers(map, marker);
  }
};

export { initMapbox };