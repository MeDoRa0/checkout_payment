import 'package:checkout_payment/core/widgets/custom_green_button.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_listview.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatelessWidget {
   PaymentDetailsBody({super.key});
   
   final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(),
        ),
        SliverFillRemaining(
          fillOverscroll: true,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 12, left: 16, right: 16),
              child: CustomGreenButton(customButttonText: 'Pay'),
            ),
          ),
        )
      ],
    );
  }
}
