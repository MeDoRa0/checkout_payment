import 'package:checkout_payment/core/widgets/custom_green_button.dart';
import 'package:checkout_payment/features/checkout/data/models/payment_intent_input_model.dart';
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
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomGreenButton(
            //trigger payment cubit when press on button
            onTap: () {
              PaymentIntentInputModel paymentIntentInputModel =
                  PaymentIntentInputModel(amount: '100', currency: 'USD');
              BlocProvider.of<PaymentCubit>(context).makePayment(
                  paymentIntentInputModel: paymentIntentInputModel);
            },
            isLoading: state is PaymentLoading ? true : false,
            customButttonText: 'continue');
      },
    );
  }
}
