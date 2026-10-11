import 'interfaz_pago.dart';
import 'servicio_externo.dart';

class StripeAdapter implements PaymentProcessor {
  final StripeService _stripeService;

  StripeAdapter(this._stripeService);

  @override
  void pay(double amount) {
    // Traduce el double a int (centavos) que exige Stripe
    int amountInCents = (amount * 100).toInt();
    
    // Llama al método incompatible de manera transparente
    _stripeService.makeStripeCharge(amountInCents);
  }
}