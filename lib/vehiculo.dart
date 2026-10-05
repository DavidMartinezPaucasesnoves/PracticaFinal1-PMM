import 'gps_location.dart';
import 'user.dart';

abstract class Vehiculo with GPSLocation {
  String id;
  int bateriaPorcentaje;
  bool enUso;
  double precioPorMinuto;

  Vehiculo({
    required this.id,
    required this.bateriaPorcentaje,
    this.enUso = false,
    required this.precioPorMinuto,
  });

  String estadoBateria() {
    if (bateriaPorcentaje >= 80) {
      return "Alta";
    } else if (bateriaPorcentaje >= 20) {
      return "Media";
    } else {
      return "Crítica (Requiere Cárga)";
    }
  }

  double calcularCosteReserva(int minutos, {User? usuario});
}
