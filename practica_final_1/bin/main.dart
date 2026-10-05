import 'dart:ffi';

import 'package:practica_final_1/user.dart';
import 'package:practica_final_1/vehiculo.dart';
import 'package:practica_final_1/patinete.dart';
import 'package:practica_final_1/coche.dart';

void main(List<String> arguments) {
  print("-- 1 ------------------------------------------------------");

  Patinete p1 = Patinete(
    id: "PAT-01",
    bateriaPorcentaje: 85,
    precioPorMinuto: 0.20,
    velocidadMaxima: 25,
  );

  Patinete p2 = Patinete(
    id: "PAT-02",
    bateriaPorcentaje: 15,
    precioPorMinuto: 0.20,
    velocidadMaxima: 20,
  );

  Patinete p3 = Patinete(
    id: "PAT-03",
    bateriaPorcentaje: 50,
    enUso: true,
    precioPorMinuto: 0.20,
    velocidadMaxima: 25,
  );

  Coche c1 = Coche(
    id: "CO-01",
    bateriaPorcentaje: 92,
    precioPorMinuto: 0.5,
    plazas: 5,
    requiereLicencia: true,
  );

  Coche c2 = Coche(
    id: "CO-02",
    bateriaPorcentaje: 40,
    enUso: true,
    precioPorMinuto: 0.5,
    plazas: 4,
    requiereLicencia: true,
  );

  p1.actualizarUbicacion(29.923784, 2.23867);
  p2.actualizarUbicacion(34.982133, 23.2384);
  p3.actualizarUbicacion(92.239485, 39.2367);
  c1.actualizarUbicacion(2.9234241, 5.29312);
  c2.actualizarUbicacion(64.283474, 71.2349);

  List<Vehiculo> flota = [p1, p2, p3, c1, c2];

  print("-- 2 ------------------------------------------------------");

  Vehiculo vehiculoMasBateria(List<Vehiculo> lista) {
    return lista.reduce((actualMayor, siguiente) {
      if (siguiente.bateriaPorcentaje > actualMayor.bateriaPorcentaje) {
        return siguiente;
      }
      return actualMayor;
    });
  }

  Vehiculo masBateria = vehiculoMasBateria(flota);

  print("-- 3 ------------------------------------------------------");

  User usuario = User.nuevo(
    id: "U001",
    nombre: "Deivid",
    correo: "davidmartinez@paucasesnovescifp.cat",
  );

  double costeReserva = p1.calcularCosteReserva(15, usuario: usuario);
  print("El coste de reservar $p1 durante 15 minutos es de: $costeReserva€");

  p1.actualizarUbicacion(23.9238, 27.12344);
  var (lat, lng) = p1.obtenerCoordenadas();
  print("Coordenadas actualizadas del patinete: $lat, $lng");

  print("-- 4 ------------------------------------------------------");

  try {
    usuario.recargarSaldo(-10.0);
  } catch (e) {
    print("Se ha capturado este error: $e");
  }
}
