import 'package:apple_store/4-riverpod/state/riverpod_cart.dart';
import 'package:apple_store/common/product.dart';
import 'package:apple_store/common/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Cart extends ConsumerWidget {
  const Cart({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Product> cartProductList = ref.watch(cartProvider);

    return Scaffold(
      body: cartProductList.isEmpty

          /// Empty
          ? const Center(
              child: Text(
                "Empty",
                style: TextStyle(fontSize: 24, color: Colors.grey),
              ),
            )

          /// Not Empty
          : ListView.builder(
              itemCount: cartProductList.length,
              itemBuilder: (context, index) {
                Product product = cartProductList[index];
                return ProductTile(
                  product: product,
                  isInCart: true,
                  onPressed: ref.read(cartProvider.notifier).onProductPressed,
                );
              },
            ),
    );
  }
}
