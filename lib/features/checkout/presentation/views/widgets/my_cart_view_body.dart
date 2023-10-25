import 'package:checkout_payment/features/checkout/presentation/views/payment_details.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/cart_info_item.dart';
import 'package:checkout_payment/core/widgets/custom_green_button.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_item.dart';
import 'package:checkout_payment/images/app_images.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          //we wrap image with expanded widget to take most posiable space of screen
          Expanded(child: Image.asset(Assets.imagesShoppingCart)),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: '\$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: '\$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: '\$8',
          ),
          const SizedBox(
            height: 15,
          ),
          //the line above Total and price
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 2,
              color: Color(0xFFC6C6C6),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const TotalPrice(title: 'Total', value: '\$50.67'),
          const SizedBox(
            height: 20,
          ),
          CustomGreenButton(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const PaymentDetailsView();
                  },
                ),
              );
            },
            customButttonText: 'Complete Payment',
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
