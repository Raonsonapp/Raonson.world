import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isVerified = false;
  List<ProductDetails> products = [];
  final iap = InAppPurchase.instance;

  @override
  void initState() {
    super.initState();
    _loadProducts();
    iap.purchaseStream.listen(_listenToPurchaseUpdates);
  }

  void _loadProducts() async {
    const ids = {'verified_badge'};

    final response = await iap.queryProductDetails(ids);

    if (response.notFoundIDs.isEmpty) {
      setState(() => products = response.productDetails);
    }
  }

  void _buy(ProductDetails product) {
    final param = PurchaseParam(productDetails: product);
    iap.buyConsumable(purchaseParam: param);
  }

  void _listenToPurchaseUpdates(List<PurchaseDetails> purchases) {
    for (var p in purchases) {
      if (p.status == PurchaseStatus.purchased) {
        setState(() => isVerified = true);
        iap.completePurchase(p);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(radius: 35, backgroundColor: Colors.grey),
                SizedBox(width: 12),
                Text("User123", style: TextStyle(fontSize: 24)),
                if (isVerified)
                  Icon(Icons.verified, color: Colors.green, size: 28),
              ],
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                if (products.isNotEmpty) {
                  _buy(products.first);
                }
              },
              child: Text("Get Verified Badge"),
            )
          ],
        ),
      ),
    );
  }
}
