import 'dart:async';

import 'package:apple_store/5-cubit/state/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BadgeCubit extends Cubit<int> {
  BadgeCubit({
    required CartCubit cartCubit,
  }) : super(0) {
    cartCubitSubs = cartCubit.stream.listen((cartProductList) {
      emit(cartProductList.length);
    });
  }

  late final StreamSubscription cartCubitSubs;

  @override
  Future<void> close() {
    cartCubitSubs.cancel();
    return super.close();
  }
}
