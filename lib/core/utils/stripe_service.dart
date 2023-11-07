import 'package:checkout_payment/core/utils/api_keys.dart';
import 'package:checkout_payment/core/utils/api_service.dart';
import 'package:checkout_payment/features/checkout/data/models/ephemral_key_model/ephemral_key_model.dart';
import 'package:checkout_payment/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final ApiService apiService = ApiService();
  //creat payment intent method
  Future<PaymentIntentModel> creatCustomer(
      PaymentIntentInputModel paymentIntentInputModel) async {
    //request
    var response = await apiService.post(
      body: paymentIntentInputModel.toJason(),
      contentType: Headers.formUrlEncodedContentType,
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
    );
    // recevie data
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

//init payment sheet method
  Future initPaymentSheet({required String paymentIntentClientSecret,required String ephemeralKeySecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        customerEphemeralKeySecret: ephemeralKeySecret ,
        customerId:'cus_Oxt0tcbGxWp7y7',
        merchantDisplayName: 'Mohamed Hossam',
      ),
    );
  }

  // display payment sheet method
  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

// this method will excute the other methods in this class
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await creatCustomer(paymentIntentInputModel);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }

//creat customer method
  /* Future<PaymentIntentModel> creatPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    //request
    var response = await apiService.post(
      body: paymentIntentInputModel.toJason(),
      contentType: Headers.formUrlEncodedContentType,
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
    );
    // recevie data
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }*/
// request that creat ephemeral key
  Future<EphemralKeyModel> creatEphemeralKey(
      //we did not creat model for it because it has only one parameter
      {required String customerID}) async {
    //request
    var response = await apiService.post(
        body: {
          'customer': customerID,
        },
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretKey,
        //we get headers from postman
        headers: {
          'Authorization': "Bearer ${ApiKeys.secretKey}",
          'Stripe-Version': '2023-10-16'
        });
    // recevie data
    var ephemeralKey = EphemralKeyModel.fromJson(response.data);
    return ephemeralKey;
  }
}
