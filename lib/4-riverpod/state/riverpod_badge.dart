import 'package:apple_store/4-riverpod/state/riverpod_cart.dart';
import 'package:apple_store/common/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final badgeProvider = NotifierProvider<RiverpodBadge, int>(RiverpodBadge.new);

class RiverpodBadge extends Notifier<int> {
  @override
  int build() {
    List<Product> cartProductList = ref.watch(cartProvider);
    return cartProductList.length;
  }
}
