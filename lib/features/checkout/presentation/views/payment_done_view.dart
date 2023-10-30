import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_done_view_body.dart';
import 'package:flutter/material.dart';

class PaymentDoneView extends StatelessWidget {
  const PaymentDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaymentDoneViewBody(),
    );
  }
}
