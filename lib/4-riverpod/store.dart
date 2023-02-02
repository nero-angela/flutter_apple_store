import 'package:apple_store/4-riverpod/state/riverpod_cart.dart';
import 'package:apple_store/common/product.dart';
import 'package:apple_store/common/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Store extends ConsumerWidget {
  const Store({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView.builder(
        itemCount: storeProductList.length,
        itemBuilder: (context, index) {
          Product product = storeProductList[index];
          return ProductTile(
            product: product,
            isInCart: ref.watch(cartProvider).contains(product),
            onPressed: ref.read(cartProvider.notifier).onProductPressed,
          );
        },
      ),
    );
  }
}
