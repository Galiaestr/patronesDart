import 'servicio_externo.dart';

void main() {
  print("EJEMPLO SIN ADAPTER (Problema)");

  var stripe = StripeService();
  double monto = 150.00;

  // Problema: El código cliente tiene que hacer la conversión manual y conocer los detalles especificos de la API externa.
  int centavos = (monto * 100).toInt();
  
  stripe.makeStripeCharge(centavos); 
  // Si cambias de pasarela de pago en el futuro, se modifica todo el codigo cliente.
}