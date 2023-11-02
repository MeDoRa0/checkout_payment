import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PaymentDoneItemInfo extends StatelessWidget {
  const PaymentDoneItemInfo(
      {super.key, required this.title, required this.value});
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        Text(
          value,
          style: Styles.style18semibold,
        )
      ],
    );
  }
}
