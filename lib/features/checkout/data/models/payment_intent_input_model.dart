class PaymentIntentInputModel {
  final String amount;
  final String currency;
  final String customerID;

  PaymentIntentInputModel(
      {required this.customerID, required this.amount, required this.currency});
  toJason() {
    return {
      'amount': '${amount}00',
      'currency': currency,
      'customer': customerID,
    };
  }
}
