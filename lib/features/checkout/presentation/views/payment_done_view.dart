import 'package:checkout_payment/core/widgets/custom_app_bar.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_done_view_body.dart';
import 'package:flutter/material.dart';

class PaymentDoneView extends StatelessWidget {
  const PaymentDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      //Transform is used to move the body 16 to up
      body: Transform.translate(
        offset: const Offset(0, -16),
        child: const PaymentDoneViewBody(),
      ),
    );
  }
}
