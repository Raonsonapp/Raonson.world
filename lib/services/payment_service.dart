class PaymentService {
  Future<bool> buyVerification() async {
    // Fake purchase (later real Google Billing)
    await Future.delayed(Duration(seconds: 1));
    return true;
  }
}
