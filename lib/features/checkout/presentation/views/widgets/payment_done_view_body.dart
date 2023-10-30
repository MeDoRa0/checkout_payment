import 'package:flutter/material.dart';

class PaymentDoneViewBody extends StatelessWidget {
  const PaymentDoneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Stack widget enable us to put widget on widget
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Stack(
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
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
        ],
      ),
    );
  }
}
