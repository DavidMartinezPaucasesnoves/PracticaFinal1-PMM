import 'vehiculo.dart';
import 'user.dart';

class Coche extends Vehiculo {
  int plazas;
  bool requiereLicencia;

  Coche({
    required String id,
    required int bateriaPorcentaje,
    bool enUso = false,
    required double precioPorMinuto,
    required this.plazas,
    required this.requiereLicencia,
  }) : super(
         id: id,
         bateriaPorcentaje: bateriaPorcentaje,
         enUso: enUso,
         precioPorMinuto: precioPorMinuto,
       );

  @override
  double calcularCosteReserva(int minutos, {User? usuario}) {
    return (minutos * precioPorMinuto) + 2.0;
  }
}
