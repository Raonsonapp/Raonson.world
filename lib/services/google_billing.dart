import 'package:in_app_purchase/in_app_purchase.dart';

class PaymentService {
  final InAppPurchase _iap = InAppPurchase.instance;
  bool available = false;

  Future<void> init() async {
    available = await _iap.isAvailable();
  }

  Future<void> buyPremium() async {
    const Set<String> ids = {'raonson_premium'};
    final ProductDetailsResponse response =
        await _iap.queryProductDetails(ids);

    if (response.notFoundIDs.isNotEmpty) return;

    final product = response.productDetails.first;
    final purchaseParam = PurchaseParam(productDetails: product);
    _iap.buyNonConsumable(purchaseParam: purchaseParam);
  }
}
