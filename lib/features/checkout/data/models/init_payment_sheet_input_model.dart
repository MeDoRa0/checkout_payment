class InitPaymentSheetInputModel {
  final String clientSecret;
  final String customerID;
  final String ephemeralKeySecret;

  InitPaymentSheetInputModel(
      {required this.clientSecret,
      required this.customerID,
      required this.ephemeralKeySecret});
}
