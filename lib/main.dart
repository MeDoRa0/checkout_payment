import 'package:checkout_payment/core/utils/api_keys.dart';
import 'package:checkout_payment/features/checkout/presentation/views/my_cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  //we get the key from stripe dashboard site
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}

// paymentIntentObject creat payment intent (amount , currency)
// init payment sheet(paymentIntentClientSecret)
// presentPaymentSheet()
