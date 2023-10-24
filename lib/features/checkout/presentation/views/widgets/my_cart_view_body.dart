import 'package:checkout_payment/images/app_images.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset(Assets.imagesShoppingCart)],
    );
  }
}
