import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:async';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isVerified = false;
  final InAppPurchase iap = InAppPurchase.instance;

  List<ProductDetails> products = [];
  late StreamSubscription<List<PurchaseDetails>> subscription;

  @override
  void initState() {
    super.initState();
    initStore();
  }

  Future<void> initStore() async {
    final bool available = await iap.isAvailable();
    if (!available) return;

    const ids = <String>{"verified_badge"};
    final response = await iap.queryProductDetails(ids);

    products = response.productDetails;

    subscription = iap.purchaseStream.listen(
      (purchase) {
        for (var p in purchase) {
          if (p.productID == "verified_badge" &&
              p.status == PurchaseStatus.purchased) {
            setState(() => isVerified = true);
            iap.completePurchase(p);
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("User"),
                if (isVerified)
                  Icon(Icons.check_circle, color: Colors.green, size: 28),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (products.isNotEmpty) {
                  final purchaseParam =
                      PurchaseParam(productDetails: products.first);
                  iap.buyConsumable(purchaseParam: purchaseParam);
                }
              },
              child: Text("Get Verified Badge"),
            ),
          ],
        ),
      ),
    );
  }
}
