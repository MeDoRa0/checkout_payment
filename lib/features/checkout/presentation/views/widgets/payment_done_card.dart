import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_card_info.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_done_item_info.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: Styles.style24.copyWith(
                        color: const Color(0xFF34A853),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //this code will put the barcode and paid below dash line in center
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
