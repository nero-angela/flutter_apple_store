import 'package:apple_store/6-bloc/state/cart_bloc.dart';
import 'package:apple_store/common/product.dart';
import 'package:apple_store/common/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Store extends StatelessWidget {
  const Store({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final CartBloc cartBloc = context.watch();
    return Scaffold(
      body: ListView.builder(
        itemCount: storeProductList.length,
        itemBuilder: (context, index) {
          Product product = storeProductList[index];
          return ProductTile(
            product: product,
            isInCart: cartBloc.state.contains(product),
            onPressed: (product) => cartBloc.add(OnProductPressed(product)),
          );
        },
      ),
    );
  }
}
