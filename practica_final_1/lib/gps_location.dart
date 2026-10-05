mixin GPSLocation {
  double latitud = 0.0;
  double longitud = 0.0;

  void actualizarUbicacion(double latitud, double longitud) {
    latitud = latitud;
    longitud = longitud;
  }

  (double, double) obtenerCoordenadas() {
    return (latitud, longitud);
  }
}
