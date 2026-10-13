import 'medio-pago.dart';

// Simular servicio de pago en pesos
class ServicioPago implements Mediopago{
  @override
  void pagar (double pesos){
    print('servicio: pago de ${pesos.toStringAsFixed(2)} pesos');
  }
}