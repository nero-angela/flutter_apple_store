import 'package:apple_store/common/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<List<Product>> {
  CartCubit() : super([]);

  /// 상품 클릭
  void onProductPressed(Product product) {
    if (state.contains(product)) {
      state.remove(product);
      emit(state);
    } else {
      state.add(product);
      emit(state);
    }
  }
}
