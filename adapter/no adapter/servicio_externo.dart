class StripeService {
  // Nota que recibe enteros (centavos) y tiene su propio nombre de método
  void makeStripeCharge(int amountInCents) {
    print("Cobrando \$${amountInCents / 100} usando Stripe directamente.");
  }
}