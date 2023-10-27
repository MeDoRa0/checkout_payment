import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    //make the default of isActive be false
    super.key,
    this.isActive = false,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    //AnimatedContainer to give animation to container
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.50,
            color: isActive
                ? const Color(0xFF34A853)
                : Colors.black.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? const Color(0xFF34A853) : const Color(0xff7F7F7F),
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        height: 24,
        child: Center(child: SvgPicture.asset('assets/images/credit_card.svg')),
      ),
    );
  }
}
