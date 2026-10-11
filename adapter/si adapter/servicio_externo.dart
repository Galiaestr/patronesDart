class StripeService {
  void makeStripeCharge(int amountInCents) {
    print("Cobrando \$${amountInCents / 100} mediante la API de Stripe.");
  }
}