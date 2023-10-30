import 'package:checkout_payment/core/widgets/custom_green_button.dart';
import 'package:checkout_payment/features/checkout/presentation/views/payment_done_view.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_listview.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  //this code because we use form
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          fillOverscroll: true,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
              child: CustomGreenButton(
                  // to validate input when user press on button
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return PaymentDoneView();
                          },
                        ),
                      );
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  customButttonText: 'Pay'),
            ),
          ),
        )
      ],
    );
  }
}
