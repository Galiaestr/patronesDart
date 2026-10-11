import 'servicio_externo.dart';

void main() {
  print("EJEMPLO SIN ADAPTER (Problema)");

  var stripe = StripeService();
  double monto = 150.00;

  int centavos = (monto * 100).toInt();
  
  stripe.makeStripeCharge(centavos); 
  // Si cambias de pasarela de pago en el futuro, se modifica todo el codigo cliente.
}