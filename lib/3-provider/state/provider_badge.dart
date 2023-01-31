import 'package:apple_store/3-provider/state/provider_cart.dart';
import 'package:flutter/material.dart';

class ProviderBadge with ChangeNotifier {
  ProviderBadge({
    required this.providerCart,
  }) {
    providerCart.addListener(_providerCartListener);
  }

  /// 배지 개수
  int counter = 0;

  final ProviderCart providerCart;

  void _providerCartListener() {
    counter = providerCart.cartProductList.length;
    notifyListeners();
  }

  @override
  void dispose() {
    providerCart.removeListener(_providerCartListener);
    super.dispose();
  }
}
