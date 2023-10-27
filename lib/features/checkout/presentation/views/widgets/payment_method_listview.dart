import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_details_method_item.dart';
import 'package:flutter/material.dart';

// we make it statfulwidget to enable user select betweeen paymentmethods
class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodsItem = const [
    'assets/images/credit_card.svg',
    'assets/images/paypal.svg',
    'assets/images/apple_pay.svg',
  ];
  //
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        //make the list scroll horozintally
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            //this will activate the method that user select
            child: GestureDetector(
              onTap: () {
                activeIndex = index;
                setState(() {});
              },
              child: PaymentMethodItem(
                //if activeIndex = index
                isActive: activeIndex == index,
                cardImage: paymentMethodsItem[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
