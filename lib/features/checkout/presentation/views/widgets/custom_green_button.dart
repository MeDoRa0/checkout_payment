import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.customButttonText});
  final String customButttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 73,
      decoration: ShapeDecoration(
        color: const Color(0xFF34A853),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          customButttonText,
          textAlign: TextAlign.center,
          style: Styles.style22,
        ),
      ),
    );
  }
}
