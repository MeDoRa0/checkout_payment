import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_card_info.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_done_item_info.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_item.dart';
import 'package:flutter/material.dart';

class PaymentDoneCard extends StatelessWidget {
  const PaymentDoneCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 40 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20.copyWith(
                color: Colors.black.withOpacity(0.800000011920929),
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentDoneItemInfo(
              title: 'Date',
              value: '01/24/2023',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentDoneItemInfo(
              title: 'Time',
              value: '10:15 AM',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentDoneItemInfo(
              title: 'To',
              value: 'Mohamed Hossam',
            ),
            const Divider(
              height: 60,
              thickness: 2,
            ),
            const TotalPrice(title: 'Total', value: '\$50.97'),
            const SizedBox(
              height: 30,
            ),
            const PaymentCardInfo(),
          ],
        ),
      ),
    );
  }
}
