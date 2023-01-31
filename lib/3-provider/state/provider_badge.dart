import 'package:apple_store/3-provider/state/provider_cart.dart';
import 'package:flutter/material.dart';

class ProviderBadge with ChangeNotifier {
  ProviderBadge({
    required this.providerCart,
  }) {
    providerCart.addListener(providerCartListener);
  }

  int counter = 0;
  final ProviderCart providerCart;

  void providerCartListener() {
    counter = providerCart.cartProductList.length;
    notifyListeners();
  }

  @override
  void dispose() {
    providerCart.removeListener(providerCartListener);
    super.dispose();
  }
}
