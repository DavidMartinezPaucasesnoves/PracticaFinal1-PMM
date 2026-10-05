class User {
  final String _id;
  final String _nombreCompleto;
  double _saldo;

  String correo;
  bool esVIP;

  User.nuevo({
    required String id,
    required String nombre,
    required String correo,
  }) : _id = id,
       _nombreCompleto = nombre,
       _saldo = 0.0,
       correo = correo,
       esVIP = false;

  User(
    this._id,
    this._nombreCompleto,
    this._saldo,
    this.correo, {
    this.esVIP = false,
  });

  String get id => _id;
  double get saldo => _saldo;

  void recargarSaldo(double cantidad) {
    if (cantidad <= 0) {
      print("La cantidad a recargar tiene que ser mas que cero");
    }
    _saldo += cantidad;
  }
}
