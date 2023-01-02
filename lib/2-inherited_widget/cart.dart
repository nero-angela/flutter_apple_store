import 'package:apple_store/2-inherited_widget/state/inherited_cart.dart';
import 'package:apple_store/common/product.dart';
import 'package:apple_store/common/product_tile.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // InheritedCart inheritedCart = InheritedCart.of(context);
    InheritedCart inheritedCart = context.read();
    final List<Product> cartProductList = inheritedCart.cartProductList;

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
                  onPressed: inheritedCart.onProductPressed,
                );
              },
            ),
    );
  }
}
