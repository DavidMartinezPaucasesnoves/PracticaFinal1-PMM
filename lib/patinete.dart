import 'vehiculo.dart';
import 'user.dart';

class Patinete extends Vehiculo {
  int velocidadMaxima;

  Patinete({
    required String id,
    required int bateriaPorcentaje,
    bool enUso = false,
    required double precioPorMinuto,
    required this.velocidadMaxima,
  }) : super(
         id: id,
         bateriaPorcentaje: bateriaPorcentaje,
         enUso: enUso,
         precioPorMinuto: precioPorMinuto,
       );

  @override
  double calcularCosteReserva(int minutos, {User? usuario}) {
    double coste = minutos * precioPorMinuto;
    if (usuario != null && usuario.esVIP) {
      coste = coste * 0.9;
    }
    return coste;
  }
}
