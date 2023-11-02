import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_check_icon.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_dash_line.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_done_card.dart';
import 'package:flutter/material.dart';

class PaymentDoneViewBody extends StatelessWidget {
  const PaymentDoneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Stack widget enable us to put widget on widget
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        //this code prevent clip
        clipBehavior: Clip.none,
        children: [
          const PaymentDoneCard(),
          //this code for dash line
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 20 + 6,
            right: 20 + 6,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: CustomDashLine(),
            ),
          ),
          //this code will put the circle in postion we want
          Positioned(
            left: -20,
            // MediaQuery will adjust the height depending on device screen height
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            // MediaQuery will adjust the height depending on device screen height
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: -40,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    );
  }
}
