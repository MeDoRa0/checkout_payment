import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomGreenButton extends StatelessWidget {
  const CustomGreenButton(
      {super.key, required this.customButttonText, this.onTap});
  final String customButttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
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
      ),
    );
  }
}
