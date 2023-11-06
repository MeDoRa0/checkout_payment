import 'package:checkout_payment/core/widgets/custom_green_button.dart';
import 'package:checkout_payment/features/checkout/presentation/manger/payment_cubit/payment_cubit.dart';
import 'package:checkout_payment/features/checkout/presentation/views/payment_done_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomGreenButtonBlocConsumer extends StatelessWidget {
  const CustomGreenButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return const PaymentDoneView();
              },
            ),
          );
        }
        if (state is PaymentFailure) {
          SnackBar snackBar = SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomGreenButton(
            isLoading: state is PaymentLoading ? true : false,
            customButttonText: 'continue');
      },
    );
  }
}
