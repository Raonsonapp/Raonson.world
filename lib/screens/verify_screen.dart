import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../src/payments/payment_service.dart';

class VerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pay = Provider.of<PaymentService>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Purchased Verification")),
      body: Center(
        child: pay.isVerified
            ? const Icon(Icons.verified, color: Colors.green, size: 100)
            : ElevatedButton(
                onPressed: () => pay.buyBadge(),
                child: const Text("Buy Verified Badge"),
              ),
      ),
    );
  }
}
