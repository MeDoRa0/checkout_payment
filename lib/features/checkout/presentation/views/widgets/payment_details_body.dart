import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_listview.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [PaymentMethodsListView()],
    );
  }
}

