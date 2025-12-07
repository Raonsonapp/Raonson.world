import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PaymentService extends ChangeNotifier {
  final InAppPurchase _iap = InAppPurchase.instance;
  bool isVerified = false;
  List<ProductDetails> products = [];

  static const Set<String> _ids = {'verified_badge'};

  Future<void> initStore() async {
    final response = await _iap.queryProductDetails(_ids);
    products = response.productDetails;
  }

  void buyBadge() {
    if (products.isEmpty) return;
    final PurchaseParam param = PurchaseParam(productDetails: products.first);
    _iap.buyConsumable(purchaseParam: param);
  }

  void purchaseSuccess() {
    isVerified = true;
    notifyListeners();
  }
}
