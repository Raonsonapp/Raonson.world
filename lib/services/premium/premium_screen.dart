import 'package:flutter/material.dart';
import '../../services/google_billing.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pay = PaymentService();
    pay.init();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Premium", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => pay.buyPremium(),
          child: const Text("Buy Premium"),
        ),
      ),
    );
  }
}
