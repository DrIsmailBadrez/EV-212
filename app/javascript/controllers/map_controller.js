import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"


// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
      center: [-7.6475557,33.582312],
      zoom: 11
    })
    mapboxgl.setRTLTextPlugin(
      'https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-rtl-text/v0.2.3/mapbox-gl-rtl-text.js',
      null,
      true // Lazy load the plugin
      );
    this.#addMarkersToMap()
    // this.#fitMapToMarkers()
    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))
    this.map.addControl(
        new mapboxgl.GeolocateControl({
        positionOptions: {
        enableHighAccuracy: true
        },
        // When active the map will receive updates to the device's location as it changes.
        trackUserLocation: true,
        // Draw an arrow next to the location dot to indicate which direction the device is heading.
        showUserHeading: true
        })
        );
    const popup = document.getElementById("popup");
    document.querySelector(".mymap").addEventListener("click", () =>{
      const hasDnone = popup.classList.contains('d-none');
      if(!hasDnone)
        popup.classList.add("d-none");
    })
    popup.addEventListener("click", () =>{
      popup.style = popup.getAttribute("style") == "top: 20vh;" ?  "top: 60vh;" : "top: 20vh;";
    })
    document.querySelectorAll('.mapboxgl-marker')
    .forEach((marker)=>{
      marker.addEventListener('click', (event) =>{
        event.stopPropagation();
        popup.innerHTML = this.markersValue.find((e) => +e.station_id === +marker.dataset.stationId).info_window;
        popup.classList.remove("d-none");
      })
    })
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "40px"
      customMarker.style.height = "40px"
      customMarker.dataset.stationId = marker.station_id;

      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

}
