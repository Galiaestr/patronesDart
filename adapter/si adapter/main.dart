import 'interfaz_pago.dart';
import 'servicio_externo.dart';
import 'adaptador_pago.dart';

void main() {
  print("EJEMPLO CON ADAPTER (Solución)");

  // El cliente interactúa mediante la interfaz unificada
  PaymentProcessor processor = StripeAdapter(StripeService());
  
  // El cliente ya no se preocupa por centavos ni nombres raros de métodos
  processor.pay(150.00); 
}