import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/core/widgets/custom_green_button.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_listview.dart';
import 'package:flutter/material.dart';

class PaymentMethodsBottomsheet extends StatelessWidget {
  const PaymentMethodsBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Choose payment method',
            style: Styles.style22,
          ),
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),
          CustomGreenButton(customButttonText: 'continue'),
        ],
      ),
    );
  }
}
